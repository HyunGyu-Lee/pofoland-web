<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">
    LoadingUtils.loading();
    var pofolNo = ${portfolio.pofolNo};
</script>

<div class="v-page-wrap no-bottom-spacing">
    <div class="container">
        <!-- 포트폴리오 기본정보 입력영역 -->
        <div id="basicInformation">
        <form id="editForm">
            <div class="row">
                <div class="col-sm-12">
                    <div class="v-heading-v2">
                        <h3>포트폴리오 개요 및 기본정보</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <h5>제목</h5>
                    <input type="text" class="form-control" name="pofolNm" placeholder="포폴제목" value="${portfolio.pofolNm}">
                </div>
                <div class="col-sm-6">
                    <h5>카테고리</h5>
                    <select class="selectpicker form-control" data-live-search="true" title="포트폴리오 카테고리 선택" name="pofolTypeCd" value="${portfolio.pofolTypeCd}">
                        <c:forEach var="category" items="${categoryList}">
                            <optgroup label="${category.commCdNm}">
                                <c:forEach var="subCategory" items="${category.child}">
                                    <option value="${subCategory.commCd}">${subCategory.commCdNm}</option>
                                </c:forEach>
                            </optgroup>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <h5>개요</h5>
                    <textarea class="form-control" name="pofolDesc" rows="5" placeholder="포폴개요" style="resize: none;">${portfolio.pofolDesc}</textarea>
                </div>
                <div class="col-sm-6">
                    <h5>해시태그</h5>
                    <div class="input-group mb-md">
                        <input type="text" id="inputHashTag" class="form-control" placeholder="#태그">
                        <span class="input-group-btn">
                            <button id="btnAddHashTag" class="btn btn-success" type="button">추가</button>
                        </span>
                    </div>
                    <div id="hashTagListArea" class="tags-wrap well" style="margin-top: 10px; height: 54px; padding-top: 11px;">
                        <c:forEach items="${portfolio.portfolioHashTags}" var="hashTag" >
                            <span class="label label-success tags" style="margin-right: 8px;" tagNm="${hashTag.tagNm}">
                                #${hashTag.tagNm}&nbsp;&nbsp;&nbsp;
                                <span onclick="deleteTag('${hashTag.tagNm}');" style="cursor: pointer">X</span>
                            </span>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h4>대표이미지 <small><span href="#" rel="tooltip" data-original-title="본문에서 이미지를 찾아 선택합니다. 본문에 이미지가 없을 경우, 카테고리에 따른 기본 이미지가 지정됩니다.">자동 선택 <input type="checkbox" id="mainImageAutoSelectEnable"></span></small></h4> 
                </div>
                <div class="col-sm-12 center image-selector">
                    <label for="mainImageFile">
                        <c:set var="mainImageUrl" value=""/>
                        <c:choose>
                            <c:when test="${empty portfolio.mainImageFileNo}">
                                <c:choose>
                                    <c:when test="${portfolio.pofolTypeCd eq '0001'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-1.jpg"/></c:when>
                                    <c:when test="${portfolio.pofolTypeCd eq '0002'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-2.jpg"/></c:when>
                                    <c:when test="${portfolio.pofolTypeCd eq '0003'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-3.jpg"/></c:when>
                                    <c:when test="${portfolio.pofolTypeCd eq '0004'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-4.jpg"/></c:when>
                                    <c:when test="${portfolio.pofolTypeCd eq '0005'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-5.jpg"/></c:when>
                                    <c:when test="${portfolio.pofolTypeCd eq '0006'}"><c:set var="mainImageUrl" value="${vendorPath}/volvox/img/static/bus-6.jpg"/></c:when>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                <c:set var="mainImageUrl" value="${ctx}/api/portfolio/${portfolio.pofolNo}/images/${portfolio.mainImageFileNo}"/>
                            </c:otherwise>
                        </c:choose>
                        <img id ="mainImageFilePreview" src="${mainImageUrl}" style="width: 360px; height: 480px;">
                    </label>
                    <input type="file" id="mainImageFile" onchange="commonPreview(this, 'mainImage');" onerror="setErrorImage(this);">
                </div>
            </div>
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </form>
        </div>
        <div class="row">
            <div class="v-heading-v2">
                <h3>포트폴리오 본문</h3>
            </div>
        </div>
        <div class="row">
            <div id="portfolioBodyWrap" style="/* border: 1px solid black */"></div>
        </div>
        <div class="row center">
            <div class="v-spacer col-sm-12 v-height-small"></div>
            <div class="col-sm-12">
                <button type="button" id="btnAddPortfolioPage" class="btn v-btn v-btn-default no-three-d">새 페이지 추가</button> 
                <button type="button" id="btnEditPortfolio" class="btn v-btn v-nephritis no-three-d">포트폴리오 수정</button>                    
            </div>
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
    </div>
</div>

<!-- Template 선언부 -->
<div style="display: none;">
    <!-- Page추가 레이아웃 선택 -->
    <div id="chooseTemplate">
        <div class="row center" style="height: 100%; margin-top: 10px;">
            <div class="col-sm-4">
                <button type="button" class="btn v-btn v-btn-default no-three-d" onclick="addPortfolioPage('text');"><i class="fa fa-pencil"></i> 글</button>
            </div>
            <div class="col-sm-4">
                <button type="button" class="btn v-btn v-green-sea no-three-d" onclick="addPortfolioPage('picture');"><i class="fa fa-camera"></i> 사진</button>
            </div>
            <div class="col-sm-4">
                <button type="button" class="btn v-btn v-peter-river no-three-d" onclick="addPortfolioPage('movie');"><i class="fa fa-video-camera"></i> 동영상</button>
            </div>
        </div>
    </div>
</div>

<!-- 포트폴리오 페이지 컨트롤 템플릿 -->
<script id="pageControls" type="text/template">
    <div class="pull-right" style="margin-bottom: 10px;">
        <button class="btn btn-danger" onclick="deletePage(<@=pageId@>);">X</button>
    </div>
    <div class="clearfix"></div>
</script>

<!-- 포트폴리오 글 페이지 템플릿 -->
<script id="textTemplate" type="text/template">
    <div class="portfolioPage" type="0001">
        <input type="hidden" id ="pageId" value="<@= pageId@>">
        <div id="pageContentEditor<@= pageId @>"></div>
        <div class="col-sm-12 center">
            <h5>- <span id="pageNo"><@= pageNo @></span> -</h5>
        </div>
        <div class="v-divider standard col-sm-12"></div>
    </div>
</script>

<!-- 포트폴리오 사진 페이지 템플릿 -->
<script id="pictureTemplate" type="text/template">
    <div class="portfolioPage" type="0002">
        <input type="hidden" id ="pageId" value="<@= pageId@>">
        <div class="col-sm-7 center image-selector" style="height: 100%; padding-left: 0">
            <label for="fileSelector<@= pageId@>">
                <img id="fileSelector<@= pageId@>Preview" src="https://via.placeholder.com/480x360" style="width: 100%; height: 465px;">
            </label>
            <input type="file" id="fileSelector<@= pageId@>" onchange="commonPreview(this);"></input>
        </div>
        <div class="col-sm-5" style="height: 100%; padding-right: 0">
            <div id="pageContentEditor<@= pageId @>"></div>
        </div>
        <div class="col-sm-12 center">
            <h5>- <span id="pageNo"><@= pageNo @></span> -</h5>
        </div>
        <div class="v-divider standard col-sm-12"></div>
    </div>
</script>

<!-- 포트폴리오 동영상 페이지 템플릿 -->
<script id="movieTemplate" type="text/template">
    <div class="portfolioPage" type="0003">
        <input type="hidden" id ="pageId" value="<@= pageId@>">
        <div class="col-sm-7" style="height: 100%; padding-left: 0">
            <video id="<@= pageId @>Preview" width="100%" height="450" controls>
                video태그를 지원하지 않는 브라우저입니다.
            </video>
            <input type="file" id="<@= pageId @>" onchange="commonPreview(this);"></input>
        </div>
        <div class="col-sm-5" style="height: 100%; padding-right: 0">
            <div id="pageContentEditor<@= pageId @>"></div>
        </div>
        <div class="col-sm-12 center">
            <h5>- <span id="pageNo"><@= pageNo @></span> -</h5>
        </div>
        <div class="v-divider standard col-sm-12"></div>
    </div>
</script>

<!-- 해시태그 템플릿 -->
<script id="hashTagTemplate" type="text/template">
    <span class="label label-success tags" style="margin-right: 8px;" tagNm="<@= tagNm @>">
        #<@= tagNm @>&nbsp;&nbsp;&nbsp;
        <span onclick="deleteTag('<@= tagNm@>');" style="cursor: pointer">X</span>
    </span>
</script>

<script src="${assetPath}/js/utils/TemplateUtils.js"></script>
<script src="${assetPath}/js/portfolio/edit.js"></script>
<link href="${vendorPath}/summernote/summernote.css" rel="stylesheet" />
<script src="${vendorPath}/summernote/summernote.js"></script>
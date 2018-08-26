<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <!-- 포트폴리오 등록 페이지 Header -->
<div class="v-bg-stylish v-portfolio-single-heading">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="portfolio-title">
                    <div class="row">
                        <div class="col-md-10">
                            <h2 class="portfolio-caption">새 포트폴리오 등록</h2>
                        </div>
                        <!-- 화면 이동 컨트롤러 버튼 -->
                        <div class="portfolio-nav col-md-2">
                            <a href="portfolio-single-fw.html" class="portfolio-nav-prev" rel="tooltip" data-original-title="이전 포트폴리오"><i class="icon-arrow-65"></i></a>
                            <a href="${ctx}/portfolio/management" rel="tooltip" data-original-title="목록으로"><i class="icon-thumbnails-2"></i></a>
                            <a href="portfolio-single-fw.html" class="portfolio-nav-next" rel="tooltip" data-original-title="다음 포트폴리오"><i class="icon-arrow-66"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --%>
<div class="v-page-wrap no-bottom-spacing">
    <div class="container">
        <!-- 포트폴리오 기본정보 입력영역 -->
        <div id="basicInformation" class="row">
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
                    <input type="text" class="form-control" placeholder="포폴제목">
                </div>
                <div class="col-sm-6">
                    <h5>카테고리</h5>
                    <select class="form-control">
                        <c:forEach var="category" items="${categoryList}">
                            <option value="${category.commCd}">${category.commCdNm}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="row" style="margin-top: 20px;">
                <div class="col-sm-12">
                    <h5>개요</h5>
                    <textarea class="form-control" rows="5" placeholder="포폴개요" style="resize: none;"></textarea>
                </div>
            </div>
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
        <div class="row">
            <div class="row">
                <div class="col-sm-12">
                    <div class="v-heading-v2">
                        <h3>포트폴리오 본문</h3>
                    </div>
                </div>
            </div>
            <div class="row" style="padding-left: 15px; padding-right: 15px;">
                <div class="col-sm-12">
                    <div id="portfolioBodyWrap"></div>
                </div>
            </div>
            <div class="row center">
                <div class="v-spacer col-sm-12 v-height-small"></div>
                <div class="col-sm-12">
                    <button type="button" id="btnAddPortfolioPage" class="btn v-btn v-btn-default no-three-d">새 페이지 추가</button> 
                    <button type="button" id="btnCreatePortfolio" class="btn v-btn v-nephritis no-three-d">포트폴리오 등록</button>                    
                </div>
                <div class="v-spacer col-sm-12 v-height-small"></div>
            </div>
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


<script src="${ctx}/static/assets/js/portfolio/create.js"></script>

<link href="${ctx}/static/vendor/summernote/summernote.css" rel="stylesheet" />
<script src="${ctx}/static/vendor/summernote/summernote.js"></script>
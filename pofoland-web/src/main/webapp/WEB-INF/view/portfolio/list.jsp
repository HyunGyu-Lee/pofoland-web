<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

<div class="v-page-heading v-bg-stylish v-bg-stylish-v1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="heading-text">
                    <h1 class="entry-title">내 포트폴리오 목록</h1>
                </div>

                <ol class="breadcrumb">
                    <li><a href="#">포트폴리오</a></li>
                    <li class="active">내 포트폴리오 관리</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<a class="btn v-btn v-second-dark pull-right" href="${ctx}/portfolios/create"><span>새 포트폴리오 등록</span></a>
<div class="v-page-wrap clearfix no-bottom-spacing">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="v-portfolio-wrap">
                    <!-- 포트폴리오 유형 -->
                    <div class="v-portfolio-filter-wrap row clearfix">
                        <ul class="v-portfolio-filter-nav bar-styling filtering col-sm-12 clearfix">
                            <li class="all selected" style="float: left;"><a data-filter="*" href="#"><span class="item-name">All</span><span class="item-count">0</span></a></li>
                            <c:forEach items="${categoryList}" var="category">
                                 <li><a href="#" class="${category.commCd}" style="float: left;" data-filter=".${category.commCd}"><span class="item-name">${category.commCdNm}</span><span class="item-count">0</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    
                    <!-- 포트폴리오 목록 -->
                    <ul class="v-portfolio-items v-portfolio-standard filterable-items col-4 row clearfix">
                        <c:forEach var="portfolio" items="${portfolioList}">
                            <!-- 대표이미지 선택 -->
                            <c:choose>
                                <c:when test="${empty portfolio.mainImageFileNo}">
                                    <c:choose>
                                        <c:when test="${portfolio.pofolTypeCd eq '0001'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-1.jpg"/></c:when>
                                        <c:when test="${portfolio.pofolTypeCd eq '0002'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-2.jpg"/></c:when>
                                        <c:when test="${portfolio.pofolTypeCd eq '0003'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-3.jpg"/></c:when>
                                        <c:when test="${portfolio.pofolTypeCd eq '0004'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-4.jpg"/></c:when>
                                        <c:when test="${portfolio.pofolTypeCd eq '0005'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-5.jpg"/></c:when>
                                        <c:when test="${portfolio.pofolTypeCd eq '0006'}"><c:set var="mainImageUrl" value="${ctx}/static/vendor/volvox/img/static/bus-6.jpg"/></c:when>
                                    </c:choose>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="mainImageUrl" value="${ctx}/api/portfolios/${portfolio.pofolNo}/images/${portfolio.mainImageFileNo}"/>
                                </c:otherwise>
                            </c:choose>
                            <li class="clearfix v-portfolio-item col-sm-3 standard ${portfolio.pofolTypeCd}">
                                <figure class="animated-overlay overlay-alt">
                                    <img src="${mainImageUrl}" style="width: 237px; height: 188px;"/>
                                    <a href="${ctx}/portfolios/${portfolio.pofolNo}" class="link-to-post"></a>
                                    <figcaption>
                                        <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                    </figcaption>
                                </figure>
                                <div class="v-portfolio-item-info">
                                    <div class="like-info">
                                        <div class="like-info-wrap">
                                            <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                            <span class="like-count">0</span>
                                        </div>
                                    </div>
                                    <h3 class="v-portfolio-item-title">
                                        <a href="${ctx}/portfolios/${portfolio.pofolNo}" class="link-to-post">${portfolio.pofolNm}</a>
                                    </h3>
                                    <h5 class="v-portfolio-subtitle">${portfolio.pofolTypeNm}</h5>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>    
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 center">
                <!-- 페이지 네비게이션 -->
                <ul class="pagination pagination">
                    <c:if test="${!pageInfo.isFirstPage}">
                        <li><a href="${ctx}/portfolios/management?pageNo=${pageInfo.prePage}">Prev</a></li>
                    </c:if>
                    <c:if test="${pageInfo.isFirstPage}">
                        <li><a class="link-disable" href="#">Prev</a></li>
                    </c:if>
                    <c:forEach var="pageNum" items="${pageInfo.navigatepageNums}">
                        <c:choose>
                            <c:when test="${pageInfo.pageNum eq pageNum}">
                                <c:set var="activeClass" value="active"/>
                            </c:when>
                            <c:otherwise>
                                <c:set var="activeClass" value=""/>
                            </c:otherwise>
                        </c:choose>
                        <li class="${activeClass}"><a href="${ctx}/portfolios/management?pageNo=${pageNum}">${pageNum}</a></li>
                    </c:forEach>
                    <c:if test="${!pageInfo.isLastPage}">
                        <li><a href="${ctx}/portfolios/management?pageNo=${pageInfo.nextPage}">Next</a></li>
                    </c:if>
                    <c:if test="${pageInfo.isLastPage}">
                        <li><a class="link-disable" href="#">Next</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
    </div>

    <div class="v-bg-stylish v-bg-stylish-v4 no-shadow padding-40" style="background-image: url(/static/vendor/volvox/img/slider/image2.png);">
        <div class="container">

            <div class="row center">
                <div class="v-content-wrapper">
                    <div class="col-sm-12">
                        <p class="v-smash-text-large">
                            <span>포트폴리오가 흥미로우셨나요?</span>
                        </p>
                        <p class="lead">
                            여기서 나만의 포트폴리오를 등록할 수 있습니다.
                        </p>
                    </div>
                    <div class="col-sm-12">
                        <a class="btn v-btn v-btn-default no-margin-right no-margin-bottom" href="${ctx}/portfolios/create">새 포트폴리오 등록</a>
                    </div>
                </div>
                <div class="v-bg-overlay"></div>
            </div>
        </div>
    </div>
</div>
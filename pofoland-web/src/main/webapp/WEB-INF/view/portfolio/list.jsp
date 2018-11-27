<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!-- Current Page CSS -->
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

<!-- Page Search Conditions -->
<form:form commandName="searchCondition">
    <form:input type="hidden" path="rangeSearch" />
    <form:input type="hidden" path="pageNo" />
    <form:input type="hidden" path="pageSize" />
    <form:input type="hidden" path="rangeSearch" />
</form:form>

<%-- <ul>
    <li>범위검색 : ${searchCondition.rangeSearch}</li>
    <li>페이지번호 : ${searchCondition.pageNo}</li>
    <li>페이지크기 : ${searchCondition.pageSize}</li>
</ul> --%>

<div class="v-page-heading v-fancy-heading v-bg-stylish light-style v-fancy-image v-fancy-top-header" style="background-image: url(/static/vendor/volvox/img/slider/slider7.jpg); background-size: cover;">
    <div class="${containerOption}">
        <div class="row">
            <div class="col-sm-12">
                <div class="heading-text">
                    <h1 class="entry-title text-aling-left">${currentOneDepth}</h1>
                    <h2 class="entry-subtitle no-margin text-aling-left">${currentTwoDepth}</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="v-page-wrap has-right-sidebar has-one-sidebar">
    <div class="${containerOption}">
        <div class="">
            <div class="col-sm-9">
                <div class="v-portfolio-wrap">
                    <div class="v-heading-v2">
                        <c:if test="${empty categoryPath}">
                            <h1>전체</h1>
                        </c:if>
                        <c:if test="${not empty categoryPath}">
                            <h1>
                                <a href="${ctx}/portfolio/portfolios?pofolTypeCd=${categoryPath[0].commCd}&rangeSearch=true">${categoryPath[0].commCdNm}</a>
                                <small><a href="${ctx}/portfolio/portfolios?pofolTypeCd=${categoryPath[1].commCd}&rangeSearch=false">${categoryPath[1].commCdNm}</a></small>
                            </h1>
                        </c:if>
                    </div>
                    <!-- 포트폴리오 목록 -->
                    <ul class="v-portfolio-items v-portfolio-standard filterable-items col-4 row clearfix">
                        <c:forEach var="portfolio" items="${portfolioList}">
                            <!-- 대표이미지 선택 -->
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
                            <li class="clearfix v-portfolio-item col-sm-3 standard ${portfolio.pofolTypeCd}">
                                <figure class="animated-overlay overlay-alt">
                                    <img src="${mainImageUrl}" class="attachment-full" style="width: 100%; height: 135px;" onerror="setErrorImage(this);" />
                                    <a href="${ctx}/portfolio/${portfolio.pofolNo}" class="link-to-post"></a>
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
                                        <a href="${ctx}/portfolio/${portfolio.pofolNo}" class="link-to-post">${portfolio.pofolNm}</a>
                                    </h3>
                                    <h5 class="v-portfolio-subtitle">${portfolio.pofolTypeNm}</h5>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>    
            </div>
            <aside class="sidebar left-sidebar col-sm-3">
                <section class="widget v-search-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>검색</span></h4>
                    </div>
                    <form role="search" method="get" id="searchform" class="searchform" action="#">
                        <div class="form-group">
                            <input class="form-control" type="text" value="" name="s" id="s" placeholder="Search" />
                        </div>
                    </form>
                </section>
                <section class="widget v-category-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>카테고리</span></h4>
                    </div>
                    <ul>
                        <li>
                            <div style="padding-top: 10px; padding-bottom: 10px; border-bottom: 1px solid #EBEBEB">
                                <div class="pull-left">
                                    <a href="${ctx}/portfolio/portfolios" style="border-bottom: 0;">전체</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </li>
                        <c:forEach var="category" items="${categoryList}">
                             <li>
                                <div style="padding-top: 10px; padding-bottom: 10px; border-bottom: 1px solid #EBEBEB">
                                    <div class="pull-left">
                                        <a href="${ctx}/portfolio/portfolios?pofolTypeCd=${category.commCd}&rangeSearch=true" style="border-bottom: 0;">${category.commCdNm}</a>
                                    </div>
                                    <div class="pull-right">
                                        <a data-toggle="collapse" href="#collapse${category.commCd}">
                                            <i class="fa fa-plus-square-o"></i>
                                        </a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div id="collapse${category.commCd}" class="panel-collapse collapse">
                                    <ul>
                                        <c:forEach var="subCategory" items="${category.child}">
                                            <li>
                                                <a href="${ctx}/portfolio/portfolios?pofolTypeCd=${subCategory.commCd}&rangeSearch=false" style="border-bottom: 0;">${subCategory.commCdNm}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </section>
                <section class="widget v-tag-cloud-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>태그</span></h4>
                    </div>
                    <div class="tagcloud">
                        <ul class='wp-tag-cloud'>
                            <li><a href="#">CSS 3</a></li>
                            <li><a href="#">HTML 5</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Mobile</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">PHP</a></li>
                            <li><a href="#">Social</a></li>
                            <li><a href="#">video</a></li>
                            <li><a href="#">WordPress</a></li>
                        </ul>
                    </div>
                </section>
            </aside>
        </div>
        <div class="row">
            <div class="col-sm-12 center">
                <!-- 페이지 네비게이션 -->
                <%@include file="/WEB-INF/view/utils/pagination.jsp"%>
            </div>
        </div>
    </div>
    <div class="${containerOption}">
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
                        <a class="btn v-btn v-btn-default no-margin-right no-margin-bottom" href="${ctx}/portfolio/create">새 포트폴리오 등록</a>
                    </div>
                </div>
                <div class="v-bg-overlay"></div>
            </div>
        </div>
    </div>
</div>
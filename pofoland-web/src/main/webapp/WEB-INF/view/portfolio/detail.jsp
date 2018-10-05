<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/style/masterslider.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/skins/default/style.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/style/ms-overlaylayers.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

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

<div class="row center" style="margin-left: 45px; margin-right: 45px; margin-top: 15px;">
    <div class="col-sm-12">
        <div class="v-heading-v2">
            <h1>${portfolio.pofolNm}</h1>
        </div>
    </div>
</div>
<div class="row center" style="margin-left: 45px; margin-right: 45px;">
    <div class="col-sm-12">
        <img src="${mainImageUrl}" style="width: 720px; height: 480px;">
    </div>
    <div class="col-sm-12">
        <div class="tab-pane fade active in" id="tagline" style="margin-top: 20px;">
            <div class="v-shadow-wrap">
                <div class="v-tagline-box v-tagline-box-v1 v-box-shadow shadow-effect-2">
                    ${portfolio.pofolDesc}
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="full-width-display-wrap">
        <figure class="media-wrap fw-media-wrap">
            <figure class="media-wrap fw-media-wrap">
                <!-- template -->
                <div class="ms-overlay-layers-template" id="slider1-wrapper">
                    <!-- masterslider -->
                    <div class="master-slider ms-skin-default" id="masterslider">
                        <div class="ms-overlay-layers">
                            <h3 class="ms-layer bold-text-white"
                                data-type="text"
                                data-ease="easeOutQuint"
                                data-effect="top(40)"
                                data-duration="1500"
                                data-origin="mc"
                                data-offset-x="0"
                                data-offset-y="0">
                                WE ARE CREATIVE
                            </h3>
                            <h3 class="ms-layer bold-text-white med-text"
                                data-type="text"
                                data-ease="easeOutQuint"
                                data-effect="bottom(40)"
                                data-hide-effect="top(40)"
                                data-hide-duration="300"
                                data-duration="400"
                                data-origin="mc"
                                data-offset-x="0"
                                data-offset-y="50"
                                data-show-on="slide-2"
                                data-masked="true">
                                This overlay and masked layer only shows in 2th slide
                            </h3>
                        </div>
                        <div class="ms-slide slide-1">
                            <img src="${ctx}/static/vendor/volvox/plugins/masterslider/style/blank.gif" data-src="img/slider/slider1.jpg" alt="lorem ipsum dolor sit" />
                        </div>
                        <div class="ms-slide slide-2" data-id="slide-2">
                            <img src="${ctx}/static/vendor/volvox/plugins/masterslider/style/blank.gif" data-src="img/slider/slider2.jpg" alt="lorem ipsum dolor sit" />
                        </div>
                    </div>
                    <!-- end of masterslider -->
                </div>
                <!-- end of template -->
            </figure>
        </figure>
    </div>
</div>


<div class="row center" style="margin-left: 45px; margin-right: 45px;">
    <c:forEach var="page" items="${portfolio.portfolioPages}">
        <div class="row">
            <c:choose>
                <c:when test="${page.pofolPageTypeCd eq '0001'}">
                    <div class="col-sm-12">
                        ${page.pofolPageCont}
                    </div>
                </c:when>
                <c:when test="${page.pofolPageTypeCd eq '0002'}">
                    <div class="col-sm-7">
                        <figure class="media-wrap">
                            <img src="/api/portfolios/${portfolio.pofolNo}/images/${page.pofolFileNo}" style="width: 100%; height: 465px;">
                        </figure>
                    </div>
                    <div class="col-sm-5">
                        <section class="article-body-wrap">
                            <section class="portfolio-detail-description">
                                <div class="body-text clearfix">
                                    ${page.pofolPageCont}
                                </div>
                            </section>
                        </section>
                        <div class="portfolio-options-bar">
                            <div class="share-links clearfix">
                                <ul class="bar-styling">
                                    <li class="sf-love">
                                        <div class="like-info">
                                            <div class="like-info-wrap">
                                                <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                                <span class="like-count">15</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="mail"><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:when test="${page.pofolPageTypeCd eq '0003'}">
                    ${page.pofolPageCont}
                </c:when>
            </c:choose>
        </div>
        <h2>- ${page.sortOrder} -</h2>
        <hr>
    </c:forEach>
</div>

<script src="${ctx}/static/vendor/volvox/plugins/masterslider/masterslider.min.js"></script>
<script src="${ctx}/static/assets/js/portfolio/detail.js"></script>
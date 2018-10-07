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
    <div class="carousel-wrap" style="border: 1px solid black;">
        <div class="owl-carousel" data-plugin-options='{"items": 1, "singleItem": false, "navigation": true, "pagination": false}'>
            <c:forEach var="page" items="${portfolio.portfolioPages}">
                <div class="item">
                    <!-- 페이지 내용 -->
                    <div class="row">
                        <c:choose>
                            <c:when test="${page.pofolPageTypeCd eq '0001'}">
                                <div class="col-sm-12">
                                    ${page.pofolPageCont}
                                </div>
                            </c:when>
                            <c:when test="${page.pofolPageTypeCd eq '0002'}">
                                <div class="col-sm-7">
                                    <img class="img-responsive" src="/api/portfolios/${portfolio.pofolNo}/images/${page.pofolFileNo}" />
                                </div>
                                <div class="col-sm-5">
                                    ${page.pofolPageCont}
                                </div>
                            </c:when>
                            <c:when test="${page.pofolPageTypeCd eq '0003'}">
                                ${page.pofolPageCont}
                            </c:when>
                        </c:choose>
                    </div>
                    <!-- 페이지 번호 -->
                    <div class="row center">
                        <div class="col-sm-12">
                            <h5>- ${page.sortOrder} -</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<script src="${ctx}/static/assets/js/portfolio/detail.js"></script>
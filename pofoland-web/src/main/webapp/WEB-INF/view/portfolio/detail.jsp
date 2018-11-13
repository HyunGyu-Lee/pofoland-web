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
        <img src="${mainImageUrl}" style="width: 720px; height: 480px;" onerror="setErrorImage(this);">
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
        <div class="owl-carousel" data-plugin-options='{"singleItem": true, video:true}'>
            <c:forEach var="page" items="${portfolio.portfolioPages}">
                <c:choose>
                    <c:when test="${page.pofolPageTypeCd eq '0001'}">
                        <div class="item">
                            <div>
                                ${page.pofolPageCont}
                            </div>
                            <div class="row center">
                                <div class="col-sm-12">
                                    <h5>- ${page.sortOrder} -</h5>
                                </div>
                            </div>
                        </div>
                    </c:when>
                    <c:when test="${page.pofolPageTypeCd eq '0002'}">
                        <div class="item">
                            <div class="pull-left">
                                <img class="img-responsive" src="/api/portfolios/${portfolio.pofolNo}/images/${page.pofolFileNo}" onerror="setErrorImage(this);" />
                            </div>
                            <div class="pull-right">
                                ${page.pofolPageCont}
                            </div>
                            <div class="clearfix"></div>
                            <div class="row center">
                                <div class="col-sm-12">
                                    <h5>- ${page.sortOrder} -</h5>
                                </div>
                            </div>                            
                        </div>
                    </c:when>
                    <c:when test="${page.pofolPageTypeCd eq '0003'}">
                        <div class="item-video">
                            <div class="pull-left">
                                <video width="100%" height="450" controls>
                                    <source src="/api/portfolios/${portfolio.pofolNo}/videos/${page.pofolFileNo}" type="video/mp4"></source>
                                </video>
                            </div>
                            <div class="pull-right">
                                ${page.pofolPageCont}
                            </div>
                            <div class="clearfix"></div>
                            <div class="row center">
                                <div class="col-sm-12">
                                    <h5>- ${page.sortOrder} -</h5>
                                </div>
                            </div>                            
                        </div>
                    </c:when>
                </c:choose>
            </c:forEach>
        </div>
    </div>
</div>

<script src="${ctx}/static/assets/js/portfolio/detail.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Current Page CSS -->
<link href="${vendorPath}/volvox/plugins/masterslider/style/masterslider.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/skins/default/style.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/style/ms-overlaylayers.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/skins/black-2/style.css" rel="stylesheet" />

<script type="text/javascript">
    var pofolNo = ${portfolio.pofolNo};
</script>

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
<div style="background-color: #eeeeee">
    <!-- 포트폴리오 슬라이드 -->
    <div class="container-fluid">
        <div class="carousel-wrap no-padding panel panel-default">
            <div class="owl-carousel" data-plugin-options='{"singleItem": true, video:true}'>
                <c:forEach var="page" items="${portfolio.portfolioPages}">
                <div class="<c:out value="${page.pofolPageTypeCd eq '0003' ? 'item-video' : 'item'} panel-body"></c:out>">
                    <c:choose>
                        <c:when test="${page.pofolPageTypeCd eq '0001'}">
                            <div class="pageContentWrap card">
                                ${page.pofolPageCont}
                            </div>
                        </c:when>
                        <c:when test="${page.pofolPageTypeCd eq '0002'}">
                            <div class="pageContentWrap">
                                <div class="leftContent center pull-left card">
                                    <img src="/api/portfolio/${portfolio.pofolNo}/images/${page.pofolFileNo}" onerror="setErrorImage(this);" style="height: 100%;"/>
                                </div>
                                <div class="rightContent pull-right card">
                                    ${page.pofolPageCont}
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </c:when>
                        <c:when test="${page.pofolPageTypeCd eq '0003'}">
                            <div class="pageContentWrap">
                                <div class="leftContent center pull-left card">
                                    <video width="100%" height="655px;" controls>
                                        <source src="/api/portfolio/${portfolio.pofolNo}/videos/${page.pofolFileNo}" type="video/mp4"></source>
                                    </video>
                                </div>
                                <div class="rightContent pull-right card">
                                    ${page.pofolPageCont}
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </c:when>
                    </c:choose>
                    <div class="pageFooterWrap">
                        <div class="center">
                            <h5>- ${page.sortOrder} -</h5>
                        </div>
                    </div>                            
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- 포트폴리오 기본 정보 및 등록자 정보 -->
    <div class="container">
        <div class="panel panel-default" style="border-radius: 0px;">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-6">
                        <section class="widget v-tag-cloud-widget clearfix" style="padding-bottom: 0px;">
                            <div class="tagcloud">
                                <ul class='wp-tag-cloud'>
                                    <c:forEach var="hashTag" items="${portfolio.portfolioHashTags}">
                                        <li><a href="hashtags/${hashTag.tagNm}" rel="tag">#${hashTag.tagNm}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </section>
                    </div>
                    <div class="col-sm-6">
                        <div class="pull-right portfolio-options-bar" style="margin-bottom: 0px;">
                            <div class="share-links clearfix">
                                <ul class="bar-styling">
                                    <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="mail"><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style="margin-top: 15px; margin-bottom: 15px;">
                <div class="row">
                    <div class="col-sm-6">
                        <section class="article-body-wrap">
                            <section class="portfolio-detail-description">
                                <div class="body-text clearfix">
                                    <div class="v-heading-v3 no-margin-bottom">
                                        <h2>
                                            ${portfolio.pofolNm}
                                        </h2>
                                    </div>
                                    <p>
                                        ${portfolio.pofolDesc}
                                    </p>
                                    <p>
                                        <fmt:formatDate value="${portfolio.regDtm}" pattern="yyyy-MM-dd"/>
                                    </p>
                                </div>
                            </section>
                        </section>
                    </div>
                    <div class="col-sm-6">
                        <section class="article-body-wrap no-margin-bottom">
                            <div class="author-info-wrap clearfix" style="margin-top: 0px;">
                                <div class="author-avatar">
                                    <img alt="author" src="${vendorPath}/volvox/img/avatar.png" class="avatar photo">
                                </div>
                                <div class="author-bio">
                                    <div class="author-name">
                                        <h3>이현규</h3>
                                    </div>
                                    <div class="author-bio-text">
                                        <p>안녕하세요 핸드폰게임을 좋아하는 개발자입니다^^</p>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
                <hr style="margin-top: 15px; margin-bottom: 15px;">
                <div class="row">
                    <div class="col-sm-12 align-right">
                        <button type="button" id="btnEditPortfolio" class="btn v-btn v-btn-default no-three-d">수정</button>
                        <button type="button" id="btnDelPortfolio" class="btn v-btn v-btn-danger no-three-d">삭제</button>
                    </div>
                </div>
            </div>
        </div>
        <%-- <div class="v-portfolio-item-content panel panel-default">
            <div class="row panel-body">
                <div class="col-sm-8 center">
                    <figure class="media-wrap">
                        <img src="${mainImageUrl}" style="height: 480px !important; width: auto !important;" onerror="setErrorImage(this);"/>
                    </figure>
                </div>
                <div class="col-sm-4">
                    <section class="article-body-wrap">
                        <section class="portfolio-detail-description">
                            <div class="body-text clearfix">
                                <div class="v-heading-v3">
                                    <h2><span>${portfolio.pofolNm}</span></h2>
                                    <div class="horizontal-break"></div>
                                </div>
                                <p>
                                    ${portfolio.pofolDesc}
                                </p>
                            </div>
                        </section>
                        <div class="portfolio-v-blog-item-info">
                            <ul class="portfolio-categories">
                                <c:forEach var="hashTag" items="${portfolio.portfolioHashTags}">
                                    <li><a href="/hashtags/${hashTag.tagNm}" rel="tag">${hashTag.tagNm}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </section>
                    <div class="portfolio-options-bar">
                        <div class="share-links clearfix">
                            <ul class="bar-styling">
                                <!-- <li class="sf-love">
                                    <div class="like-info">
                                        <div class="like-info-wrap">
                                            <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                            <span class="like-count">15</span>
                                        </div>
                                    </div>
                                </li> -->
                                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="mail"><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
    </div>
</div>

<script src="${assetPath}/js/portfolio/detail.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

<div class="v-call-to-action no-shadow v-bg-stylish v-bg-stylish-v4" style="background-image: url(static/vendor/volvox/img/slider/geometic-bg-white-2.jpg);">
    <div class="v-call-to-action-wrap clearfix">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="v-call-to-action-inner">
                        <h1>내 포트폴리오 목록</h1>
                        <h3>총 5개</h3>
                    </div>
                </div>
                <div class="col-sm-3 ">
                    <a class="btn v-btn v-second-dark pull-right" href="${ctx}/portfolio/management"><span>새 포트폴리오 등록</span></a>
                </div>
            </div>
        </div>
    </div>
</div>

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
                                <li style="float: left;"><a href="#" class="${category.commCd}" data-filter=".${category.commCd}"><span class="item-name">${category.commCdNm}</span><span class="item-count">0</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    
                    <!-- 포트폴리오 목록 -->
                    <ul class="v-portfolio-items v-portfolio-standard filterable-items col-4 row clearfix">
                        <li class="clearfix v-portfolio-item col-sm-3 standard 01">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-1.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">24</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Vivamus Tristique</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Business</h5>
                            </div>
                        </li>
                    </ul>
                    
                    <!-- 페이지 네비게이션 -->
                    <ul class="pagination pagination-lg">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next <i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
    </div>

    <div class="v-bg-stylish v-bg-stylish-v4 no-shadow padding-40" style="background-image: url(static/vendor/volvox/img/slider/geometic-bg-white-2.jpg);">
        <div class="container">

            <div class="row center">
                <div class="v-content-wrapper">
                    <div class="col-sm-12">

                        <p class="v-smash-text-large">
                            <span>Interested In Working With Us?</span>
                        </p>

                        <p class="lead">
                            This is an example of a portfolio entry.
                        </p>

                    </div>

                    <div class="col-sm-12">
                        <a class="btn v-btn v-btn-default no-margin-right no-margin-bottom" href="page-about-us.html">Get In Touch</a>
                    </div>
                </div>

                <!--<div class="v-bg-overlay"></div>-->
            </div>
        </div>
    </div>
</div>
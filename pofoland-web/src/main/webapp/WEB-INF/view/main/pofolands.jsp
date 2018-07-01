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
                        <h1>Portfolio Four Columns</h1>
                        <h3>This is an example of a portfolio entry.</h3>
                    </div>
                </div>
                <div class="col-sm-3 ">
                    <a class="btn v-btn v-second-dark pull-right" href="#"><i class="fa fa-cloud-download"></i><span>Buy Now</span></a>
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
                    <div class="v-portfolio-filter-wrap row clearfix">
                        <ul class="v-portfolio-filter-nav bar-styling filtering col-sm-12 clearfix">
                            <li class="all selected"><a data-filter="*" href="#"><span class="item-name">All</span><span class="item-count">0</span></a></li>
                            <li><a href="#" class="beautiful" data-filter=".beautiful"><span class="item-name">Beautiful</span><span class="item-count">0</span></a></li>
                            <li><a href="#" class="creation" data-filter=".creation"><span class="item-name">Creation</span><span class="item-count">0</span></a></li>
                            <li><a href="#" class="business" data-filter=".business"><span class="item-name">Business</span><span class="item-count">0</span></a></li>
                            <li><a href="#" class="nature" data-filter=".nature"><span class="item-name">Nature</span><span class="item-count">0</span></a></li>
                            <li><a href="#" class="lifestyle" data-filter=".lifestyle"><span class="item-name">Lifestyle</span><span class="item-count">0</span></a></li>
                        </ul>
                    </div>

                    <ul class="v-portfolio-items v-portfolio-standard filterable-items col-4 row clearfix">

                        <li class="clearfix v-portfolio-item col-sm-3 standard   business">
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

                        <li class="clearfix v-portfolio-item col-sm-3 standard   lifestyle creation">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-2.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">21</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Cras Aliquam</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Lifestyle</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   creation">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-17.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a><span class="like-count">18</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Suspendisse Euismod</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Creation</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   lifestyle creation nature">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-4.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a><span class="like-count">10</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Proin Faucibus</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Lifestyle</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   beautiful nature">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-5.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">86</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Mauris Quis Sapien</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Beautiful</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   beautiful">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-16.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">67</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single.html" class="link-to-post">Faucibus Pretium</a></h3>
                                <h5 class="v-portfolio-subtitle">Beautiful</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   lifestyle creation">
                            <figure class="animated-overlay overlay-alt">
                                <div class="flexslider thumb-slider">
                                    <ul class="slides">
                                        <li><a href="portfolio-single-fw-slides.html" class="link-to-post">
                                            <img src='img/static/bus-13.jpg' /></a></li>
                                        <li><a href="portfolio-single-fw-slides.html" class="link-to-post">
                                            <img src='img/static/bus-15.jpg' /></a></li>
                                        <li><a href="portfolio-single-fw-slides.html" class="link-to-post">
                                            <img src='img/static/bus-18.jpg' /></a></li>
                                    </ul>
                                </div>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a><span class="like-count">73</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single-fw-slides.html" class="link-to-post">Fringilla Suscipit</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Lifestyle</h5>
                            </div>
                        </li>

                        <li class="clearfix v-portfolio-item col-sm-3 standard   nature">
                            <figure class="animated-overlay overlay-alt">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-7.jpg" />
                                <a href="portfolio-single-fw-slides.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                </figcaption>
                            </figure>
                            <div class="v-portfolio-item-info">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">46</span>
                                    </div>
                                </div>
                                <h3 class="v-portfolio-item-title">
                                    <a href="portfolio-single-fw-slides.html" class="link-to-post">Duis a Nisl</a>
                                </h3>
                                <h5 class="v-portfolio-subtitle">Nature</h5>
                            </div>
                        </li>
                    </ul>

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
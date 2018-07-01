<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />

<!--Set your own slider options. Look at the v_RevolutionSlider() function in 'theme-core.js' file to see options-->
<div class="home-slider-wrap fullwidthbanner-container" style="background-color: rgb(60, 60, 60);">
    <div class="v-rev-slider" data-slider-options='{ }'>
        <ul>
            <li data-transition="fade" data-slotamount="7" data-masterspeed="600">
                <img src="${ctx}/static/vendor/volvox/img/slider/slider6.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                <div class="tp-caption sfl tp-resizeme light_heavy_70_shadowed start white-color"
                     data-x="center"
                     data-hoffset="0"
                     data-y="center"
                     data-voffset="-70"
                     data-speed="500"
                     data-start="700"
                     data-easing="Power3.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0.1"
                     data-endelementdelay="0.1"
                     data-endspeed="300"
                     style="z-index: 2; line-height: 60px; letter-spacing: 7px; font-size: 60px;">
                    WELCOME TO VOLVOX
                </div>
                <div class="tp-caption sfl tp-resizeme start white-color"
                     data-x="center"
                     data-hoffset="0"
                     data-y="center"
                     data-voffset="0"
                     data-speed="500"
                     data-start="1200"
                     data-easing="Power3.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0.1"
                     data-endelementdelay="0.1"
                     data-endspeed="300"
                     style="z-index: 3; line-height: 20px; letter-spacing: 3px; font-size: 23px;">
                    CHECK ALL THE AWESOME FEATURES
                </div>
                <div class="tp-caption sfl stl"
                     data-x="center"
                     data-y="300"
                     data-speed="600"
                     data-start="1500"
                     data-easing="Power1.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0"
                     data-endelementdelay="0"
                     data-endspeed="300">
                    <a href='#' class="btn v-btn v-second-light">CHECK THE FEATURES</a>
                </div>
                <!--<div class="v-slider-overlay overlay-colored"></div>-->
            </li>

            <li data-transition="fade" data-slotamount="7" data-masterspeed="600">
                <img src="${ctx}/static/vendor/volvox/img/slider/slider9.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                <div class="tp-caption lfb light_heavy_70_shadowed stb white-color"
                     data-x="center" data-hoffset="0"
                     data-y="center" data-voffset="-100"
                     data-speed="800"
                     data-start="600"
                     data-easing="Circ.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0"
                     data-endelementdelay="0"
                     data-endspeed="600"
                     style="z-index: 2; line-height: 60px; letter-spacing: 7px; font-size: 60px;">
                    RESPONSIVE DESIGN
                </div>
                <div class="tp-caption v-caption-h1 lfb st center"
                     data-x="center" data-hoffset="0"
                     data-y="bottom" data-voffset="-250"
                     data-speed="700"
                     data-start="1100"
                     data-easing="Circ.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0"
                     data-endelementdelay="0"
                     data-endspeed="600">
                    Simple yet powerful options allow you to create any
                    <br />
                    type of website you can imagine.
                </div>
                <div class="tp-caption lfb stb"
                     data-x="center" data-hoffset="0"
                     data-y="bottom" data-voffset="-150"
                     data-speed="700"
                     data-start="1700"
                     data-easing="Circ.easeInOut"
                     data-splitin="none"
                     data-splitout="none"
                     data-elementdelay="0"
                     data-endelementdelay="0"
                     data-endspeed="600">
                    <a href='#' class="btn v-btn v-second-light">FIND OUT MORE</a>
                </div>
                <!--<div class="v-slider-overlay overlay-colored"></div>-->
            </li>

        </ul>
    </div>

    <div class="shadow-right"></div>
</div>

<div class="v-page-wrap no-bottom-spacing">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="feature-box left-icon-v2 v-animation" data-animation="flip-y" data-delay="0">
                    <i class="fa fa-cloud-download v-icon icn-holder medium"></i>
                    <div class="feature-box-text">
                        <h3>Updates & New Features</h3>
                        <div class="feature-box-text-inner">
                            <p>
                                Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                per inceptos himenaeos. Nulla nunc dui, alenga simtosa litora tristique in semper vellet semper.
                            </p>
                            <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature-box left-icon-v2 v-animation" data-animation="flip-y" data-delay="200">
                    <i class="fa fa-cogs v-icon icn-holder medium"></i>
                    <div class="feature-box-text">
                        <h3>Boxed & Wide Layout</h3>
                        <div class="feature-box-text-inner">
                            <p>
                                Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                per inceptos himenaeos. Nulla nunc dui, alenga simtosa litora tristique in semper vellet semper.
                            </p>
                            <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="feature-box left-icon-v2 v-animation" data-animation="flip-y" data-delay="400">
                    <i class="icon-trophy v-icon icn-holder medium"></i>
                    <div class="feature-box-text">
                        <h3>Advanced Typography</h3>
                        <div class="feature-box-text-inner">
                            <p>
                                Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                per inceptos himenaeos. Nulla nunc dui, tristique in semper vel ad litora torquent per.
                            </p>
                            <a href="#" class="read-more">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="v-spacer col-sm-12 v-height-standard"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="v-heading-v2">
                    <h3>Featured Works</h3>
                </div>
                <div class="carousel-wrap">
                    <div class="owl-carousel v-portfolio-items" data-plugin-options='{"items": 4, "singleItem": false, "autoPlay": true}'>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-6.jpg" width="420" height="315" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Suspendisse Euismod</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-7.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Proin Faucibus</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-8.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Faucibus Pretium</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-4.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Cras Aliquam</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-16.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Proin Faucibus</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="v-portfolio-item">
                            <figure class="animated-overlay">
                                <img src="${ctx}/static/vendor/volvox/img/static/bus-17.jpg" />
                                <a href="portfolio-single.html" class="link-to-post"></a>
                                <figcaption>
                                    <div class="thumb-info">
                                        <h4>Mauris Quis Sapien</h4>
                                        <i class="fa fa-angle-right"></i>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="customNavigation">
                        <a class="prev"><i class="fa fa-angle-left"></i></a>
                        <a class="next"><i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="v-spacer col-sm-12 v-height-standard"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>Why Choose Us</h3>
                </div>
                <div class="v-wrapper">
                    <ul class="v-list">
                        <li><i class="fa fa-star-o"></i><span>Your content will always look good on any screen.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Sliders give you the opportunity to showcase.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Unlimited color options with a backed color picker.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Multiple layout for home pages, portfolio & blog.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Class aptent taciti sociosqu ad litora.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Unlimited color options with backed color picker.</span></li>
                        <li><i class="fa fa-star-o"></i><span>Your content will always look good on any screen.</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>Latest From Blog</h3>
                </div>
                <div class="carousel-wrap">
                    <div class="owl-carousel" data-plugin-options='{"items": 1, "autoPlay": 12000, "autoHeight": true}'>
                        <div class="item">
                            <div class="v-blog-recent-post">
                                <div class="blog-list-item-date">03<span>Mar</span></div>
                                <div class="blog-list-content">
                                    <h6 class="special"><a href="#" title="Youtube Post">Standard Image Post</a></h6>
                                    <small>5 Comments</small><div class="blog-list-item-excerpt">
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            Aliquam bibendum, libero eu rutrum feugiat, urna orci porta,
                                            Lorem ipsum dolor sit consectetur adipiscing elit...
                                        </p>
                                        <a href="#" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="v-blog-recent-post">
                                <div class="blog-list-item-date">03<span>Mar</span></div>
                                <div class="blog-list-content">
                                    <h6 class="special"><a href="#" title="Youtube Post">Full Width Media Post</a></h6>
                                    <small>2 Comments</small><div class="blog-list-item-excerpt">
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                            urna orci porta, Lorem ipsum dolor sit amet, consectetur adipiscing
                                            Lorem ipsum dolor sit amet, consectetur elit...
                                        </p>
                                        <a href="#" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>What Clients Say</h3>
                </div>

                <div class="carousel-wrap">
                    <div class="v-testimonial-wrap-v2">
                        <div class="owl-carousel" data-plugin-options='{"items": 1, "autoPlay": 9000, "pagination": true, "autoHeight": true}'>

                            <div class="v-testimonial-item">
                                <div class="testimonial testimonial-thumb-side">
                                    <div class="testimonial-author">
                                        <figure class="featured-thumbnail">
                                            <img src="${ctx}/static/vendor/volvox/img/team/team08.jpg">
                                        </figure>
                                    </div>

                                    <div class="wrapper">
                                        <div class="excerpt">
                                            Proin fermentum, augue id porttitor condimentum, tellus nisi dapibus est, ultricies
                                            malesuada metus massa a orci. Donec consequat ornare erat, vitae vehicula orci feugiat ac
                                            nisi dapibus est augue id porttitor condimentum tellus.
                                        </div>
                                        <div class="user">- Tim Barkley, <span>CEO</span></div>
                                    </div>
                                </div>
                            </div>

                            <div class="v-testimonial-item">
                                <div class="testimonial testimonial-thumb-side">
                                    <div class="testimonial-author">
                                        <figure class="featured-thumbnail">
                                            <img src="${ctx}/static/vendor/volvox/img/team/team08.jpg">
                                        </figure>
                                    </div>

                                    <div class="wrapper">
                                        <div class="excerpt">
                                            Proin fermentum, augue id porttitor condimentum, tellus nisi dapibus est, ultricies
                                            malesuada metus massa a orci. Donec consequat ornare erat, vitae vehicula orci feugiat ac
                                            fermentum, augue id porttitor condimentum, tellus nisi dapibus est, ultricies.
                                        </div>
                                        <div class="user">- Tim Barkley, <span>CEO</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
    </div>

    <div class="v-call-to-action v-bg-stylish v-bg-stylish-v4">
        <div class="v-call-to-action-wrap clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="v-call-to-action-inner">
                            <h1>Volvox is the Perfect Solition for Your Business.</h1>
                            <h3>Don't Forget to Rate the Template. Thanks so much!</h3>
                        </div>
                    </div>
                    <div class="col-sm-3 pull-right">
                        <a class="btn v-btn v-btn-default no-three-d" href="#"><i class="fa fa-cloud-download"></i><span>Download Now</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
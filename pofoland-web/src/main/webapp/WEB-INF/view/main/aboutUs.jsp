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
                    <h1 class="entry-title">About Us - Basic</h1>
                </div>

                <ol class="breadcrumb">
                    <li><a href="#">Pages</a></li>
                    <li class="active">About Us</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="v-page-wrap no-bottom-spacing">

    <div class="container">
        <div class="row">
            <div class="v-gallery-widget col-sm-6">
                <div class="gallery-wrap">
                    <div class="flexslider gallery-slider" data-transition="slide" data-autoplay="no">
                        <ul class="slides">
                            <li>
                                <a href="${ctx}/static/vendor/volvox/img/24x.jpg" class="view">
                                    <img src="${ctx}/static/vendor/volvox/img/24x.jpg" width="1280" height="720" />
                                </a>
                            </li>
                            <li>
                                <a href="${ctx}/static/vendor/volvox/img/23x.jpg" class="view">
                                    <img src="${ctx}/static/vendor/volvox/img/23x.jpg" width="1280" height="720" />
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-6">

                <div class="v-heading-v2">
                    <h3>Welcome to Volvox</h3>
                </div>

                <p>
                    <span class="dropcap3">L</span>
                    orem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra mauris eget tortor
                    imperdiet vehicula. Proin egestas diam ac mauris molestie hendrerit. Quisque nec nisi tortor.
                    Etiam at mauris sit amet magna suscipit hend merit non sed ligula. Vivamus purus odio, mollis. 
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra mauris eget tortor
                    imperdiet vehicula.
                </p>
                <blockquote>
                    <p>
                        Mauris aliquet ultricies ante, non faucibus ante gravida sed.
                        Sed ultrices pellentesque purus, vulputate volutpat
                        ipsum hendrerit sed neque sed sapien rutrum justo ultrices. sapien rutrum laoreet justo ultrices.
                    </p>
                    <small>Jhone Doe <cite title="Source Title">-CEO</cite></small>
                </blockquote>
            </div>
        </div>
    </div>

    <div class="v-spacer col-sm-12 v-height-small"></div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>What Clients Say</h3>
                </div>

                <div class="carousel-wrap">
                    <div class="v-testimonial-wrap">
                        <div class="owl-carousel" data-plugin-options='{"items": 1, "autoPlay": 12000, "pagination": true, "autoHeight": true}'>

                            <div class="v-testimonial-item">
                                <div class="testimonial bordered-with-thumb">
                                    <div class="inner">
                                        <div class="excerpt">
                                            Pellentesque habitant morbi tristique senectus et netus et malesuada
                                            fames ac turpis egestas. Sed vestibulum orci quam, a feugiat diam congue quis.
                                            Vivamus aliquet felis eu diam ultricies congue. Morbi porta lorem nec conse
                                            tristique senectus et netus et malesuada.
                                        </div>
                                    </div>
                                    <div class="testimonial-author">
                                        <figure class="featured-thumbnail">
                                            <img src="${ctx}/static/vendor/volvox/img/team/team08.jpg">
                                        </figure>
                                        <div class="user">
                                            Tim Barkley
                                        </div>
                                        <p><span>CEO</span></p>
                                    </div>
                                </div>
                            </div>

                            <div class="v-testimonial-item">
                                <div class="testimonial bordered-with-thumb">
                                    <div class="inner">
                                        <div class="excerpt">
                                            Pellentesque habitant morbi tristique senectus et netus et malesuada
                                            fames ac turpis egestas. Sed vestibulum orci quam, a feugiat diam congue quis.
                                            Vivamus aliquet felis eu diam ultricies congue. Morbi porta lorem nec conse
                                            tristique senectus et netus et malesuada.
                                        </div>
                                    </div>
                                    <div class="testimonial-author">
                                        <figure class="featured-thumbnail">
                                            <img src="${ctx}/static/vendor/volvox/img/team/team05.jpg">
                                        </figure>
                                        <div class="user">
                                            MIKE CARGILL
                                        </div>
                                        <p><span>Web Designer</span></p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>About Volvox</h3>
                </div>

                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    <i class="fa fa-star-o"></i>Vision and Mission
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse">
                            <div class="panel-body">
                                <span class="dropcap3">L</span> orem ipsum dolor sit amet, consec tetur adipi scing elit.
                                Etiam aliquam massa quis mauris sollicitudin quis comm odo venenatis ligula commodo
                                blandit convallis dignissim pharetra dignissim mauris venenatis ligula.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                    <i class="fa fa-star-o"></i>Our Philosophy
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse">
                            <div class="panel-body">
                                <span class="dropcap3">L</span>
                                orem ipsum dolor sit amet, consectetur adipiscing elit.
                                Etiam aliquam massa quis mauris sollicitudin commodo venenatis ligula commodo.
                                Sed blandit convallis dignissim. Pellentesque pharetra velit eu velit elementum.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                    <i class="fa fa-star-o"></i>Services We Offer
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="accordion-body collapse">
                            <div class="panel-body">
                                <span class="dropcap3">Z</span> orem ipsum dolor sit amet, consectetur adipiscing elit.
                                Etiam aliquam massa quis mauris sollicitudin commodo venenatis ligula commodo.
                                Sed blandit convallis dignissim. Pellentesque pharetra velit eu velit elementum et
                                convallis erat vulputate. Sed in nulla ut elit mollis posuere.
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                    <i class="fa fa-star-o"></i>Our Commitments
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="accordion-body collapse">
                            <div class="panel-body">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse viverra mauris eget tortor
                                imperdiet vehicula. Proin egestas diam ac mauris molestie hendrerit. Quisque nec nisi tortor.
                                Etiam at mauris sit amet magna suscipit hend merit non sed ligula. Vivamus purus odio, mollis.
                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="col-sm-4">
                <div class="v-heading-v2">
                    <h3>Our Crazy Skills</h3>
                </div>

                <div class="progress-bars">
                    <div class="progress-label">
                        <span>HTML/CSS</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" data-appear-progress-animation="100%">
                            <span class="progress-bar-tooltip">100%</span>
                        </div>
                    </div>
                    <div class="progress-label">
                        <span>Design</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" data-appear-progress-animation="85%" data-appear-animation-delay="300">
                            <span class="progress-bar-tooltip">85%</span>
                        </div>
                    </div>
                    <div class="progress-label">
                        <span>WordPress</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" data-appear-progress-animation="75%" data-appear-animation-delay="500">
                            <span class="progress-bar-tooltip">75%</span>
                        </div>
                    </div>
                    <div class="progress-label">
                        <span>Bootstrap</span>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" data-appear-progress-animation="95%" data-appear-animation-delay="900">
                            <span class="progress-bar-tooltip">95%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="v-spacer col-sm-12 v-height-standard"></div>
    </div>

    <!--Meet Our Team-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="v-heading-v2">
                    <h3>Meet Our Team</h3>
                </div>
            </div>

            <div class="v-team-member-box col-sm-3">
                <div class="cover">

                    <div class="v-team-member-img">
                        <img src="${ctx}/static/vendor/volvox/img/team/team04.png" alt="Olivia Marica">
                    </div>

                    <div class="member-info">
                        <div class="heading">
                            <div class="v-team-member-info">
                                <h4 class="v-team-member-name">John Doe</h4>
                                <span class="v-team-member-statu">Web Developer</span>
                            </div>
                        </div>

                        <div class="v-team-member-desc">
                            <p>The means of production belong to society, and the is merely the trench where duty is performed.</p>
                        </div>

                        <ul class="widget social-icons">
                            <li class="twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="skype"><a href="#" target="_blank"><i class="fa fa-skype"></i><i class="fa fa-skype"></i></a></li>
                            <li class="googleplus"><a href="#" target="_blank"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="v-team-member-box col-sm-3">
                <div class="cover">

                    <div class="v-team-member-img">
                        <img src="${ctx}/static/vendor/volvox/img/team/team01.png" alt="Olivia Marica">
                    </div>

                    <div class="member-info">
                        <div class="heading">
                            <div class="v-team-member-info">
                                <h4 class="v-team-member-name">Olivia Marica</h4>
                                <span class="v-team-member-statu">HTML/CSS developer</span>
                            </div>
                        </div>

                        <div class="v-team-member-desc">
                            <p>The means of production belong to society, and the is merely the trench where duty is performed.</p>
                        </div>

                        <ul class="widget social-icons">
                            <li class="twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="skype"><a href="#" target="_blank"><i class="fa fa-skype"></i><i class="fa fa-skype"></i></a></li>
                            <li class="googleplus"><a href="#" target="_blank"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="v-team-member-box col-sm-3">
                <div class="cover">

                    <div class="v-team-member-img">
                        <img src="${ctx}/static/vendor/volvox/img/team/team02.png" alt="Dan Petrovsky">
                    </div>

                    <div class="member-info">
                        <div class="heading">
                            <div class="v-team-member-info">
                                <h4 class="v-team-member-name">Dan Petrovsky</h4>
                                <span class="v-team-member-statu">JS developer</span>
                            </div>
                        </div>

                        <div class="v-team-member-desc">
                            <p>A more structured connection with the mass is needed, and we the course of the last years.</p>
                        </div>

                        <ul class="widget social-icons">
                            <li class="twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="skype"><a href="#" target="_blank"><i class="fa fa-skype"></i><i class="fa fa-skype"></i></a></li>
                            <li class="googleplus"><a href="#" target="_blank"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="v-team-member-box  col-sm-3">
                <div class="cover">

                    <div class="v-team-member-img">
                        <img src="${ctx}/static/vendor/volvox/img/team/team03.png" alt="Mike Delphino">
                    </div>

                    <div class="member-info">
                        <div class="heading">
                            <div class="v-team-member-info">
                                <h4 class="v-team-member-name">Mike Delphino</h4>
                                <span class="v-team-member-statu">PHP developer</span>
                            </div>
                        </div>

                        <div class="v-team-member-desc">
                            <p>The vestiges of the past are brought into the constinual labor is necessary to eradicate them.</p>
                        </div>

                        <ul class="widget social-icons">
                            <li class="twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="skype"><a href="#" target="_blank"><i class="fa fa-skype"></i><i class="fa fa-skype"></i></a></li>
                            <li class="googleplus"><a href="#" target="_blank"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Meet Our Team-->

    <div class="container">
        <div class="v-spacer col-sm-12 v-height-small"></div>
    </div>

    <!--Our Happy Clients-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="v-heading-v2">
                    <h3>Our Happy Clients</h3>
                </div>
            </div>

            <div class="v-clients-widget col-sm-12">
                <div class="v-clients-wrap carousel-wrap">

                    <div class="owl-carousel" data-plugin-options='{"items": 6, "singleItem": false, "autoPlay": true, "pagination": true}'>

                        <div class="item">
                            <figure>
                                <a href="https://vimeo.com/awards" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/03.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="http://dribbble.com/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/02.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="http://wordpress.org/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/03.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="https://vimeo.com/pro/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/04.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="http://jquery.com/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/05.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="http://wordpress.org/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/01.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="http://www.envato.com/" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/03.png" />
                                </a>
                            </figure>
                        </div>
                        <div class="item">
                            <figure>
                                <a href="https://vimeo.com/ondemand" target="_blank">
                                    <img src="${ctx}/static/vendor/volvox/img/client/04.png" />
                                </a>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Our Happy Clients-->

    <div class="container">
        <div class="v-spacer col-sm-12 v-height-small"></div>
    </div>

    <div class="v-call-to-action v-bg-stylish v-bg-stylish-v3">
        <div class="v-call-to-action-wrap clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="v-call-to-action-inner">
                            <h1>Volvox is a Modern and Fully Responsive Bootstrap Template.</h1>
                        </div>
                    </div>
                    <div class="col-md-3 pull-right">
                        <a href="#" class="btn v-btn v-btn-default" target="_self"><i class="fa fa-fire"></i>Purchase Volvox</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
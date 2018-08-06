<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!-- Menu Attribue -->
<tiles:importAttribute name="menus" />

<!--Header-->
<div class="header-container">
    <header class="header fixed clearfix">

        <div class="container">

            <!--Site Logo-->
            <div class="logo">
                <a href="${ctx}/index">
                    <img alt="Pofoland" src="${ctx}/static/assets/img/logo.png" data-logo-height="35">
                </a>
            </div>
            <!--End Site Logo-->

            <div class="navbar-collapse nav-main-collapse collapse">

                <!--Header Search-->
                <div class="search" id="headerSearch">
                    <a href="#" id="headerSearchOpen"><i class="fa fa-search"></i></a>
                    <div class="search-input">
                        <form id="headerSearchForm" action="#" method="get">
                            <div class="input-group">
                                <input type="text" class="form-control search" name="q" id="q" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>
                        <span class="v-arrow-wrap"><span class="v-arrow-inner"></span></span>
                    </div>
                </div>
                <!--End Header Search-->
                <!--Main Menu-->
                <nav class="nav-main mega-menu">
                    <ul class="nav nav-pills nav-main" id="mainMenu">
                        <c:forEach var="menu" items="${menus}">
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="${menu.menuUrl}">${menu.menuNm}</a>
                            </li>
                        </c:forEach>
                        
                        <%-- <li class="dropdown active">
                            <a class="dropdown-toggle" href="#">Profiles</a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#">Pofolands<i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="${ctx}/portfolio">All Portfolio</a></li>
                                <li><a class="current" href="${ctx}/portfolio/managemet">My Pofoland Management</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#">Jobs</a>
                        </li>
                        <li class="dropdown mega-menu-item mega-menu-fullwidth">
                            <a class="dropdown-toggle" href="#">Community<i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu three-columns">
                                <li>
                                    <div class="mega-menu-content no-smx">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <ul class="sub-menu">
                                                    <li>
                                                        <span class="mega-menu-sub-title">Common Elements</span>
                                                        <ul class="sub-menu">
                                                            <li><a href="element-common.html#gridsystem"><i class="fa fa-star-o"></i>Grid System</a></li>
                                                            <li><a href="element-common.html#typograpy"><i class="fa fa-text-height"></i>Typograpy</a></li>
                                                            <li><a href="element-forms.html"><i class="fa fa-briefcase"></i>Form Elements <span class="v-menu-item-info">Hot</span></a></li>
                                                            <li><a href="element-common.html#lists"><i class="fa fa-list"></i>Lists</a></li>
                                                            <li class="dropdown-submenu">
                                                                <a href="#"><i class="fa fa-book"></i>Glyphicons Icons</a>
                                                                <ul class="dropdown-menu">
                                                                    <li><a href="element-icons.html">Font Awesome Icons</a></li>
                                                                    <li><a href="element-icons-2.html">Streamline Icons</a></li>
                                                                </ul>
                                                            </li>
                                                            <li><a href="element-common.html#info-messages"><i class="fa fa-info-circle"></i>Info Messages</a></li>
                                                            <li><a href="element-common.html#heading-options"><i class="fa fa-magic"></i>Heading Options</a></li>
                                                            <li><a href="element-common.html#tagline"><i class="fa fa-info"></i>Tagline & Info Boxes</a></li>
                                                            <li><a href="element-common.html#pagination"><i class="fa fa-ellipsis-h"></i>Pagination</a></li>
                                                            <li><a href="element-common.html#separator-divider"><i class="fa fa-cut"></i>Separator / Divider</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-4">
                                                <ul class="sub-menu">
                                                    <li>
                                                        <span class="mega-menu-sub-title">Featured Elements</span>
                                                        <ul class="sub-menu">
                                                            <li><a href="index-3.html"><i class="fa fa-youtube-play"></i>Video Section</a></li>
                                                            <li><a href="page-parallax.html"><i class="fa fa-leaf"></i>Paralax Section</a></li>
                                                            <li><a href="element-pricing-tables.html"><i class="fa fa-th"></i>Pricing Tables</a></li>
                                                            <li><a href="element-charts.html"><i class="fa fa-bar-chart-o"></i>Charts <span class="v-menu-item-info">Hot</span></a></li>
                                                            <li><a href="element-progress-bar.html"><i class="fa fa-tasks"></i>Progress Bars</a></li>
                                                            <li><a href="element-tabs.html"><i class="fa fa-sort"></i><span>Tab Control</span></a></li>
                                                            <li><a href="page-meet-team.html"><i class="fa fa-user"></i>Team Elements</a></li>
                                                            <li><a href="element-accordion.html"><i class="fa fa-bars"></i><span>Accordion & Toggles</span></a></li>
                                                            <li><a href="element-call-to-actions.html"><i class="fa fa-thumb-tack"></i>Call To Actions <span class="v-menu-item-info bg-warning">Important</span></a></li>
                                                            <li><a href="element-process-steps.html"><i class="fa fa-sort-amount-asc"></i>Process Steps</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-4">
                                                <ul class="sub-menu">
                                                    <li>
                                                        <span class="mega-menu-sub-title">Interactive Elements</span>
                                                        <ul class="sub-menu">
                                                            <li><a href="element-content-carousel.html"><i class="fa fa-laptop"></i>Content Carousel</a></li>
                                                            <li><a href="element-common2.html#modal-windows"><i class="fa fa-share-square-o"></i>Modal Windows</a></li>
                                                            <li><a href="element-testimonials.html"><i class="fa fa-quote-left"></i>Testimonials</a></li>
                                                            <li><a href="element-brands-clients.html"><i class="fa fa-fire"></i>Brands & Clients</a></li>
                                                            <li><a href="element-common2.html#image-frames"><i class="fa fa-crop"></i>Image Frames</a></li>
                                                            <li><a href="element-buttons.html"><i class="fa fa-twitter"></i>Buttons & Social Icons <span class="v-menu-item-info bg-warning">Wow</span></a></li>
                                                            <li><a href="element-iconboxes.html"><i class="fa fa-location-arrow"></i>Animation & Feature Boxes</a></li>
                                                            <li><a href="element-common2.html#circle-counters"><i class="fa fa-clock-o"></i>Circle Counters</a></li>
                                                            <li><a href="page-about-us-2.html"><i class="fa fa-umbrella"></i>Fancy Heading</a></li>
                                                            <li><a href="element-common2.html#recent-posts"><i class="fa fa-calendar"></i>Recent Posts & News</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle menu-icon" href="#">Portfolio <i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu">
                                    <a href="#">Portfolio Gallery</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-two-gallery.html">Gallery - 2 Columns</a></li>
                                        <li><a href="portfolio-three-gallery.html">Gallery - 3 Columns</a></li>
                                        <li><a href="portfolio-four-gallery.html">Gallery - 4 Columns</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="#">Portfolio Standard</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-two-standard.html">Standard - 2 Columns</a></li>
                                        <li><a href="portfolio-three-standard.html">Standard - 3 Columns</a></li>
                                        <li><a href="portfolio-four-standard.html">Standard - 4 Columns</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="#">Portfolio Masonry</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-masonry-gallery.html">Masonry Gallery</a></li>
                                        <li><a href="portfolio-masonry-standard.html">Masonry Standard</a></li>
                                        <li><a href="portfolio-masonry-fw.html">Masonry Fullwidth Standard</a></li>
                                        <li><a href="portfolio-masonry-fw-2.html">Masonry Fullwidth Gallery</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="#">Portfolio Single</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-single.html">Single Portfolio</a></li>
                                        <li><a href="portfolio-single-slider.html">Single Slider Portfolio</a></li>
                                        <li><a href="portfolio-single-2.html">Single Custom Two</a></li>
                                        <li><a href="portfolio-single-gallery.html">Single Gallery Portfolio</a></li>
                                        <li><a href="portfolio-single-fw.html">Single Full Width Portfolio</a></li>
                                        <li><a href="portfolio-single-fw-slides.html">Single Full Width Slides</a></li>
                                        <li><a href="portfolio-single-extended.html">Single Extended Portfolio <span class="v-menu-item-info">Hot</span></a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a href="#">Portfolio Variations</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="portfolio-right-sidebar.html">Right Sidebar Portfolio</a></li>
                                        <li><a href="portfolio-left-sidebar.html">Left Sidebar Portfolio</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#">Blog <i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu">
                                <!-- <li><a href="blog-standard-sidebar.html">Blog Timeline</a></li> -->
                                <li><a href="blog-standard-sidebar.html">Blog Standard</a></li>
                                <li><a href="blog-mini-sidebar.html">Blog Small</a></li>
                                <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                <li><a href="blog-masonry-fw.html">Blog Fullwidth Masonry</a></li>
                                <li class="dropdown-submenu">
                                    <a href="#">Blog Posts</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="blog-standard-post.html">Standard Post</a></li>
                                        <li><a href="blog-full-width-post.html">Full Width Post</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="contact-us.html">Contact</a>
                            <ul class="dropdown-menu">
                                <li><a href="${ctx}/aboutUs"><i class="fa fa-send-o"></i>Contact Us - v1</a></li>
                                <li><a href="contact-us-2.html"><i class="fa fa-send-o"></i>Contact Us - v2</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" href="#">Support <i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="changelog.html"><i class="fa fa-terminal"></i>Changelog</a></li>
                                <li><a href="theme-plugins.html"><i class="fa fa-star-o"></i>Theme Plugins</a></li>
                            </ul>
                        </li> --%>

                    </ul>
                </nav>
                <!--End Main Menu-->
            </div>
            <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>

        <span class="v-header-shadow"></span>
    </header>
</div>
<!--End Header-->
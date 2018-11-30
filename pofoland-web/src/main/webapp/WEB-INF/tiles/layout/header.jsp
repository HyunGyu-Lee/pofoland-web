<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="menus" />

<div class="header-container">
    <header class="header fixed clearfix">
        <div class="${containerOption}">
            <!--Site Logo-->
            <div class="logo">
                <a href="${ctx}/">
                    <img alt="Pofoland" src="${assetPath}/img/logo.png" data-logo-height="35">
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
                <ui:menu menuList="${menus}" />
            </div>
            <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <span class="v-header-shadow"></span>
    </header>
</div>
<%-- <div class="slideshow">
    <div class="home-slider-wrap fullwidthbanner-container" id="home">
        <div class="v-rev-slider" data-slider-options='{"navigationStyle":"preview3", "startheight": 600}'>
            <ul>
                <li data-transition="fade" data-slotamount="7" data-masterspeed="600">
                    <img src="${vendorPath}/volvox/img/slider/bg-float.png" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                    <div class="tp-caption lfb stb" style="font-family: 'Open Sans'; font-size: 15px; color: white; letter-spacing: 4px;"
                        data-x="center" data-hoffset="0"
                        data-y="center" data-voffset="-50"
                        data-speed="500"
                        data-start="500"
                        data-easing="Circ.easeInOut"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0"
                        data-endelementdelay="0"
                        data-endspeed="300">
                        Create your own special portfolio
                    </div>
                    <div class="tp-caption light_heavy_60_shadowed lfb stb"
                        data-x="center" data-hoffset="0"
                        data-y="center" data-voffset="0"
                        data-speed="800"
                        data-start="600"
                        data-easing="Circ.easeInOut"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0"
                        data-endelementdelay="0"
                        data-endspeed="600">
                        POFOLAND
                    </div>
                    <div class="tp-caption v-caption-h1 lfb st center"
                        data-x="center" data-hoffset="0"
                        data-y="bottom" data-voffset="-200"
                        data-speed="700"
                        data-start="1100"
                        data-easing="Circ.easeInOut"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0"
                        data-endelementdelay="0"
                        data-endspeed="600">
                        당신만의 포트폴리오를 만들어보세요
                    </div>
                    <div class="tp-caption lfb stb"
                        data-x="center" data-hoffset="0"
                        data-y="bottom" data-voffset="-110"
                        data-speed="700"
                        data-start="1700"
                        data-easing="Circ.easeInOut"
                        data-splitin="none"
                        data-splitout="none"
                        data-elementdelay="0"
                        data-endelementdelay="0"
                        data-endspeed="600">
                        <a href='#' class="btn v-btn v-second-light">포트폴리오 등록</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div> --%>
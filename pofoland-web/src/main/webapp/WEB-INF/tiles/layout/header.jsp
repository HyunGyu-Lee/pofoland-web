<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <!--Main Menu-->
                <nav class="nav-main mega-menu">
                    <ul class="nav nav-pills nav-main" id="mainMenu">
                        <!-- TODO Child메뉴 recursive하게 호출하는 방법찾아 변경할 것 -->
                        <c:forEach var="oneDepthMenu" items="${menus}">
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="${oneDepthMenu.menuUrl}">${oneDepthMenu.menuNm}</a>
                                <ul class="dropdown-menu">
                                    <c:forEach var="twoDepthMenu" items="${oneDepthMenu.child}">
                                        <c:if test="${requestScope['javax.servlet.forward.request_uri'] eq twoDepthMenu.menuUrl}">
                                            <c:set var="currentOneDepth" value="${oneDepthMenu.menuNm}" scope="request"/>
                                            <c:set var="currentTwoDepth" value="${twoDepthMenu.menuNm}" scope="request"/>
                                        </c:if>
                                        <li><a href="${twoDepthMenu.menuUrl}">${twoDepthMenu.menuNm}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </c:forEach>
                        <li><a href="/user/login">로그인</a></li>
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
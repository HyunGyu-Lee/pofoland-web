<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${vendorPath}/volvox/plugins/masterslider/style/masterslider.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/skins/default/style.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/style/ms-overlaylayers.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/settings.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />
<link href="${vendorPath}/volvox/plugins/masterslider/skins/black-2/style.css" rel="stylesheet" />

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
        <img src="${mainImageUrl}" style="height: 480px;" onerror="setErrorImage(this);">
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
    <div class="carousel-wrap no-padding" style="border: 1px solid black;">
        <div class="owl-carousel" data-plugin-options='{"singleItem": true, video:true}'>
            <c:forEach var="page" items="${portfolio.portfolioPages}">
                <c:choose>
                    <c:when test="${page.pofolPageTypeCd eq '0001'}">
                        <div class="item">
                            <div class="pageContentWrap">
                                ${page.pofolPageCont}
                            </div>
                            <div class="pageFooterWrap">
                                <div class="center">
                                    <h5>- ${page.sortOrder} -</h5>
                                </div>
                            </div>
                        </div>
                    </c:when>
                    <c:when test="${page.pofolPageTypeCd eq '0002'}">
                        <div class="item">
                            <div class="pageContentWrap">
                                <div class="leftContent center pull-left">
                                    <img src="/api/portfolios/${portfolio.pofolNo}/images/${page.pofolFileNo}" onerror="setErrorImage(this);" style="height: 100%;"/>
                                </div>
                                <div class="rightContent center pull-right">
                                    ${page.pofolPageCont}
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="pageFooterWrap">
                                <div class="center">
                                    <h5>- ${page.sortOrder} -</h5>
                                </div>
                            </div>                            
                        </div>
                    </c:when>
                    <c:when test="${page.pofolPageTypeCd eq '0003'}">
                        <div class="item-video">
                            <div class="pageContentWrap">
                                <div class="leftContent center pull-left">
                                    <video width="100%" height="450" controls>
                                        <source src="/api/portfolios/${portfolio.pofolNo}/videos/${page.pofolFileNo}" type="video/mp4"></source>
                                    </video>
                                </div>
                                <div class="rightContent center pull-right">
                                    ${page.pofolPageCont}
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="pageFooterWrap">
                                <div class="center">
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

<%-- <div class="ms-layers-template">
    <div class="master-slider ms-skin-black-2 round-skin" id="masterslider">
        <div class="ms-slide slide-1" style="z-index: 10">
            <img src="/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="/static/vendor/volvox/img/master-layers/bg.jpg" alt="lorem ipsum dolor sit" />

            <img src="/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="/static/vendor/volvox/img/master-layers/bm.png" alt="layer" class="ms-layer"
                 style="bottom: 0; left: 100px"
                 data-effect="left(40)"
                 data-type="image" />

            <div class="ms-layer text-box" style="left: 514px; top: 184px"
                 data-effect="rotatebottom(40,250,c)"
                 data-duration="3500"
                 data-delay="900"
                 data-ease="easeOutExpo">
            </div>

            <h3 class="ms-layer bold-title" style="left: 535px; top: 204px"
                data-effect="right(250)"
                data-duration="3500"
                data-delay="1500"
                data-ease="easeOutExpo">
                LOREM IPSUM
            </h3>

            <h3 class="ms-layer light-title" style="left: 532px; top: 235px"
                data-effect="left(short)"
                data-duration="3500"
                data-delay="2100"
                data-ease="easeOutExpo">
                DOLOR SIT AMET
            </h3>

            <p class="ms-layer normal-desc" style="left: 535px; top: 287px"
               data-effect="bottom(40)"
               data-duration="3500"
               data-delay="3000"
               data-ease="easeOutExpo">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.
            </p>

            <img src="/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="/static/vendor/volvox/img/master-layers/btn.gif" alt="layer" class="ms-layer"
                 style="left: 535px; top: 338px"
                 data-effect="rotateright(20,120,br)"
                 data-duration="3500"
                 data-delay="3600"
                 data-ease="easeOutExpo"
                 data-type="image" />
        </div>
    </div>
</div>

<script src="${vendorPath}/volvox/plugins/masterslider/masterslider.min.js"></script>
<script type="text/javascript">
    var slider = new MasterSlider();
    slider.setup('masterslider', {
        width: 1024,
        height: 580,
        space: 1,
        fullwidth: true,
        centerControls: false,
        //speed: 18,
        loop: true,
        autoplay: true
    });
    //slider.control('arrows');
    slider.control('timebar', { insertTo: '#masterslider' });
    slider.control('bullets', { autohide: false });
</script> --%>
<script src="${assetPath}/js/portfolio/detail.js"></script>
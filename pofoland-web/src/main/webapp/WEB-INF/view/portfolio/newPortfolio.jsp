<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Current Page CSS -->
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/style/masterslider.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/skins/default/style.css" rel="stylesheet" />
<link href="${ctx}/static/vendor/volvox/plugins/masterslider/style/ms-videogallery.css" rel="stylesheet" />

<!-- Custom CSS -->
<link rel="stylesheet" href="${ctx}/static/vendor/volvox/css/custom.css">

<!-- 포트폴리오 등록 페이지 Header -->
<div class="v-bg-stylish v-portfolio-single-heading">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="portfolio-title">
                    <div class="row">
                        <div class="col-md-10">
                            <h2 class="portfolio-caption">새 포트폴리오 등록</h2>
                        </div>
                        <!-- 화면 이동 컨트롤러 버튼 -->
                        <div class="portfolio-nav col-md-2">
                            <a href="portfolio-single-fw.html" class="portfolio-nav-prev" rel="tooltip" data-original-title="이전 포트폴리오"><i class="icon-arrow-65"></i></a>
                            <a href="${ctx}/portfolio/management" rel="tooltip" data-original-title="목록으로"><i class="icon-thumbnails-2"></i></a>
                            <a href="portfolio-single-fw.html" class="portfolio-nav-next" rel="tooltip" data-original-title="다음 포트폴리오"><i class="icon-arrow-66"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="v-page-wrap no-bottom-spacing">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1>포트폴리오 기본정보</h1>
                <h3>제목</h3>
                <input type="text" placeholder="포폴제목">
                <h3>포트폴리오 개요</h3>
                <textarea rows="5" placeholder="포폴개요"></textarea>                
                <hr>
            </div>
            <div class="col-sm-12">
                <article class="portfolio-article">
                    <div class="v-portfolio-item-content">
                        <div class="row">
                            <div class="col-sm-8">
                                <figure class="media-wrap">
                                    <div class="ms-videogallery-template">
                                        <!-- 포트폴리오 등록 슬라이더 -->
                                        <div class="master-slider ms-skin-default" id="masterslider">
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-1.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-1.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/17411241"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-2.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-2.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/5967029"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-3.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-3.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/9152451"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-4.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-4.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/12849638"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-5.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-5.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/15630517"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-6.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-6.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/32796535"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-7.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-7.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/31484170"></a>
                                            </div>
                                            <div class="ms-slide">
                                                <img src="${ctx}/static/vendor/volvox/plugins/masterslider/blank.gif" data-src="img/static/bus-8.jpg" alt="lorem ipsum dolor sit" />
                                                <div class="ms-thumb">
                                                    <img src="${ctx}/static/vendor/volvox/img/static/bus-8.jpg" alt="video thumb" />
                                                </div>
                                                <a data-type="video" href="http://player.vimeo.com/video/5967029"></a>
                                            </div> 
                                        </div>
                                    </div>
                                </figure>
                            </div>
                            <!-- 기본정보 입력항목 -->
                            <div class="col-sm-4">
                                <section class="article-body-wrap" style="margin-bottom: 10px;">
                                    <section class="portfolio-detail-description">
                                        <div class="body-text clearfix">
                                            <div class="v-heading-v3">
                                                <h2>
                                                    <span>
                                                        <input type="text" placeholder="포트폴리오 제목" />
                                                    </span>
                                                </h2>
                                                <hr style="margin: 0">
                                            </div>
                                            <textarea rows="7" style="resize: none;" placeholder="포트폴리오 개요에 대해 작성해주세요"></textarea>
                                        </div>
                                    </section>
                                    <div class="portfolio-v-blog-item-info">
                                        <!-- 카테고리 선택 UI -->
                                        <ul class="portfolio-categories">
                                            <c:forEach var="category" items="${categoryList}">
                                                <li>
                                                    <input type="checkbox" id="${category.commCd}" value="${category.commCd}" />
                                                    <label for="${category.commCd}">${category.commCdNm}</label>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </section>
                                <div class="portfolio-options-bar">
                                    <!-- submit으로 변경할 것 -->
                                    <div class="share-links clearfix">
                                        <ul class="bar-styling" style="float: right">
                                            <li class="facebook"><a href="#">등록</i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
            <div class="v-spacer col-sm-12 v-height-small"></div>
        </div>
    </div>
    <!-- 관련 프로젝트 항목 출력 -->
    <div class="v-bg-stylish v-bg-stylish-v4">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="related-projects clearfix">
                        <h3 class="v-heading v-center-heading"><span>Related Projects</span></h3>
                        <div class="row center">
                            <div class="col-sm-12">
                                <div class="carousel-wrap">
                                    <div class="owl-carousel" data-plugin-options='{"items": 4, "singleItem": false, "pagination": true}'>
                                        <div class="item">
                                            <figure class="animated-overlay overlay-alt">
                                                <img src="${ctx}/static/vendor/volvox/img/static/bus-1.jpg" />
                                                <a href="portfolio-single.html" class="link-to-post"></a>
                                                <figcaption>
                                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                                </figcaption>
                                            </figure>
                                            <div class="v-portfolio-item-info">
                                                <h3 class="v-portfolio-item-title">
                                                    <a href="portfolio-single.html" class="link-to-post">Mauris Quis Sapien</a>
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <figure class="animated-overlay overlay-alt">
                                                <img src="${ctx}/static/vendor/volvox/img/static/bus-2.jpg" />
                                                <a href="portfolio-single.html" class="link-to-post"></a>
                                                <figcaption>
                                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                                </figcaption>
                                            </figure>
                                            <div class="v-portfolio-item-info">
                                                <h3 class="v-portfolio-item-title">
                                                    <a href="portfolio-single.html" class="link-to-post">Fringilla Suscipit</a>
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <figure class="animated-overlay overlay-alt">
                                                <img src="${ctx}/static/vendor/volvox/img/static/bus-3.jpg" />
                                                <a href="portfolio-single.html" class="link-to-post"></a>
                                                <figcaption>
                                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                                </figcaption>
                                            </figure>
                                            <div class="v-portfolio-item-info">
                                                <h3 class="v-portfolio-item-title">
                                                    <a href="portfolio-single.html" class="link-to-post">Vivamus Tristique</a>
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <figure class="animated-overlay overlay-alt">
                                                <img src="${ctx}/static/vendor/volvox/img/static/bus-4.jpg" />
                                                <a href="portfolio-single.html" class="link-to-post"></a>
                                                <figcaption>
                                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                                </figcaption>
                                            </figure>
                                            <div class="v-portfolio-item-info">
                                                <h3 class="v-portfolio-item-title">
                                                    <a href="portfolio-single.html" class="link-to-post">Cras Aliquam</a>
                                                </h3>
                                            </div>
                                        </div>
    
                                        <div class="item">
                                            <figure class="animated-overlay overlay-alt">
                                                <img src="${ctx}/static/vendor/volvox/img/static/bus-5.jpg" />
                                                <a href="portfolio-single.html" class="link-to-post"></a>
                                                <figcaption>
                                                    <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
                                                </figcaption>
                                            </figure>
                                            <div class="v-portfolio-item-info">
                                                <h3 class="v-portfolio-item-title">
                                                    <a href="portfolio-single.html" class="link-to-post">Proin Faucibus</a>
                                                </h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Libs -->
<script src="${ctx}/static/vendor/volvox/plugins/masterslider/masterslider.min.js"></script>
<script type="text/javascript">
    var slider = new MasterSlider();

    slider.setup('masterslider', {
        width: 710,
        height: 420,
        space: 5,
        shuffle: true,
        loop: true,
        view: 'basic'
    });

    slider.control('arrows');
    slider.control('thumblist', { autohide: false, dir: 'h' });
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>${portfolio.pofolNm}</h1>
<hr>
<h4>설명</h4>
<P>${portfolio.pofolDesc}</p>
<hr>
<c:forEach var="page" items="${portfolio.portfolioPages}">
    <h3>${page.sortOrder} page</h3>
    <c:choose>
        <c:when test="${page.pofolPageTypeCd eq '0001'}">
            ${page.pofolPageTypeNm}, ${page.pofolPageCont}
        </c:when>
        <c:when test="${page.pofolPageTypeCd eq '0002'}">
            ${page.pofolPageTypeNm}, ${page.sortOrder}, ${page.pofolPageCont}
            <img src="/api/portfolios/images/${page.pofolFileNo}">
        </c:when>
        <c:when test="${page.pofolPageTypeCd eq '0003'}">
            ${page.pofolPageTypeNm}, ${page.sortOrder}, ${page.pofolPageCont}
        </c:when>
    </c:choose>
    <hr>
</c:forEach>

<div class="row">
    <div class="col-sm-8">
        <figure class="media-wrap">
            <img src="img/static/portfolio-single.jpg">
        </figure>
    </div>

    <div class="col-sm-4">
        <section class="article-body-wrap">

            <section class="portfolio-detail-description">
                <div class="body-text clearfix">
                    <div class="v-heading-v3">
                        <h2><span>Lorem Ipsum Dolor</span></h2>
                        <div class="horizontal-break"></div>
                    </div>
                    <p>
                        Vestibulum ante ipsum primis in fauc ibus orci luctus et ultrices posuere
                        cubilia Curae; Integer in enim dui. Suspendisse potenti. Sed placerat
                        pellentesque nibh ut varius. Morbi aliquet nulla at sem consequat eleifend.
                    </p>
                    <p>
                        Sed non orci sed ante dignissim aliquam. Fusce in sapien leo. Praesent justo
                        nibh, dapibus eu fermentum sit non eleifend eu, imperdiet gravida.
                    </p>
                </div>
            </section>

            <div class="portfolio-v-blog-item-info">
                <ul class="portfolio-categories">
                    <li><a href="#" rel="tag">Visualisations</a></li>
                    <li><a href="#" rel="tag">Illustration</a></li>
                    <li><a href="#" rel="tag">Graphic Design</a></li>
                </ul>
            </div>
        </section>


        <div class="portfolio-options-bar">

            <div class="share-links clearfix">
                <ul class="bar-styling">
                    <li class="sf-love">
                        <div class="like-info">
                            <div class="like-info-wrap">
                                <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                <span class="like-count">15</span>
                            </div>
                        </div>
                    </li>
                    <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                    <li class="mail"><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                </ul>
            </div>
        </div>

    </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<div class="v-page-heading v-bg-stylish v-bg-stylish-v1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="heading-text">
                    <h1 class="entry-title">공지사항</h1>
                </div>
                <ol class="breadcrumb">
                    <li class="active">목록</li>
                    <li class="#"><a href="insert-cont/${boardSeCd}">작성</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="v-page-wrap has-right-sidebar has-one-sidebar">

    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="v-blog-widget">
                    <div class="v-blog-wrap">
                        <div class="v-blog-items-wrap blog-mini">
                            <ul class="v-blog-items row mini-items clearfix">
								<c:forEach var="communityVO" items="${resultList}">	
	                                <li class="v-blog-item col-sm-12">
	                                    <div class="mini-v-blog-item-wrap">
	                                        <!-- 2018.08.19 YP 미사용 주석처리
	                                        <figure class="animated-overlay overlay-alt">
	                                            <a href="blog-standard-post.html" class="link-to-post"></a>
	                                            <figcaption>
	                                                <div class="thumb-info thumb-info-v2"><i class="fa fa-angle-right"></i></div>
	                                            </figcaption>
	                                        </figure>
	                                        -->
	                                        <div class="blog-v-blog-item-info">
	                                            <h3><a href="#">${communityVO.boardTtl}</a></h3>
	                                            <div class="v-blog-item-details">
	                                            	By <a href="page-about-me.html">${communityVO.regUserId}</a> on <fmt:formatDate value="${communityVO.regDtm}" type="both" pattern="yyyy/MM/dd HH:mm"/>
	                                            </div>
	                                            <div class="v-blog-item-description">
	                                                <p>
	                                                    <a href="select-dtl-cont/${communityVO.boardNo}">${fn:substring(communityVO.boardCont, 0, 130)}...
	                                                </p>
	                                            </div>
	                                            <a class="btn v-btn v-third-dark" href="select-dtl-cont/${communityVO.boardNo}">Read more</a>
	                                            <div class="like-info">
	                                                <div class="comments-wrapper">
	                                                    <a href="blog-standard-post.html#comment-area">
	                                                        <i class="fa fa-comment-o"></i><span>5</span>
	                                                    </a>
	                                                </div>
	                                                <div class="like-info-wrap">
	                                                    <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
	                                                    <span class="like-count">24</span>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </li>
	                            </c:forEach>
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


            <!--Sidebar-->
            <aside class="sidebar right-sidebar col-sm-3">
                <section class="widget v-search-widget clearfix">
                    <form role="search" method="get" id="searchform" class="searchform" action="#">
                        <div class="form-group">
                            <input class="form-control" type="text" value="" name="s" id="s" placeholder="Search" />
                        </div>
                    </form>
                </section>
                <section class="widget v-category-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Categories</span></h4>
                    </div>
                    <ul>
                        <li><a href="blog-standard-post.html" title="View all posts">Web Design</a> </li>
                        <li><a href="blog-standard-post.html" title="View all posts">Bootstrap</a> </li>
                        <li><a href="blog-standard-post.html" title="View all posts">Business</a> </li>
                        <li><a href="blog-standard-post.html" title="View all posts">JQuery</a> </li>
                        <li><a href="blog-standard-post.html" title="View all posts">Gaming</a> </li>
                        <li><a href="blog-standard-post.html" title="View all posts">Photography</a> </li>
                    </ul>
                </section>
                <section class="widget v-recent-entry-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Recent Posts</span></h4>
                    </div>
                    <ul>
                        <li>
                            <a href="blog-standard-post.html">Amazing standard post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                        <li>
                            <a href="blog-standard-post.html">Full Width Media Post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                        <li>
                            <a href="blog-standard-post.html">Quote Post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                        <li>
                            <a href="blog-standard-post.html">Page Builder Post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                        <li>
                            <a href="blog-standard-post.html">Text-only Post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                    </ul>
                </section>

                <section class="widget widget_sf_recent_custom_comments clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Recent Comments</span></h4>
                    </div>
                    <ul class="recent-comments-list">

                        <li class="comment">
                            <div class="comment-wrap clearfix">
                                <div class="comment-avatar">
                                    <img src="img/team/team05.jpg" class="avatar" height="100" width="100" />
                                </div>
                                <div class="comment-content">
                                    <div class="comment-body">
                                        <a href="blog-standard-post.html#comments">
                                            <p>Praesent eros mauris dolor</p>
                                        </a>
                                    </div>
                                    <div class="comment-meta">
                                        <span class="comment-author">Volvox</span> <span class="comment-date">20 hours ago</span>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="comment-wrap clearfix">
                                <div class="comment-avatar">
                                    <img src="img/team/team06.jpg" class="avatar" height="100" width="100" />
                                </div>
                                <div class="comment-content">
                                    <div class="comment-body">
                                        <a href="blog-standard-post.html#comments">
                                            <p>Omnis iste natus error sit dolor </p>
                                        </a>
                                    </div>
                                    <div class="comment-meta">
                                        <span class="comment-author">Guest</span> <span class="comment-date">5 hours ago</span>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="comment-wrap clearfix">
                                <div class="comment-avatar">
                                    <img src="img/team/team07.jpg" class="avatar" height="100" width="100" />
                                </div>
                                <div class="comment-content">
                                    <div class="comment-body">
                                        <a href="blog-standard-post.html#comments">
                                            <p>Sed tellus ante aliquam eget</p>
                                        </a>
                                    </div>
                                    <div class="comment-meta">
                                        <span class="comment-author">Admin</span> <span class="comment-date">2 days ago</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </section>

                <section class="widget v-tag-cloud-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Tags</span></h4>
                    </div>
                    <div class="tagcloud">
                        <ul class='wp-tag-cloud'>
                            <li><a href="#">CSS 3</a></li>
                            <li><a href="#">HTML 5</a></li>
                            <li><a href="#">Lifestyle</a></li>
                            <li><a href="#">Mobile</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">PHP</a></li>
                            <li><a href="#">Social</a></li>
                            <li><a href="#">video</a></li>
                            <li><a href="#">WordPress</a></li>
                        </ul>
                    </div>
                </section>
                <section class="widget v-twitter-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Latest Tweets</span></h4>
                    </div>
                    <ul class="v-twitter-widget">
                        <li>
                            <div class="tweet-text">
                                <a href="#" target="_blank">@Volvox</a>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit onvallis dignissim.
                            </div>
                            <div class="twitter_intents">
                                <a class="timestamp" href="#" target="_blank">3 hours ago</a>
                            </div>
                        </li>
                        <li>
                            <div class="tweet-text">
                                <a href="#" target="_blank">@Volvox</a>
                                Sed blandit convallis dignissim. pharetra velit eu velit elementum et erat pharetra.
                            </div>
                            <div class="twitter_intents">
                                <a class="timestamp" href="#" target="_blank">5 days ago</a>
                            </div>
                        </li>
                        <li>
                            <div class="tweet-text">
                                <a href="#" target="_blank">@volvox</a>
                                Maecenas nec tempus velit. Praesent gravida mi et mauris sollicitudin ultricies.
                            </div>
                            <div class="twitter_intents">
                                <a class="timestamp" href="#" target="_blank">2 weeks ago</a>
                            </div>
                        </li>
                    </ul>
                </section>
            </aside>
            <!--End Sidebar-->
        </div>
    </div>

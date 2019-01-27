<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<div class="v-page-heading v-bg-stylish v-bg-stylish-v1">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="heading-text">
                    <h1>공지사항</h1>
                </div>

                <ol class="breadcrumb">
                    <li><a href="${request.contextPath()}/community/notice">목록</a></li>
                    <!-- 2018.08.19 YP 확인필요 <li><a href="#">Blog Post</a></li>
                    <li class="active">Full Width Post</li> 
                    -->
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="v-page-wrap has-right-sidebar has-one-sidebar">
    <div class="container">

        <div class="row">

            <!-- 2018.08.19 YP 이미지 미사용 주석처리 
            	<figure class="media-wrap full-width-detail col-sm-12">
                <img src="img/blog/04.jpg" />
            </figure> 
            -->

            <!--Article-->
            <article class="col-sm-9">

                <h3 class="blog-post-caption">${community.boardTtl}</h3>

                <div class="post-info clearfix">
                    <span class="vcard author">
                        Posted by <a href="page-about-me.html" class="fn">${community.regUserId}</a> on <fmt:formatDate value="${community.regDtm}" type="both" pattern="yyyy/MM/dd HH:mm"/> in
                        <a href="blog-standard-post.html" title="View all posts in News">News</a>,
                        <a href="blog-standard-post.html" title="View all posts in Talent">Talent</a>
                    </span>
                    <div class="like-info">
                        <div class="comments-wrapper"><a href="#comments"><i class="fa fa-comments-o"></i><span>3 Comments</span></a></div>
                    </div>
                </div>

                <section class="article-body-wrap">

                    <div class="body-text clearfix" itemprop="articleBody">
                    	<!-- 2018.08.19 YP 첫글자용 css 미사용 주석처리 <span class="dropcap1">첫</span> -->
                        <p>
                            ${community.boardCont}
                        </p>
                        <!-- 2018.08.19 YP 문단들여쓰기 주석처리
                        <blockquote class="pullquote">
                            <span style="color: #888888;">
                                Maecenas nec tempus velit.
                                Praesent gravida mi et mauris sollicitudin ultricies. Duis molestie quam sem, ac faucibus
                                velit. Curabitur dolor dolor, fringilla vel fringilla tempor, ultricies sed tellus. Cras
                                aliquet, nulla a feugiat adipiscing, mi enim ornare nisl, eu pellentesque nunc diam eu purus.
                                In hac habitasse platea dictumst. Nulla ut lorem ante. In convallis, felis eget consequat
                                faucibus, mi diam consequat augue, quis porta nibh leo a massa. Sed quam nunc, vulputate vel
                                imperdiet vel.
                            </span>
                        </blockquote> 
                        -->
                    </div>

                    <div class="link-pages"></div>

                    <div class="tags-link-wrap clearfix">
                        <div class="tags-wrap">
                            Tags:<span class="tags">
                                <a href="#" rel="tag">Illustration</a>,
                                <a href="#" rel="tag">News</a>
                            </span>
                        </div>
                    </div>

                    <div class="share-links curved-bar-styling clearfix">
                        <div class="share-text">Share this article:</div>
                        <ul class="social-icons">
                            <li class="sf-love">
                                <div class="like-info">
                                    <div class="like-info-wrap">
                                        <a href="#" class="like-info-inner"><i class="fa fa-heart-o"></i></a>
                                        <span class="like-count">12</span>
                                    </div>
                                </div>
                            </li>
                            <li class="facebook"><a href="#" class="post_share_facebook"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a href="#" class="product_share_twitter"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="googleplus"><a href="#"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                            <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i><i class="fa fa-pinterest"></i></a></li>
                            <li class="mail"><a href="#" class="product_share_email"><i class="fa fa-envelope-o"></i><i class="fa fa-envelope-o"></i></a></li>
                        </ul>
                    </div>

                    <div class="author-info-wrap clearfix">
                        <div class="author-avatar">
                            <img src="img/avatar.png" class="avatar photo" onerror="setErrorImage(this);"/>
                        </div>
                        <div class="author-bio">
                            <div class="author-name">
                                <h3>About Volvox Templates</h3>
                            </div>
                            <div class="author-bio-text">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquam massa quis mauris
                                sollicitudin commodo venenatis ligula commodo. Sed blandit
                                convallis dignissim. Pellentesque pharetra velit.
                            </div>

                            <ul class="social-icons standard">
                                <li class="twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                                <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                                <li class="youtube"><a href="#" target="_blank"><i class="fa fa-youtube"></i><i class="fa fa-youtube"></i></a></li>
                                <li class="vimeo"><a href="#" target="_blank"><i class="fa fa-vimeo-square"></i><i class="fa fa-vimeo-square"></i></a></li>
                                <li class="tumblr"><a href="#" target="_blank"><i class="fa fa-tumblr"></i><i class="fa fa-tumblr"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </section>
<c:if test='${not empty replyList}'>
                <div class="comments-wrap">
                    <h3 class="v-heading"><span><c:out value="${fn:length(replyList) }"/> Comments</span></h3>
                    <ul class="media-list">
	<c:forEach var="reply" items="${replyList }" varStatus="status">
	<c:set var="nextReply" value="${replyList[status.index+1] }" />
		<c:if test="${reply.upReplyNo eq 0 }">
			<c:choose>
				<c:when test="${nextReply.upReplyNo eq 0 }">
						<li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="img/avatar.png" onerror="setErrorImage(this);">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">${reply.userNickNm } <span class="date">${reply.regDtmStr }</span> <span><a class="reply-link" href="javascript:createReplyForm(this);">Reply</a> </span></h4>
                                <p>${reply.replyCont }</p>
                            </div>
                        </li>
				</c:when>
				<c:when test="${nextReply.upReplyNo ne 0 }">
					<li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="img/avatar.png" onerror="setErrorImage(this);">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">${reply.userNickNm } <span class="date">${reply.regDtmStr }</span> <span><a class="reply-link" href="javascript:createReplyForm(this);">Reply</a> </span></h4>
                                <p>${reply.replyCont }</p>
				</c:when>
			</c:choose>
		</c:if>
		<c:if test="${reply.upReplyNo ne 0 }">
			<c:choose>
				<c:when test="${nextReply.upReplyNo eq 0 }">
												<hr>
								<div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="img/avatar.png" onerror="setErrorImage(this);">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">${reply.userNickNm } <span class="date">${reply.regDtmStr }</span></h4>
                                        ${reply.replyCont }
                                    </div>
								</div>
								<hr>
							</div>
						</li>
				</c:when>
				<c:when test="${nextReply.upReplyNo ne 0 }">
								<hr>
								<div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" src="img/avatar.png" onerror="setErrorImage(this);">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">${reply.userNickNm } <span class="date">${reply.regDtmStr }</span></h4>
                                        ${reply.replyCont }
                                    </div>
								</div>
				</c:when>
			</c:choose>
		</c:if>
	</c:forEach>
                    </ul>
                </div>
</c:if>
                <div class="post-block-wrap">

                    <h3 class="v-heading"><span>Leave a comment</span></h3>
                    <form action="#" method="post">
                        <div class="row">
                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label>Your name <span class="required">*</span></label>
                                    <input type="text" value="" maxlength="100" class="form-control" name="name" id="name">
                                </div>
                                <div class="col-sm-4">
                                    <label>Your email address <span class="required">*</span></label>
                                    <input type="email" value="" maxlength="100" class="form-control" name="email" id="email">
                                </div>
                                <div class="col-sm-4">
                                    <label>Website</label>
                                    <input type="text" value="" maxlength="100" class="form-control" name="website" id="website">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label>Comment <span class="required">*</span></label>
                                    <textarea maxlength="5000" rows="10" class="form-control" name="comment" id="comment"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <button name="submit" type="submit" id="Button1" class="btn v-btn v-btn-default no-three-d">Post comment</button>
                            </div>
                        </div>
                    </form>
                </div>
            </article>
            <!--End Article-->
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
                            <a href="blog-standard-post.html">Amazing Standard Post</a>
                            <span class="post-date">March 12, 2014</span>
                        </li>
                        <li>
                            <a href="blog-full-width-post.html">Full Width Media Post</a>
                            <span class="post-date">September 25, 2014</span>
                        </li>
                        <li>
                            <a href="blog-video-post.html">Perfect Video Post</a>
                            <span class="post-date">November 19, 2014</span>
                        </li>
                        <li>
                            <a href="blog-slideshow-post.html">Amazing Slideshow post</a>
                            <span class="post-date">November 21, 2014</span>
                        </li>
                        <li>
                            <a href="blog-standard-post.html">Text-only Post</a>
                            <span class="post-date">March 23, 2013</span>
                        </li>
                    </ul>
                </section>
                <section class="widget v-photo-stream-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Photo Stream</span></h4>
                    </div>
                    <ul class="v-photo-stream-images clearfix">
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-1.jpg">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-2.jpg">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-3.jpg">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-4.png">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-5.jpg">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="img/thumbs/project-6.jpg">
                            </a>
                        </li>
                    </ul>
                </section>

                <section class="widget v-tag-cloud-widget clearfix">
                    <div class="widget-heading clearfix">
                        <h4 class="v-heading"><span>Tags</span></h4>
                    </div>
                    <div class="tagcloud">
                        <ul class='wp-tag-cloud'>
                            <li><a href="#">Agile</a></li>
                            <li><a href="#">CSS 3</a></li>
                            <li><a href="#">HTML 5</a></li>
                            <li><a href="#">Bootstrap</a></li>
                            <li><a href="#">Mobile</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Photography</a></li>
                            <li><a href="#">PHP</a></li>
                            <li><a href="#">Java</a></li>
                            <li><a href="#">Social</a></li>
                            <li><a href="#">video</a></li>
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
<script src="${ctx}/static/assets/js/community/communityConstant.js"></script>
<script src="${ctx}/static/assets/js/community/readDtlCont.js"></script>
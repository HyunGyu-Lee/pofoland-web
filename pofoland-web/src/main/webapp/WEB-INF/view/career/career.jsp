<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%-- ${careerSearch} --%>
    <div id="container">

        <div class="v-page-heading v-bg-stylish v-bg-stylish-v1">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="heading-text">
                            <h1 class="entry-title">구직정보</h1>
                        </div>
                        <ol class="breadcrumb">
                            <li><a href="#">구인구직</a></li>
                            <li class="active">구직정보</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="v-page-wrap has-right-sidebar has-one-sidebar">

            <div class="container">

                <div class="row">

                    <div class="col-sm-9">

                        <div class="row center">
                            <div class="col-sm-12">
                                <h3 class="no-margin-top">Not happy with the results?</h3>
                                <p class="v-lead">Type your search again</p>
                            </div>
                            <div class="col-sm-8 col-sm-offset-2">
                                <div class="v-search-widget">
                                    <form role="search" method="get" id="Form1" class="searchform" action="/career/search">
                                        <div class="form-group">
                                           <input class="form-control" type="text" value="" name="s" id="s" placeholder="Search"/>
                                           <img class="search-img" name ="search-img" src="${ctx}/static/assets/img/f002.png" width="15px" height="15px" onclick="search()">
                                        </div>
                                        
                                    </form>
                                </div>
                            </div>

                            <div class="v-spacer col-sm-12 v-height-mini"></div>

                            <div class="col-sm-8 col-sm-offset-2">
                                <div class="v-heading-v2">
                                    <h4 class="v-search-result-count">About 18,580 results</h4>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-sm-12">
                                <ul class="v-search-items">
                                	<c:forEach var="career" items="${careerSearch.careers.career}">
                                    <li class="search-item">
                                        <div class="search-item-img">
                                            <a href="#">
                                                <img src="img/thumbs/project-1.jpg" width="70" height="70">
                                            </a>
                                        </div>

                                        <div class="search-item-content">
                                            <h3 class="search-item-caption"><a href="#">${career.company.name}</a></h3>

                                            <div class="search-item-meta">
                                                <ul class="list-inline">
                                                    <li class="time">November 8, 2014‎</li>
                                                    <li><a class="read-more" href="#">https://themeforest.net</a>‎</li>
                                                    <li><a href="#">smartthemestore</a></li>
                                                    <li><a href="#">Dribbble</a></li>
                                                </ul>
                                            </div>
                                            <div>
                                               ${career.position.locationCode.location}
                                            </div>

                                            <div class="search-item-meta-down">
                                                <ul class="list-inline">
                                                    <li>
                                                        <ul class="list-inline star-vote">
                                                            <li><i class="color-green fa fa-star"></i></li>
                                                            <li><i class="color-green fa fa-star"></i></li>
                                                            <li><i class="color-green fa fa-star"></i></li>
                                                            <li><i class="color-green fa fa-star"></i></li>
                                                            <li><i class="color-green fa fa-star-half-o"></i></li>
                                                        </ul>
                                                    </li>
                                                    <li>3 years ago - By Anthon Brandley</li>
                                                    <li>234,034 views</li>
                                                    <li><a href="#">Web designer</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
									</c:forEach>            
                                </ul>
                            </div>

                            <div class="col-sm-12">
                                <ul class="pagination pagination-lg">
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">...</a></li>
                                    <li><a href="#">40</a></li>
                                    <li><a href="#">41</a></li>
                                    <li><a href="#">Next <i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <aside class="sidebar right-sidebar col-sm-3">

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
                                    <li><a href="#">Travel</a></li>
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
                </div>
            </div>
        </div>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".search-img").on("click", function(){
				$("#Form1").attr("action","/career/search");
				$("#Form1").submit();
			})
		})
	</script>
	
	
</body>

</html>
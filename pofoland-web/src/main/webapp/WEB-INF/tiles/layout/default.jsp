<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!-- ContextPath 정의 -->    
<c:set var="ctx" value="<%= request.getContextPath()%>"></c:set>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Pofoland</title>
        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="Volvox - Responsive HTML5 Template">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" type="image/png" href="img/favicon.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="ctx" content="${ctx}" />
        
        <!-- Vendor CSS -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700,800" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,700,800,900" rel="stylesheet" type="text/css">
        
        <link href="${ctx}/static/vendor/volvox/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/style.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/font-awesome.min.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/streamline-icon.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-nav-menu.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-portfolio.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-blog.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-animation.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-bg-stylish.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/v-shortcodes.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/css/theme-responsive.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/plugins/owl-carousel/owl.theme.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/volvox/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />
        
        <!-- Custom CSS -->
        <link rel="stylesheet" href="${ctx}/static/vendor/volvox/css/custom.css">
        
        <!-- Form Styling -->
        <link href="${ctx}/static/vendor/volvox/css/v-form-element.css" rel="stylesheet" />
        
        <!-- Libs -->
        <script src="${ctx}/static/vendor/volvox/js/jquery.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/bootstrap.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery-ui-1.10.2.custom.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.flexslider-min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.easing.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.fitvids.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.carouFredSel.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.validate.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/theme-plugins.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/jquery.isotope.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/imagesloaded.js"></script>
        <script src="${ctx}/static/vendor/volvox/js/view.min.js?auto"></script>

        <script src="${ctx}/static/vendor/volvox/plugins/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script src="${ctx}/static/vendor/volvox/plugins/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    
        <script src="${ctx}/static/vendor/lodash/lodash.min.js"></script>
    </head>
    <body>
        <div id="wrapper">
            <!-- 페이지 헤더 -->
            <tiles:insertAttribute name="header" />
    
            <div id="container">
                <!-- 페이지 본문 -->            
                <tiles:insertAttribute name="body" />
            
                <!-- 페이지 푸터 -->        
                <tiles:insertAttribute name="footer" />
            </div>
            
            <!--// BACK TO TOP //-->
            <div id="back-to-top" class="animate-top"><i class="fa fa-angle-up"></i></div>
        </div>
        
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    </body>
</html>
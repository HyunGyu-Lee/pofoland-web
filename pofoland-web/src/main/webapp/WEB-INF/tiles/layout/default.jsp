<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!-- ContextPath 정의 -->    
<c:set var="ctx" value="<%= request.getContextPath()%>"></c:set>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>
            트립스토어:)
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Bootstrap 3 template for corporate business" />
        
        <!-- Vendor CSS -->
        <link href="${ctx}/static/vendor/sailor/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/sailor/plugins/flexslider/flexslider.css" rel="stylesheet" media="screen" />
        <link href="${ctx}/static/vendor/sailor/css/cubeportfolio.min.css" rel="stylesheet" />
        <link href="${ctx}/static/vendor/sailor/css/style.css" rel="stylesheet" />
        
        <!-- Vendor JavaScript -->
        <script src="${ctx}/static/vendor/sailor/js/jquery.min.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/modernizr.custom.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/jquery.easing.1.3.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/bootstrap.min.js"></script>
        <script src="${ctx}/static/vendor/sailor/plugins/flexslider/jquery.flexslider-min.js"></script>
        <script src="${ctx}/static/vendor/sailor/plugins/flexslider/flexslider.config.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/jquery.appear.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/stellar.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/classie.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/uisearch.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/jquery.cubeportfolio.min.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/google-code-prettify/prettify.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/animate.js"></script>
        <script src="${ctx}/static/vendor/sailor/js/custom.js"></script>
        <script src="${ctx}/static/vendor/lodash/lodash.min.js"></script>
        
        <!-- Theme skin -->
        <link id="t-colors" href="${ctx}/static/vendor/sailor/skins/default.css" rel="stylesheet" />
        
        <!-- boxed bg -->
        <link id="bodybg" href="${ctx}/static/vendor/sailor/bodybg/bg1.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="wrapper">
            <!-- 페이지 헤더 -->
            <tiles:insertAttribute name="header" />
    
            <!-- 페이지 본문 -->        
            <tiles:insertAttribute name="body" />
            
            <!-- 페이지 푸터 -->        
            <tiles:insertAttribute name="footer" />
        </div>
        
        <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
        
        <!-- application assets -->
        <script type="text/javascript">
            var ctx = '${ctx}'; 
        </script>
        <script src="${ctx}/static/assets/js/app.js"></script>
    </body>
</html>
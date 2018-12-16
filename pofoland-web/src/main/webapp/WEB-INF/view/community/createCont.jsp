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
                    <li class="#"><a href="${request.contextPath()}/community/${boardSeNm}">목록</a></li>
                    <li class="active">작성</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="v-page-wrap has-right-sidebar has-one-sidebar">

    <div class="container">
    	<div class="row center">
    		<div class="col-sm-1"></div>
    		<div class="col-sm-1">
    			<h5>카테고리</h5>
    		</div>
    		<div class="col-sm-9">
    			<select class="form-control" name="boardSeCd" id="boardSeCd">
    			<c:forEach var="boardSe" items="${boardSeList}">
                    <option value="${boardSe.commCd}">${boardSe.commCdNm}</option>
                </c:forEach>
                </select>
    		</div>
    		<div class="col-sm-1"></div>
    	</div>
    	<div class="row center">
    		<div class="col-sm-1"></div>
    		<div class="col-sm-1">
				<h5>제목</h5>
    		</div>
    		<div class="col-sm-9">
    			<input type="text" class="form-control" name="boardTtl" id="boardTtl" />
    		</div>
    		<div class="col-sm-1"></div>
    	</div>
	    <!-- Editor : Summernote -->
	 	<div class="row" style="margin-top: 20px;">
	 		<div class="col-sm-1"></div>
	 		<div class="col-sm-10">
	 			<div id="boardCont"></div>
	 		</div>
	 		<div class="col-sm-1"></div>
	 	</div>
	 	<!-- Footer Button -->
	 	<div class="row center">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <button type="button" id="btnInsertCont" class="btn v-btn v-nephritis no-three-d">등록</button>                    
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
</div>

<script src="${ctx}/static/assets/js/community/communityConstant.js"></script>
<script src="${ctx}/static/assets/js/community/createCont.js"></script>

<link href="${ctx}/static/vendor/summernote/summernote.css" rel="stylesheet" />
<script src="${ctx}/static/vendor/summernote/summernote.js"></script>
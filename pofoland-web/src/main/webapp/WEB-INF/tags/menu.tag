<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags" %>

<%@ attribute name="menuList" type="java.util.List" required="true" %>
<%@ attribute name="depth" type="java.lang.Integer" %>

<c:if test="${empty depth}">
    <c:set var="depth" value="${1}" />
</c:if>

<c:if test="${depth eq 1}">
    <!-- 최상위 뎁스 메뉴 -->
    <nav class="nav-main mega-menu">
        <ul class="nav nav-pills nav-main" id="mainMenu">
            <c:forEach var="menuItem" items="${menuList}">
                <li class="dropdown">
                    <a class="dropdown-toggle" href="${menuItem.menuUrl}">${menuItem.menuNm}</a>
                    <c:if test="${not empty menuItem.child}">
                        <util:menu menuList="${menuItem.child}" depth="${depth + 1}" />                    
                    </c:if>
                </li>
            </c:forEach>
            <li><a href="/user/login">로그인</a></li>
        </ul>
    </nav>
</c:if>
<c:if test="${depth ne 1}">
    <!-- 이하 메뉴 출력 -->
    <ul class="dropdown-menu">
        <c:forEach var="menuItem" items="${menuList}">
            <li><a href="${menuItem.menuUrl}">${menuItem.menuNm}</a></li>
        </c:forEach>
    </ul>
</c:if>

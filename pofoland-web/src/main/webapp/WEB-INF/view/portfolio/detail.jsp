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

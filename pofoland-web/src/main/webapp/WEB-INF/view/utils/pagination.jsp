<c:set var="path" value="${ctx}${requestScope['javax.servlet.forward.servlet_path']}" /> 
<ul id="pagination" class="pagination pagination">
<c:if test="${!pageInfo.isFirstPage}">
    <li><a href="${path}?pageNo=${pageInfo.prePage}">Prev</a></li>
</c:if>
<c:if test="${pageInfo.isFirstPage}">
    <li><a class="link-disable" href="#">Prev</a></li>
</c:if>
<c:forEach var="pageNum" items="${pageInfo.navigatepageNums}">
    <c:choose>
        <c:when test="${pageInfo.pageNum eq pageNum}">
            <c:set var="activeClass" value="active"/>
        </c:when>
        <c:otherwise>
            <c:set var="activeClass" value=""/>
        </c:otherwise>
    </c:choose>
    <li class="${activeClass}"><a href="${path}?pageNo=${pageNum}">${pageNum}</a></li>
</c:forEach>
<c:if test="${!pageInfo.isLastPage}">
    <li><a href="${path}?pageNo=${pageInfo.nextPage}">Next</a></li>
</c:if>
<c:if test="${pageInfo.isLastPage}">
       <li><a class="link-disable" href="#">Next</a></li>
 		</c:if>
</ul>
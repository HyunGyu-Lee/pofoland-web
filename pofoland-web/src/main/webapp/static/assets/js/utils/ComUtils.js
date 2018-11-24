'use strict';



/*<ul id="pagination" class="pagination pagination">
	                    		<c:if test="${!pageInfo.isFirstPage}">
			                        <li><a href="${ctx}/portfolios/management?pageNo=${pageInfo.prePage}">Prev</a></li>
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
			                        <li class="${activeClass}"><a href="${ctx}/portfolios/management?pageNo=${pageNum}">${pageNum}</a></li>
			                    </c:forEach>
			                    <c:if test="${!pageInfo.isLastPage}">
			                        <li><a href="${ctx}/portfolios/management?pageNo=${pageInfo.nextPage}">Next</a></li>
			                    </c:if>
			                    <c:if test="${pageInfo.isLastPage}">
			                        <li><a class="link-disable" href="#">Next</a></li>
	                    		</c:if>
	                			</ul>*/
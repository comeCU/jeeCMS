<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="menu">
	<div class="w960 m960">
		<ul>
			<li><a href="${pageContext.request.contentType}/index.jsp">首页</a></li>
			<c:forEach var="arcType" items="${arcTypeList }">
				<li><a
					href="${pageContext.request.contextPath}/arcType/${arcType.id}.html">${arcType.typeName }</a></li>
			</c:forEach>
		</ul>
	</div>
</div>

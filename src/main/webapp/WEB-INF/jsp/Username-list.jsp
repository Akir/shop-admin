<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<t:layout title="Username List">
	<h1>Username List</h1>
	<table>
		<tr><th>用户名</th><th>上次登录时间</th></tr>
		<tr>
			<c:forEach items="${usernames }" var="username">
				<td>${username.username }</td>
				<td>${username.dateFormat }</td>
			</c:forEach>
		</tr>
	</table>


</t:layout>
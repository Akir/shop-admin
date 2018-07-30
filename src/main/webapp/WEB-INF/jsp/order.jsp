<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<t:layout title="Order">
	<jsp:attribute name="css">
		<link href="${contextPath }/assets/css/table.css" rel="stylesheet">
	</jsp:attribute>
	<jsp:body>
		<h1>Order</h1>
		<table class="table">
			<tr>
				<th>订单ID</th>
				<th>用户名</th>
				<th>创建时间</th>
				<th>选项</th>
			</tr>
			<c:forEach items="${orders }" var="order">
				<tr>
					<td>${order.id }</td>
					<td>${order.username.username}</td>
					<td><fmt:formatDate value="${order.date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td>
						<a href="${contextPath}/order/${order.id}">详情</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</jsp:body>
</t:layout>
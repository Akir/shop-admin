<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CellPhone List</title>
</head>
<body>
	<h1>CellPhone List</h1>
	<ul>
		<c:forEach items="${CellPhones }" var="CellPhone">
			<li>#${CellPhone.id } 
				<a href="${contextPath }/CellPhone/${CellPhone.id}">
					${CellPhone.model }
				</a>
				<a href="${contextPath }/CellPhone/${CellPhone.id}/delete">[删除]</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>
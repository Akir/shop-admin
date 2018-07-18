<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"></c:set>
<c:set var="title" value="${id != null ? 'CellPhone Edit' : 'CellPhone Add' }"></c:set>
<t:layout title="${title }">
	<jsp:attribute name="css">
		<link href="${contextPath }/assets/css/form.css" rel="stylesheet">
	</jsp:attribute>	
	<jsp:body>
		<h1>${title }</h1>
	<form:form action="" method="post" commandName="cellPhoneForm">
		<div>
			<form:label path="model">Model:</form:label>
			<form:input path="model"/>
			<form:errors path="model" cssClass="form-error" />
		</div>
		<div>
			<form:label path="os">OS:</form:label>
			<form:input path="os"/>
			<form:errors path="os" cssClass="form-error" />
		</div>
		<div>
			<form:label path="cpu">CPU:</form:label>
			<form:input path="cpu"/>
			<form:errors path="cpu" cssClass="form-error" />
		</div>
		<div>
			<form:label path="ram">RAM:</form:label>
			<form:input path="ram"/><span>GB</span>
			<form:errors path="ram" cssClass="form-error" />
		</div>
		<div>
			<form:label path="storage">ROM:</form:label>
			<form:input path="storage"/><span>GB</span>
			<form:errors path="storage" cssClass="form-error" />
		</div>
		<div>
			<form:label path="color">Color:</form:label>
			<form:input path="color"/>
			<form:errors path="color" cssClass="form-error" />
		</div>
		<div>
			<form:label path="price">Price:</form:label>
			<form:input path="price"/><span>分</span>
			<form:errors path="price" cssClass="form-error" />
		</div>
		<div>
			<form:label path="brandId">Brand:</form:label>
			<form:radiobuttons path="brandId" items="${brand }" itemLabel="name" itemValue="id"/>
			<form:errors path="brandId" cssClass="form-error" />
		</div>
		<div>
			<form:label path="description">Description:</form:label>
			<form:textarea path="description"/>
			<form:errors path="description" cssClass="form-error" />
		</div>
		<div>
			<input type="submit" value="确定">
		</div>
	</form:form>
	</jsp:body>
</t:layout>
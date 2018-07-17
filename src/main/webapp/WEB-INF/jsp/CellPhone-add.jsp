<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CellPhone Add</title>
</head>
<body>
	<h1>CellPhone Add</h1>
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
			<form:input path="price"/>
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
</body>
</html>
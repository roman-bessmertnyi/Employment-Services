<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<h1>New User Registration Form</h1>

	<form:form method="POST" action="/register/user" modelAttribute="user">
		<div>
			<label for="email">Email</label>
			<form:input type="text" path="email" id="email" />
			<form:errors path="email" />
		</div>
		<div>
			<label for="password">Password</label>
			<form:input type="password" path="password" id="password" />
			<form:errors path="email" />
		</div>

		<form:input type="hidden" path="enabled" id="enabled" value="true" />

		<form:input type="hidden" path="userType" id="userType" value="2" />
		
		<div>
			<input type="submit" value="Register" class="btn btn-primary btn-sm">
			or <a href="/admin/home">Cancel</a>
		</div>
	</form:form>
	<p>
		<a href="/home">Go back</a>
	</p>
</body>
</html>
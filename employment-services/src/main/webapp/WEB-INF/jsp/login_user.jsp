<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<h1>Spring Security Login Form (Database Authentication)</h1>

	<div id="login-box">

		<h2>Login with Username and Password</h2>

		<c:url var="loginUrl" value="/login/user" />
		<form action="${loginUrl}" method="post" class="form-horizontal">
			<c:if test="${param.error != null}">
				<p>Invalid username and password.</p>
				<p><c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" /></p>
			</c:if>
			<c:if test="${param.logout != null}">
				<p>You have been logged out successfully.</p>
			</c:if>
			<label for="email"></label> <input type="text" id="email"
				name="email"> <label
				for="password"></label> <input type="password" id="password"
				name="password"> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="submit" value="Log in">
		</form>
	</div>
	<p>
		<a href="http://localhost:8080/user/home">Success</a>
	</p>
	<p>
		<a href="http://localhost:8080/admin/home">Admin login</a>
	</p>
	<p>
		<a href="http://localhost:8080/home">Go back</a>
	</p>
</body>
</html>
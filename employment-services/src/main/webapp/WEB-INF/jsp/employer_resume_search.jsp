<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome, employer ${pageContext.request.userPrincipal.name}</h2>
	</c:if>
	<p>Resumes found</p>
	<p>Adjust criteria form</p>
	<p>Resume table</p>
	<p>
		<a href="/employer/home">go back</a>
	</p>
	<p>
		<a href="/logout">log out</a>
	</p>
</body>
</html>
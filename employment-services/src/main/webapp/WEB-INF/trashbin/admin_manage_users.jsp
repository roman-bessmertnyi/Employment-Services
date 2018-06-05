<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//RU" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome, admin ${pageContext.request.userPrincipal.name}</h2>
	</c:if>
	<p>user edit</p>
	<p>user curd table</p>
	<p>
		<a href="/admin/home">go back</a>
	</p>
	<p>
		<a href="/logout">log out</a>
	</p>
</body>
</html>
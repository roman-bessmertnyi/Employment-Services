<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>HTTP Status 403 - Access is denied</h1>

	<c:choose>
		<c:when test="${pageContext.request.userPrincipal.name == null}">
			<h2>You do not have permission to access this page!</h2>
		</c:when>
		<c:otherwise>
			<h2>
				${pageContext.request.userPrincipal.name}, <br /> you do not have
				permission to access this page!
			</h2>
		</c:otherwise>
	</c:choose>
	<p>
		<a href="/home">Go back</a>
	</p>
</body>
</html>
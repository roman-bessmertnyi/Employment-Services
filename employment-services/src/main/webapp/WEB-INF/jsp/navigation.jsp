<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>navigation</title>
</head>
<body>
	<!-- Navigation bar -->
	<sec:authorize access="!hasAnyRole('ROLE_ADMIN', 'ROLE_USER', 'ROLE_EMPLOYER')">
    	<jsp:include page="navigation/nav_home.jsp" />
	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_USER')">
    	<jsp:include page="navigation/nav_user.jsp" />
	</sec:authorize>
	
	<sec:authorize access="hasRole('ROLE_EMPLOYER')">
    	<jsp:include page="navigation/nav_employer.jsp" />
	</sec:authorize>
	<!-- END Navigation bar -->
</body>
</html>
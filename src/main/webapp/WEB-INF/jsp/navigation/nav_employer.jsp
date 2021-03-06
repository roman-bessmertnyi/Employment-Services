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
<title>employer navigation</title>
</head>
<body>
	<!-- Navigation bar -->
	<nav class="navbar">
	<div class="container">

		<!-- Logo -->
		<div class="pull-left">
			<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
				class="ti-menu"></i></a>

			<div class="logo-wrapper">
				<a class="logo" href="/home"><img
					src="../img/logo.png" alt="logo"></a> <a
					class="logo-alt" href="/home"><img
					src="../img/logo-alt.png" alt="logo-alt"></a>
			</div>

		</div>
		<!-- END Logo -->

		<!-- User account -->
		<div class="pull-right user-login">
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				employer ${pageContext.request.userPrincipal.name}  
			</c:if>
			<a class="btn btn-sm btn-primary" href="/logout">Logout</a>
		</div>
		<!-- END User account -->

		<!-- Navigation menu -->
		<ul class="nav-menu">
			<li><a class="active" href="/home">Home</a></li>
			<li><a href="#">Jobs</a>
				<ul>
					<li><a href="/jobs">Browse jobs</a></li>
					<li><a href="/jobs/post">Post a job</a></li>
					<li><a href="/jobs/manage">Manage jobs</a></li>
				</ul></li>
			<li><a href="#">Companies</a>
				<ul>
					<li><a href="/companies">Browse companies</a></li>
					<li><a href="/companies/post">Post a company</a></li>
					<li><a href="/companies/manage">Manage companies</a></li>
				</ul></li>
			<li><a href="/resumes">Browse resumes</a></li>
		</ul>
		<!-- END Navigation menu -->

	</div>
	</nav>
	<!-- END Navigation bar -->
</body>
</html>
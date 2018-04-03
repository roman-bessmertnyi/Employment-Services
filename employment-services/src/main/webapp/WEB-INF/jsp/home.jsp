<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--  Static resources form Webjars -->
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<script src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<div class="container">
		<div class="header clearfix">
			<nav>
			<ul class="nav nav-pills pull-right">
				<li role="presentation" class="active"><a href="#">Home</a></li>
				<li role="presentation"><a href="#">About</a></li>
				<li role="presentation"><a href="#">Contact</a></li>
			</ul>
			</nav>
			<h3 class="text-muted">BORAJI.COM</h3>
		</div>
		<div class="jumbotron">
			<h1>Using Webjars in Spring Boot application</h1>
			<div class="alert alert-success" role="alert">
				<b>Server Time is</b> ${dateTime}
			</div>
		</div>
	</div>


	<p>Main Page</p>
	<p>Users:</p>
	<p>
		<a href="http://localhost:8080/login/user">login</a>
	</p>
	<p>
		<a href="http://localhost:8080/register/user">register</a>
	</p>
	<p>Employers:</p>
	<p>
		<a href="http://localhost:8080/login/employer">login</a>
	</p>
	<p>
		<a href="http://localhost:8080/register/employer">register</a>
	</p>
</body>
</html>
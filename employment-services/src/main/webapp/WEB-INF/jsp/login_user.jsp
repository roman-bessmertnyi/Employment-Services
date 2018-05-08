<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%-- <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<h2>Login with Email and Password</h2>

	<c:url var="loginUrl" value="/login/user" />
	<form action="${loginUrl}" method="post" class="form-horizontal">
		<c:if test="${param.error != null}">
			<p>Invalid username and password.</p>
			<p>
				<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
			</p>
		</c:if>
		<c:if test="${param.logout != null}">
			<p>You have been logged out successfully.</p>
		</c:if>
		<label for="email"></label> <input type="text" id="email" name="email">
		<label for="password"></label> <input type="password" id="password"
			name="password"> <input type="hidden"
			name="${_csrf.parameterName}" value="${_csrf.token}" /> <input
			type="submit" value="Log in">
	</form>
	<p>
		<a href="/home">Go back</a>
	</p>
</body>
</html>
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Post a job position or create your online resume by TheJobs!">
<meta name="keywords" content="">

<title>Employment Services - Login</title>

<!-- Styles -->
<link href="../resources/css/app.min.css" rel="stylesheet">
<link href="../resources/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../resources/img/favicon.ico">
</head>

<body class="login-page">


	<main>

	<div class="login-block">
		<img src="../resources/img/logo.png" alt="">
		<h1>Log into your account</h1>

		<c:url var="loginUrl" value="/login/user" />

		<form action="${loginUrl}" method="post" class="form-horizontal">

			<c:if test="${param.error != null}">
				<p>Invalid username and password.</p>
				<p>
					<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
				</p>
			</c:if>

			<c:if test="${param.logout != null}">
				<p>You have been logged out successfully.</p>
			</c:if>

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-email"></i></span> <input
						type="text" id="email" name="email" class="form-control"
						placeholder="Email">
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-unlock"></i></span> <input
						type="password" id="password" name="password" class="form-control"
						placeholder="Password">
				</div>
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
				
			<button class="btn btn-primary btn-block" type="submit">Login</button>

		</form>
	</div>

	<div class="login-links">
		<a class="pull-left" href="user-forget-pass.html">Forget Password?</a>
		<a class="pull-right" href="user-register.html">Register an
			account</a>
	</div>

	</main>


	<!-- Scripts -->
	<script src="../resources/js/app.min.js"></script>
	<script src="../resources/js/custom.js"></script>

</body>
</html>

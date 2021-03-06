<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Post a job position or create your online resume by TheJobs!">
<meta name="keywords" content="">

<title>Employment Services - Register</title>

<!-- Styles -->
<link href="css/app.min.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="img/favicon.ico">
</head>

<body class="login-page">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<main>c

	<div class="login-block">
		<img src="img/logo.png" alt="">
		<h1>Register your account</h1>

		<form:form method="POST" action="/register/user" modelAttribute="user">

			<hr class="hr-xs">
			
			<div class="form-group">
				<div class="input-group input-group-sm">
					<span class="input-group-addon"><i class="ti-user"></i></span>
					<form:select path="userType" class="form-control selectpicker">
						<option value="2" selected>User</option>
						<option value="3">Employer</option>
					</form:select>
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-email"></i></span>
					<form:input type="text" path="email" class="form-control"
						placeholder="Your email address" />
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-unlock"></i></span>
					<form:input type="password" path="password" class="form-control"
						placeholder="Choose a password" />
				</div>
			</div>

			<hr class="hr-xs">

			<form:input type="hidden" path="isActive" value="true" />

			<form:input type="hidden" path="smsNotificationActive" value="true" />

			<form:input type="hidden" path="emailNotificationActive" value="true" />

			<%
				SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
					String formatteddate = sdf.format(new Date());
			%>

			<form:input type="hidden" path="registrationDate"
				value="<%=formatteddate%>" />

			<form:input type="hidden" path="userType" id="userType" value="2" />

			<input type="submit" value="Sign up"
				class="btn btn-primary btn-block" type="submit">
			or <a href="/home">Cancel</a>

		</form:form>
	</div>

	<div class="login-links">
		<p class="text-center">
			Already have an account? <a class="txt-brand" href="/login/user">Login</a>
		</p>
	</div>

	</main>


	<!-- Scripts -->
	<script src="js/app.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
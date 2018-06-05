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

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<main>c

	<div class="login-block">
		<img src="../resources/img/logo.png" alt="">
		<h1>Register your account</h1>

		<form:form method="POST" action="/register/user" modelAttribute="user">

			<%-- <div class="form-group">
            <div class="input-group">
              <span class="input-group-addon"><i class="ti-user"></i></span>
              <form:input type="text" path="email" id="email" class="form-control" placeholder="Your name" />
            </div>
          </div> --%>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-email"></i></span>
					<form:input type="text" path="email" id="email"
						class="form-control" placeholder="Your email address" />
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="ti-unlock"></i></span>
					<form:input type="password" path="password" id="password"
						class="form-control" placeholder="Choose a password" />
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i
						class="fa fa-birthday-cake"></i></span>
					<form:input type="text" path="date_of_birth" id="date_of_birth"
						class="form-control" placeholder="Date of birth" />
				</div>
			</div>

			<hr class="hr-xs">

			<div class="form-group">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-phone"></i></span>
					<form:input type="text" path="contact_number" id="contact_number"
						class="form-control" placeholder="Phone number" />
				</div>
			</div>

			<div class="form-group">
				<div class="input-group">
					<form:input type="text" path="gender" id="gender"
						class="form-control" placeholder="1" />
				</div>
			</div>

			<form:input type="hidden" path="enabled" id="enabled" value="true" />
			
			<form:input type="hidden" path="sms_notification_active" id="sms_notification_active" value="true" />
			
			<form:input type="hidden" path="email_notification_active" id="email_notification_active" value="true" />

			<%
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String formatteddate = sdf.format(new Date());
			%>

			<form:input type="hidden" path="registration_date" id="registration_date"
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
	<script src="../resources/js/app.min.js"></script>
	<script src="../resources/js/custom.js"></script>

</body>
</html>
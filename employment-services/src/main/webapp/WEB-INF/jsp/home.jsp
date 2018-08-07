<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Post a job position or create your online resume by TheJobs!">
<meta name="keywords" content="">

<title>Employment Services</title>

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

<body class="nav-on-header">

	<!-- Navigation bar -->
		<jsp:include page="navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Site header -->
	<header class="site-header size-lg text-center"
		style="background-image: url(../resources/img/bg-banner1.jpg)">
	<div class="container">
		<div class="col-xs-12">
			<br> <br>
			<h2>
				We offer
				<mark>${jobAmount}</mark>
				job vacancies right now!
			</h2>
			<h5 class="font-alt">Find your desire one in a minute</h5>
			<br> <br> <br>

			<form:form method="POST" action="/jobs" modelAttribute="jobFilter"
				class="header-job-search">
				<div class="input-keyword">
					<form:input type="text" path="keyword" class="form-control"
						placeholder="Enter a keyword" />
				</div>

				<div class="input-location">
					<form:input type="text" path="location" class="form-control"
						placeholder="Location" />
				</div>

				<div class="btn-search">
					<button class="btn btn-primary" type="submit">Find jobs</button>
					<a href="/jobs">Advanced Job Search</a>
				</div>
			</form:form>
		</div>

	</div>
	</header>
	<!-- END Site header -->


	<!-- Site footer -->
	<jsp:include page="footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../resources/js/app.min.js"></script>
	<script src="../resources/js/custom.js"></script>

</body>
</html>
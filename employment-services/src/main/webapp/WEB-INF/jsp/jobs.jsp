<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//RU" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ru">
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

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<jsp:include page="navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img"
		style="background-image: url(../resources/img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Browse jobs</h1>
		<p class="lead text-center">Use following search box to find jobs
			that fits you better</p>
	</div>

	<div class="container">
		<form:form method="POST" action="/jobs"
			modelAttribute="jobFilter">

			<div class="row">
				<div class="form-group col-xs-12 col-sm-4">
					<form:input type="text" path="keyword" class="form-control"
						placeholder="Enter a keyword" />
				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<form:input type="text" path="location" class="form-control"
						placeholder="Location" />
				</div>

				<div class="button-group">
					<div class="action-buttons">
						<input type="submit" value="Apply filter" class="btn btn-primary"
							type="submit">
					</div>
				</div>
		</form:form>

	</div>

	</header>
	<!-- END Page header -->


	<!-- Main container -->
	<main> <section class="no-padding-top bg-alt">
	<div class="container">
		<div class="row">

			<div class="col-xs-12">
				<br>
				<h5>
					<c:if test="${foundJobs.size() != 0}">
						We found <strong>${foundJobs.size()}</strong> matches
					</c:if>
					<c:if test="${foundJobs.size() == 0}">
						Sorry, no matches found
					</c:if>
				</h5>
			</div>

			<!-- Job item -->
			<c:forEach items="${foundJobs}" var="job">
				<div class="col-xs-12">
					<a class="item-block" href="/jobs/${job.id}"> <header>
						<c:if test="${job.company.company_images.size() != 0}">
							<img
								src="../resources/img/${job.company.company_images.get(0).company_image}"
								alt="">
						</c:if>
						<div class="hgroup">
							<h4>${job.jobType.jobType}</h4>
							<h5>
								${job.company.company_name} <span class="label label-success">Full-time</span>
							</h5>
						</div>
						<time>Posted: ${job.createdDate}</time> </header>

						<div class="item-body">
							<p>${job.jobDescription}</p>
						</div> <footer>
						<ul class="details cols-3">
							<li><i class="fa fa-map-marker"></i> <span>${job.jobLocation.street_adress},
									${job.jobLocation.city}</span></li>
						</ul>
						</footer>
					</a>
				</div>
			</c:forEach>
			<!-- END Job item -->

		</div>
	</div>
	</section> </main>
	<!-- END Main container -->


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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="../../resources/css/app.min.css" rel="stylesheet">
<link href="../../resources/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../resources/img/favicon.ico">
</head>

<body class="nav-on-header">

	<!-- Navigation bar -->
	<nav class="navbar">
	<div class="container">

		<!-- Logo -->
		<div class="pull-left">
			<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
				class="ti-menu"></i></a>

			<div class="logo-wrapper">
				<a class="logo" href="index-user.html"><img
					src="../../resources/img/logo.png" alt="logo"></a> <a
					class="logo-alt" href="index-user.html"><img
					src="../../resources/img/logo-alt.png" alt="logo-alt"></a>
			</div>

		</div>
		<!-- END Logo -->

		<!-- User account -->
		<div class="pull-right user-login">
			<a class="btn btn-sm btn-primary" href="/login/user">Login</a> or <a
				href="/register/user">register</a>
		</div>
		<!-- END User account -->

		<!-- Navigation menu -->
		<ul class="nav-menu">
			<li><a class="active" href="/home">Home</a>
				<ul>
					<li><a class="active" href="/home">Version 1</a></li>

				</ul></li>
			<li><a href="#">Position</a>
				<ul>
					<li><a href="job-list-1.html">Browse jobs - 1</a></li>
					<li><a href="job-detail.html">Job detail</a></li>
					<li><a href="job-add.html">Post a job</a></li>
					<li><a href="job-manage.html">Manage jobs</a></li>
				</ul></li>
			<li><a href="#">Resume</a>
				<ul>
					<li><a href="resume-list.html">Browse resumes</a></li>
					<li><a href="resume-detail.html">Resume detail</a></li>
					<li><a href="resume-add.html">Create a resume</a></li>
					<li><a href="resume-manage.html">Manage resumes</a></li>
				</ul></li>
			<li><a href="#">Company</a>
				<ul>
					<li><a href="company-list.html">Browse companies</a></li>
					<li><a href="company-detail.html">Company detail</a></li>
					<li><a href="company-add.html">Create a company</a></li>
					<li><a href="company-manage.html">Manage companies</a></li>
				</ul></li>
			<li><a href="#">Pages</a>
				<ul>
					<li><a href="page-about.html">About</a></li>
					<li><a href="page-contact.html">Contact</a></li>
					<li><a href="page-faq.html">FAQ</a></li>
					<li><a href="page-pricing.html">Pricing</a></li>
					<li><a href="page-typography.html">Typography</a></li>
					<li><a href="page-ui-elements.html">UI elements</a></li>
				</ul></li>
		</ul>
		<!-- END Navigation menu -->

	</div>
	</nav>
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img size-lg"
		style="background-image: url(../../resources/img/bg-banner2.jpg)">
	<div class="container">
		<div class="header-detail">
			<c:if test="${company.company_images.size() != 0}">
				<img
					src="../../resources/img/${company.company_images.get(0).company_image}"
					alt="">
			</c:if>
			<div class="hgroup">
				<h1>${company.company_name}</h1>
				<h3>${company.busisness_stream.business_stream_name}</h3>
			</div>
			<hr>
			<p class="lead">${company.profile_description}</p>

			<!-- <ul class="details cols-3">
            <li>
              <i class="fa fa-map-marker"></i>
              <span>Menlo Park, CA</span>
            </li>

            <li>
              <i class="fa fa-globe"></i>
              <a href="#">Google.com</a>
            </li>

            <li>
              <i class="fa fa-users"></i>
              <span>50,000 - 70,000 employer</span>
            </li>

            <li>
              <i class="fa fa-birthday-cake"></i>
              <span>From 1998</span>
            </li>

            <li>
              <i class="fa fa-phone"></i>
              <span>(+1) 123 456 7890</span>
            </li>

            <li>
              <i class="fa fa-envelope"></i>
              <a href="#">info@google.com</a>
            </li>
          </ul> -->

			<div class="button-group">
				<!-- <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
            </ul> -->

				<div class="action-buttons">
					<a class="btn btn-gray" href="#">Favorite</a> <a
						class="btn btn-success" href="#">Contact</a>
				</div>
			</div>

		</div>
	</div>
	</header>
	<!-- END Page header -->


	<!-- Main container -->
	<main> <!-- Company detail --> <!-- <section>
	<div class="container">

		<header class="section-header"> <span>About</span>
		<h2>Company detail</h2>
		</header>

		<p>///</p>
		<p>///</p>

	</div>
	</section> --> <!-- END Company detail --> <!-- Open positions --> <section
		id="open-positions" class="bg-alt">
	<div class="container">
		<header class="section-header"> <span>vacancies</span>
		<h2>Open positions</h2>
		</header>

		<div class="row">
			<c:forEach items="${foundJobs}" var="job">
				<!-- Job item -->
				<div class="col-xs-12">
					<a class="item-block" href="/user/jobs/search/${job.id}"> <header>
						<c:if test="${job.company.company_images.size() != 0}">
							<img
								src="../../resources/img/${job.company.company_images.get(0).company_image}"
								alt="">
						</c:if>
						<div class="hgroup">
							<h4>${job.jobType.jobType}r</h4>
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

							<!-- <li><i class="fa fa-money"></i> <span>$90,000 -
									$110,000 / year</span></li>

							<li><i class="fa fa-certificate"></i> <span>Master or
									Bachelor</span></li> -->
						</ul>
						</footer>
					</a>
				</div>
				<!-- END Job item -->
			</c:forEach>

		</div>

	</div>
	</section> <!-- END Open positions --> </main>
	<!-- END Main container -->


	<!-- Site footer -->
	<footer class="site-footer"> <!-- Top section -->
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-6">
				<h6>About</h6>
				<p class="text-justify">An employment website is a web site that
					deals specifically with employment or careers. Many employment
					websites are designed to allow employers to post job requirements
					for a position to be filled and are commonly known as job boards.
					Other employment sites offer employer reviews, career and
					job-search advice, and describe different job descriptions or
					employers. Through a job website a prospective employee can locate
					and fill out a job application.</p>
			</div>

			<div class="col-xs-6 col-md-3">
				<h6>Company</h6>
				<ul class="footer-links">
					<li><a href="page-about.html">About us</a></li>
					<li><a href="page-typography.html">How it works</a></li>
					<li><a href="page-faq.html">Help center</a></li>
					<li><a href="page-typography.html">Privacy policy</a></li>
					<li><a href="page-contact.html">Contact us</a></li>
				</ul>
			</div>

			<div class="col-xs-6 col-md-3">
				<h6>Trendeing jobs</h6>
				<ul class="footer-links">
					<li><a href="job-list.html">Front-end developer</a></li>
					<li><a href="job-list.html">Android developer</a></li>
					<li><a href="job-list.html">iOS developer</a></li>
					<li><a href="job-list.html">Full stack developer</a></li>
					<li><a href="job-list.html">Project administrator</a></li>
				</ul>
			</div>
		</div>

		<hr>
	</div>
	<!-- END Top section --> <!-- Bottom section -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-6 col-xs-12">
				<p class="copyright-text">
					Copyrights &copy; 2016 All Rights Reserved by <a
						href="http://themeforest.net/user/shamsoft">ShaMSofT</a>.
				</p>
			</div>

			<div class="col-md-4 col-sm-6 col-xs-12">
				<ul class="social-icons">
					<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
					<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a class="instagram" href="#"><i
							class="fa fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- END Bottom section --> </footer>
	<!-- END Site footer -->


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../../resources/js/app.min.js"></script>
	<script src="../../resources/js/custom.js"></script>

</body>
</html>

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

<title>TheJobs - Resume list</title>

<!-- Styles -->
<link href="../../../../resources/css/app.min.css" rel="stylesheet">
<link href="../../../../resources/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../../../resources/img/favicon.ico">
</head>

<body class="nav-on-header bg-alt">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<nav class="navbar">
	<div class="container">

		<!-- Logo -->
		<div class="pull-left">
			<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
				class="ti-menu"></i></a>

			<div class="logo-wrapper">
				<a class="logo" href="/employer/home/"><img
					src="../../../../resources/img/logo.png" alt="logo"></a> <a
					class="logo-alt" href="index.html"><img
					src="../../../../resources/img/logo-alt.png" alt="logo-alt"></a>
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
			<li><a href="/employer/home/">Home</a>
				<ul>
					<li><a href="/employer/home/">Version 1</a></li>

				</ul></li>
			<li><a href="#">Position</a>
				<ul>
					<li><a href="job-list-1.html">Browse jobs - 1</a></li>

					<li><a href="job-detail.html">Job detail</a></li>
					<li><a href="job-add.html">Post a job</a></li>
					<li><a href="job-manage.html">Manage jobs</a></li>
				</ul></li>
			<li><a class="active" href="#">Resume</a>
				<ul>
					<li><a class="active" href="/employer/resume/advance/">Browse
							resumes</a></li>
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
		</ul>
		<!-- END Navigation menu -->

	</div>
	</nav>
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img"
		style="background-image: url(../../../resources/img/bg-banner1.jpg)">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-4">
				<c:if test="${seeker.user_account.user_image != null}">
					<img src="../../../resources/img/${seeker.user_account.user_image}"
						alt="">
				</c:if>
			</div>

			<div class="col-xs-12 col-sm-8 header-detail">
				<div class="hgroup">
					<h1>${seeker.first_name}${" "}${seeker.last_name}</h1>
					<h3>${seeker.headline}</h3>
				</div>
				<hr>
				<p class="lead">${seeker.description}</p>

				<ul class="details cols-2">
					<!-- <li><i class="fa fa-map-marker"></i> <span>Mountain
							view, CA</span></li>

					<li><i class="fa fa-globe"></i> <a href="#">mywebsite.me</a></li> -->

					<li><i class="fa fa-money"></i> <span>${seeker.current_salary}
							${seeker.currency}/ <c:if test="${seeker.is_annually_monthly}">
										hour
									</c:if> <c:if test="${!seeker.is_annually_monthly}">
										month
									</c:if>
					</span></li>

					<li><i class="fa fa-birthday-cake"></i> <span>${Date().getYear() - seeker.user_account.date_of_birth.getYear()}
							years-old</span></li>

					<li><i class="fa fa-phone"></i> <span>${seeker.user_account.contact_number}</span>
					</li>

					<li><i class="fa fa-envelope"></i> <a href="#">${seeker.user_account.email}</a>
					</li>
				</ul>

				<!-- <div class="tag-list">
					<span>HTML5</span> <span>CSS3</span> <span>Bootstrap</span> <span>ReactJS</span>
					<span>SASS / LESS</span> <span>Grunt / Gulp</span> <span>Wordpress</span>
				</div> -->
			</div>
		</div>

		<div class="button-group">
			<!-- <ul class="social-icons">
				<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
				<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a class="instagram" href="#"><i
						class="fa fa-instagram"></i></a></li>
			</ul> -->

			<div class="action-buttons">
				<a class="btn btn-gray" href="#">Download CV</a> <a
					class="btn btn-success" href="#">Contact me</a>
			</div>
		</div>
	</div>
	</header>
	<!-- END Page header -->


	<!-- Main container -->
	<main> <!-- Education --> <section>
	<div class="container">

		<header class="section-header"> <span>Latest degrees</span>
		<h2>Education</h2>
		</header>
		<c:forEach items="${seeker.education_details}" var="degree">
			<div class="row">
				<div class="col-xs-12">
					<div class="item-block">
						<header>
						<div class="hgroup">
							<h4>
								${degree.educationDetailId.major} <small>${degree.educationDetailId.certificate_degree_name}</small>
							</h4>
							<h5>${degree.institute_university_name}</h5>
						</div>
						<h6 class="time">${degree.starting_date}${" - "}${degree.completion_date}</h6>
						</header>
						<!-- <div class="item-body">
							<p>The Massachusetts Institute of Technology (MIT) is a
								private research university in Cambridge, Massachusetts. Founded
								in 1861 in response to the increasing industrialization of the
								United States, MIT adopted a European polytechnic university
								model and stressed laboratory instruction in applied science and
								engineering.</p>
						</div> -->
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	</section> <!-- END Education --> <!-- Work Experience --> <section
		class="bg-alt">
	<div class="container">
		<header class="section-header"> <span>Past positions</span>
		<h2>Work Experience</h2>
		</header>

		<div class="row">

			<!-- Work item -->
			<div class="col-xs-12">
				<div class="item-block">
					<header> <img src="../../../resources/img/logo-google.jpg"
						alt="">
					<div class="hgroup">
						<h4>Google</h4>
						<h5>Senior front-end developer</h5>
					</div>
					<h6 class="time">Jan 2016 - Present</h6>
					</header>
					<div class="item-body">
						<p>Responsibilities:</p>
						<ul>
							<li>Developed front-end for world-class online social
								viewing video and chat platform using xHTML, CSS, ActionScript
								2-3, Javascript, and XML.</li>
							<li>Developed built-in chat application into Flash video
								player in ActionScript 3.</li>
							<li>Built and developed sites for ABC Family properties such
								as Gilmore Girls, The Middleman, Secret Life of an American
								Teenager, Greek, and Kyle XY.</li>
							<li>Translate designs into responsive web interfaces</li>
							<li>Collaboration with the graphic designer on the front-end
								aspect of development.</li>
							<li>Cross-platform cross-browser development.</li>
							<li>Some back-end development in collaboration with senior
								developer.</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- END Work item -->


			<!-- Work item -->
			<div class="col-xs-12">
				<div class="item-block">
					<header> <img src="../../../resources/img/logo-facebook.png"
						alt="">
					<div class="hgroup">
						<h4>Facebook</h4>
						<h5>Interface developer</h5>
					</div>
					<h6 class="time">Aug 2014 - Jan 2016</h6>
					</header>
					<div class="item-body">
						<p>Responsibilities:</p>
						<ul>
							<li>Work as a part of a large team on a major corporate
								project</li>
							<li>Responsible for all aspects of presentation layer
								development including developing templates using HTML, DHTML,
								Javascript, XML, and XSL.</li>
							<li>Rapid-prototyping for usability studies and new business
								development.</li>
							<li>Collaboration with the graphic designer on the front-end
								aspect of development.</li>
							<li>Some back-end development in collaboration with senior
								developer.</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- END Work item -->


			<!-- Work item -->
			<div class="col-xs-12">
				<div class="item-block">
					<header> <img src="../../../resources/img/logo-envato.png"
						alt="">
					<div class="hgroup">
						<h4>Envato</h4>
						<h5>Quality assurance engineer</h5>
					</div>
					<h6 class="time">Mar 2012 - Jun 2014</h6>
					</header>
					<div class="item-body">
						<p>Responsibilities:</p>
						<ul>
							<li>Software testing in a Web Applications/Mobile
								environment.</li>
							<li>Software Test Plans from Business Requirement
								Specifications for test engineering group.</li>
							<li>Run production tests as part of software implementation;
								Create, deliver and support test plans for testing group to
								execute.</li>
							<li>Software testing in a Web Applications environment.</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- END Work item -->


		</div>

	</div>
	</section> <!-- END Work Experience --> <!-- Skills --> <section>
	<div class="container">
		<header class="section-header"> <span>Expertise Areas</span>
		<h2>Skills</h2>
		</header>

		<br>
		<ul class="skills cols-3">
			<li>
				<div>
					<span class="skill-name">HTML</span> <span class="skill-value">100%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 100%;"></div>
				</div>
			</li>

			<li>
				<div>
					<span class="skill-name">CSS</span> <span class="skill-value">95%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 95%;"></div>
				</div>
			</li>

			<li>
				<div>
					<span class="skill-name">Javascript</span> <span
						class="skill-value">80%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 80%;"></div>
				</div>
			</li>

			<li>
				<div>
					<span class="skill-name">Photoshop</span> <span class="skill-value">60%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 60%;"></div>
				</div>
			</li>

			<li>
				<div>
					<span class="skill-name">ReactJS</span> <span class="skill-value">70%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 70%;"></div>
				</div>
			</li>

			<li>
				<div>
					<span class="skill-name">Team work</span> <span class="skill-value">90%</span>
				</div>
				<div class="progress">
					<div class="progress-bar" style="width: 90%;"></div>
				</div>
			</li>
		</ul>

	</div>
	</section> <!-- END Skills --> </main>
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
	<script src="../../../resources/js/app.min.js"></script>
	<script src="../../../resources/js/custom.js"></script>

</body>
</html>

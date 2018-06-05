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
	<header class="page-header bg-img size-lg"
		style="background-image: url(../resources/img/bg-banner2.jpg)">
	<div class="container">
		<div class="header-detail">
			<c:if test="${job.company.company_images.size() != 0}">
							<img
								src="../resources/img/${job.company.company_images.get(0).company_image}"
								alt="">
						</c:if>
			<div class="hgroup">
				<h1>${job.jobType.jobType}</h1>
				<h3>
					<a href="#">${job.company.company_name}</a>
				</h3>
			</div>
			<time>Posted: ${job.createdDate}</time>
			<hr>
			<p class="lead">${job.jobDescription}</p>

			<ul class="details cols-3">
				<li><i class="fa fa-map-marker"></i> <span>${job.jobLocation.street_adress},
						${job.jobLocation.city}</span></li>

				<!-- <li><i class="fa fa-briefcase"></i> <span>Full time</span></li>

				<li><i class="fa fa-money"></i> <span>$90,000 - $110,000
						/ year</span></li>

				<li><i class="fa fa-clock-o"></i> <span>40h / week</span></li>

				<li><i class="fa fa-flask"></i> <span>2+ years
						experience</span></li>

				<li><i class="fa fa-certificate"></i> <a href="#">Master or
						Bachelor</a></li> -->
			</ul>

			<div class="button-group">
				<div class="action-buttons">
					<a class="btn btn-primary" href="#">Apply with linkedin</a> <a
						class="btn btn-success" href="#">Apply now</a>
				</div>
			</div>

		</div>
	</div>
	</header>
	<!-- END Page header -->


	<!-- Main container -->
	<main> <!-- Job detail --> <section>
	<div class="container">

		<p>Google is and always will be an engineering company. We hire
			people with a broad set of technical skills who are ready to tackle
			some of technology's greatest challenges and make an impact on
			millions, if not billions, of users. At Google, engineers not only
			revolutionize search, they routinely work on massive scalability and
			storage solutions, large-scale applications and entirely new
			platforms for developers around the world. From AdWords to Chrome,
			Android to YouTube, Social to Local, Google engineers are changing
			the world one technological achievement after another.</p>

		<br>
		<h4>Responsibilities</h4>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec
			odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis.
			Suspendisse urna nibh, viverra non.</p>
		<ul>
			<li>Build next-generation web applications with a focus on the
				client side.</li>
			<li>Redesign UI's, implement new UI's, and pick up Java as
				necessary.</li>
			<li>Explore and design dynamic and compelling consumer
				experiences.</li>
			<li>Design and build scalable framework for web applications.</li>
		</ul>

		<br>
		<h4>Minimum qualifications</h4>
		<ul>
			<li>BA/BS degree in a technical field or equivalent practical
				experience.</li>
			<li>2 years of relevant work experience in software development.</li>
			<li>Programming experience in C, C++ or Java.</li>
			<li>Experience with AJAX, HTML and CSS.</li>
		</ul>

		<br>
		<h4>Preferred qualifications</h4>
		<ul>
			<li>Interest in user interface design.</li>
			<li>Web application development experience.</li>
			<li>Experience working on cross-browser platforms.</li>
			<li>Development experience designing object-oriented JavaScript.</li>
			<li>Experience with user interface frameworks such as XUL, Flex
				and XAML.</li>
			<li>Knowledge of user interface design.</li>
		</ul>

	</div>
	</section> <!-- END Job detail --> </main>
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
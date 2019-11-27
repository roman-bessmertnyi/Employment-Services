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
<link href="../../../css/app.min.css" rel="stylesheet">
<link href="../../../css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../../img/favicon.ico">
</head>

<body class="nav-on-header bg-alt">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<jsp:include page="../navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img"
		style="background-image: url(../../img/bg-banner1.jpg)">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-4">
				<c:if test="${seeker.user_account.user_image != null}">
					<img src="../../img/${seeker.user_account.user_image}"
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
		<c:forEach items="${seeker.experience_details}" var="job">
			<div class="row">

				<!-- Work item -->
				<div class="col-xs-12">
					<div class="item-block">
						<header>
						<div class="hgroup">
							<h4>${job.company_name}</h4>
							<h5>${job.job_title}</h5>
						</div>
						<h6 class="time">${job.experienceDetailId.start_date}${" - "}${job.experienceDetailId.end_date}</h6>
						</header>
						<div class="item-body">
							<p>Responsibilities:</p>
							<ul>
								<li>${job.description}</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- END Work item -->
			</div>
		</c:forEach>

	</div>
	</section> <!-- END Work Experience --> <!-- Skills --> <section>
	<div class="container">
		<header class="section-header"> <span>Expertise Areas</span>
		<h2>Skills</h2>
		</header>

		<br>

		<ul class="skills cols-3">
			<c:forEach items="${seeker.seeker_skills}" var="skill">
				<li>
					<div>
						<span class="skill-name">${skill.skill_set.name}</span> <span
							class="skill-value">${skill.skill_level}%</span>
					</div>
					<div class="progress">
						<div class="progress-bar" style="width: ${skill.skill_level}%;"></div>
					</div>
				</li>
			</c:forEach>
		</ul>

	</div>
	</section> <!-- END Skills --> </main>
	<!-- END Main container -->


	<!-- Site footer -->
	<jsp:include page="../footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../../js/app.min.js"></script>
	<script src="../../js/custom.js"></script>

</body>
</html>

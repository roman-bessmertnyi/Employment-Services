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

<title>TheJobs - Add resume</title>

<!-- Styles -->
<link href="../resources/css/app.min.css" rel="stylesheet">
<link href="../resources/vendors/summernote/summernote.css"
	rel="stylesheet">
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
	<nav class="navbar">
	<div class="container">

		<!-- Logo -->
		<div class="pull-left">
			<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
				class="ti-menu"></i></a>

			<div class="logo-wrapper">
				<a class="logo" href="index-user.html"><img
					src="../resources/img/logo.png" alt="logo"></a> <a
					class="logo-alt" href="index-user.html"><img
					src="../resources/img/logo-alt.png" alt="logo-alt"></a>
			</div>

		</div>
		<!-- END Logo -->

		<!-- User account -->
		<div class="pull-right user-login">
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				user ${pageContext.request.userPrincipal.name}  
			</c:if>
			<a class="btn btn-sm btn-primary" href="/logout">Logout</a>
		</div>
		<!-- END User account -->

		<!-- Navigation menu -->
		<ul class="nav-menu">
			<li><a class="active" href="/user/home">Home</a></li>
			<li><a href="job-list-1-user.html">Browse jobs</a></li>
			<li><a href="#">Resume</a>
				<ul>
					<li><a href="resume-list-user.html">Browse resumes</a></li>
					<li><a href="/user/resume">Create a resume</a></li>
					<li><a href="resume-manage.html">Manage resumes</a></li>
				</ul></li>
			<li><a href="company-list-user.html">Browse companies</a></li>

		</ul>
		<!-- END Navigation menu -->

	</div>
	</nav>
	<!-- END Navigation bar -->

	<form:form method="POST" action="/user/resume"
		modelAttribute="seeker_profile">

		<!-- Page header -->
		<header class="page-header">
		<div class="container page-name">
			<h1 class="text-center">Add your resume</h1>
			<p class="lead text-center">Create your resume and put it online.</p>
		</div>

		<div class="container">

			<div class="row">
				<!-- <div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<input type="file" class="dropify"
							data-default-file="../resources/img/avatar.jpg"> <span
							class="help-block">Please choose a 4:6 profile picture.</span>
					</div>
				</div> -->

				<div class="col-xs-12 col-sm-8">
					<h6>Basic information</h6>

					<div class="form-group">
						<form:input type="text" path="first_name"
							class="form-control input-lg" placeholder="First Name" />
					</div>

					<div class="form-group">
						<form:input type="text" path="last_name"
							class="form-control input-lg" placeholder="Last Name" />
					</div>

					<div class="form-group">
						<form:input type="text" path="headline" class="form-control"
							placeholder="Headline (e.g. Front-end developer)" />
					</div>

					<div class="form-group">
						<form:textarea path="description" class="form-control" rows="3"
							placeholder="Short description about you" />
					</div>

					<hr class="hr-lg">


					<div class="row">

						<!-- <div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-map-marker"></i></span> <input type="text"
									class="form-control"
									placeholder="Location, e.g. Melon Park, CA">
							</div>
						</div> -->

						<!-- <div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-globe"></i></span>
								<input type="text" class="form-control"
									placeholder="Website address">
							</div>
						</div> -->

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-usd"></i></span>
								<form:input type="text" path="current_salary"
									class="form-control" placeholder="Salary, e.g. 85" />
								<span class="input-group-addon">Per hour</span>
							</div>
						</div>

					</div>

					<hr class="hr-lg">

					<!-- <h6>Tags list</h6>
					<div class="form-group">
						<input type="text" value="HTML,CSS,Javascript"
							data-role="tagsinput" placeholder="Tag name"> <span
							class="help-block">Write tag name and press enter</span>
					</div> -->

				</div>
			</div>

			<!-- <div class="button-group">
				<div class="action-buttons">

					<div class="upload-button">
						<button class="btn btn-block btn-gray">Choose a resume
							file</button>
						<input type="file">
					</div>

					<div class="upload-button">
						<button class="btn btn-block btn-primary">Choose a cover
							image</button>
						<input id="cover_img_file" type="file">
					</div>

				</div>
			</div> -->
		</div>
		</header>
		<!-- END Page header -->


		<!-- <!-- Main container
		<main> Social media <section>
		<div class="container">

			<header class="section-header"> <span>Get connected</span>
			<h2>Social media</h2>
			</header>

			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-facebook"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-google-plus"></i></span> <input type="text"
								class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-dribbble"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-pinterest"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-twitter"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-github"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-instagram"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-youtube"></i></span>
							<input type="text" class="form-control" placeholder="Profile URL">
						</div>
					</div>
				</div>
			</div>

		</div>
		</section> Social media --> -->
		
		<!-- Education -->
		<section class=" bg-alt">
		<div class="container">

			<header class="section-header"> <span>Latest degrees</span>
			<h2>Education</h2>
			</header>

			<div class="row">
			
				<c:forEach items="${seeker_profile.education_details}" varStatus="status">
					<div class="col-xs-12 duplicateable-content">
						<div class="item-block">
							<div class="item-form">

								<button class="btn btn-danger btn-float btn-remove">
									<i class="ti-close"></i>
								</button>

								<div class="row">
									<div class="col-xs-12 col-sm-8">
										<%-- <div class="form-group">
											<form:input type="text"
												path="education_details[${status.index}].educationDetailId.certificate_degree_name"
												class="form-control" placeholder="Degree, e.g. Bachelor" />
										</div>

										<div class="form-group">
											<form:input type="text"
												path="education_details[${status.index}].major"
												class="form-control"
												placeholder="Major, e.g. Computer Science" />
										</div> --%>
										<div class="form-group">
											<form:input type="text"
												path="education_details[${status.index}].institute_university_name"
												class="form-control"
												placeholder="School name, e.g. Massachusetts Institute of Technology" />
										</div>

										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">Date from</span> <input
													type="text" class="form-control" placeholder="e.g. 2012">
												<span class="input-group-addon">Date to</span> <input
													type="text" class="form-control" placeholder="e.g. 2016">
											</div>
										</div>

										<div class="form-group">
											<textarea class="form-control" rows="3"
												placeholder="Short description"></textarea>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						education</button>
				</div>


			</div>
		</div>
		</section>
		<!-- END Education -->
		<!-- Work Experience -->
		<section>
		<div class="container">
			<header class="section-header"> <span>Past positions</span>
			<h2>Work Experience</h2>
			</header>

			<div class="row">

				<div class="col-xs-12">
					<div class="item-block">
						<div class="item-form">

							<button class="btn btn-danger btn-float btn-remove">
								<i class="ti-close"></i>
							</button>

							<div class="row">
								<div class="col-xs-12 col-sm-4">
									<div class="form-group">
										<input type="file" class="dropify"
											data-default-file="../resources/img/logo-default.png">
										<span class="help-block">Please choose a square logo</span>
									</div>
								</div>

								<div class="col-xs-12 col-sm-8">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Company name">
									</div>

									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Position, e.g. UI/UX Researcher">
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">Date from</span> <input
												type="text" class="form-control" placeholder="e.g. 2012">
											<span class="input-group-addon">Date to</span> <input
												type="text" class="form-control" placeholder="e.g. 2016">
										</div>
									</div>

								</div>

								<div class="col-xs-12">
									<div class="form-group">
										<textarea class="summernote-editor"></textarea>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="col-xs-12 duplicateable-content">
					<div class="item-block">
						<div class="item-form">

							<button class="btn btn-danger btn-float btn-remove">
								<i class="ti-close"></i>
							</button>

							<div class="row">
								<div class="col-xs-12 col-sm-4">
									<div class="form-group">
										<input type="file" class="dropify"
											data-default-file="../resources/img/logo-default.png">
										<span class="help-block">Please choose a square logo</span>
									</div>
								</div>

								<div class="col-xs-12 col-sm-8">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Company name">
									</div>

									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Position, e.g. UI/UX Researcher">
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">Date from</span> <input
												type="text" class="form-control" placeholder="e.g. 2012">
											<span class="input-group-addon">Date to</span> <input
												type="text" class="form-control" placeholder="e.g. 2016">
										</div>
									</div>

								</div>

								<div class="col-xs-12">
									<div class="form-group">
										<textarea class="summernote-editor"></textarea>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						experience</button>
				</div>


			</div>

		</div>
		</section>
		<!-- END Work Experience -->
		<!-- Skills -->
		<section class=" bg-alt">
		<div class="container">
			<header class="section-header"> <span>Expertise Areas</span>
			<h2>Skills</h2>
			</header>

			<div class="row">

				<div class="col-xs-12">
					<div class="item-block">
						<div class="item-form">

							<button class="btn btn-danger btn-float btn-remove">
								<i class="ti-close"></i>
							</button>

							<div class="row">
								<div class="col-xs-12 col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Skill name, e.g. HTML">
									</div>
								</div>

								<div class="col-xs-12 col-sm-6">

									<div class="form-group">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Skill proficiency, e.g. 90"> <span
												class="input-group-addon">%</span>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="col-xs-12 duplicateable-content">
					<div class="item-block">
						<div class="item-form">

							<button class="btn btn-danger btn-float btn-remove">
								<i class="ti-close"></i>
							</button>

							<div class="row">
								<div class="col-xs-12 col-sm-6">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Skill name, e.g. HTML">
									</div>
								</div>

								<div class="col-xs-12 col-sm-6">

									<div class="form-group">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Skill proficiency, e.g. 90"> <span
												class="input-group-addon">%</span>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						experience</button>
				</div>


			</div>

		</div>
		</section>
		<!-- END Skills -->
		<!-- Submit -->
		<section class=" bg-img"
			style="background-image: url(../resources/img/bg-facts.jpg);">
		<div class="container">
			<header class="section-header"> <span>Are you done?</span>
			<h2>Submit resume</h2>
			<p>Please review your information once more and press the below
				button to put your resume online.</p>
			</header>

			<p class="text-center">
				<button class="btn btn-success btn-xl btn-round">Submit
					your resume</button>
			</p>

		</div>
		</section>
		<!-- END Submit -->
		</main>
		<!-- END Main container -->

	</form:form>

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
	<script src="../resources/js/app.min.js"></script>
	<script src="../resources/vendors/summernote/summernote.min.js"></script>
	<script src="../resources/js/custom.js"></script>

</body>
</html>

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
<link href="../../../resources/css/app.min.css" rel="stylesheet">
<link href="../../../resources/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../../resources/img/favicon.ico">
</head>

<body class="nav-on-header bg-alt">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<jsp:include page="../navigation.jsp" />
	<!-- END Navigation bar -->

	<form:form method="POST" action="/resumes/post" modelAttribute="seeker">

		<!-- Page header -->
		<header class="page-header">
		<div class="container page-name">
			<h1 class="text-center">Add your resume</h1>
			<p class="lead text-center">Create your resume and put it online.</p>
		</div>

		<div class="container">

			<div class="row">
				<div class="col-xs-12 col-sm-4">
					<div class="form-group">
						<input type="file" class="dropify"
							data-default-file="../resources/img/avatar.jpg"> <span
							class="help-block">Please choose a 4:6 profile picture.</span>
					</div>
				</div>

				<div class="col-xs-12 col-sm-8">
					<div class="form-group">
						<form:input type="text" path="firstName"
							class="form-control input-lg" placeholder="First Name" />
					</div>

					<div class="form-group">
						<form:input type="text" path="lastName"
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

					<h6>Basic information</h6>
					<div class="row">

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-map-marker"></i></span>
								<form:input type="text" path="location.city"
									class="form-control" placeholder="City" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-map-marker"></i></span>
								<form:input type="text" path="location.state"
									class="form-control" placeholder="State" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-globe"></i></span>
								<form:input type="text" path="website" class="form-control"
									placeholder="Website address" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-usd"></i></span>
								<form:input type="text" path="salary" class="form-control"
									placeholder="Salary, e.g. 85" />
								<span class="input-group-addon"><form:select
										path="isAnnuallyMonthly">
										<form:option value="true" label="Per hour" />
										<form:option value="false" label="Per month" />
									</form:select></span>
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-birthday-cake"></i></span>
								<form:input type="text" path="age" class="form-control"
									placeholder="Age" />
								<span class="input-group-addon">Years old</span>
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-phone"></i></span>
								<form:input type="text" path="contactNumber"
									class="form-control" placeholder="Phone number" />
							</div>
						</div>

					</div>

					<!-- <hr class="hr-lg">

					<h6>Tags list</h6>
					<div class="form-group">
						<input type="text" value="HTML,CSS,Javascript"
							data-role="tagsinput" placeholder="Tag name"> <span
							class="help-block">Write tag name and press enter</span>
					</div> -->

				</div>
			</div>

			<div class="button-group">
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
			</div>
		</div>
		</header>
		<!-- END Page header -->


		<!-- Main container -->
		<main> <!-- Education --> <section class=" bg-alt">
		<div class="container">

			<header class="section-header"> <span>Latest degrees</span>
			<h2>Education</h2>
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
										<form:input type="text"
											path="educationDetails[0].id.certificateDegreeName"
											class="form-control" placeholder="Degree, e.g. Bachelor" />
									</div>

									<div class="form-group">
										<form:input type="text" path="educationDetails[0].id.major"
											class="form-control"
											placeholder="Major, e.g. Computer Science" />
									</div>
									<div class="form-group">
										<form:input type="text"
											path="educationDetails[0].instituteUniversityName"
											class="form-control"
											placeholder="School name, e.g. Massachusetts Institute of Technology" />
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">Date from</span>
											<form:input type="date"
												path="educationDetails[0].instituteUniversityName"
												class="form-control" placeholder="e.g. 2012" />
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
										<form:input type="text"
											path="educationDetails[0].id.certificateDegreeName"
											class="form-control" placeholder="Degree, e.g. Bachelor" />
									</div>

									<div class="form-group">
										<form:input type="text" path="educationDetails[0].id.major"
											class="form-control"
											placeholder="Major, e.g. Computer Science" />
									</div>
									<div class="form-group">
										<form:input type="text"
											path="educationDetails[0].instituteUniversityName"
											class="form-control"
											placeholder="School name, e.g. Massachusetts Institute of Technology" />
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">Date from</span>
											<form:input type="date"
												path="educationDetails[0].instituteUniversityName"
												class="form-control" placeholder="e.g. 2012" />
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

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						education</button>
				</div>
			</div>
		</div>
		</section> <!-- END Education --> <!-- Work Experience --> <section>
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

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						experience</button>
				</div>


			</div>

		</div>
		</section> <!-- END Work Experience --> <!-- Skills --> <section class=" bg-alt">
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

				<div class="col-xs-12 text-center">
					<br>
					<button class="btn btn-primary btn-duplicator">Add
						experience</button>
				</div>


			</div>

		</div>
		</section> <!-- END Skills --> <!-- Submit --> <section class=" bg-img"
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
		</section> <!-- END Submit --> </main>
		<!-- END Main container -->

	</form:form>


	<!-- Site footer -->
	<jsp:include page="../footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../../../resources/js/app.min.js"></script>
	<script src="../../../resources/js/summernote.min.js"></script>
	<script src="../../../resources/js/custom.js"></script>

</body>
</html>
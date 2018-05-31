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
	<nav class="navbar">
	<div class="container">

		<!-- Logo -->
		<div class="pull-left">
			<a class="navbar-toggle" href="#" data-toggle="offcanvas"><i
				class="ti-menu"></i></a>

			<div class="logo-wrapper">
				<a class="logo" href="/employer/home/"><img
					src="../../../resources/img/logo.png" alt="logo"></a> <a
					class="logo-alt" href="index.html"><img
					src="../../../resources/img/logo-alt.png" alt="logo-alt"></a>
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
	<header class="page-header">
	<div class="container page-name">
		<h1 class="text-center">Add a new job</h1>
		<p class="lead text-center">Create a new vacancy for your company
			and put it online.</p>
	</div>

	<div class="container">
		<form:form method="POST" action="/employer/jobs/post"
			modelAttribute="job">
			<div class="row">
				<div class="form-group col-xs-12 col-sm-6">
					<form:select path="jobType" class="form-control selectpicker">
						<c:forEach items="${jobTypeList}" varStatus="status">
							<form:option value="${jobTypeList[status.index].id}"
								label="${jobTypeList[status.index].jobType}" />
						</c:forEach>
					</form:select>
				</div>

				<div class="form-group col-xs-12 col-sm-6">
					<form:select path="company" class="form-control selectpicker">
						<c:forEach items="${companyList}" varStatus="status">
							<form:option value="${companyList[status.index].id}"
								label="${companyList[status.index].company_name}" />
						</c:forEach>
					</form:select>
				</div>

				<div class="form-group col-xs-12">
					<form:textarea path="jobDescription" class="form-control" rows="5"
						placeholder="Short description" />
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
						<form:input type="text" path="jobLocation.street_adress"
							class="form-control" placeholder="Street address" />
						<form:input type="text" path="jobLocation.city"
							class="form-control" placeholder="City" />
						<form:input type="text" path="jobLocation.state"
							class="form-control" placeholder="State" />
						<form:input type="text" path="jobLocation.country"
							class="form-control" placeholder="Country" />
						<form:input type="text" path="jobLocation.zip"
							class="form-control" placeholder="Zip" />
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6">
					<form:checkbox path="companyNameHidden" />
					Hide Company name?
				</div>

				<form:input type="hidden" path="active" value="true" />

				<form:input type="hidden" path="postedBy" value="${posterId}" />

				<%
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
						String formatteddate = sdf.format(new Date());
				%>

				<form:input type="hidden" path="createdDate" id="registration_date"
					value="<%=formatteddate%>" />

				<input type="submit" id="submit-job" class="hidden" />

				<!-- <div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
						<select class="form-control selectpicker">
							<option>Full time</option>
							<option>Part time</option>
							<option>Internship</option>
							<option>Freelance</option>
							<option>Remote</option>
						</select>
					</div>
				</div>
				
				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-money"></i></span>
						<input type="text" class="form-control" placeholder="Salary">
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
						<input type="text" class="form-control"
							placeholder="Working hours, e.g. 40"> <span
							class="input-group-addon">hours / week</span>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-flask"></i></span>
						<input type="text" class="form-control"
							placeholder="Experience, e.g. 5"> <span
							class="input-group-addon">Years</span>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i
							class="fa fa-certificate"></i></span> <select
							class="form-control selectpicker" multiple>
							<option>Postdoc</option>
							<option>Ph.D.</option>
							<option>Master</option>
							<option selected>Bachelor</option>
						</select>
					</div>
				</div> -->


			</div>

			<!-- <div class="button-group">
				<div class="action-buttons">
					<div class="upload-button">
						<button class="btn btn-block btn-primary">Choose a cover
							image</button>
						<input id="cover_img_file" type="file">
					</div>
				</div>
			</div> -->
		</form:form>
	</div>
	</header>
	<!-- END Page header -->


	<!-- Main container -->
	<main> <!-- Job detail --> <!-- <section>
	<div class="container">

		<header class="section-header"> <span>Description</span>
		<h2>Job detail</h2>
		<p>Write about your company, job description, skills required,
			benefits, etc.</p>
		</header>

		<textarea class="summernote-editor"></textarea>

	</div>
	</section> --> <!-- END Job detail --> <!-- Submit --> <section
		class="bg-alt">
	<div class="container">
		<header class="section-header"> <span>Are you done?</span>
		<h2>Submit Job</h2>
		<p>Please review your information once more and press the below
			button to put your job online.</p>
		</header>

		<p class="text-center">
			<label for="submit-job" class="btn btn-success btn-xl btn-round">Submit
				your job</label>
		</p>

	</div>

	</section> <!-- END Submit --> </main>
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
	<script src="../../../resources/js/summernote.min.js"></script>
	<script src="../../../resources/js/custom.js"></script>

</body>
</html>
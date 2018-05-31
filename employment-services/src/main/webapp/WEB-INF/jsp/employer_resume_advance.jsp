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
	<header class="page-header bg-img"
		style="background-image: url(../../../resources/img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Browse resumes</h1>
		<p class="lead text-center">Use following search box to find
			resumes that fits your position better</p>
	</div>

	<div class="container">
		<form action="#">

			<div class="row">
				<div class="form-group col-xs-12 col-sm-4">
					<input type="text" class="form-control"
						placeholder="Keyword: name, skills, or tags">
				</div>

				<!-- <div class="form-group col-xs-12 col-sm-4">
					<input type="text" class="form-control"
						placeholder="Location: city, state or zip">
				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<select class="form-control selectpicker" multiple>
						<option selected>All categories</option>
						<option>Developer</option>
						<option>Designer</option>
						<option>Customer service</option>
						<option>Finance</option>
						<option>Healthcare</option>
						<option>Sale</option>
						<option>Marketing</option>
						<option>Information technology</option>
						<option>Others</option>
					</select>
				</div>


				<div class="form-group col-xs-12 col-sm-4">
					<h6>Hourly rate</h6>
					<div class="checkall-group">
						<div class="checkbox">
							<input type="checkbox" id="rate1" name="rate" checked> <label
								for="rate1">All rates</label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="rate2" name="rate"> <label
								for="rate2">$0 - $50 <small>(364)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="rate3" name="rate"> <label
								for="rate3">$50 - $100 <small>(684)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="rate4" name="rate"> <label
								for="rate4">$100 - $200 <small>(195)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="rate5" name="rate"> <label
								for="rate5">$200+ <small>(39)</small></label>
						</div>
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-4">
					<h6>Academic degree</h6>
					<div class="checkall-group">
						<div class="checkbox">
							<input type="checkbox" id="degree1" name="degree" checked>
							<label for="degree1">All degrees</label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="degree2" name="degree"> <label
								for="degree2">Associate degree <small>(216)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="degree3" name="degree"> <label
								for="degree3">Bachelor's degree <small>(569)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="degree4" name="degree"> <label
								for="degree4">Master's degree <small>(439)</small></label>
						</div>

						<div class="checkbox">
							<input type="checkbox" id="degree5" name="degree"> <label
								for="degree5">Doctoral degree <small>(84)</small></label>
						</div>
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-4">
					<h6>Sort by</h6>
					<div class="radio">
						<input type="radio" name="sortby" id="sortby1" value="option1"
							checked> <label for="sortby1">Relevance</label>
					</div>

					<div class="radio">
						<input type="radio" name="sortby" id="sortby2" value="option2">
						<label for="sortby2">Highest rate first</label>
					</div>

					<div class="radio">
						<input type="radio" name="sortby" id="sortby3" value="option3">
						<label for="sortby3">Lowest rate first</label>
					</div>

					<div class="radio">
						<input type="radio" name="sortby" id="sortby4" value="option4">
						<label for="sortby4">Highest degree first</label>
					</div>

					<div class="radio">
						<input type="radio" name="sortby" id="sortby5" value="option5">
						<label for="sortby5">Lowest degree first</label>
					</div>

				</div> -->


			</div>

			<div class="button-group">
				<div class="action-buttons">
					<button class="btn btn-primary">Apply filter</button>
				</div>
			</div>

		</form>

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
					<c:if test="${foundSeekers.size() != 0}">
						We found <strong>${foundSeekers.size()}</strong> matches
					</c:if>
					<c:if test="${foundSeekers.size() == 0}">
						Sorry, no matches found
					</c:if>
				</h5>
			</div>
		</div>

		<div class="row">
			<c:forEach items="${foundSeekers}" var="seeker">
				<!-- Resume detail -->
				<div class="col-sm-12 col-md-6">
					<a class="item-block" href="/employer/resume/search/${seeker.userAccountId}">
						<header> <c:if
							test="${seeker.user_account.user_image != null}">
							<img class="resume-avatar"
								src="../../resources/img/${seeker.user_account.user_image}"
								alt="">
						</c:if>
						<div class="hgroup">
							<h4>${seeker.first_name}${" "}${seeker.last_name}</h4>
							<h5>${seeker.headline}</h5>
						</div>
						</header>

						<div class="item-body">
							<p>${seeker.description}</p>

							<!-- <div class="tag-list">
								<span>J2EE</span> <span>J2SE</span> <span>Android</span>
							</div> -->
						</div> <footer>
						<ul class="details cols-2">
							<!-- <li><i class="fa fa-map-marker"></i> <span>Fairfield,
									IA</span></li> -->

							<li><i class="fa fa-money"></i> <span>${seeker.current_salary}
									${seeker.currency}/ <c:if test="${seeker.is_annually_monthly}">
										hour
									</c:if> <c:if test="${!seeker.is_annually_monthly}">
										month
									</c:if>
							</span></li>
						</ul>
						</footer>
					</a>
				</div>
				<!-- END Resume detail -->
			</c:forEach>
		</div>


		<!-- Page navigation -->
		<!-- <nav class="text-center">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <i
					class="ti-angle-left"></i>
			</a></li>
			<li><a href="#">1</a></li>
			<li class="active"><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#" aria-label="Next"> <i class="ti-angle-right"></i>
			</a></li>
		</ul>
		</nav> -->
		<!-- END Page navigation -->


	</div>
	</section> </main>
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

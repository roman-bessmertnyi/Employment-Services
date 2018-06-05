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
	<jsp:include page="employer_nav.jsp" />
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
	<jsp:include page="footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../../../resources/js/app.min.js"></script>
	<script src="../../../resources/js/custom.js"></script>

</body>
</html>

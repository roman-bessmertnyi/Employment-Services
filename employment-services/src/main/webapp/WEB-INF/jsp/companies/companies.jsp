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

	<!-- Navigation bar -->
	<jsp:include page="../navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img"
		style="background-image: url(../resources/img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Browse companies</h1>
		<p class="lead text-center">Use following search box to find
			companies that fits you better</p>
	</div>

	<div class="container">
		<form action="#">

			<div class="row">
				<div class="form-group col-xs-12 col-sm-4">
					<input type="text" class="form-control" placeholder="Keyword">
				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<input type="text" class="form-control" placeholder="Location">
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

			<!-- <div class="col-xs-12">
					<br>
					<h5>
						We found <strong>86</strong> matches, you're watching <i>10</i> to
						<i>15</i>
					</h5>
				</div> -->

			<!-- Company detail -->
			<c:forEach items="${companies}" var="company">
				<div class="col-xs-12">
					<a class="item-block" href="/companies/${company.id}"> <header>
						<div class="hgroup">
							<h4>${company.companyName}</h4>
							<h5>${company.businessStream.businessStreamName}</h5>
						</div>
						<span class="open-position">${company.jobPosts.size()}
							open position</span> </header>

						<div class="item-body">
							<p>${company.description}</p>
						</div>
					</a>
				</div>
			</c:forEach>
			<!-- END Company detail -->


			<!-- Page navigation -->
			<!-- <nav class="text-center">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <i
								class="ti-angle-left"></i>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li class="active"><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#" aria-label="Next"> <i
								class="ti-angle-right"></i>
						</a></li>
					</ul>
				</nav> -->
			<!-- END Page navigation -->

		</div>
	</div>
	</section> </main>
	<!-- END Main container -->


	<!-- Site footer -->
	<jsp:include page="../footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../resources/js/app.min.js"></script>
	<script src="../resources/js/custom.js"></script>

</body>
</html>
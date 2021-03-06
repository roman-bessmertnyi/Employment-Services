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
<link href="../css/app.min.css" rel="stylesheet">
<link href="../css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../img/favicon.ico">
</head>

<body class="nav-on-header">

	<!-- Navigation bar -->
	<jsp:include page="../navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img size-lg"
		style="background-image: url(../img/bg-banner2.jpg)">
	<div class="container">
		<div class="header-detail">
			<div class="hgroup">
				<h1>${company.company_name}</h1>
				<h3>${company.busisness_stream.business_stream_name}</h3>
			</div>
			<hr>
			<p class="lead">${company.profile_description}</p>

			<div class="button-group">

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
	<main> <!-- Open positions --> <section id="open-positions"
		class="bg-alt">
	<div class="container">
		<header class="section-header"> <span>vacancies</span>
		<h2>Open positions</h2>
		</header>

		<div class="row">
			<c:forEach items="${foundJobs}" var="job">
				<!-- Job item -->
				<div class="col-xs-12">
					<a class="item-block" href="/jobs/${job.id}"> <header>
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
	<jsp:include page="../footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../js/app.min.js"></script>
	<script src="../js/custom.js"></script>

</body>
</html>

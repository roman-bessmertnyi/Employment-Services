<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employment Services</title>
</head>
<body>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome, ${pageContext.request.userPrincipal.name}</h2>
	</c:if>
	<p>Job search</p>
	<p>Enter search criteria</p>
	<p>search criteria form</p>
	<p>
		<a href="/user/jobs/search">search</a>
	</p>
	<p>
		<a href="/user/home">go back</a>
	</p>
	<p>
		<a href="/logout">log out</a>
	</p>
</body>
</html> --%>

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
<link href="../../resources/css/app.min.css" rel="stylesheet">
<link href="../../resources/css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Oswald:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../resources/img/favicon.ico">
</head>

<body class="nav-on-header">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<jsp:include page="user_nav.jsp" />
	<!-- END Navigation bar -->


	<!-- Page header -->
	<header class="page-header bg-img"
		style="background-image: url(../../resources/img/bg-banner1.jpg);">
	<div class="container page-name">
		<h1 class="text-center">Browse jobs</h1>
		<p class="lead text-center">Use following search box to find jobs
			that fits you better</p>
	</div>

	<div class="container">
		<form:form method="POST" action="/user/jobs"
			modelAttribute="jobFilter">

			<div class="row">
				<div class="form-group col-xs-12 col-sm-4">
					<form:input type="text" path="keyword" class="form-control"
						placeholder="Enter a keyword" />
				</div>

				<div class="form-group col-xs-12 col-sm-4">
					<form:input type="text" path="location" class="form-control"
						placeholder="Location" />
				</div>

				<div class="button-group">
					<div class="action-buttons">
						<input type="submit" value="Apply filter" class="btn btn-primary"
							type="submit">
					</div>
				</div>
		</form:form>

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
					<c:if test="${foundJobs.size() != 0}">
						We found <strong>${foundJobs.size()}</strong> matches
					</c:if>
					<c:if test="${foundJobs.size() == 0}">
						Sorry, no matches found
					</c:if>
				</h5>
			</div>

			<!-- Job item -->
			<c:forEach items="${foundJobs}" var="job">
				<div class="col-xs-12">
					<a class="item-block" href="/user/jobs/${job.id}"> <header>
						<c:if test="${job.company.company_images.size() != 0}">
							<img
								src="../../resources/img/${job.company.company_images.get(0).company_image}"
								alt="">
						</c:if>
						<div class="hgroup">
							<h4>${job.jobType.jobType}</h4>
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
			</c:forEach>
			<!-- END Job item -->


			<!-- Job item -->
			<!-- 
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../../resources/img/logo-linkedin.png" alt="">
					<div class="hgroup">
						<h4>Software Engineer (Entry or Senior)</h4>
						<h5>
							Linkedin <span class="label label-warning">Part-time</span>
						</h5>
					</div>
					<time datetime="2016-03-10 20:00">8 hours ago</time> </header>

					<div class="item-body">
						<p>The Special Programs Department II is seeking to hire a
							Computer Scientist to augment our software development team.
							Members of the software development team are expected to follow
							established software engineering principles to methodically
							deliver mission application software.</p>
					</div> <footer>
					<ul class="details cols-3">
						<li><i class="fa fa-map-marker"></i> <span>Livermore,
								CA</span></li>

						<li><i class="fa fa-money"></i> <span>$60,000 -
								$75,000 / year</span></li>

						<li><i class="fa fa-certificate"></i> <span>Master or
								Bachelor</span></li>
					</ul>
					</footer>
				</a>
			</div> -->
			<!-- END Job item -->

			<!-- Job item -->
			<!-- 
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../../resources/img/logo-envato.png" alt="">
					<div class="hgroup">
						<h4>Full Stack Web Developer</h4>
						<h5>
							Envato <span class="label label-info">Freelance</span>
						</h5>
					</div>
					<time datetime="2016-03-10 20:00">2 days ago</time> </header>

					<div class="item-body">
						<p>We're seeing a driven, curious, passionate full-stack web
							developer to help change how people learn creative skills and
							effortlessly create the images they imagine. You’ll be part of a
							new rapid prototyping and development team helping to apply lean
							startup development methodologies and modern web technologies to
							shape the future of Creative Cloud.</p>
					</div> <footer>
					<ul class="details cols-3">
						<li><i class="fa fa-map-marker"></i> <span>San
								Francisco, CA</span></li>

						<li><i class="fa fa-money"></i> <span>$105,000 / year</span>
						</li>

						<li><i class="fa fa-certificate"></i> <span>Master</span></li>
					</ul>
					</footer>
				</a>
			</div> -->
			<!-- END Job item -->

			<!-- Job item -->
			<!-- 
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../../resources/img/logo-facebook.png" alt="">
					<div class="hgroup">
						<h4>Web Applications Developer</h4>
						<h5>
							Facebook <span class="label label-danger">Internship</span>
						</h5>
					</div>
					<time datetime="2016-03-10 20:00">Feb 26, 2016</time> </header>

					<div class="item-body">
						<p>Client needs a back-end Java developer who has worked
							mainly on Java, J2EE, Spring, Web Services, and other Java
							related technologies.</p>
					</div> <footer>
					<ul class="details cols-3">
						<li><i class="fa fa-map-marker"></i> <span>Lexington,
								MA</span></li>

						<li><i class="fa fa-money"></i> <span>$130,000 -
								$150,000 / year</span></li>

						<li><i class="fa fa-certificate"></i> <span>Ph.D. or
								Master</span></li>
					</ul>
					</footer>
				</a>
			</div> -->
			<!-- END Job item -->

			<!-- Job item -->
			<!-- <div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../../resources/img/logo-microsoft.jpg" alt="">
					<div class="hgroup">
						<h4>Sr. SQL Server Developer</h4>
						<h5>
							Microsoft <span class="label label-success">Remote</span>
						</h5>
					</div>
					<time datetime="2016-03-10 20:00">Feb 16, 2016</time> </header>

					<div class="item-body">
						<p>Understand and model complex business requirements into
							database schemas and work with existing databases in SQL and
							NOSQL data stores. Develop high performance stored procedures,
							triggers and other database level code to provide data services
							to other teams.</p>
					</div> <footer>
					<ul class="details cols-3">
						<li><i class="fa fa-map-marker"></i> <span>Palo Alto,
								CA</span></li>

						<li><i class="fa fa-money"></i> <span>$125,000 -
								$140,000 / year</span></li>

						<li><i class="fa fa-certificate"></i> <span>Ph.D. or
								Master</span></li>
					</ul>
					</footer>
				</a>
			</div> -->
			<!-- END Job item -->

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
	<script src="../../resources/js/app.min.js"></script>
	<script src="../../resources/js/custom.js"></script>

</body>
</html>

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
	<p>
		<a href="/user/jobs/advance">detailed search</a>
	</p>
	<p>
		<a href="/user/jobs/search">simple search</a>
	</p>
	<p>
		<a href="/logout">log out</a>
	</p>
</body>
</html> --%>

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
		<jsp:include page="navigation.jsp" />
	<!-- END Navigation bar -->


	<!-- Site header -->
	<header class="site-header size-lg text-center"
		style="background-image: url(../resources/img/bg-banner1.jpg)">
	<div class="container">
		<div class="col-xs-12">
			<br> <br>
			<h2>
				We offer
				<mark>1,259</mark>
				job vacancies right now!
			</h2>
			<h5 class="font-alt">Find your desire one in a minute</h5>
			<br> <br> <br>
			<form class="header-job-search">
				<div class="input-keyword">
					<input type="text" class="form-control"
						placeholder="Job title, skills, or company">
				</div>

				<div class="input-location">
					<input type="text" class="form-control"
						placeholder="City, state or zip">
				</div>

				<div class="btn-search">
					<button class="btn btn-primary" type="submit">Find jobs</button>
					<a href="job-list.html">Advanced Job Search</a>
				</div>
			</form>
		</div>

	</div>
	</header>
	<!-- END Site header -->


	<!-- Main container -->
	<main> <!-- Recent jobs --> <section>
	<div class="container">
		<header class="section-header"> <span>Latest</span>
		<h2>Recent jobs</h2>
		</header>

		<div class="row item-blocks-connected">

			<!-- Job item -->
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../resources/img/logo-google.jpg" alt="">
					<div class="hgroup">
						<h4>Senior front-end developer</h4>
						<h5>Google</h5>
					</div>
					<div class="header-meta">
						<span class="location">Menlo park, CA</span> <span
							class="label label-success">Full-time</span>
					</div>
					</header>
				</a>
			</div>
			<!-- END Job item -->


			<!-- Job item -->
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../resources/img/logo-linkedin.png" alt="">
					<div class="hgroup">
						<h4>Software Engineer (Entry or Senior)</h4>
						<h5>Linkedin</h5>
					</div>
					<div class="header-meta">
						<span class="location">Livermore, CA</span> <span
							class="label label-warning">Part-time</span>
					</div>
					</header>
				</a>
			</div>
			<!-- END Job item -->

			<!-- Job item -->
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../resources/img/logo-envato.png" alt="">
					<div class="hgroup">
						<h4>Full Stack Web Developer</h4>
						<h5>Envato</h5>
					</div>
					<div class="header-meta">
						<span class="location">San Francisco, CA</span> <span
							class="label label-info">Freelance</span>
					</div>
					</header>
				</a>
			</div>
			<!-- END Job item -->

			<!-- Job item -->
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../resources/img/logo-facebook.png" alt="">
					<div class="hgroup">
						<h4>Web Applications Developer</h4>
						<h5>Facebook</h5>
					</div>
					<div class="header-meta">
						<span class="location">Lexington, MA</span> <span
							class="label label-danger">Internship</span>
					</div>
					</header>
				</a>
			</div>
			<!-- END Job item -->

			<!-- Job item -->
			<div class="col-xs-12">
				<a class="item-block" href="job-detail.html"> <header>
					<img src="../resources/img/logo-microsoft.jpg" alt="">
					<div class="hgroup">
						<h4>Sr. SQL Server Developer</h4>
						<h5>Microsoft</h5>
					</div>
					<div class="header-meta">
						<span class="location">Palo Alto, CA</span> <span
							class="label label-success">Remote</span>
					</div>
					</header>
				</a>
			</div>
			<!-- END Job item -->

		</div>

		<br> <br>
		<p class="text-center">
			<a class="btn btn-info" href="job-list.html">Browse all jobs</a>
		</p>
	</div>
	</section> <!-- END Recent jobs --> <!-- Facts --> <section
		class="bg-img bg-repeat no-overlay section-sm"
		style="background-image: url(../resources/img/bg-pattern.png)">
	<div class="container">

		<div class="row">
			<div class="counter col-md-3 col-sm-6">
				<p>
					<span data-from="0" data-to="6890"></span>+
				</p>
				<h6>Jobs</h6>
			</div>

			<div class="counter col-md-3 col-sm-6">
				<p>
					<span data-from="0" data-to="1200"></span>+
				</p>
				<h6>Members</h6>
			</div>

			<div class="counter col-md-3 col-sm-6">
				<p>
					<span data-from="0" data-to="36800"></span>+
				</p>
				<h6>Resume</h6>
			</div>

			<div class="counter col-md-3 col-sm-6">
				<p>
					<span data-from="0" data-to="15400"></span>+
				</p>
				<h6>Company</h6>
			</div>
		</div>

	</div>
	</section> <!-- END Facts --> <!-- How it works --> <section>
	<div class="container">

		<div class="col-sm-12 col-md-6">
			<header class="section-header text-left"> <span>Workflow</span>
			<h2>How it works</h2>
			</header>

			<p class="lead">Pellentesque et pulvinar orci. Suspendisse sed
				euismod purus. Pellentesque nunc ex, ultrices eu enim non,
				consectetur interdum nisl. Nam congue interdum mauris, sed ultrices
				augue lacinia in. Praesent turpis purus, faucibus in tempor vel,
				dictum ac eros.</p>
			<p>Nulla quis felis et orci luctus semper sit amet id dui. Aenean
				ultricies lectus nunc, vel rhoncus odio sagittis eu. Sed at felis eu
				tortor mattis imperdiet et sed tortor. Nullam ac porttitor arcu.
				Vivamus tristique elit id tempor lacinia. Donec auctor at nibh eget
				tincidunt. Nulla facilisi. Nunc condimentum dictum mattis.</p>


			<br> <br> <a class="btn btn-primary"
				href="page-typography.html">Learn more</a>
		</div>

		<div class="col-sm-12 col-md-6 hidden-xs hidden-sm">
			<br> <img class="center-block"
				src="../resources/img/how-it-works.png" alt="how it works">
		</div>

	</div>
	</section> <!-- END How it works --> <!-- Categories --> <section class="bg-alt">
	<div class="container">
		<header class="section-header"> <span>Categories</span>
		<h2>Popular categories</h2>
		<p>Here's the most popular categories</p>
		</header>

		<div class="category-grid">
			<a href="job-list-1.html"> <i class="fa fa-laptop"></i>
				<h6>Technology</h6>
				<p>Designer, Developer, IT Service, Front-end developer, Project
					management</p>
			</a> <a href="job-list-2.html"> <i class="fa fa-line-chart"></i>
				<h6>Accounting</h6>
				<p>Finance, Tax service, Payroll manager, Book keeper, Human
					resource</p>
			</a> <a href="job-list-3.html"> <i class="fa fa-medkit"></i>
				<h6>Medical</h6>
				<p>Doctor, Nurse, Hospotal, Dental service, Massagist</p>
			</a> <a href="job-list-1.html"> <i class="fa fa-cutlery"></i>
				<h6>Food</h6>
				<p>Restaurant, Food service, Coffe shop, Cashier, Waitress</p>
			</a> <a href="job-list-2.html"> <i class="fa fa-newspaper-o"></i>
				<h6>Media</h6>
				<p>Journalism, Newspaper, Reporter, Writer, Cameraman</p>
			</a> <a href="job-list-3.html"> <i class="fa fa-institution"></i>
				<h6>Government</h6>
				<p>Federal, Law, Human resource, Manager, Biologist</p>
			</a>
		</div>

	</div>
	</section> <!-- END Categories --> <!-- Newsletter --> <section
		class="bg-img text-center"
		style="background-image: url(../resources/img/bg-facts.jpg)">
	<div class="container">
		<h2>
			<strong>Subscribe</strong>
		</h2>
		<h6 class="font-alt">Get weekly top new jobs delivered to your
			inbox</h6>
		<br> <br>
		<form class="form-subscribe" action="#">
			<div class="input-group">
				<input type="text" class="form-control input-lg"
					placeholder="Your eamil address"> <span
					class="input-group-btn">
					<button class="btn btn-success btn-lg" type="submit">Subscribe</button>
				</span>
			</div>
		</form>
	</div>
	</section> <!-- END Newsletter --> </main>
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
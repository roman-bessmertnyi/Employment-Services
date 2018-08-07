<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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


	<form:form method="POST" action="/companies/post"
		modelAttribute="company">

		<!-- Page header -->
		<header class="page-header">
		<div class="container page-name">
			<h1 class="text-center">Add your company</h1>
			<p class="lead text-center">Create a profile for your company and
				put it online.</p>
		</div>

		<div class="container">

			<div class="row">
				<div class="col-xs-12">
					<div class="row">

						<div class="col-xs-12 col-sm-4 col-lg-2">
							<div class="form-group">
								<input type="file" class="dropify"
									data-default-file="resources/img/logo-default.png"> <span
									class="help-block">A square logo</span>
							</div>
						</div>

						<div class="col-xs-12 col-sm-8 col-lg-10">
							<div class="form-group">
								<form:input type="text" class="form-control input-lg"
									path="companyName" placeholder="Comapny name" />
							</div>
							<div class="form-group">
								<form:input type="text" path="headline" class="form-control"
									placeholder="Headline (e.g. Internet and computer software)" />
							</div>

							<div class="form-group">
								<form:textarea path="description" class="form-control" rows="3"
									placeholder="Short description" />
							</div>
						</div>

					</div>
				</div>

				<div class="col-xs-12">
					<div class="row">

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-line-chart"></i></span>
								<form:input type="text" path="businessStream.businessStreamName"
									class="form-control" placeholder="Category" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-map-marker"></i></span>
								<form:input type="text" path="location.city"
									class="form-control" placeholder="City" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-map-marker"></i></span>
								<form:input type="text" path="location.state"
									class="form-control" placeholder="State" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-users"></i></span>
								<form:select path="employeeAmount"
									class="form-control selectpicker">
									<c:forEach items="${employeeAmountList}" varStatus="status">
										<form:option value="${employeeAmountList[status.index].id}"
											label="${employeeAmountList[status.index].amount}" />
									</c:forEach>
								</form:select>
								<span class="input-group-addon">Employees</span>
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-globe"></i></span>
								<form:input type="text" path="companyWebsite"
									class="form-control" placeholder="Website address" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i
									class="fa fa-birthday-cake"></i></span>

								<form:input type="text" path="establishmentDate" class="control"
									placeholder="Founded on, e.g. 2013" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-phone"></i></span>
								<form:input type="text" path="contactNumber"
									class="form-control" placeholder="Phone number" />
							</div>
						</div>

						<div class="form-group col-xs-12 col-sm-6 col-md-4">
							<div class="input-group input-group-sm">
								<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
								<form:input type="text" path="email" class="form-control"
									placeholder="Email address" />
							</div>
						</div>

					</div>
				</div>


			</div>

			<div class="button-group">
				<div class="action-buttons">
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
		<main> <!-- Company detail --> <section class=" bg-alt">
		<div class="container">

			<header class="section-header"> <span>About</span>
			<h2>Company detail</h2>
			<p>Write about your company, culture, benefits of working there,
				etc.</p>
			</header>

			<form:textarea path="companyDetail" class="form-control" rows="10"/>

		</div>
		</section> <!-- END Company detail --> <!-- Submit --> <section>
		<div class="container">
			<header class="section-header"> <span>Are you done?</span>
			<h2>Submit it</h2>
			<p>Please review your information once more and press the below
				button to put your company online.</p>
			</header>

			<p class="text-center">
				<label for="submit-company" class="btn btn-success btn-xl btn-round">Submit
					your company</label>
			</p>

		</div>
		</section> <!-- END Submit --> </main>
		<!-- END Main container -->

		<input type="submit" id="submit-company" class="hidden" />

	</form:form>


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
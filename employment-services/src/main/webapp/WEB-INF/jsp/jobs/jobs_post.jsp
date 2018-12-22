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
<link href="../../css/app.min.css" rel="stylesheet">
<link href="../../css/custom.css" rel="stylesheet">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" href="../../img/favicon.ico">
</head>

<body class="nav-on-header bg-alt">

	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>

	<!-- Navigation bar -->
	<jsp:include page="../navigation.jsp" />
	<!-- END Navigation bar -->

	<form:form method="POST" action="/jobs/post" modelAttribute="job">
		<!-- Page header -->
		<header class="page-header">
		<div class="container page-name">
			<h1 class="text-center">Add a new job</h1>
			<p class="lead text-center">Create a new vacancy for your company
				and put it online.</p>
		</div>

		<div class="container">

			<div class="row">

				<div class="form-group col-xs-12 col-sm-6">
					<form:input type="text" path="jobTitle"
						class="form-control input-lg"
						placeholder="Job title, e.g. Front-end developer" />
				</div>



				<div class="form-group col-xs-12 col-sm-6">
					<form:select path="company" class="form-control selectpicker">
						<c:forEach items="${companyList}" varStatus="status">
							<form:option value="${companyList[status.index].id}"
								label="${companyList[status.index].companyName}" />
						</c:forEach>
					</form:select>
				</div>

				<div class="form-group col-xs-12">
					<form:textarea path="description" class="form-control" rows="3"
						placeholder="Short description" />
				</div>

				<div class="form-group col-xs-12">
					<form:input type="text" path="applicationWebsite"
						class="form-control" placeholder="Application URL" />
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
						<form:input type="text" path="location.city" class="form-control"
							placeholder="City" />
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
						<form:input type="text" path="location.state" class="form-control"
							placeholder="State" />
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
						<form:select path="jobType" class="form-control selectpicker">
							<c:forEach items="${jobTypeList}" varStatus="status">
								<form:option value="${jobTypeList[status.index].id}"
									label="${jobTypeList[status.index].jobType}" />
							</c:forEach>
						</form:select>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-money"></i></span>
						<form:input type="text" path="salary" class="form-control"
							placeholder="800" />
						<span class="input-group-addon">Salary</span>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-money"></i></span>
						<form:select path="currency" class="form-control selectpicker">
							<c:forEach items="${currencyList}" varStatus="status">
								<form:option value="${currencyList[status.index].id}"
									label="${currencyList[status.index].currencyName}" />
							</c:forEach>
						</form:select>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
						<form:input type="text" path="workingHours" class="form-control"
							placeholder="Working hours, e.g. 40" />
						<span class="input-group-addon">hours / week</span>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i class="fa fa-flask"></i></span>
						<form:input type="text" path="experienceYears"
							class="form-control" placeholder="Experience, e.g. 5" />
						<span class="input-group-addon">Years</span>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<div class="input-group input-group-sm">
						<span class="input-group-addon"><i
							class="fa fa-certificate"></i></span>
						<form:select path="jobDegree" class="form-control selectpicker">
							<c:forEach items="${jobDegreeList}" varStatus="status">
								<form:option value="${jobDegreeList[status.index].id}"
									label="${jobDegreeList[status.index].degreeName}" />
							</c:forEach>
						</form:select>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6">
					<form:checkbox path="isCompanyNameHidden" />
					Hide Company name?
				</div>
				<form:input type="hidden" path="isActive" value="true" />

				<form:input type="hidden" path="location.id"
					value="${job.location.id}" />

				<form:input type="hidden" path="id" value="${job.id}" />

				<form:input type="hidden" path="userAccount" value="${posterId}" />

				<%
					SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
						String formatteddate = sdf.format(new Date());
				%>

				<form:input type="hidden" path="createdDate"
					value="<%=formatteddate%>" />

				<input type="submit" id="submit-job" class="hidden" />


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

		</div>
		</header>
		<!-- END Page header -->


		<!-- Main container -->
		<main> <!-- Job detail --> <section>
		<div class="container">

			<header class="section-header"> <span>Description</span>
			<h2>Job detail</h2>
			<p>Write about your company, job description, skills required,
				benefits, etc.</p>
			</header>

			<form:textarea path="jobDetail" class="form-control" rows="10" />

		</div>
		</section> <!-- END Job detail --> <!-- Submit --> <section class="bg-alt">
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
	</form:form>

	<!-- Site footer -->
	<jsp:include page="../footer.jsp" />


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->

	<!-- Scripts -->
	<script src="../../js/app.min.js"></script>
	<script src="../../js/summernote.min.js"></script>
	<script src="../../js/custom.js"></script>

</body>
</html>
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


	<!-- Page header -->
    <header class="page-header bg-img size-lg" style="background-image: url(resources/img/bg-banner1.jpg)">
      <div class="container no-shadow">
        <h1 class="text-center">Manage companies</h1>
        <p class="lead text-center">Here's the list of your registered companies. You can edit or delete them, or even add a new one.</p>
      </div>
    </header>
    <!-- END Page header -->


    <!-- Main container -->
    <main>
      <section class="no-padding-top bg-alt">
        <div class="container">
          <div class="row item-blocks-condensed">

            <div class="col-xs-12 text-right">
              <br>
              <a class="btn btn-primary btn-sm" href="company-add.html">Add new company</a>
            </div>


            <!-- Company item -->
            <div class="col-xs-12">
              <div class="item-block">
                <header>
                  <a href="company-detail.html"><img src="resources/img/logo-google.jpg" alt=""></a>
                  <div class="hgroup">
                    <h4><a href="company-detail.html">Google</a></h4>
                    <h5>Internet and computer software <a href="company-detail.html#open-positions"><span class="label label-info">15 jobs</span></a></h5>
                  </div>
                  <div class="action-btn">
                    <a class="btn btn-xs btn-gray" href="#">Edit</a>
                    <a class="btn btn-xs btn-danger" href="#">Delete</a>
                  </div>
                </header>
              </div>
            </div>
            <!-- END Company item -->

          </div>
        </div>
      </section>
    </main>
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
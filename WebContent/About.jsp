<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-About Us</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}
</style>
<body>
	<!-- navbar -->
	<jsp:include page="Navbar.jsp" />
	<!-- end navbar -->
	<!-- section 1 -->
	<div style="background-color: #FFFAFA">
		<br> <br>
		<div class="container">
			<span><img src="images/About.jpg" class="img-responsive"
				alt="About" width=100%></span>
		</div>
		<br> <br>
	</div>
	<!-- end section 1 -->

	<!-- section 2 -->
	<div>
		<div class="container">
			<br> <br>
			<h3 class="text-danger" style="font-family: sn-serif">
				<em>Welcome to Smart Tutor</em>
			</h3>
			<br>
			<div class="row">
				<div class="col">
					<p class="lead">
						<strong>SMART TUTOR</strong> improves the quality of life through
						education in a holistic way of educating, engaging and inspiring
						individuals and collectives.
					</p>
					<p class="lead">We are developing the skills, knowledge and
						resources of students so they can accomplish their mission
						effectively. we use experiential and engaging teaching techniques
						and methods to help students develop skills that build on the
						learner's context that can be used to achive desired result.</p>

				</div>
				<div class="col text-center">
					<span><img src="images/welcome.jpg" class="img-responsive"
						alt="smart tutor" width=70%></span>
				</div>
			</div>
			<br> <br>
		</div>
	</div>
	<!-- end section 2 -->
	<!-- section 3 -->
	<div>
		<div class="card border-0">
			<span><img src="images/ourprinciples.jpg" alt="our principles"
				width=100% height=400vh></span>
			<div class="card-img-overlay">
				<br>
				<div class="container  text-white text-center">
					<h4 class="card-title" style="font-family: Lucid">
						<strong>OUR PRINCIPLES</strong>
					</h4>
					<br>
					<h5>All children can learn.</h5>
					<h5>All children will achieve when subject materials is
						organised around the similar goal of student success.</h5>
					<h5 class="text-primary">_______________</h5>
				</div>
			</div>
		</div>
	</div>
	<!-- end section 3 -->
	<!-- section 4 -->
	<div style="background-color: #F5F5F5">
		<br> <br>
		<div class="container">
			<div class="card-deck ">
				<div class="card border-0" style="background-color: #F5F5F5">
					<p class="car-title font-weight-bold" style="font-size: large">
						OUR MISSION <br>
					<p class="text-warning font-weight-bolder">
						<strong> ______________</strong>
					</p>
					</p>

					<p class="lead font-weight-normal">To build an email system
						that equips every students to achieve his or her god given
						Potential.</p>
					<p class="card-title font-weight-bold" style="font-size: large">
						OUR VISION<br>
					<p class="text-warning font-weight-bolder">
						<strong> ______________</strong>
					</p>
					</p>

					<p class="lead font-weight-normal">An education system that
						maximise every students potential for learning and prepare all
						student for success in the future</p>
				</div>
				<div class="card border-0 text-center"
					style="background-color: #F5F5F5">
					<span><img src="images/mission1.jpg" class="img-responsive"
						alt="our mission"></span>
				</div>



			</div>
			<br> <br>
		</div>
	</div>
	<!-- end section 4 -->
	<!-- footer -->
	<jsp:include page="Footer.jsp" />
	<!-- end footer -->
</body>
</html>
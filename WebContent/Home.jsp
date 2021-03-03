<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-Online Education program</title>
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

<style>
.bg-blue-purple-gradient {
	background-image: linear-gradient(to bottom, #a976ff, #fea2cf);
}

.bg-orange-yellow-gradient {
	background-image: linear-gradient(to top, #ffd28e, #ff806d);
}

.bg-light-blue-gradient {
	background-image: linear-gradient(to bottom, #52baf8, #45dcdd);
}
.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}
</style>
</head>
<body>
	<!-- nav bar -->
	<div>
		<jsp:include page="Navbar.jsp" />
	</div>
	<!-- end nav bar -->
	<!-- section 1 -->
	<div class="card border-0">
		<span><img src="images/welcomeHome.jpg"
			alt="Welcome to Smart Tutor" class="img-responsive" width=100%
			height=600vh></span>
		<div class="card-img-overlay text-left  col-lg-8">
			<br> <br>
			<h1 class="display-4" style="font-family: san-serif">WELCOME TO
				SMART TUTOR</h1>

			<h6>Comitted educating and nurturing all students so they may
				grow towards responsible global citizenship.</h6>
			<br>
			<div class="text-*-center">
				<button class="btn btn-warning text-white mr-3"
					onClick="relocate_aboutus()">READ MORE</button>
				<button class="btn btn-primary" onClick="relocate_learning()">LEARNINGS</button>
			</div>

		</div>
	</div>
	<!-- end section 1 -->

	<!-- text -->
	<div>
		<div class="container">
			<br> <br>
			<h2 class="text-info" style="font-family: san-serif">Smart Tutor
				Education Program</h2>
			<br>
			<div style="font-family: sans-serif; font-size: medium">
				<p>Smart Tutor is a convenient, online, personalized education
					program that helps your child build fundamental reading and math
					skills in a meaningful and motivating way. It is perfect for
					homeschool, afterschool, summer use, and more. Smart Tutor can be
					useful for thousands of students world-wide as:</p>
				<p>

					<ul>
					<li>an educational supplement after school</li>
					<li>core homeschool curriculum</li>
					<li>an alternative to tutoring</li>
					<li>in place of summer school</li>
				</ul>
				</p>
				<p>Smart Tutor was designed with the various learning styles of
					today's digital learner in mind. Its high-impact, highly focused
					approach keeps children motivated to learn. This award-winning,
					automated learning program is proven effective for:</p>
				<p>
				
				<ul>
					<li>homeschool students</li>
					<li>struggling and at-risk students</li>
					<li>students with special needs</li>
				</ul>
				</p>
			</div>
		</div>
		<br> <br>
	</div>
	<!-- end text -->
	<!-- section 2 -->

	<div style="background-color: #FFFFF0""><br> <br>
		<div class="container">
			<h2 class="text-center" style="font-family: san-serif">Resources</h2>
			<br> <br>
			<div class="card-deck ">
				<div class="card shadow border-0 bg-blue-purple-gradient">
					<h4 class="card-header text-center">LEARNINGS</h4>
					<div class="card-body">
						Free Reading Lessons,Math Lessons for your child !! <br>
						<br>
						<div class="text-center">
							<button type="button" class="btn btn-primary"
								style="border-radius: 30px" onClick="relocate_learning()">
								Get Started&nbsp;&nbsp;<i class="fa fa-arrow-right"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="card shadow border-0 bg-orange-yellow-gradient">

					<h4 class="card-header text-center">FREE GAMES</h4>
					<div class="card-body">
						Have fun for free and learn while playing ! <br>
						<br>
						<div class="text-center">
							<button type="button" class="btn btn-primary"
								style="border-radius: 30px" onClick="relocate_games()">
								Get Started&nbsp;&nbsp;<i class="fa fa-arrow-right"></i>
							</button>
						</div>
					</div>

				</div>
				<div class="card shadow border-0 bg-light-blue-gradient "">
					<h4 class="card-header text-center">ABOUT US</h4>
					<div class="card-body">
						Let's Know about Smart Tutor ? <br>
						<br>
						<div class="text-center">
							<button type="button" class="btn btn-primary"
								style="border-radius: 30px" onClick="relocate_aboutus()">
								Get Started&nbsp;&nbsp;<i class="fa fa-arrow-right"></i>
							</button>
						</div>
					</div>
				</div>
			</div>

		</div>
		<br> <br>
	</div>
	<!-- end section 2 -->

	<!-- footer -->
	<div>
		<jsp:include page="Footer.jsp" />
	</div>
	<!-- end footer -->
	<script>
		function relocate_aboutus() {
			location.href = "About.jsp";
		}

		function relocate_learning() {
			location.href = "StudentDashboard.jsp";
		}
		function relocate_games() {
			location.href = "Games.jsp";
		}
	</script>
</body>
</html>
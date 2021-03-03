<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-Educational Program</title>
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
.card {
	background-color: transparent;
	border: 0
}

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}

.bg-blue-purple-gradient {
	background-image: linear-gradient(to bottom, #a976ff, #fea2cf);
}

.bg-orange-yellow-gradient {
	background-image: linear-gradient(to top, #ffd28e, #ff806d);
}

.bg-light-blue-gradient {
	background-image: linear-gradient(to bottom, #52baf8, #45dcdd);
}
</style>
<body>
	<!-- nav bar -->
	<div>
		<nav class="navbar navbar-expand-md bg-dark navbar-dark"> <a
			class="navbar-brand" href="#">Smart Tutor</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<ul class="navbar-nav ml-auto">
				<li class="nav-item mr-4"><a class="nav-link" href="Login.jsp">STUDENT
						LOGIN</a></li>
				<li class="nav-item mr-4"><a class="nav-link"
					href="AdminLogin.jsp">ADMIN LOGIN</a></li>
				<li class="nav-item mr-4"><a class="nav-link" href="SignUp.jsp"><i
						class="fa fa-user-plus"></i>SIGNUP</a></li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- end navbar -->


	<!-- section 1 -->
	<div class="card border-0">
		<span><img src="images/education3.jpg" class="img-responsive"
			alt="Smart Tuutor" width=100% height=700vh></span>
		<div class="card-img-overlay">
			<div class="col-sm-6">
				<div class="card">
					<h1 class="text-white" style="font-family: san-serif">Looking
						for smart , easy and intuitive learning management system ?</h1>
					<br> <br> <br> <br>
					<div>
						<button type="button"
							class="btn btn-default shadow border-0 text-white btn-lg"
							style="border-radius: 30px; background-color: #7B68EE"
							onClick="relocate_signup()">Register for free</button>
					</div>
					<br>
					<h5 class="text-left text-white">Access Learning
						Resources,Excercises, Free Games, and much more.</h5>
				</div>
			</div>
		</div>
	</div>
	<!-- end section 1-->

	<!-- section 2 -->
	<div>
		<div class="container">
			<br> <br>
			<h3 class="text-danger" style="font-family: sn-serif">
				<em>Welcome to Smart Tutor</em>
			</h3>
			<br>
			<div class="card-deck">
				<div class="card">
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
				<div class="card text-center">
					<span><img src="images/welcome.jpg" class="img-responsive"
						alt="smart tutor" width=70%></span>
				</div>
			</div>
			<br> <br>
		</div>
	</div>
	<!-- end section 2 -->


	<!-- section 3 -->
	<div style="background-color: #FFF5EE">
		<br> <br> <br>
		<div class="container">
			<div class="card-deck">
				<div class="card text-center">
					<span><img src="images/educaton4.jpg" alt=""
						class="img-responsive" width=90% height=300vh></span>
				</div>
				<div class="card text-left">
					<h3 class="text-center">Engaging Learning Resources</h3>
					<br>
					<p>Learning Resources that help you to learn each concept,
						making it easier to understand. Each chapter comprises small
						concepts that are stitched together with adaptive questions as per
						the relevant syllabus.Clearer concepts lead to higher scores!</p>
					<br>
					<button type="button"
						class="btn btn-default shadow border-0 text-white btn-lg"
						data-toggle="modal" data-target="#myModal"
						style="border-radius: 30px; background-color: #7B68EE">Start
						Your Learning</button>
				</div>

				<!-- The Modal -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog modal-mg">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Let's Get Started !</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<h6 class="text-info text-center">Already have an account ?</h6>
								<button type="button" class="btn btn-primary btn-block"
									data-dismiss="modal" onClick="relocate_login()">Login</button>
								<br>
								<div class="text-muted text-center">__________ OR
									__________</div>
								<br>
								<div class="text-*-center" style="display: flex">
									<h6 class="mr-2" style="color: #D3D3D3">Not registered?</h6>
									<h6 class="text-success">Create an account</h6>
								</div>

								<button type="button" class="btn btn-primary btn-block"
									data-dismiss="modal" onClick="relocate_signup()">Register</button>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
		<br> <br> <br>
	</div>
	<!-- end section 3 -->


	<!-- section 4 -->
	<div>
		<br> <br> <br>
		<div class="container">
			<div class="card-deck">
				<div class="card text-left">
					<h3 class="text-center">Student Progress Tracking</h3>
					<br>
					<p>Every student can view there individual progress based on
						their learning Exercises. This helps students identify their
						strengths & areas for improvement.</p>
					<br>
					<button type="button"
						class="btn btn-primary shadow border-0 text-white btn-lg"
						data-toggle="modal" data-target="#myModal"
						style="border-radius: 30px">Explore Now</button>
				</div>
				<div class="card text-center">
					<span><img src="images/progresstracking.jpg"
						alt="progresstracking" class="img-responsive"></span>
				</div>
			</div>
		</div>

		<br> <br> <br>
	</div>
	<!-- end section 4 -->

	<!-- section 5 -->
	<div style="background-color: #FFF5EE">
		<br> <br>
		<div class="container">
			<h2 class="text-center">Courses Available</h2>
			<br> <br>
			<div class="card-deck text-white">
				<div class="card shadow border-0 bg-blue-purple-gradient">
					<h4 class="card-header text-center">CLASSES PRE-K</h4>
					<div class="card-body">
						<ul>
							<li>Learn New Words</li>
							<li>Story related learning</li>
							<li>Word Games</li>
						</ul>
					</div>
				</div>
				<div class="card shadow border-0 bg-orange-yellow-gradient">

					<h4 class="card-header text-center">CLASSES 1-5</h4>
					<div class="card-body">
						<ul>
							<li>Conceptual learning</li>
							<li>Study material targeted for your exam</li>
							<li>Exercises for every concepts</li>
							<li>Application and simulation games</li>
						</ul>
					</div>
				</div>
				<div class="card shadow border-0 bg-light-blue-gradient ">

					<h4 class="card-header text-center">CLASSES 6-10</h4>
					<div class="card-body">
						<ul>
							<li>Visualization of topics with heavy concepts and
								terminologies</li>
							<li>Experiential learning</li>
							<li>Activities like quizzes to make effective learning</li>
						</ul>
					</div>
				</div>
			</div>
			<br> <br>
			<div class="text-center">
				<h2>Start your learning journey with SMART TUTOR</h2>
				<br>
				<button type="button" class="btn btn-primary btn-lg shadow"
					data-toggle="modal" data-target="#myModal"
					style="border-radius: 40px">
					Get Started&nbsp;&nbsp;<i class="fa fa-arrow-right"></i>
				</button>
			</div>
		</div>
		<br> <br>
	</div>
	<!-- end section 5 -->

	<!-- footer -->
	<div class="page-footer bg-dark">
		<div class="container">
			<div class="row">
				<div class="col mt-4 ">
					<h5 class="text-white text-center">CONTACT US</h5>
					<div class="text-white text-center text-justify">
						<h6>
							<i class="fa fa-envelope"></i>&nbsp;smarttutor@gmail.com
						</h6>
					</div>
					<div class="text-white text-center text-justify">
						<h6>
							<i class="fa fa-phone"></i>&nbsp;9493323142
						</h6>
					</div>
				</div>
				<div class="col mt-4">
					<h5 class="text-white text-center">FOLLOW US</h5>
					<div class="text-white text-center">
						<h5>
							<i class="fa fa-facebook-square font-weight-bold mr-4 ml-3"></i>
							<i class="fa fa-twitter mr-4"></i> <i class="fa fa-envelope mr-4"></i>
						</h5>
					</div>
					<div class="text-center">
						<h6 class="control-label text-white">
							Register for free !&nbsp;
							<button type="button" class="btn btn-danger btn-sm">Sign
								Up</button>
						</h6>
					</div>

				</div>
			</div>
		</div>
		<!-- Copyright -->
		<div class="footer-copyright text-center py-3 text-white bg-secondary">
			© 2020 Copyright: <a href="#"> SMARTTUTOR.com</a>
		</div>
		<!-- Copyright -->


	</div>
	<!-- end footer -->


	<script>
		function relocate_signup() {
			location.href = "SignUp.jsp";
		}
		function relocate_login() {
			location.href = "Login.jsp";
		}
	</script>
</body>
</html>
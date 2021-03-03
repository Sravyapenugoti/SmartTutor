<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-Math Games</title>
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
.card-img-top {
	height: 150px;
}

.card-title {
	margin-bottom: .75rem;
	font-size: medium;
	font-weight: bold
}

.card-text {
	min-height: 100px;
}
.card{
background:transparent;
border:0
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
	<br>


	<!-- content -->
	<div class="container">
		<h2 style="font-family:serif">Math Games</h2>
		<hr>
		<br>
		<div class="container">
			<div class=" col-sm-8">
				<span><img src="images/ixlMathsPractice.PNG"
					class=" img-top img-thumbnail img-responsive"></span>
			</div>
			<br>
			<div class="text-*-center" style="display: flex">
				<div>
					<p class="text-info  ml-5">
						<i class="fa fa-arrow-circle-up"></i>&nbsp;&nbsp;IXL free Maths
						practice&nbsp;&nbsp;
					</p>
				</div>
				<div>
					<a
						href="https://in.ixl.com/?partner=google&campaign=10497591999&adGroup=104778854140&gclid=CjwKCAjwgdX4BRB_EiwAg8O8HcCpiV-f3lG9HmAMmMem6VxrOUmHijKgVoyJWHdOzZPcjFgKz7I6hxoCe-AQAvD_BwE"><button
							type="button" class="btn btn-primary btn-sm mt-0">practice
							now</button></a>
				</div>
			</div>
		</div>
		<br>
		<div class="container">
			<h4>Smarttutor.com's Math Games are designed to strengthen key
				reading sub-skills in a highly engaging arcade-like environment.</h4>
			<p>Most children enjoy playing video games, which
				makes our math games the perfect learning tool to motivate your
				children. In fact, most parents say their children don't even
				realize they are learning because they are so captivated by our math
				games. Whether they are exploring factors of a given number with
				Oomie the Alien or learning about transformations while playing the
				Shape Trails board game, your child will be having fun AND learning
				at the same time.</p>
		</div>
		<br>
		<!-- games -->
		<div class="container">
			<div class="card-deck">

				<div class="card shadow">
					<img class="card-img-top" src="images/multiplicationgame.jpeg"
						alt="Multiplication Game">
					<div class="card-body">
						<h5 class="card-title">Multiplication Games (Grade 1-4)</h5>
						<p class="card-text">Multiplication Games for Grade 1-4 .Kids
							can have fun and learn a lot throught various multiplication game
							!!</p>
						<a href="https://www.splashlearn.com/multiplication-games"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>

				</div>


				<div class="card shadow">
					<img class="card-img-top" src="images/fractiongame.png"
						alt="Fraction Games">
					<div class="card-body">
						<h5 class="card-title">Fraction games (Grade 3-5)</h5>
						<p class="card-text">Fraction Games for Grade 3-5 ,They will
							be able to start applying their knowledge to real-world problems!
						</p>
						<a href="https://www.splashlearn.com/fraction-games"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/mathatthemall.png"
						alt="Math at the mall">
					<div class="card-body">
						<h5 class="card-title">Math at the mall</h5>
						<p class="card-text">Visit the toy shop and grab a snack at
							the cafe .Use your math skills! (addition,multiplication,divison
							etc.)</p>
						<a href="https://www.mathplayground.com/mathatthemall1.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/rocketangles.jpg"
						alt="Find The Synonym">
					<div class="card-body">
						<h5 class="card-title">Rocket Angles</h5>
						<p class="card-text">Rocket Angles - Obtuse, acute, or right?
							Recognize angles as geometric shapes formed wherever 2 rays share
							a common endpoint.</p>
						<a href="https://www.mathplayground.com/rocket_angles.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>
			</div>

			<br>
			<div class="card-deck">

				<div class="card shadow">
					<img class="card-img-top" src="images/algebrapuzzle.png"
						alt="Algebra Puzzle">
					<div class="card-body">
						<h5 class="card-title">Algebra Puzzles</h5>
						<p class="card-text">Algebra puzzles are toFind the value of
							each object in the puzzle by looking for mathematical
							relationships.</p>
						<a
							href="https://www.mathsisfun.com/puzzles/algebra-puzzles-index.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>

				</div>


				<div class="card shadow">
					<img class="card-img-top" src="images/geoboard.png"
						alt="Geo Board">
					<div class="card-body">
						<h5 class="card-title">Geoboard....</h5>
						<p class="card-text">Geoboard Area and Perimeter is a tool for
							exploring a variety of mathematical topics introduced in the
							middle grades.</p>
						<a href="https://www.mathplayground.com/geoboard.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/timegame.jpg"
						alt="Time game">
					<div class="card-body">
						<h5 class="card-title">Time Games</h5>
						<p class="card-text">Time games has a versatile collection of
							grade specific games on telling and interpreting time in fun
							ways.</p>
						<a href="https://www.splashlearn.com/time-games"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/shapesurveyor.png"
						alt="Shape the surveyor">
					<div class="card-body">
						<h5 class="card-title">Shape The Surveyor</h5>
						<p class="card-text">Calculate the area and perimeter of each
							shape. For the problem you answer correctly, you will receive a
							piece of the puzzle.</p>
						<a href="https://www.funbrain.com/games/shape-surveyor"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end games -->

	</div>
	<br>
	<!-- end content -->
<jsp:include page="Footer.jsp" />
</body>
</html>
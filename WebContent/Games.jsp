<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Educational Games</title>
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
.bg-orange-yellow-gradient {
	background-image: linear-gradient(to top, #ffd28e, #ff806d);
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

	<!-- container -->
	<div class="container">

		<!-- title -->
		<h1 style="font-family: serif">Educational Games</h1>
		<hr>
		<br>
		<div class="jumbotron bg-orange-yellow-gradient">
			<div class="container" style="display: flex">
				<h5>
					<i class="fa fa-quote-left"></i>
				</h5>
				<h3>&nbsp;Tell me and I forget ,Teach me and I may remember
					,Involve me and I learn&nbsp;</h3>
				<h5>
					<i class="fa fa-quote-right"></i>
				</h5>
			</div>
			<div class="text-right mr-5">
				<h5>-Benjamin Franklin</h5>
			</div>
		</div>
		<!-- end title -->

		<!-- content -->
		<!-- IXL maths practice -->
		<div class="container">
			<div>
				<a
					href="https://in.ixl.com/?partner=google&campaign=10497591999&adGroup=104778854140&gclid=CjwKCAjwgdX4BRB_EiwAg8O8HcCpiV-f3lG9HmAMmMem6VxrOUmHijKgVoyJWHdOzZPcjFgKz7I6hxoCe-AQAvD_BwE"
					class="card-link"> <span><img
						class="img-thumbnail img-responsive"
						src="images/ixlMathsPractice.PNG" alt="IXL Maths Practice"></span>
				</a>
			</div>
			<br>
			<h4 class="text-info  ml-5">
				<i class="fa fa-arrow-circle-up"></i>&nbsp;&nbsp;IXL free Maths
				practice&nbsp;&nbsp;
			</h4>
		</div>
		<!-- end IXL maths practice -->
		<br>

		<!-- section 1 -->
		<div class="container">
			<br>
			<h4 style="font-family: serif">Smarttutor.com's Educational
				Games are designed to strengthen key reading and math sub-skills in
				a highly engaging arcade-like environment.</h4>
			<p style="font-size: medium">Most children enjoy playing video
				games, which makes our educational games the perfect learning tool
				to motivate your children. In fact, most parents say their children
				don't even realize they are learning because they are so captivated
				by our educational games. Your child will be having fun AND learning
				at the same time.</p>
		</div>
		<!-- end section 1 -->

		<!-- games -->
		<div class="container">
			<div class="card-deck">
				<div class="text-center">
					<h3>Reading Games</h3>
					<br>
					<div class="card">
						<a href="ReadingGames.jsp" class="card-link"> <span><img
								class="img-thumbnail img-responsive"
								src="images/readinggames.jpg" alt="Reading Games"></span>
						</a>
					</div>
				</div>

				<div class="text-center">
					<h3>Math Games</h3>
					<br>
					<div class=" card">
						<a href="MathGames.jsp" class="card-link"> <span><img
								class="img-thumbnail img-responsive" src="images/mathgames.PNG"
								alt="Reading Games"></span>
						</a>
					</div>
				</div>
			</div>
			<!-- end games -->
		</div>
	</div>
	<!-- end content -->
	<br>
	<br>
	<!-- footer -->
	<div>
		<jsp:include page="Footer.jsp" />
	</div>
	<!-- end footer -->
</body>
</html>
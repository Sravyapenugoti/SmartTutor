<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SmartTutor-ContactUs</title>
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
	<!-- nabvnbar -->
	<jsp:include page="Navbar.jsp" />
	<!-- end navbar -->

	<!-- section 1 -->
	<div class="card border-0">
		<span><img src="images/contact.png" class="img-responsive"
			width=100%></span>
	</div>
	<!-- end section 1 -->


	<!-- feedback form -->
	<div>
		<br>
		<div class="container">
			<h2 class="text-warning font-weight-bold"
				style="font-family: san-serif">
				<em>Feedback</em>
			</h2>

			<br>
			<form>
				<div class=" form-inline">
					<div class="form-group">
						<label class="control-label">Name:&nbsp;</label> <input
							type="text" class="form-control mr-3" name="name">
					</div>

					<div class="form-group">
						<label class="control-label">E-mail:&nbsp;</label> <input
							type="email" class="form-control mr-3" name="email">
					</div>
					<div class="form-group">
						<label class="control-label">Phone:&nbsp;</label> <input
							type="text" class="form-control" name="phone">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="control-label">Message:</label>
					<textarea name="message" class="form-control mr-3" rows="10">Enter text here...</textarea>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-success">submit</button>
				</div>
			</form>

		</div>
		<br> <br>
	</div>
	<!-- end feedback form -->

	<!-- footer -->
	<jsp:include page="Footer.jsp" />
	<!-- end footer -->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Smart tutor-Admin Login</title>
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
.formbackground {
	background-image: url(images/bg1.jpg);
	background-position: center;
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
</head>
<body>
	<div class="formbackground">
		<div class="container col-sm-4 col-sm-offset-4">
			<br> <br> <br>
			<br>

			<div class="card shadow border-0">

				<div class="card-body ">
					<!-- Form -->
					<form action="AdminLoginCheck" method="post">
						<div class="text-center text-info">
							<span><i class="fa fa-user-circle fa-5x"></i></span>
						</div>
						<br>
						<h3 class="text-center text-danger">${submitDone}</h3>
						<div class="form-group">
							<label class="control-label">Username</label> <input type="email"
								class="form-control" name="username">
						</div>

						<div class="form-group">
							<label class="control-label">Password</label> <input
								type="password" class="form-control" name="password">

						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</div>

					</form>
					<!-- Form -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>
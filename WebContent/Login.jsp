<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SmartTutor-Login</title>
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
.form-background {
	background-image: url(images/admin-elearning.png);
	background-position: center;
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
.card{

border:0
}
a:hover {
	color: black;
	text-decoration: none;
}
</style>
<body class="form-background">
		<br> <br> <br> <br>
		<div class=" container col-sm-4 col-sm-offset-4">
			<div class="card shadow border-0">
			<br>
			<h2 class="text-center"></h2>
				<h2 class="card-title text-info text-center display-2"><i class="fa fa-user-circle"></i></h2>
				<h6 class="text-center text-info">Login and explore !</h6>
				<div class="card-body">
				<h5 class="text-center text-danger">${submitDone}</h5>
				
					<form action="LoginCheck" method="post">
						<div class="form-group">
							<label class="control-label">Username</label>
							<div class="input-group">
								<input type="email" name="login_username" class="form-control"
									placeholder="Enter Username" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label">Password</label>
							<div class="input-group">
								<input type="password" name="login_password"
									class="form-control" placeholder="Enter Password"
									required="required" />
							</div>
						</div>

						<div class="checkbox remember">
							<label><input type="checkbox"> Remember Me</label>
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</div>
						<div>
							<p align="center">
								Don't have an account ?&nbsp;<a href="SignUp.jsp">Sign Up</a>
							</p>
							<a href="ForgetPassword.jsp"><p align="center">Forgot
									Paassword?</p></a>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
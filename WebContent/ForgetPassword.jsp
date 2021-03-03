<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SmartTutor-Forgot Password</title>
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

<script>
	function checkPassword() {
		var password = document.forms["form"]["password"].value;
		var confirmpassword = document.forms["form"]["confirmpassword"].value;
		if (password == "") {
			alert("Enter Password");
			return false;
		} else if (confirmpassword == "") {
			alert("Enter Confirm Password");
			return false;
		} else if (password != confirmpassword) {
			alert("Password didn't match ..try again !");
			return false;
		} else
			return true;
	}
</script>


</head>
<body>
	<br>
	<br>
	<h1 class="display-1 text-center text-info">
		<i class="fa fa-lock"></i>
	</h1>
	<div class="text-center">
		<h3>Forrgot Your Password ?</h3>
		<small>please enter your email and reset your password</small>
	</div>
	<br>
	<h5 class="text-center text-danger">${notification}</h5>
	<br>
	<div class="container col-lg-4 col-lg-offset-4">
		<form name="form" action="ForgetPasswordController" method="post">
			<div class="form-group">
				<label for="email" class="control-label">Username/Email</label> <input
					type="email" class="form-control" placeholder="Enter E-mail"
					name="username">
			</div>
			<div class="form-group">
				<label for="password" class="control-label">New
					Password/Email</label> <input type="password" class="form-control"
					placeholder="password" name="password" id="NewPassword">
			</div>
			<div class="form-group">
				<label for="password" class="control-label">Confirm New
					Password</label> <input type="password" class="form-control"
					placeholder="repeat password" name="confirmpassword"
					id="ConfirmPassword">
			</div>
			<center>
				<div class="form-group">
					<input type="submit" class="btn btn-primary btn-block"
						value="submit" onClick="return checkPassword()"><a
						href="Login.jsp"><p>return to Login ?</p></a>
				</div>
			</center>

		</form>
	</div>

</body>
</html>
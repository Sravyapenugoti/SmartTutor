<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SmartTutor-SignUp</title>
<link
	href="https://unpkg.com/bootstrap@3.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

</head>
<style>
.formbackground {
	background-image: url(images/admin-elearning.png);
	background-position: center;
	width: 100%;
	height: 150vh;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>
<script>
	function checkPassword() {
		var name=document.forms["form"]["signup_name"].value;
		var password = document.forms["form"]["signup_password"].value;
		var confirmpassword = document.forms["form"]["signup_confirmpassword"].value;
		var role=document.forms["form"]["signup_role"].value;
		if(name==""){
			alert("Enter Full Name !");
			return false;
		} 
		else if (password == "") {
			alert("Enter Password");
			return false;
		}else if (confirmpassword == "") {
			alert("Enter Confirm Password");
			return false;
		} else if (password != confirmpassword) {
			alert("Password didn't match ..try again !");
			return false;
		} else if(role == ""){
			alert("Select role !!");
		}
		else if(name==""){
			alert("Enter Full Name !");
		}else
			return true;
	}
</script>
<body>
	<div class="formbackground">
		<br> <br> <br> <br>
		<form class="container" name="form" action="SignUpProcess" method="POST">
			<div class="container-fliud">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="panel-title text-center" style="font-size: medium">
								<strong>Get Started Now !</strong>
							</div>
						</div>
						<div class="panel-body bg-transparent">
							<form>
								<div class="form-group">
									<label class="control-label">Full Name</label>
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input type="text"
											name="signup_name" class="form-control"
											placeholder="Enter Full Name" required>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label">E-mail / Username</label>
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-envelope"></i></span> <input type="email"
											name="signup_email" class="form-control"
											placeholder="ex:abcd@gmail.com" required>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label">Password</label>
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span> <input type="password"
											name="signup_password" class="form-control"
											placeholder="Enter password" required>
									</div>
								</div>

								<div class="form-group">
									<label class="control-label">Confirm Password</label>
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-lock"></i></span> <input type="password"
											name="signup_confirmpassword" class="form-control"
											placeholder="Repeat password" required>
									</div>
								</div>


								<div class="form-group">
									<label class="control-label">Gender</label> 
									<br><label
										class="radio-inline"> <input type="radio"
										name="optradio" value="Male" id="male">Male
									</label> <label class="radio-inline"> <input type="radio"
										name="optradio" value="Female" id="female">Female
									</label> 
								</div>
								<div class="form-group">
									<label class="control-label">Role</label> <select
										class="form-control" id="roleField" name="signup_role"
										required>
										<option selected>Select...</option>
										<option value="2">Student</option>
									</select>
								</div>

								<div class="form-group" id="classField" style="display: none">
									<label class="control-label">Grade</label> <select
										class="form-control" name="signup_class" id="ddlClass">
										<option selected value="0">Choose...</option>
										<option value="1">Class 1</option>
										<option value="2">Class 2</option>
										<option value="3">Class 3</option>
										<option value="4">Class 4</option>
										<option value="5">Class 5</option>
										<option value="6">Class 6</option>
										<option value="7">Class 7</option>
										<option value="8">Class 8</option>
										<option value="9">Class 9</option>
										<option value="10">Class 10</option>
									</select>
								</div>

								<div class="form-group">
									<input type="submit" class="btn btn-success btn-block" value="Sign Up"
						onClick="return checkPassword()">
								</div>

								<div>
									<p align="center">
										Already have an account ?<a href="Login.jsp"> Login</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
		$('#roleField').change(function() {
			var selection = $(this).find(':selected').val();
			switch (selection) {
			case "2":
				$("#classField").show()
				break;
			case "1":
				$("#classField").hide();
				$('#ddlClass').val(0);
				break;
			}
		});
	</script>
</body>
</html>
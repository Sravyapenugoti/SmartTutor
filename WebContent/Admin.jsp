<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="CSS/bootsrap.css" rel="stylesheet">
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
#add {
	color: black;
	text-decoration: none
}

tr:hover {
	background-color: #F5F5F5;
}
</style>
</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">
	<!-- nav bar -->
	<div>
		<nav class="navbar navbar-expand-md bg-light navbar-light"> <a
			class="navbar-brand" href="#">Smart Tutor</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<ul class="navbar-nav ml-auto">
				<li class="nav-item mr-5"><a class="nav-link" href="Admin.jsp">HOME</a></li>
				<li class="dropdown nav-item mr-5">
					<button type="button" class="btn  text-muted dropdown-toggle"
						data-toggle="dropdown">ADMINISTRATION</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="LearningResources.jsp">Add
							Subject</a> <a class="dropdown-item" href="chapter.jsp">Add
							Chapter</a> <a class="dropdown-item" href="Topic.jsp">Add Topic</a> <a
							class="dropdown-item" href="SubTopic.jsp">Add Sub-Topics</a>
					</div>
				</li>
				<li class="dropdown nav-item mr-5">
					<button type="button" class="btn  text-muted dropdown-toggle"
						data-toggle="dropdown">DETAILS</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="StudentDetails">Student Details</a>

					</div>
				</li>
				<li class="nav-item dropdown "><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> ${username} </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Settings</a> <a
							class="dropdown-item" href="Logout.jsp">Logout</a>
					</div></li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- end navbar -->
	<!-- section 1 -->
	<div class="card border-0 bg-warning">
		<span><img src="images/home.png" class="img-responsive"
			height=500vh width=100%></span>
		<div class="card-img-overlay">
			<br> <br> <br>
			<h1 class="text-right text-white display-4 mr-3">WELCOME TO
				SMART TUTOR</h1>
			<br>
			<div class=" container text-right mr-5">
				<button type="button" class="btn btn-outline-light mr-5"
					onClick="relocate_adduser()">Add User</button>
				<button type="button" class="btn btn-outline-light mr-5">View
					Student Details</button>
			</div>
		</div>
	</div>
	<!-- end section 1 -->
	<div id="section1" class="container">
		<br> <br>
		<div class="card-deck">
			<div class="card border-0">
				<div class="container">
					<h4>${submitDone}</h4>
					<h2 class="card-title">Add Admin</h2>
					<br>
					<form action="AddAdminController" method="post">
						<div class="form-group">
							<label class="control-label">Username</label> <input type="email"
								class="form-control" placeholder="Enter Username"
								name="username">
						</div>

						<div class="form-group">
							<label class="control-label">Password</label> <input
								type="password" class="form-control"
								placeholder="Enter Password" name="password">
						</div>
						<br>
						<div class="form-group">
							<button class="btn btn-success">submit</button>
						</div>
					</form>
				</div>
			</div>

			<div class="card border-0 text-center">
				<br> <br> <br>
				<div class="container">
					<table class="table table-bordered">
						<tr>
							<td><a href="LearningResources.jsp" id="add">Add Subject</a></td>
						</tr>
						<tr>
							<td><a href="chapter.jsp" id="add">Add Chapter</a></td>
						</tr>
						<tr>
							<td><a href="Topic.jsp" id="add">Add Topic</a></td>
						</tr>
						<tr>
							<td><a href="SubTopic.jsp" id="add">Add SubTopic</a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
		function relocate_adduser() {
			location.href = "#section1";
		}
	</script>
</body>
</html>
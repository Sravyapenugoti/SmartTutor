<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<body>

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
						<a class="dropdown-item" href="#">Add Subject</a> <a
							class="dropdown-item" href="#">Add User</a>
					</div>
				</li>
				<li class="dropdown nav-item mr-5">
					<button type="button" class="btn  text-muted dropdown-toggle"
						data-toggle="dropdown">DETAILS</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Student Details</a> <a
							class="dropdown-item" href="#">Subject Details</a>
					</div>
				</li>
				<li class="nav-item mr-5"><a class="nav-link" href="#">LOGOUT</a></li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- end navbar -->
	<br>
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<form action="StudentsDisplay" method="get">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>StudentID</th>
						<th>StudentName</th>
						<th>Username/Email</th>
						<th>Class</th>
						<th>Gender</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="student">
						<tr>
							<td>${student.userID}</td>
							<td>${student.studentName}</td>
							<td>${student.username}</td>
							<td>${student.classID}</td>
							<td>${student.gender}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>
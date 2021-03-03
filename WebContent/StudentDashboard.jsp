<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}


.learning-home {
	background: lightblue url("images/elearning-1.png");
	height: 300px;
	background-size: cover;
}

.learning-data {
	position: relative;
	background: #e9ecf1;
	opacity: 0.8;
	text-align: center;
	top: 60px;
	font-family: sans-serif;
	padding: 20px;
	width: 80%;
	left: 10%;
	border-radius: 20px;
}

h2 {
	color: #02b3f6;
	font-weight: bold;
	padding: 10px;
}

.learning-data p {
	color: black;
	font-weight: bold;
	margin-bottom: 5px;
}

.books {
	width: 100%;
	height: 180px;
}
</style>

<%
	String username = (String) session.getAttribute("username");

	int ClassID = 0;
	//redirect user to login page if not logged in
	if (username == null) {

		response.sendRedirect("Login.jsp");
	} else {
		ClassID = (int) session.getAttribute("classid");
	}
%>

</head>
<body>
	<jsp:include page="Navbar.jsp" />

	<br>
	<br>
	<div class="container">
		<div class="row">
			<br /> <br />
			<div class="col-lg-12 learning-home">
				<div class="learning-data">
					<h2>EVENTS HEADING YOUR WAY</h2>
					<p>We want to keep you updated on announcements</p>
					<p>and events happening soon!</p>
				</div>
			</div>
			<div class="col-lg-12">
				<br>
				<h2 class="text-center">LEARNING RESOURCES</h2>
			</div>

			<div class="col-lg-12">
				<br>
				<div id=SubjectsDiv class="row"></div>
			</div>


			<div class="col-lg-12">
				<br>
				<br>
				<h2 class="text-center">LATEST UPDATES</h2>
			</div>

			<div class="col-lg-12">
				<div class="row form-group">
					<div class="col-lg-4">
						<img src="images/books.jpg" alt="Alternate Text" class="books" />
					</div>
					<div class="col-lg-8">
						<br>
						<h4>Meet the kids you helped</h4>
						<p>Get the latest science news with ScienceDaily's free email
							newsletters, updated daily and weekly. Or view hourly updated
							newsfeeds in your RSS reader</p>
						<button class="btn btn-sm btn-primary">Read more</button>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-lg-4">
						<img src="images/books.jpg" alt="Alternate Text" class="books" />
					</div>
					<div class="col-lg-8">
						<br>
						<h4>Meet the kids you helped</h4>
						<p>Get the latest science news with ScienceDaily's free email
							newsletters, updated daily and weekly. Or view hourly updated
							newsfeeds in your RSS reader</p>
						<button class="btn btn-sm btn-primary">Read more</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<jsp:include page="Footer.jsp" />
	<script>
	
			$.ajax({
				type : "GET",
				url : "GetSubjects",
				data:{
					ClassID:  "<%=ClassID%>"
					},
					contentType : "application/json", // NOT dataType!
					success : function(response) {
						var subject = "";
						$
								.each(
										response,
										function(index, item) {
											var option = new Option(
													item.subjectName,
													item.subjectID)
											$('#ddlSubject').append(option);
											subject += '<div class="col-lg-3">\
										<div class="panel panel-primary">\
											<div class="panel-body">\
												<img src="images/books.jpg" alt="Alternate Text" class="books" />\
											</div>\
										<div class="panel-footer">\
											<h5><b>'
													+ item.subjectName
													+ '</b></h5>\
					`<form action="ViewChaptersController"><input type="hidden" name="subjectID" value="'+ item.subjectID +'"/><button class="btn btn-sm btn-primary btn-block">Read more</button></form>\
										</div>\
									</div>\
								</div>'
										});
						$('#SubjectsDiv').html(subject);

					}
				});
	</script>
</body>
</html>

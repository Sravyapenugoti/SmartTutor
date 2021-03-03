<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-Learning Resources</title>
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
	background-image: url(images/bg1.jpg);
	background-position: center;
	width: 100%;
	height: 150vh;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	font-family: sans-serif;
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
<body class="form-background">
	<!-- nav bar -->
	<div>
		<jsp:include page="AdminNavbar.jsp" />
	</div>
	<!-- end navbar -->

	<!-- section 1 -->

	<!-- end section 1 -->
	<br>

	<br>

	<!-- section 3 -->
	<div class="container centered">
		<div class="row">


			<div class="offset-4 col-4">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title">Add Topics</h4>

						<br>
						<h3 class="text-center text-info">${submitDone}</h3>
						<br>
						<form action="TopicProcess" method="post">
							<div class="form-group">
								<label>Grade:</label> <select class="custom-select form-control"
									name="grade" id="ddlclass">
									<option selected>Select Grade</option>

								</select>
							</div>
							<div class="form-group">
								<label>Subject:</label> <select
									class="custom-select form-control" name="subject"
									id="ddlSubject">
									<option selected>Select Subject</option>

								</select>
							</div>
							<div class="form-group">
								<label>Chapter:</label> <select
									class="custom-select form-control" name="chapter"
									id="ddlChapter">
									<option selected>Select Subject</option>

								</select>
							</div>
							<div class="form-group">
								<label class="control-label">Topic:</label> <input type="text"
									class="form-control" placeholder="English" name="topic" />
							</div>
							<div class="form-group">
								<label class="control-label">Description:</label>
								<textarea class="form-control" rows=5 name="description">Enter....</textarea>
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-block">Save</button>
							</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end section 3 -->
	<script type="text/javascript">
		$.ajax({
			type : "GET",
			url : "GetClass",
			contentType : "application/json", // NOT dataType!
			success : function(response) {
				$('#ddlclass').empty();

				$.each(response, function(index, item) {
					var option = new Option(item.ClassName, item.ClassID)
					$('#ddlclass').append(option);
				})

			}
		});

		//classs change event
		$('#ddlclass').change(
				function() {
					let classID = $('#ddlclass :selected').val();
					$.ajax({
						type : "GET",
						url : "GetSubjects",
						data : {
							ClassID : classID
						},
						contentType : "application/json", // NOT dataType!
						success : function(response) {
							$('#ddlSubject').empty();

							$.each(response, function(index, item) {
								var option = new Option(item.subjectName,
										item.subjectID)
								$('#ddlSubject').append(option);
							})

						}
					});
				});

		//classs change event
		$('#ddlSubject').change(
				function() {
					let subjectID = $('#ddlSubject :selected').val();
					$.ajax({
						type : "GET",
						url : "GetChapters",
						data : {
							SubjectID : subjectID
						},
						contentType : "application/json", // NOT dataType!
						success : function(response) {
							$('#ddlChapter').empty();

							$.each(response, function(index, item) {
								var option = new Option(item.chapterName,
										item.chapterID)
								$('#ddlChapter').append(option);
							})

						}
					});
				});
	</script>
	<!-- end section 3 -->
</body>
</html>
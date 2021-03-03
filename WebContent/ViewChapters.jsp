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
<style>

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
	font-size: large;
}

.navbar-dark .navbar-brand {
	color: #fff;
	font-size: larger;
}

.form-background {
	background-image: url(images/background-elearning.jpg);
	background-position: center;
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	font-family: sans-serif;
}
</style>
</head>
<body class="form-background">
	<jsp:include page="Navbar.jsp" />
<br/>
	<div class="container" >
	<div class="card border-0">
	<div class="card-body" style="min-height:85vh">
		<div class="row">
			<div class="col-lg-3">
				<ul class="list-group" id="chapterGroup">
				
					<c:forEach items="${list}" var="chapter">
						<li onclick="fn_ViewTopics(${chapter.chapterID})" class="list-group-item text-danger font-weight-bold font-italic">${chapter.chapterName}</li>
					</c:forEach>

				</ul>
			</div>
			<div class="col-lg-9" >
			<div class="card ">
	<div class="card-body" id="ReadDiv"></div>
		</div>
	</div>
	</div>
	</div>
		</div>
	</div>
	
<script>


function fn_ViewTopics(chapterID){
	$.ajax({
		url:'ViewTopicsController',
		type:'get',
		data:{ChapterID: chapterID},
		async: false,
		success:function(response){
			
			$('#ReadDiv').empty();
			$.each(response, function(index, item){
				var listTopic = "<h4 class='text-primary'>"+ item.topicName +"</h4><p>"+ item.topicDescription +"</p>"
				$('#ReadDiv').append(listTopic);
				fn_ViewSubTopics(item.topicID);
			})
		}
	})
}

function fn_ViewSubTopics(topicID){
	$.ajax({
		url:'ViewSubTopicsController',
		type:'get',
		data:{TopicID: topicID},
		async: false,
		success:function(response){
		
			$.each(response, function(index, item){
				var listSubTopic = "<h5 class='text-success'><i>"+ item.subTopicname +"</i></h5><p>"+ item.subTopicDescription +"</p>"
				$('#ReadDiv').append(listSubTopic);
			})
			
		}
	})
}

$(document).ready(function(){
	$('#chapterGroup').find('li:first').click();
})
</script>
</body>
</html>
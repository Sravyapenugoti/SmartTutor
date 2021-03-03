<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
						<a class="dropdown-item" href="StudentDetails.jsp">Student Details</a>

					</div>
				</li>
				<li class="nav-item mr-5"><a class="nav-link" href="Logout.jsp">LOGOUT</a></li>
			</ul>
		</div>
		</nav>F
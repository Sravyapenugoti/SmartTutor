<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- 	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
				<div class="container">
					<a class="navbar-brand" href="#">Smart Tutor</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="collapsibleNavbar">
						<ul class="navbar-nav ml-auto">
							
							  <li class="nav-item dropdown ml-auto">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        ${username}
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="Logout.jsp">Logout</a>
      </div>
    </li>
						</ul>

					</div>
				</div>
			</nav>
			-->
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<a class="navbar-brand" href="#">Smart Tutor</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav" style="margin: auto">
			<li class="nav-item mr-4"><a class="nav-link" href="Home.jsp">Home</a></li>
			<li class="nav-item mr-4"><a class="nav-link"
				href="About.jsp">About</a></li>
			<li class="nav-item dropdown mr-4"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> Free Resources </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="StudentDashboard.jsp">Learning
						Resources</a> <a class="dropdown-item" href="Games.jsp">Games</a>
				</div></li>
			<li class="nav-item mr-4"><a class="nav-link"
				href="ContactUs.jsp">Contact Us</a></li>

		</ul>
		<ul class="navbar-nav">
			<li class="nav-item dropdown ml-auto"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> ${username} </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Settings</a> <a
						class="dropdown-item" href="Logout.jsp">Logout</a>
				</div></li>
		</ul>
	</div>
</nav>

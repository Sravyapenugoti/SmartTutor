<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Tutor-Reading Games</title>
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

.card-img-top {
	height: 150px;
}

.card-title {
	margin-bottom: .75rem;
	font-size: medium;
	font-weight: bold
}

.card-text {
	min-height: 100px;
}

.card {
	background: transparent;
	border: 0
}
</style>
</head>
<body>
	<!-- nav bar -->
	<div>
		<jsp:include page="Navbar.jsp" />
	</div>
	<!-- end nav bar -->
	<br>

	<!-- content -->
	<div class="container">
		<h2 style="font-family: serif">Reading Games</h2>
		<hr>
		<br>
		<div class="container">
			<h4>Smarttutor.com's Reading Games are designed to strengthen
				key reading sub-skills in a highly engaging arcade-like environment.
			</h4>
			<br>
			<p style="font-size: medium">Most children enjoy playing video
				games, which makes our reading games the perfect learning tool to
				motivate your children. In fact, most parents say their children
				don't even realize they are learning because they are so captivated
				by our reading games. Whether they are exploring syllables with Dr.
				Kumar in Triassic Park, or practicing their sight words with Bo and
				Galexis in outer space, your child will be having fun AND learning
				at the same time.</p>
		</div>
		<br>
		<!-- games -->
		<div class="container">
			<div class="card-deck">

				<div class="card shadow">
					<img class="card-img-top" src="images/GoFishing.jpg"
						alt="Go Fishing Sight Words">
					<div class="card-body">
						<h5 class="card-title">Go Fishing Sight Words</h5>
						<p class="card-text">Sight Words Go Fish is a
							vocabulary-themed variation of the classic Go Fish card game, for
							2-4 players.</p>
						<a
							href="http://www.kidswebs.com/reading-games-for-kids/learning-words-by-a-fishing-game.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>

				</div>


				<div class="card shadow">
					<img class="card-img-top" src="images/jackandbeanstalk.png"
						alt="Jack and Beanstalk">
					<div class="card-body">
						<h5 class="card-title">Jack and Beanstalk</h5>
						<p class="card-text">Developing reading comprehension skills
							is essential to becoming a super reader.</p>
						<a href="#" class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/SightWordSmash.png"
						alt="Sight Word Smash">
					<div class="card-body">
						<h5 class="card-title">Sight Word Smash</h5>
						<p class="card-text">Listen to the word to know what you are
							supposed to find, then smash it.</p>
						<a
							href="https://www.roomrecess.com/mobile/SightWordSmash/play.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/Findthesynonym.jpg"
						alt="Find The Synonym">
					<div class="card-body">
						<h5 class="card-title">Find The Synonym</h5>
						<p class="card-text">A fun game where children find and click
							the corresponding synonym</p>
						<a href="#" class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>
			</div>

			<br>
			<div class="card-deck">

				<div class="card shadow">
					<img class="img-thumbnail card-img-top" src="images/HangMouse.jpg"
						alt="Hang Mouse">
					<div class="card-body">
						<h5 class="card-title">Gulliver's Travel Hang Mouse</h5>
						<p class="card-text">Kids guess the letters and each correct
							guess gets the mouse closer to getting the cheese otherwise,the
							mouse makes too much noise and startles the cat!</p>
						<a
							href="https://www.learninggamesforkids.com/word-games/hangman-games/literature-hangman-games/gullivers-travels-hangmouse-2.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>

				</div>


				<div class="card shadow">
					<img class="card-img-top" src="images/createStory.jpg"
						alt="Create your own story">
					<div class="card-body">
						<h5 class="card-title">Create Your Own Story</h5>
						<p class="card-text">To make sure Kids have a solid foundation
							when it comes to the parts of speech.</p>
						<a
							href="https://www.learninggamesforkids.com/vocabulary-games/parts-of-speech/vocabulary-story-blanks.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/wordScramble.png"
						alt="word Scramble">
					<div class="card-body">
						<h5 class="card-title">Word Scramble</h5>
						<p class="card-text">Unscramble games can increase vocabulary
							by helping children to expand their knowledge of what words mean.</p>
						<a href="https://www.proprofs.com/games/word-games/word-scramble/"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>

				<div class="card shadow">
					<img class="card-img-top" src="images/Findthesynonym.jpg"
						alt="Jack and Beanstalk">
					<div class="card-body">
						<h5 class="card-title">Find The Synonym</h5>
						<p class="card-text">Unscramble games can increase vocabulary
							by helping children to expand their knowledge of what words mean.</p>
						<a
							href="https://www.learninggamesforkids.com/vocabulary-games/synonyms/find-the-synonym.html"
							class="btn btn-success btn-md btn-block"><i
							class="fa fa-play"></i>&nbsp;&nbsp;Play</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end games -->

	</div>
	<br>
	<!-- end content -->
	<!-- footer -->
	<div>
		<jsp:include page="Footer.jsp" />
	</div>
	<!-- end footer -->
</body>
</html>
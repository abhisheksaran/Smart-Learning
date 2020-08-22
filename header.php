<?php
	session_start();
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="description" content="Home page for smart learning platform">
		<meta name="viewpoint" content="width=device-width, initial-scale=1">
		<title> Smart Learning </title>	
		<!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
	    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
   
    <!-- //Font-Awesome-File-Links -->
	 <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">

	<!-- Google fonts -->
	<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

	<!-- Google fonts -->


	</head>	
	<body>

	<header>
	<section class="main">
		<nav>
		<div class="layer">	
			<div class="bottom-grid">
				<div class="logo">
					<h1> <a href="index.php"><span class="fa fa-key"></span> Key</a></h1>
				</div>
				<div class="links">
					<ul class="links-unordered-list">
						<li class="active">
							<a href="index.php" class="">Home</a>
						</li>
						<li class="">
							<a href="#" class="">About Us</a>
						</li>
						<li class="">
							<a href="#" class="">Register</a>
						</li>
						<li class="">
							<a href="#" class="">Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="content-w3ls">
				<div class="text-center icon">
					<span class="fa fa-html5"></span>
				</div>
				<div class="content-bottom">
				<?php
			
					if(isset($_SESSION['userId']) || isset($_SESSION['userUid']) || isset($_POST['home-page'])){
						echo '<div class="content-w3ls">
								<div class="content-bottom">
									<form action="includes/questions.inc.php" method="post">
										<div class="wthree-field">
										<button type="submit" class="btn" name="question-submit-sql">Start-Quiz-SQL</button>
										</div>
									</form>
								</div>
							 </div>
							 
							 <div class="content-w3ls">
								<div class="content-bottom">
									<form action="includes/questions.inc.php" method="post">
										<div class="wthree-field">
										<button type="submit" class="btn" name="question-submit-ml">Start-Quiz-ML</button>
										</div>
									</form>
								</div>
							 </div>
							 
					

							  <div class="content-w3ls">
								<div class="content-bottom">
									<form action="includes/logout.inc.php" method="post">
										<div class="wthree-field">
										<button type="submit" class="btn" name="logout-submit">Logout</button>
										</div>
									</form>
								</div>
							 </div>
							 
							 
							 <div class="content-w3ls">
								<div class="content-bottom">
									<form action="includes/leaderboard.inc.php" method="post">
										<div class="wthree-field">
										<button type="submit" class="btn" name="leaderboard-submit">Show Leaderboard</button>
										</div>
									</form>
								</div>
							 </div>
							';
					}
					else{
						//echo 'bhai nhi chal rha';
						echo '<form action="includes/login.inc.php" method="post">
					
								<div class="field-group">
									<span class="fa fa-user" aria-hidden="true"></span>
									<div class="wthree-field">
										<input name="mailuid" type="text" placeholder="Username/E-mail..." required>
									</div>
								</div>
								
								<div class="field-group">
									<div class="wthree-field">
										<input name="pwd" type="password" placeholder="Password">
									</div>
								</div>

								<div class="wthree-field">
									<button type="submit" class="btn" name="login-submit">LOGIN</button>
								</div>
							
								<ul class="list-login">
									<li class="switch-agileits">
										<label class="switch">
											<input type="checkbox">
											<span class="slider round"></span>
											keep Logged in
										</label>
									</li>
									<li>
										<a href="#" class="text-right">forgot password?</a>
									</li>
									<li class="clearfix"></li>
								</ul>
								
								<ul class="list-login-bottom">
									<li class="">
										<a class="" href="signup.php">Signup</a>
									</li>
									<li class="">
										<a href="#" class="text-right">Need Help?</a>
									</li>
									<li class="clearfix"></li>
								</ul>

							</form>';
					}
				?>
				
				</div>
			</div>
			<div class="bottom-grid1">
				<div class="links">
					<ul class="links-unordered-list">
						<li class="">
							<a href="#" class="">Privacy Policy</a>
						</li>
						<li class="">
							<a href="#" class="">Terms of Use</a>
						</li>
					</ul>
				</div>
				<div class="copyright">
					<p>© 2019 Key. All rights reserved | Design by
						<a href="https://iitpkd.ac.in/">IIT Palakkad</a>
					</p>
				</div>
			</div>
		</div>
		</nav>	
	</section>
	</header>

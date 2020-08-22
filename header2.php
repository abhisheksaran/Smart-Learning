<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="description" content="This is an example of meta description">
		<meta name="viewpoint" content="width=device-width, initial-scale=1">
		<title> SMART LEARNINT </title>	
		<link rel="stylesheet" href="global.css">

		<!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->
	
	<!-- Google fonts -->
	<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
	<!-- Google fonts -->

		<link href="global.css" type="text/css" rel="stylesheet">

	</head>	
	<body>

	<header>	
		<nav>
			<a href="#">
				<!-- <img src="img/smart-learning-concept.jpg" alt="logo"> -->
			</a>
			<ul>
				<li><a href="index.php">Home</a> </li>
				<li><a href="#">Portfolio</a> </li>
				<li><a href="#">About me</a> </li>
				<li><a href="#">Contact</a> </li>
			</ul>
			<div>
				<form class="form-container" action="includes/login.inc.php" method="post">
					<p class="field">					
					<input type="text" name="mailuid" placeholder="Username/E-mail...">
					<i class="icon-user icon-large"></i>
					</p>
					
					<p class="field">
					<input type="password" name="pwd" placeholder="Password">
					<i class="icon-lock icon-large"></i>					
					</p>					

					<button type="submit" name="submit"><i class="icon-arrow-right icon-large"></i>LOGIN</button>

				</form>
				<a class="form-container2" href="signup.php">Signup</a>
				<p class="clearfix">
				<form class="form-container2" action="includes/logout.inc.php" method="post">
					<p class="clearfix">
					<button type="submit" name="logout-submit">Logout</button>
					</p>				
				</form>

			</div>
		</nav>
	</header>
	</body>
</html>

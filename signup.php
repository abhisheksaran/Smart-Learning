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
	<div class="layer">	
		<div class="content-w3ls">
			<div class="content-bottom">
				<main>
					<div>
					<?php
						if(isset($_GET['error'])){
							if($_GET['error']=="emptyfields"){
								echo '<p class=""> Fill in all fields!</p>';
							}
							else if($_GET['error']=="invalidmailuid"){
								echo '<p class=""> Invalid username and e-mail!</p>';	
							}
							else if($_GET['error']=="invalidmail"){
								echo '<p class=""> Invalid e-mail!</p>';
							}
							else if($_GET['error']=="invaliduid"){
								echo '<p class=""> Invalid username!</p>';
							}
							else if($_GET['error']=="passwordcheck"){
								echo '<p class=""> Your passwords do not match!</p>';
							}
							else if($_GET['error']=="usertaken"){
								echo '<p class=""> Username already taken!</p>';
							}
							else{
									echo '<p class=""> Sql Error!</p>';	
							}
						}
						else if(isset($_GET['signup'])){
								if($_GET['signup']=="success"){
									echo '<p class=""> Signup Successful!</p>';
								}			
						}
					?>
					<form action="includes/signup.inc.php" method="post">
						<div class="field-group">
							<span class="fa fa-user" aria-hidden="true"></span>
							<div class="wthree-field">
								<input type="text" name="uid" placeholder="Username">
							</div>
						</div>
						
						<div class="field-group">
							<span class="fa fa-user" aria-hidden="true"></span>
							<div class="wthree-field">
								<input type="text" name="mail" placeholder="E-mail">
							</div>
						</div>				
						
						<div class="field-group">
									<div class="wthree-field">
										<input type="password" name="pwd" placeholder="Password">
									</div>						
						</div>
					
						<div class="field-group">
									<div class="wthree-field">
										<input type="password" name="pwd-repeat" placeholder="Repeat password">
									</div>
						</div>
						
						<div class="wthree-field">
							<button type="submit" class="btn" name="signup-submit">Signup</button>
						</div>
					</form>
					</div>
				</main>
			</div>
		</div>
	</div>

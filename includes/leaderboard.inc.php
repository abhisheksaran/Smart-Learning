<!DOCTYPE>
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
			<link rel="stylesheet" href="../css/questions.css" type="text/css" media="all">
	   
		<!-- //Font-Awesome-File-Links -->

		<!-- Google fonts -->
		<link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
		<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

		<!-- Google fonts -->


	</head>	
	<body><center>
	<section class="main">
	<?php
	
	if(isset($_POST['leaderboard-submit'])) {	
		require 'dbh.inc.php';	
		session_start();
		$fetchqry = "SELECT * FROM leaderboard ORDER BY total DESC" ; 
		$result=mysqli_query($conn,$fetchqry);
		echo "<table>";

		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
			$a =$row['uidUsers'];
			$b =$row['total'];
			echo "<tr>";
		    echo "<td> $a &nbsp &nbsp</td>";
		    echo "<td> $b </td>";
		    echo "</tr>";
		}
	
		echo "</table>";
			
	}		
	else {
		header("Location: ../index.php");
		exit();
	}
	
	if(isset($_SESSION['userId']) || isset($_SESSION['userUid'])) {
		echo '<div class="content-w3ls">
					<div class="content-bottom">
						<form action="../../smart_learning/index.php" method="post">
							<div class="wthree-field">
								<button type="submit" class="btn" name="home-page">Home Page</button>
							</div>
						</form>
					</div>
				 </div>
				';
				}
				
				
				echo '<div class="content-w3ls">
								<div class="content-bottom">
									<form action="logout.inc.php" method="post">
										<div class="wthree-field">
										<button type="submit" class="btn" name="/logout-submit">Logout</button>
										</div>
									</form>
								</div>
							 </div>
							';
?>

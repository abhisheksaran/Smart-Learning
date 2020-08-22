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
	if(isset($_POST['question-submit-sql']) || isset($_POST['click']) || isset($_POST['question-submit-ml'])) {	
		session_start();
		if(isset($_POST['question-submit-sql'])){
			$_SESSION['quiz_sql'] ="1"; 
		}
		
		if(isset($_POST['question-submit-ml'])){
			$_SESSION['quiz_ml'] ="1"; 
		}
		
		require 'dbh.inc.php';	
			
		//echo $_SESSION['userId'];
		//echo $_SESSION['userUid'];										// This is required to keep track on $_SESSION['clicks'] variable
		if(isset($_POST['click'])){										// check if click is done		
			@$_SESSION['clicks'] += 1 ;									// increases number of clicks
			$c = $_SESSION['clicks'];
			if(isset($_POST['userans'])){ 
				$userselected = $_POST['userans'];
				
				if(isset($_SESSION['quiz_sql'])) {   
					$fetchqry2 = "UPDATE quiz_sql SET userans='$userselected' WHERE `id`=$c-1"; 
				}
				
				if(isset($_SESSION['quiz_ml'])) {   
					$fetchqry2 = "UPDATE quiz_ml SET userans='$userselected' WHERE `id`=$c-1"; 
				}
				
				$result2 = mysqli_query($conn,$fetchqry2);
			}
		}
		else{
			$_SESSION['clicks']=1;
			$c = $_SESSION['clicks'];
		}
	}
	else{
		header("Location: ../index.php");
		exit();
	}
	?>
	<form action="" method="post">		
	<table>
	<?php 
		if(isset($c)&& isset($_SESSION['quiz_sql'])) {   
			$fetchqry = "SELECT * FROM quiz_sql where id='$c'"; 
		}
		if(isset($c)&& isset($_SESSION['quiz_ml'])) {   
			$fetchqry = "SELECT * FROM quiz_ml where id='$c'"; 
		}
		
		$result=mysqli_query($conn,$fetchqry);
		$num=mysqli_num_rows($result);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC); 
	?>
	<tr><td><h3><br>
	<?php echo @$row['que'];
	?>
	</h3></td></tr> 
	<?php 
		if($_SESSION['clicks'] > 0 && $_SESSION['clicks'] < 11){					// printing the 4 options
	?>
			<tr><td><input required type="radio" name="userans" value="<?php echo $row['option 1'];?>">&nbsp;<?php echo $row['option 1']; $user_ans=1 ?> 
			</td></tr>
			<br>	<tr><td><input required type="radio" name="userans" value="<?php echo $row['option 2'];?>">&nbsp;<?php echo $row['option 2'];  $user_ans=2 ?>
			</td></tr>
				<tr><td><input required type="radio" name="userans" value="<?php echo $row['option 3'];?>">&nbsp;<?php echo $row['option 3'];  $user_ans=3 ?>
			</td></tr>
				<tr><td><input required type="radio" name="userans" value="<?php echo $row['option 4'];?>">&nbsp;<?php echo $row['option 4'];  $user_ans=4 ?>
			<br><br><br></td></tr>
 		
		
			<?php
			/*
			//$qry3 = "SELECT `ans` FROM `quiz ` where qid= $_SESSION['clicks'];";
			//$result3 = mysqli_query($conn,$qry3);
			//$storeArray = Array();
			if($actual_ans==$user_ans){
				 @$_SESSION['score'] += 1 ;
				}
			*/
			?>
			
			<tr><td><button class="btn" name="click" >Next</button></td></tr> 
		<?php 
		}  
		?> 
	</form>
		<form>
		<?php 		
		$userUid = $_SESSION['userUid'];
		if($_SESSION['clicks']>10){
			if( isset($_SESSION['quiz_sql'])){
				$qry3 = "SELECT ans, userans,marks FROM quiz_sql";
				$qry4 = "SELECT quiz_sql_marks FROM leaderboard where uidUsers='$userUid' ";
			}
			if( isset($_SESSION['quiz_ml'])){
				$qry3 = "SELECT ans, userans,marks FROM quiz_ml;";
				$qry4 = "SELECT quiz_ml_marks FROM leaderboard where `uidUsers`='$userUid'";
			}
			
			$result3 = mysqli_query($conn,$qry3);
			$storeArray = Array();
			while ($row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
				if($row3['ans']==$row3['userans']){
				 @$_SESSION['tCorrect'] += 1 ;
				 
				 @$_SESSION['score'] += ($row3['marks']);
				}
				//echo @$row3['marks'];
			}
		
	 
		?> 
			<h2>Result</h2>
			<span>No. of Correct Answer:&nbsp;<?php echo @$_SESSION['tCorrect']; 
			//session_unset(); 
			?></span><br>
			<span>Your Score:&nbsp<?php echo $no= @$_SESSION['score']; ?></span>
			
			<?php
			//update the leaderboard.
			$result3 = mysqli_query($conn,$qry4);
			$row6 = mysqli_fetch_array($result3, MYSQLI_ASSOC);
			if( isset($_SESSION['quiz_sql'])){
				if(($no)>$row6['quiz_sql_marks']){
					$qry5="UPDATE leaderboard SET quiz_sql_marks=($no) WHERE uidUsers='$userUid'";
					$result5 = mysqli_query($conn,$qry5);
				}
			}	
			if( isset($_SESSION['quiz_ml'])){
				if(($no)>$row6['quiz_ml_marks']){
					$qry5="UPDATE `leaderboard` SET quiz_ml_marks=($no) WHERE uidUsers='$userUid'";
					$result5 = mysqli_query($conn,$qry5);
				}
			}
			//update total marks
			$qry6 = "SELECT * FROM leaderboard WHERE uidUsers='$userUid'";
			$result6 = mysqli_query($conn,$qry6);
			$row6 = mysqli_fetch_array($result6, MYSQLI_ASSOC);
			$a=$row6['quiz_sql_marks'];
			$b=$row6['quiz_ml_marks'];
			$sum=$a+$b;
			$qry7 = "UPDATE leaderboard SET total=($sum) WHERE uidUsers='$userUid'";
			$result7 = mysqli_query($conn,$qry7);
			
			
			
			
			unset($_SESSION['clicks']);
			unset($_SESSION['score']);
			unset($_SESSION['tCorrect']);
			unset($_SESSION['quiz_sql']);
			unset($_SESSION['quiz_ml']);
		
			//echo $_SESSION['userId'];
			//echo $_SESSION['userUid'];
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

	<?php 
		} 
			?>
	 <!-- <script type="text/javascript">
		function radioValidation(){
			/* var useransj = document.getElementById('rd').value;
		    //document.cookie = "username = " + userans;
			alert(useransj); */
			var uans = document.getElementsByName('userans');
			var tok;
			for(var i = 0; i < uans.length; i++){
				if(uans[i].checked){
					tok = uans[i].value;
					alert(tok);
				}
			}
		}
	</script> -->
		</form>
	</section>
	</center>
	</body>
</html>

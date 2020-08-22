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
			<input type="text" name="uid" placeholder="Username">
			<input type="text" name="mail" placeholder="E-mail">
			<input type="password" name="pwd" placeholder="Password">
			<input type="password" name="pwd-repeat" placeholder="Repeat password">
			<button type="submit" name="signup-submit">Signup</button>
		</form>
		</div>
	</main>


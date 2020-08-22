<?php
	if(isset($_POST['signup-submit'])){			//check if user came here by clicking
		
		require 'dbh.inc.php';					// connect to database and take input

		$username = $_POST['uid'];
		$email = $_POST['mail'];
		$password = $_POST['pwd'];
		$passwordRepeat = $_POST['pwd-repeat'];

		// error handlers
		if(empty($username) || empty($email) || empty($password) || empty($passwordRepeat)){
			header("Location: ../signup.php?error=emptyfields&uid=".$username."&mail=".$email);
			exit();								// don't want any code after this to work
		}
		else if(!filter_var($email, FILTER_VALIDATE_EMAIL) && !preg_match("/^[a-zA-Z0-9]*$/", $username)){
			header("Location: ../signup.php?error=invalidmailuid");
		}
		else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
			header("Location: ../signup.php?error=invalidmail&uid=".$username);
			exit();
		}
		else if(!preg_match("/^[a-zA-Z0-9]*$/", $username)){
			header("Location: ../signup.php?error=invaliduid&email=".$email);
			exit();
		}
		else if($password !==$passwordRepeat){
			header("Location: ../signup.php?error=passwordcheck&uid=".$username."&mail".$email);
			exit();
		}
		else{					// If the user already exists inside the database
			$sql = "SELECT uidUsers FROM users WHERE uidUsers=?";		// Sql query
			$stmt = mysqli_stmt_init($conn);
			if(!mysqli_stmt_prepare($stmt, $sql)){						// Invalid input name
				header("Location: ../signup.php?error=sqlerror");
				exit();
			}
			else{														// Valid input name
				mysqli_stmt_bind_param($stmt, "s", $username);
				mysqli_stmt_execute($stmt);
				mysqli_stmt_store_result($stmt);
				$resultCheck = mysqli_stmt_num_rows($stmt);
				if($resultCheck > 0){									// Already taken
					header("Location: ../signup.php?error=usertaken&mail=".$email);
					exit();
				}
				else{											// Insert the new user
					$sql = "INSERT INTO users (uidUsers, emailUsers, pwdUsers) VALUES (?, ?, ?)";
					
					$stmt = mysqli_stmt_init($conn);
					if(!mysqli_stmt_prepare($stmt, $sql)){
						header("Location: ../signup.php?error=sqlerror");
						exit();
					}
					else{
										// hashing using in build hash function
						$hashedPwd = password_hash($password, PASSWORD_DEFAULT);

						mysqli_stmt_bind_param($stmt, "sss", $username, $email, $hashedPwd);
						mysqli_stmt_execute($stmt);
						
						
						//initializing leaderboard
						$sql="INSERT INTO leaderboard (uidUsers, quiz_sql_marks, quiz_ml_marks, total) VALUES (?, ?, ?, ?)";
						$stmt = mysqli_stmt_init($conn);
						if(!mysqli_stmt_prepare($stmt, $sql)){
							header("Location: ../signup.php?error=leaderboard not initialized");
							exit();
						}
						else{
							$a=0;
							$b=0;
							$c=0;
							mysqli_stmt_bind_param($stmt, "siii", $username, $a, $b, $c);
							mysqli_stmt_execute($stmt);
							header("Location: ../signup.php?signup=success");
							
						}
						
							

						exit();					
					}
				}
			}
		}
		mysqli_stmt_close($stmt);
		mysqli_close($conn);
	}
	else{
		header("Location: ../signup.php");
		exit();
	}

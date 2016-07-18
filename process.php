<?php
	include'database.php';

	// check if forum was submitted.

	 if (isset ($_POST['submit'])){
	  	$user = mysqli_real_escape_string($con, $_POST['user']);
	  	$message = mysqli_real_escape_string($con, $_POST['message']);

	  	//set time zone
	  	date_default_timezone_set('America/New_york');
	  	$time = date('h:i:s a', time()); 

	  	//validate input
	  	if (!isset($user) || $user == '' || !isset($message) ||  $message == ''  ) {
	  		$error = "Please fill out your name and a message";
	  		header("Location: index.php?error=".urldecode($error));
	  		exit(); 


	  	}  else {
			$query = "INSERT INTO Shouts (user, message, time)
						VALUES ('$user','$message','$time')";	  		


	  		if (!mysqli_query($con, $query)) {
	  			die('Error: '.mysqli_error($con));

	  			
	  		} else{
	  			header("Location: index.php ");
	  			exit();

	  		}

	  }




	} 



	  ?>
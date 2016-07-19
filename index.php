<?php ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php include 'database.php';?>
<?php
//creat slect Query
	$query = "SELECT * FROM Shouts";
	$shouts = mysqli_query($con, $query);
 
?>

<!DOCTYPE html>
<html>
<head>
	<title>Shout Box</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" /></head>
	<body>
	
	<div id="container">
	
	<header>
		<h1>SHOUT BOX</h1>
	</header>
	 
	<div id="Shouts">
		<ul>	 
			<?php while($row = mysqli_fetch_assoc ($shouts)):?>
				<li class="shout"><span> <?php echo $row['time'] ?> - </span> <strong><?php echo $row['user'] ?>:</strong> <?php echo $row['message'] ?> </li>
			<?php endwhile;?>
			
			
		</ul>
	</div> 
	<div id="input"> 
	<?php if(isset($_GET['error'])) : ?>
		<div class = "error"><?php echo $_GET['error']; ?></div>

	<?php endif; ?>
		<form method="post" action="Process.php" >
				<input type="text" name="user" placeholder="Enter your name"/>
				<input type="text" name="message" placeholder="Enter your message" />
				<br />
				<input class="shout-btn" type="submit" name="submit" value="Shout Out!" />
		</form> 
	</div>
		


	</body>
</html>
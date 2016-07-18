<?php
//connecting to MySQL

$con = mysqli_connect("localhost","root","root","shoutit");

// test conniction 
if (mysqli_connect_errno()) {
	echo 'failed to connect to MySQL'.mysqli_connect_error();
}


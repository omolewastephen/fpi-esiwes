<?php
require("constants.php");

	$connection = mysqli_connect(DB_SERVER,DB_USER,DB_PASS);
	if(!$connection){
		die("Database connection failed: " . mysql_error());
	}
	
	$db_select = mysqli_select_db($connection,DB_NAME);
	if(!$db_select){
		die("Database selection failed: " . mysqli_error($connection));
	}
?>
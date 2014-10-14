<?php
	$connect_error = 'Sorry, we\'re experienceing connection problems';
	$host = "localhost";
	$database = "dbms_project";
	$user = "mangla";
	$password = "";

	mysql_connect($host, $user, $password) or die($connect_error);
	mysql_select_db($database) or die($connect_error);
	echo "Hello world. Connection Established.";	
?>

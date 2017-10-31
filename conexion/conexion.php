<?php 

	$con = 'mysql:dbname=complementarias;host=localhost';
	$user = 'chris17';
	$password = 'trumpet17';

	try {
		$pdo = new PDO($con,$user,$password);
	} catch (Exception $e) {
		echo 'Error al conectarnos' .$e->getMessage();
	}
	
 ?>

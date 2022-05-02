<?php
	require "Medoo/medoo.php"; 

	//your database options
	$DbInit = new medoo([
	'database_type' => 'mysql',
	'database_name' => 'kdxuuufdbt',
	'server' => 'localhost',
	'username' => 'kdxuuufdbt',
	'password' => 'Pb9ePcqpeE',
	]);
	
	//Return 
	return $DbInit;
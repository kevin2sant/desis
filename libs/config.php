<?php  
	$host= gethostname();
	$ip = gethostbyname($host);
	
	define('URL', 'http://localhost/desis_kevin/');
	define('PROTECTED_URL', constant('URL').'/public/');

	define('HOST','162.240.73.135');
	define('DB','desis');
	define('USER','desis_test');
	define('PASSWORD','desis_test');
	define('PORT','5432');
	define('CHARSET','utf8mb4');
	define('PUBLIC_URL',constant('URL').'public/');
?>
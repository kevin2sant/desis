<?php 
	date_default_timezone_set('America/Santiago');
	
	// Este bloque de codigo, controla el log de errores
	error_reporting(E_ALL); 
	ini_set('ignore_repeated_errors', TRUE);
	ini_set('display_erros', FALSE);
	ini_set('log_erros', TRUE);
	ini_set('error_log', './error-log');
	// 

	
	// En esta seccion se encuentran los archivos para poder lograr un estilo MVC dentro de la estructura
	require_once 'libs/config.php'; // Configuraciones o constantes
	require_once 'libs/database.php'; // Conexion PDO a la base de datos
	require_once 'libs/view.php'; // Render a las vistas del programa
	require_once 'libs/controller.php'; // Controlador principal
	require_once 'libs/model.php'; // Funciones para ejecutar el query y prepare del PDO
	require_once 'libs/app.php'; 
	// 

	$app = new App();
?>
<?php 

class App{
	public function __construct(){
		$url = isset($_GET['url']) ? $_GET['url'] : '';
		$url = trim($url,'/'); //delete final / if exists
		$url = explode('/', $url);
		

		if (empty($url[0])) {
			$url[0] = 'votacion';
		}

		$archivoController = './controllers/'.$url[0].'.php';

		if (file_exists($archivoController)) {
			require_once $archivoController;
			$controllerName = $url[0].'Controller';
			$controller = new $controllerName(); 
			$controller->loadModel($url[0]);

			if (isset($url[1])) {
				if (method_exists($controller, $url[1])) {
					if (isset($url[2])) {
						$nparam = count($url) - 2;

						$params = [];
						for ($i=0; $i < $nparam; $i++) {
							array_push($params,$url[$i+2]);
						}
						
						$controller->{$url[1]}($params);
					}else{
						$controller->{$url[1]}();
					}
				}
			}else{
				$controller->render();
			}
		}else{
			echo 'Error en la URL';
		}
	}
}
?>
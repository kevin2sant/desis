<?php  
class Controller{
	function __construct(){
		$this->view = new View();
	}

	function loadModel($model){
		$url = './models/'. $model . '.php';
		if (file_exists($url)) {
			require_once $url;

			$modelName = $model.'Model';
			$this->model = new $modelName();
		}
	}

	function redirect($controller, $messages){

		$data = [];
		$params = '';

		foreach ($messages as $key => $message) {
			array_push($data, $key . '=' . $message);
		}

		$params = join('&', $data);

		if ($params != '') {
			$params = '?' . $params;
		}

		header('Location: ' . constant('URL') . $controller . $params);
	}
}
?>
<?php 
class votacionController extends Controller{
	
	function __construct(){
		parent::__construct();
	}

	function render(){
		$this->registrar();
	}

	function registrar(){
		$js = ['/validacion.js'];
		$css = [];

		$data = [
			'js' => $js,
			'css' => $css,
			'regiones' => $this->model->getRegiones(),
			'candidatos' => $this->model->getCandidatos(),
			'votos' => $this->model->getVotos()
		];

		$this->view->render('votacion/registrar', $data);
	}

	function getComunas(){
		$comunas = $this->model->getComunas($_POST['i_idregion']);
		echo json_encode($comunas);
	}

	function registrarVoto(){
		$validar = $this->model->validarRut($_POST['v_rut']);

		if (count($validar) > 0) {
			echo json_encode([
				'registro' 	=> 'danger', 
				'mensaje' 	=> 'Rut ya se encuentra registrado',
				'votos' 	=> []
			]);
		}else{

			$registrar = $this->model->registrarVoto($_POST);
			$votos = $this->model->getVotos();
			echo json_encode([
				'registro' 		=> 'success', 
				'idvotacion' 	=> $registrar[0]['i_idvotacion'],
				'votos' 		=> $votos
			]);

		}
	}
}

?>

<?php  

class votacionModel extends Model{
	function __construct(){
		parent::__construct();
	}

	public function getRegiones(){
		try{
			$sql = "
				SELECT * 
				FROM regiones 
				WHERE b_activo IS TRUE";

			$query = $this->query($sql);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

	public function getCandidatos(){
		try{
			$sql = "
				SELECT * 
				FROM candidatos 
				WHERE b_activo IS TRUE";

			$query = $this->query($sql);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

	public function getComunas($i_idregion){ 
		try{
			$sql = "
				SELECT * 
				FROM comunas 
				WHERE i_idregion = :i_idregion
					AND b_activo IS TRUE";

			$query = $this->prepare($sql);
			$query->execute([
				'i_idregion' => $i_idregion
			]);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

	public function registrarVoto($data){
		try{
			$sql = "
				INSERT INTO votaciones(
					v_nombres,
					v_alias,
					v_rut,
					v_email,
					i_idregion,
					i_idcomuna,
					i_idcandidato,
					v_nosotros
				)VALUES(
					:v_nombres,
					:v_alias,
					:v_rut,
					:v_email,
					:i_idregion,
					:i_idcomuna,
					:i_idcandidato,
					:v_nosotros
				) RETURNING i_idvotacion

			";

			$query = $this->prepare($sql);
			$query->execute([
				'v_nombres' 	=> $data['v_nombres'],
				'v_alias' 		=> $data['v_alias'],
				'v_rut' 		=> $data['v_rut'],
				'v_email' 		=> $data['v_email'],
				'i_idregion' 	=> $data['i_idregion'],
				'i_idcomuna' 	=> $data['i_idcomuna'],
				'i_idcandidato' => $data['i_idcandidato'],
				'v_nosotros' 	=> $data['v_nosotros']
			]);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

	public function getVotos(){
		try{
			$sql = "
				SELECT 
					a.v_nombres,
					a.v_alias,
					a.v_rut,
					a.v_nosotros,
					a.t_creacion::timestamp(0),
					b.v_nombre as v_nombre_region,
					c.v_nombre as v_nombre_comuna,
					d.v_nombres as v_nombres_candidato
				FROM votaciones a
				INNER JOIN regiones b
					ON a.i_idregion=b.i_idregion
				INNER JOIN comunas c
					ON a.i_idcomuna=c.i_idcomuna
				INNER JOIN candidatos d
					ON a.i_idcandidato=d.i_idcandidato;
			";

			$query = $this->query($sql);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

	public function validarRut($v_rut){
		try{
			$sql = "
				SELECT 
					*
				FROM votaciones 
				WHERE v_rut = :v_rut;
			";

			$query = $this->prepare($sql);
			$query->execute([
				'v_rut' => $v_rut
			]);

			return $query->fetchALL(PDO::FETCH_ASSOC);
		}catch(PDOException $e){
			error_log('USERMODEL::'.__FUNCTION__.'->PDOException : ' .$e);

			return false;
		}
	}

}
?>

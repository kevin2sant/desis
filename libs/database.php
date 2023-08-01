<?php

class DataBase{

    private $host;
    private $db;
    private $user;
    private $password;
    private $port;

    public function __construct(){
        $this->host = constant('HOST');
        $this->db = constant('DB');
        $this->user = constant('USER');
        $this->password = constant('PASSWORD');
        $this->port = constant('PORT');
    }

    function connect(){
        try{
            $connection = "pgsql:host=" . $this->host . ";port=" . $this->port  . ";dbname=" . $this->db ;
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];
            
            $pdo = new PDO($connection, $this->user, $this->password, $options);
           
            return $pdo;
        }catch(PDOException $e){
            error_log('Error connection: ' . $e->getMessage());
        }
    }

}

?>
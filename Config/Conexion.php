<?php
    class Conectar
    {
        private $dbc;

        public function Conexion()
        {
            try
            {
                $conectar = $this -> dbc = new PDO("mysql:local=localhost; port=3306; dbname=componentsbd","root","123456");
                return $conectar;
            }
            catch(Exception $ex)
            {
                print "error al conectar " . $ex->getMessage();
                die();
            }
        }

        public function set_names()
        {
            return $this->dbc->query("SET NAMES 'utf8'");
        }
    }
?>
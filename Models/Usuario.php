<?php
    class Usuario extends Conectar{
        public function get_login($correo,$pass){
            $conectar = parent::conexion();
            parent::set_names();
            $sql="select * from usuarios where nomUsu=? and pass=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $correo);
            $sql->bindValue(2, $pass);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function get_login_social($correo){
            $conectar = parent::conexion();
            parent::set_names();
            $sql="select * from usuarios where nomUsu=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $correo);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }


        public function register_usuario($nomUsu,$pass,$correo){
            $conectar = parent::conexion();
            parent::set_names();
            $sql="INSERT INTO `usuarios` (id,nomUsu,pass,correo,estado) VALUES (NULL,?,?,?,'1');";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $nomUsu);
            $sql->bindValue(2, $correo);
            $sql->bindValue(3, $pass);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function get_correo($correo){
            $conectar = parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM `usuarios` WHERE correo = ? AND estado='1'";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $correo);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }
?>
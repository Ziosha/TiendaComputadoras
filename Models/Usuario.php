<?php
    class Usuario extends Conectar{

        public function get_login($correo, $pass){

            $conectar = parent::conexion();
            parent::set_names();

            $sql = "SELECT * FROM usuario WHERE Username  = ? OR Correo = ? AND aes_decrypt(Password, 'keySecret') = ?";
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $correo);
            $sql -> bindValue(2, $correo);
            $sql -> bindValue(3, $pass);
            $sql -> execute();
            
            return $resultado=$sql->fetchAll();
        }

        public function get_login_social($correo){
            $conectar = parent::conexion();
            parent::set_names();

            $sql = "SELECT * from usuario WHERE Correo = ?";
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $correo);
            $sql -> execute();

            return $resultado=$sql->fetchAll();
        }


        public function register_usuario($nomUsu,$pass,$correo){

            $conectar = parent::conexion();
            parent::set_names();

            $sql = "INSERT INTO `usuarios` (id, Username, Password, Correo, estado) VALUES (NULL,?,?,?,'1');";
            
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $nomUsu);
            $sql -> bindValue(2, $correo);
            $sql -> bindValue(3, $pass);
            $sql -> execute();

            return $resultado=$sql->fetchAll();
        }

        public function get_correo($correo){

            $conectar = parent::conexion();
            parent::set_names();
            
            $sql = "SELECT * FROM `usuarios` WHERE correo = ? AND estado='1'";
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $correo);
            $sql -> execute();
            
            return $resultado=$sql->fetchAll();
        }

        public function get_login_admin($correo, $pass){

            $conectar = parent::conexion();
            parent::set_names();

            $sql = "SELECT * FROM usuario WHERE Username  = ? OR Correo = ? AND aes_decrypt(Password, 'keySecret') = ?";
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $correo);
            $sql -> bindValue(2, $correo);
            $sql -> bindValue(3, $pass);
            $sql -> execute();
            
            return $resultado=$sql->fetchAll();
        }

        public function register_admin( $nombre, $ci, $telefono, $direccion, $user, $pass, $email){

            $conectar = parent::conexion();
            parent::set_names();

            $sql = 'INSERT INTO usuario (Id,IdRol ,Nombre,Ci, Telefono, Direccion, Username,Password, Correo, CreationDate) VALUES (NULL,1,?,?,?,?,?,AES_ENCRYPT(?,"keySecret"),?, now())';
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $nombre);
            $sql -> bindValue(2, $ci);
            $sql -> bindValue(3, $telefono);
            $sql -> bindValue(4, $direccion);
            $sql -> bindValue(5, $user);
            $sql -> bindValue(6, $pass);
            $sql -> bindValue(7, $email);
            $sql -> execute();
            
            return $resultado=$sql->fetchAll();
        }

        public function register_client( $nombre, $ci, $telefono, $direccion, $user, $pass, $email){

            $conectar = parent::conexion();
            parent::set_names();

            $sql = 'INSERT INTO usuario (Id,IdRol ,Nombre,Ci, Telefono, Direccion, Username,Password, Correo, CreationDate) VALUES (NULL,2,?,?,?,?,?,AES_ENCRYPT(?,"keySecret"),?, now())';
            $sql = $conectar -> prepare($sql);
            $sql -> bindValue(1, $nombre);
            $sql -> bindValue(2, $ci);
            $sql -> bindValue(3, $telefono);
            $sql -> bindValue(4, $direccion);
            $sql -> bindValue(5, $user);
            $sql -> bindValue(6, $pass);
            $sql -> bindValue(7, $email);
            $sql -> execute();
            
            return $resultado=$sql->fetchAll();
        }
    }
?>
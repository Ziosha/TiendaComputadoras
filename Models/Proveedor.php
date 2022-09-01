<?php
    class Proveedor extends Conectar
    {
        public function get_proveedor()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM proveedor";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);

            return $resultado;
        }

        public function get_proveedor_id($id)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM proveedor WHERE Id = ?";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $id);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }
        
        public function register_proveedor($nombre, $telefono, $nit)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "INSERT INTO proveedor (Id,Nombre,Telefono,Nit,CreationDate,CreationUserId, UpdateUserId, DeleteUserId)VALUES (NULL,?,?,?,now(),0,0,0)";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $nombre);
            $sql -> bindValue(2, $telefono);
            $sql -> bindValue(3, $nit);
            $sql -> execute();
            
            $resultado = $sql -> fetchAll();
            return $resultado;
        }
    }
?>
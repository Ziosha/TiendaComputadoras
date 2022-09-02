<?php
    class Categoria extends Conectar
    {
        
        public function register_categoria($nombre)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "INSERT INTO tipo (Id,Nombre,CreationDate,CreationUserId, UpdateUserId, DeleteUserId)VALUES (NULL,?,now(),0,0,0)";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $nombre);
            $sql -> execute();
            
         
        
            $resultado = $sql -> fetchAll();
            return $resultado;
        }
    }
?>
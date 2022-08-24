<?php
    class Producto extends Conectar
    {
        public function get_producto()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM producto";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);

            return $resultado;
        }

        public function get_producto_id($id)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM producto WHERE Id = ?";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $id);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }

        

        
    }
?>
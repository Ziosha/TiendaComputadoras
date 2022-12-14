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

        public function get_producto_procesador()
        {
            $conexion = parent::Conexion();
            parent::set_names(); 
            $sql = "SELECT * FROM producto WHERE Idtipo = 1 LIMIT 5";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }

        public function get_producto_ram()
        {
            $conexion = parent::Conexion();
            parent::set_names(); 
            $sql = "SELECT * FROM producto WHERE Idtipo = 2 LIMIT 5";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }
        
        public function get_producto_audifonos()
        {
            $conexion = parent::Conexion();
            parent::set_names(); 
            $sql = "SELECT * FROM producto WHERE Idtipo = 7 LIMIT 5";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }

        public function get_producto_teclado()
        {
            $conexion = parent::Conexion();
            parent::set_names(); 
            $sql = "SELECT * FROM producto WHERE Idtipo = 8 LIMIT 5";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }
        

        
    }
?>
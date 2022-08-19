<?php
    class Model extends Conectar
    {
        public function get_producto()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM productos";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);

            return $resultado;
        }
    }
?>
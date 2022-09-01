<?php
    class Venta extends Conectar
    {
        public function get_venta()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM venta";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);

            return $resultado;
        }

        public function get_venta_id($id)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT * FROM venta WHERE Id = ?";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $id);
            $sql -> execute();

            $resultado = $sql -> fetchAll(PDO::FETCH_ASSOC);
            return $resultado;
        }
        
        public function register_venta($idProducto, $idUsuario, $cantidad)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "INSERT INTO venta (Id,IdProducto,IdUsuario,FechaVenta,Cantidad,CreationDate,CreationUserId, UpdateUserId, DeleteUserId)VALUES (NULL,?,?,now(),?,now(),0,0,0)";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $idProducto);
            $sql -> bindValue(2, $idUsuario);
            $sql -> bindValue(3, $cantidad);
            $sql -> execute();
            
            $resultado = $sql -> fetchAll();
            
            $sql2 = "UPDATE producto SET Stock = Stock - ? WHERE Id = ?";
            $sql2 = $conexion -> prepare($sql2);
            $sql2 -> bindValue(1, $cantidad);
            $sql2 -> bindValue(2, $idProducto);
            $sql2 -> execute();
            
            $resultado2 =$sql2 -> fetchAll();
            return $resultado;
        }
    }
?>
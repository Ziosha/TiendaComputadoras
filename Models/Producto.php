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
        
        public function register_producto($idTipo, $idProveedor, $nombre, $caracteristicas,$precio,$stock)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "INSERT INTO producto (Id,Idtipo,IdProveedor,Nombre,Caracteristicas,ImagenProducto,Precio,Stock,CreationDate)VALUES (NULL,?,?,?,?,'imagen.jpg',?,?,now())";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $idTipo);
            $sql -> bindValue(2, $idProveedor);
            $sql -> bindValue(3, $nombre);
            $sql -> bindValue(4, $caracteristicas);
            $sql -> bindValue(5, $precio);
            $sql -> bindValue(6, $stock);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        public function update_producto($precio, $stock, $id)
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "UPDATE producto SET Precio = ?, Stock = ? WHERE Id = ?";
            $sql = $conexion -> prepare($sql);
            $sql -> bindValue(1, $precio);
            $sql -> bindValue(2, $stock);
            $sql -> bindValue(3, $id);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        
    }
?>
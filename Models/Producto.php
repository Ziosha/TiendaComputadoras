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

        public function cantidad_producto()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM producto";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        public function cantidad_proveedor()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM proveedor";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        public function cantidad_cliente()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM usuario WHERE IdRol = 2";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        public function cantidad_venta()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM venta";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }
        
        public function cantidad_categoria()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM tipo";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }

        public function cantidad_administrador()
        {
            $conexion = parent::Conexion();
            parent::set_names();

            $sql = "SELECT COUNT(*) AS cantidad FROM usuario WHERE IdRol = 1";
            $sql = $conexion -> prepare($sql);
            $sql -> execute();

            $resultado = $sql -> fetchAll();
            return $resultado;
        }
    }
?>
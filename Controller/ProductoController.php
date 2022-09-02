<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Producto.php");

    $producto = new Producto();

    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET['op'])
    {
        case "getAll":
            $datos = $producto -> get_producto();
            echo json_encode($datos);
        break;

        case "getId":
            $datos = $producto -> get_producto_id($body['Id']);
            echo json_encode($datos);
        break;

        case "getProcesador":
            $datos = $producto -> get_producto_procesador();
            echo json_encode($datos);
        break;

        case "getRam":
            $datos = $producto -> get_producto_ram();
            echo json_encode($datos);
        break;

        case "getAudifono":
            $datos = $producto -> get_producto_audifonos();
            echo json_encode($datos);
        break;

        case "getTeclado":
            $datos = $producto -> get_producto_teclado();
            echo json_encode($datos);
        break;

        case "registerProducto":
            $datos = $producto -> register_producto($body['IdTipo'],$body['IdProveedor'],$body['Nombre'],$body['Caracteristicas'],$body['Precio'],$body['Stock']);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
            break;
        break;

        case "updateProducto":
            $datos = $producto -> update_producto($body['Precio'],$body['Stock'],$body['Id']);
            echo json_encode($datos);
        break;

        case "countAdmin":
            $datos = $producto -> cantidad_administrador();
            echo json_encode($datos);
        break;

        case "countCliente":
            $datos = $producto -> cantidad_cliente();
            echo json_encode($datos);
        break;

        case "countProveedor":
            $datos = $producto -> cantidad_proveedor();
            echo json_encode($datos);
        break;

        case "countCategoria":
            $datos = $producto -> cantidad_categoria();
            echo json_encode($datos);
        break;

        case "countProducto":
            $datos = $producto -> cantidad_producto();
            echo json_encode($datos);
        break;

        case "countVenta":
            $datos = $producto -> cantidad_venta();
            echo json_encode($datos);
        break;
    }
         

?>
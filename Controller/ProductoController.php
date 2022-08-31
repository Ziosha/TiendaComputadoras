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
    }
         

?>
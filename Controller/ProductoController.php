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

        case "getProdHome":
            $datos = $producto -> get_producto_home();
            echo json_encode($datos);
        break;
    }
         

?>
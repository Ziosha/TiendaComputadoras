<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Venta.php");

    $venta = new Venta();

    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET['op'])
    {
        case "getAll":
            $datos = $venta -> get_venta();
            echo json_encode($datos);
        break;

        case "getId":
            $datos = $venta -> get_venta_id($body['Id']);
            echo json_encode($datos);
        break;

        case "registerVenta":
            $datos = $venta -> register_venta($body['IdProducto'],$body['IdUsuario'],$body['Cantidad']);
            echo json_encode($datos);
        break;

    }
         

?>
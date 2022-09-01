<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Proveedor.php");

    $proveedor = new Proveedor();

    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET['op'])
    {
        case "getAll":
            $datos = $proveedor -> get_proveedor();
            echo json_encode($datos);
        break;

        case "getId":
            $datos = $proveedor -> get_proveedor_id($body['Id']);
            echo json_encode($datos);
        break;

        case "registerProveedor":
            $datos = $proveedor -> register_proveedor($body['Nombre'],$body['Telefono'],$body['Nit']);
            echo json_encode($datos);
        break;

    }
         

?>
<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Model.php");

    $model = new Model();

    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET['op'])
    {
        case "getAll":
            $datos = $model -> get_producto();
            echo json_encode($datos);
        break;
    }
        

?>
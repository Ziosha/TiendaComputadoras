<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Categoria.php");

    $categoria = new Categoria();

    $body = json_decode(file_get_contents("php://input"), true);

    switch ($_GET['op'])
    {
        
        case "registerCategoria":
            $datos = $categoria -> register_categoria($body['Nombre']);
            echo json_encode($datos);
        break;

    }
         

?>
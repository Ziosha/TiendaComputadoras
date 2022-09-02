<?php
    header('Content-Type: application/json');

    require_once("../Config/Conexion.php");
    require_once("../Models/Usuario.php");
    
    $usuario = new Usuario();

    $body = json_decode(file_get_contents("php://input"), true);

    switch($_GET["op"]){
        case "acceso":
            $datos = $usuario -> get_login($_POST["correo"],$_POST["pass"]);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
            break;

        case "accesosocial":
            $datos = $usuario -> get_login_social($body["correo"]);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
            break;

        case "registro":
            $datos = $usuario -> get_correo($body["correo"]);
            if(is_array($datos) == true and count($datos) > 0){
               echo "1";
            }else{
                $usuario -> register_usuario($body["nomUsu"],$body["pass"],$body["correo"]);
                echo "0";
            }
            break;
        
        case "accesoAdmin":
            $datos = $usuario -> get_login($body['Correo'],$body['Pass']);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
        break;

        case "registerAdmin":
            $datos = $usuario -> register_admin($body['Nombre'],$body['Ci'],$body['Telefono'],$body['Direccion'],$body['Username'],$body['Password'],$body['Email']);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
        break;
        
        case "registerClient":
            $datos = $usuario -> register_client($body['Nombre'],$body['Ci'],$body['Telefono'],$body['Direccion'],$body['Username'],$body['Password'],$body['Email']);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
        break;

        case "getAdmin":
            $datos = $usuario -> get_admin();
            echo json_encode($datos);
        break;
        
        case "getClient":
            $datos = $usuario -> get_client();
            echo json_encode($datos);
        break;
    }
?>

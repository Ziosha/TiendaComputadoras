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
            $datos = $usuario -> get_login_social($_POST["correo"]);
            if(is_array($datos) == true and count($datos) > 0){
                echo "1";
            }else{
                echo "0";
            }
            break;

        case "registro":
            $datos = $usuario -> get_correo($_POST["correo"]);
            if(is_array($datos) == true and count($datos) > 0){
               echo "1";
            }else{
                $usuario -> register_usuario($_POST["nomUsu"],$_POST["correo"],$_POST["pass"]);
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
        
    }
?>

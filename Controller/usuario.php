<?php

    require_once("../config/conexion.php");
    require_once("../models/Usuario.php");
    $usuario = new Usuario();

    switch($_GET["op"]){
        case "acceso":
            $datos=$usuario->get_login($_POST["correo"],$_POST["pass"]);
            if(is_array($datos)==true and count($datos)>0){
                echo "1";
            }else{
                echo "0";
            }
            break;

        case "accesosocial":
            $datos=$usuario->get_login_social($_POST["correo"]);
            if(is_array($datos)==true and count($datos)>0){
                echo "1";
            }else{
                echo "0";
            }
            break;

        case "registro":
            $datos=$usuario->get_correo($_POST["correo"]);
            if(is_array($datos)==true and count($datos)>0){
               echo "1";
            }else{
                $usuario->register_usuario($_POST["nomUsu"],$_POST["correo"],$_POST["pass"]);
                echo "0";
            }
            break;
    }
?>

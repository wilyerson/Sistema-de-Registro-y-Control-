<?php 


$conn = mysqli_connect("localhost","root","","sirce"); 





if(isset($_POST['Guardar'])){
  
    $imagen = $_FILES['fotousuario']['name'];
    $cedula = $_POST['cedulapersona'];
    $estadocivilpersona = $_POST['edo-divil'];
    $nombrespersona = $_POST['nombrespersona'];
    $apellidospersona = $_POST['apellidospersona'];
    $fechanacimientopersona = $_POST['fechanacimientopersona'];
    $sexopersona = $_POST['sexopersona'];
    $numerotelefonoprincipalpersona = $_POST['numerotelefonoprincipalpersona'];
    $numerotelefonicohabitacionpersona = $_POST['numerotelefonicohabitacionpersona'];
    $direccionpersona = $_POST['direccionpersona'];
    $pesopersona = $_POST['pesopersona'];
    $estaturapersona = $_POST['estaturapersona'];
    $tallacamisapersona = $_POST['tallacamisapersona'];
    $tallapantalonpersona = $_POST['tallapantalonpersona'];
    $tallacalzadopersona = $_POST['tallacalzadopersona'];
    
    $nombremunicipio = $_POST['nombremunicipio'];
    $nombreparroquia = $_POST['nombreparroquia'];
    $nombresector = $_POST['nombresector'];

    if(isset($imagen) && $imagen != ""){
        $tipo = $_FILES['fotousuario']['type'];
        $temp  = $_FILES['fotousuario']['tmp_name'];

       if( !((strpos($tipo,'gif') || strpos($tipo,'jpeg') || strpos($tipo,'webp')))){
         // $_SESSION['mensaje'] = 'solo se permite archivos jpeg, gif, webp';
         // $_SESSION['tipo'] = 'danger';
          header('location:../index.php');
       }else{
         $query = "INSERT INTO persona(fotopersona,cedulapersona,estadocivilpersona,nombrespersona,apellidospersona,fechanacimientopersona,sexopersona,numerotelefonoprincipalpersona,numerotelefonicohabitacionpersona,direccionpersona,pesopersona,estaturapersona,tallacamisapersona,tallapantalonpersona,tallacalzadopersona) values('$imagen','$cedula','$estadocivilpersona','$nombrespersona','$apellidospersona','$fechanacimientopersona','$sexopersona','$numerotelefonoprincipalpersona','$numerotelefonicohabitacionpersona','$direccionpersona','$pesopersona','$estaturapersona','$tallacamisapersona','$tallapantalonpersona','$tallacalzadopersona')";


         $resultado = mysqli_query($conn,$query);
         if($resultado == 1){
              move_uploaded_file($temp,'imagenes/'.$imagen);   
             //$_SESSION['mensaje'] = 'se ha subido correctamente';
             //$_SESSION['tipo'] = 'success';


             $query = "INSERT INTO municipio(nombremunicipio) values('$nombremunicipio')";

             $resultado2 = mysqli_query($conn,$query);

             if ($resultado2 == 1) {
                

                 $query = "INSERT INTO parroquia(nombreparroquia) values('$nombreparroquia')";

                 $resultado3 = mysqli_query($conn,$query);

                  if ($resultado3 == 1) {
                

                 $query = "INSERT INTO sector(nombresector) values('$nombresector')";

                 $resultado4 = mysqli_query($conn,$query);

             }

             }

            


             header('location:../vista/ingreso.php');


         }else{
            // $_SESSION['mensaje'] = 'ocurrio un error en el servidor';
             //$_SESSION['tipo'] = 'danger';
         }




       }
    }
}


?>
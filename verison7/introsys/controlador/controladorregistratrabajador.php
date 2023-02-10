<?php 


$conn = mysqli_connect("localhost","root","","sirce"); 

class Persona
{

  public $imagen;
  public $cedula;
  public $estadocivilpersona;
  public $nombrespersona;
  public $apellidospersona;
  public $fechanacimientopersona;
  public $sexopersona;
  public $numerotelefonoprincipalpersona;
  public $numerotelefonicohabitacionpersona;
  public $direccionpersona;
  public $pesopersona;
  public $estaturapersona;
  public $tallacamisapersona;
  public $tallapantalonpersona;
  public $tallacalzadopersona;

  public $nombremunicipio;
  public $nombreparroquia;
  public $nombresector;
 

 public function registrar($datosp){

  $conn = mysqli_connect("localhost","root","","sirce"); 

//$this->imagen = $imagen;

if(isset($_POST['Guardar'])){


    if(isset($datosp['0']) && $datosp['0'] != ""){
        $tipo = $_FILES['fotousuario']['type'];
        $temp  = $_FILES['fotousuario']['tmp_name'];

       if( !((strpos($tipo,'gif') || strpos($tipo,'jpeg') || strpos($tipo,'webp')))){
         // $_SESSION['mensaje'] = 'solo se permite archivos jpeg, gif, webp';
          
       }else{
         $query = "INSERT INTO persona(fotopersona,cedulapersona,estadocivilpersona,nombrespersona,apellidospersona,fechanacimientopersona,sexopersona,numerotelefonoprincipalpersona,numerotelefonicohabitacionpersona,direccionpersona,pesopersona,estaturapersona,tallacamisapersona,tallapantalonpersona,tallacalzadopersona) values('$datosp[0]','$datosp[1]','$datosp[2]','$datosp[3]','$datosp[4]','$datosp[5]','$datosp[6]','$datosp[7]','$datosp[8]','$datosp[9]','$datosp[10]','$datosp[11]','$datosp[12]','$datosp[13]','$datosp[14]')";


         $resultado = mysqli_query($conn,$query);
         if($resultado == 1){
              move_uploaded_file($temp,'imagenes/'.$datosp['0']);   

             $query = "INSERT INTO municipio(nombremunicipio) values('$datosp[15]')";

             $resultado2 = mysqli_query($conn,$query);

             if ($resultado2 == 1) {
                
                 $query = "INSERT INTO parroquia(nombreparroquia) values('$datosp[16]')";

                 $resultado3 = mysqli_query($conn,$query);

                  if ($resultado3 == 1) {
                

                 $query = "INSERT INTO sector(nombresector) values('$datosp[17]')";

                 $resultado4 = mysqli_query($conn,$query);

             }

             }

             

         }else{
            // $_SESSION['mensaje'] = 'ocurrio un error en el servidor';
             //$_SESSION['tipo'] = 'danger';
         }


       }
    }
}


  }


}

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

    $datosp = array($imagen, $cedula, $estadocivilpersona, $nombrespersona, $apellidospersona, $fechanacimientopersona, $sexopersona,$numerotelefonoprincipalpersona, $numerotelefonicohabitacionpersona, $direccionpersona, $pesopersona, $estaturapersona,  $tallacamisapersona, $tallapantalonpersona, $tallacalzadopersona, $nombremunicipio, $nombreparroquia, $nombresector);


 $objetopersona = new Persona();
 
 if ($objetopersona->registrar($datosp)) {
   
   //header('location:../vista/ingreso.php');
 }else{ 
 header('location:../vista/ingreso.php');
//echo "jodiste";

 }






?>
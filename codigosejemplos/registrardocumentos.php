<?php 

$conn = mysqli_connect("localhost","root","","newsirce"); 

class Documentos
{

 
  public $Nombredocumento;
  public $fotodocumento;

 public function registrar($datosd){

  $conn = mysqli_connect("localhost","root","","newsirce"); 

    if(isset($datosd['2']) && $datosd['2'] != ""){
        $tipo = $_FILES['fotodocumento']['type'];
        $temp  = $_FILES['fotodocumento']['tmp_name'];

       if( !((strpos($tipo,'gif') || strpos($tipo,'jpeg') || strpos($tipo,'webp')))){
         // $_SESSION['mensaje'] = 'solo se permite archivos jpeg, gif, webp';
          
       }else{
         $query = "INSERT INTO documento(Cedulapersona,Nombredocumento,fotodocumento) values('$datosd[0]','$datosd[1]','$datosd[2]')";


         $resultado2 = mysqli_query($conn,$query);
         if($resultado2 == 1){
              move_uploaded_file($temp,'imagenes/'.$datosd['2']);   



         }else{
            // $_SESSION['mensaje'] = 'ocurrio un error en el servidor';
             //$_SESSION['tipo'] = 'danger';
         }


       }
    }

  }


}
    $Cedulapersonad = @$_POST['Cedulapersonad'];
    $Nombredocumento = @$_POST['Nombredocumento'];
    $imagen = @$_FILES['fotodocumento']['name'];

    $datosd = array($Cedulapersonad, $Nombredocumento, $imagen);


 $objetodocumentos = new Documentos();
 
 if (!($objetodocumentos->registrar($datosd))) {
   
   //header('location:../vista/ingreso.php');
    //@header('location:../vista/inicio.php');
 }else{ 
 
//echo "jodiste";

 }


?>

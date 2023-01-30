<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "testsirce";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conn) {
  
  die("no hay conexion: ".mysql_connect_error());

}


$nombre = $_POST['htmlusuario'];
$pass = $_POST['htmlpassword'];

$query = mysqli_query($conn,"SELECT * FROM login WHERE usuario = '".$nombre."' and password = '".$pass."'");
$nr = mysqli_num_rows($query);

if($nr == 1)
{

  session_start();
  $_SESSION["usuarioad"]=$_POST["htmlusuario"];


  header("Location: ../vista/ingreso.php");
 // echo "bienvenido:" .$nombre;

}
else if ($nr == 0)
{
  header("Location: ../index.php");
  echo "No ingreso";
}


?>
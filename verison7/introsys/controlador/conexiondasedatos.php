<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "testsirce";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conn) {
  
  die("no hay conexion: ".mysql_connect_error());

}



?>
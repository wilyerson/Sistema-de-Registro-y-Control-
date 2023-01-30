<?php 


$conex = mysqli_connect("localhost","root","","sirce"); 


if (isset($_POST['guardar'])) {
    if (strlen($_POST['nombrepersona']) >= 1 && strlen($_POST['cedulapersona']) >= 1) {
      $name = trim($_POST['nombrepersona']);
      $cedula = trim($_POST['cedulapersona']);
     
      $consulta = "INSERT INTO persona(nombrespersona, cedulapersona) VALUES ('$name','$cedula')";
      $resultado = mysqli_query($conex,$consulta);
      if ($resultado) {
        ?> 
        <h3 >¡Te has inscripto correctamente!</h3>
           <?php
      } else {
        ?> 
        <h3 >¡Ups ha ocurrido un error!</h3>
           <?php
      }
    }   else {
        ?> 
        <h3 >¡Por favor complete los campos!</h3>
           <?php
    }
}

?>
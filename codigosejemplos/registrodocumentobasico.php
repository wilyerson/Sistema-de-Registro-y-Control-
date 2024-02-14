<?php
if(isset($_POST['submit'])){
    $nombre_imagen = $_FILES['imagen']['name'];
    $temporal_imagen = $_FILES['imagen']['tmp_name'];
    $carpeta = "tu_carpeta_de_destino/";

    // Mueve la imagen a la carpeta de destino
    if(move_uploaded_file($temporal_imagen, $carpeta.$nombre_imagen)){
        echo "La imagen se ha subido correctamente";
    } else {
        echo "Hubo un error al subir la imagen";
    }
}
?>

<form action="" method="post" enctype="multipart/form-data">
    <input type="file" name="imagen">
    <input type="submit" name="submit" value="Subir">
</form>

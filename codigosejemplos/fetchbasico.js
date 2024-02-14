fetch("get_cedula_original.php")
.then(response => response.text())
.then(data => {
    var cedulaOriginal = data;
});

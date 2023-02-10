<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, width=device-width">
	<title>Document</title>
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="ingreso.css">

<style type="text/css">
	
	table, th, td {
	border: 1px solid;
}

table{
	margin-left: 10%;
	width: 80%;
	border-collapse: collapse;
}
</style>

</head>
<body>

	<?php

session_start();

if(!isset($_SESSION['usuarioad']))
{
    header("Location: ../index.php");
}


?>

	<header>
		<div class="headersuperior">
			<div class="logo_sistema">
				<div class="menu-inicio">
				<nav>
					<ul>
						<li><a href="#"><p>SirceSyst</p></a>
							<ul>
								<li><a href="#">Gestion de Usuario</a></li>
								<li><a href="#">Administrar Usuarios</a></li>
								<li><a href="../controlador/cierre.php">Cerrar Sesión</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				
				</div>
			</div>
			<div class="menu_lista">
				<nav>
					<ul>
						<li><a href="perfiltrabajador.php">Datos Personales</a>
							<ul>
								<li><a href="modificar_trabajador.php">Modificar Datos Personales</a></li>
							</ul>
						</li>
						<li><a href="documentos_trabajador.php">Documentos</a>
							<ul>
								<li><a href="#">Añadir Documentos</a></li>
								<li><a href="#">Modificar Documentos</a></li>
							</ul>
						</li>
						<li><a href="familiares.php">Familiares</a>
							<ul>
								<li><a href="#">Añadir Familiar</a></li>
								<li><a href="#">Modificar Familiar</a></li>
							</ul>
						</li>
						<li><a href="historicolaboral.php">Histórico Laboral</a>
							<ul>
								<li><a href="#">Añadir Historico</a></li>
								<li><a href="#">Modificar Historico</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>

	<div class="articulo">
		<div class="heroo">

			<form action="post">
				<div class="seccion seccion1">
					<h2>Buscar Trabajador</h2>
					<div class="btn_modal_nuevotrabajador">
						<button class="btn-nuevotrabajador">
							<a href="registrotrabajador.php">Registrar Nuevo Trabajador</a>
						</button>
					</div>
				</div>
				<div class="seccion">
					<p>Cédula</p>
					<select name="tipo_ci" id="tipoc">
						<option value="vnzl">V</option>
						<option value="extr">E</option>
					</select>
					<form>
						
						<label for="campo">buscar</label>
						<input type="text" name="campo" id="campo" placeholder="12.123.123">

					</form>
					<!--<input type="text" placeholder="12.123.123">
					<button class="reset">Limpiar</button>
					<button class="busqueda" type="submit">Buscar</button>-->
				</div>
			</form>

			<!--<form action="post">				
				<div class="seccion">
					<p>Nombre y Apellido</p>
					<input type="text">
					<input type="text">
					<button type="reset">Limpiar</button>
					<button class="busqueda" type="submit">Buscar</button>
				</div>
			</form>-->

		</div>
	</div>

	<table>
		<thead>
			<th>id</th>
			<th>fotopersona</th>
			<th>cedulapersona</th>
			<th>estadocivilpersona</th>
			<th>nombrespersona</th>
		</thead>

		<tbody id="content">
			
		</tbody>
	</table>

	<footer>
		
	</footer>
<script>
	getData()


	document.getElementById("campo").addEventListener("keyup", getData)

function getData(){
 let input = document.getElementById("campo").value
 let content = document.getElementById("content")
 let url = "../controlador/load.php"
 let formaData = new FormData()
 formaData.append('campo', input)

fetch(url, {
	method: "POST",
	body: formaData
}).then(response => response.json())
.then(data => {
	content.innerHTML = data
}).catch(err => console.log(err))





}


    </script>



</body>
</html>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Trabajador</title>
	<link rel="stylesheet" href="perfiltrabajador.css">
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
	
	<header>
		<div class="headersuperior">
			<div class="logo_sistema">
				<a href="ingreso.php">SirceSyst</a>
			</div>
			<div class="menu_lista">
				<nav>
					<ul>
						<li><a href="perfiltrabajador.php">Datos Personales</a>
							<ul>
								<li><a href="modificar_trabajador.php">Modificar Datos Personales</a></li>
							</ul>
						</li>
						<li><a href="#">Documentos</a>
							<ul>
								<li><a href="#">Añadir Documentos</a></li>
								<li><a href="#">Modificar Documentos</a></li>
							</ul>
						</li>
						<li><a href="#">Familiares</a>
							<ul>
								<li><a href="#">Añadir Familiar</a></li>
								<li><a href="#">Modificar Familiar</a></li>
							</ul>
						</li>
						<li><a href="#">Histórico Laboral</a>
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

	<div class="container">
		
		<div class="articulo">
			<div class="fotoperfil">
				<img src="../perfil_usuario.png" alt="100">
			</div>
			<div class="descripcion">	
				<h4>Nombre1 Nombre2 Apellido1 Apellido2</h4>
				<p>Edad: 55</p>
				<p>Cedula de Identidad: xx.xxx.xxx</p>
				<p>Numero de Hijos <button><a href="#">Ver Familiares</a></button></p>
				<p>Trabajo Actual: xxxxxxxxxxxxx</p>
				<p>Direccion: Municipio, parroquia, n casa</p>
				<p></p>
			</div>
		</div>
		
	</div>

</body>
</html>
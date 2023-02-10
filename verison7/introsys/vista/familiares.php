<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Historico Laboral</title>
	<link rel="stylesheet" href="familiares.css">
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

	<div class="articulo">
		<div class="botonagg">
			<div class="btnbtn">
				<button>Agregar Nuevo Familiar</button>
			</div>
		</div>
		<div class="tabla">
			<table>
				<thead>
					<tr>
						<th class="numero" >Cedula</th>
						<th class="documento" >Nombres</th>
						<th class="fechaing">Apellido</th>
						<th class="fechaculm">Edad</th>
						<th class="accion" >Editar</th>
						<th class="accion" >Eliminar</th>
						<th class="docs">Documentos</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>12.123.123</td>
						<td>Nombres123</td>
						<td>Apelidos123</td>
						<td>xx</td>
						<td><button class="editar">Edit</button></td>
						<td><button class="eliminar">Elim</button></td>
						<td><button class="docss">Ver</button></td>
					</tr>
				</tbody>
			</table>			
		</div>
	</div>

</body>
</html>
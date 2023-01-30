<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Documentación</title>
	<link rel="stylesheet" href="documentos_trabajador.css">
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
			<div class="boton-modal">
				<label for="btn-modal">
					Agregar Nuevo	
				</label>
			</div>
		</div>
		<div class="tabla">
			<table>
				<thead>
					<tr>
						<th class="documento" >Documento</th>
						<th class="fechareg">Fecha de registro</th>
						<th class="accion" >Editar</th>
						<th class="accion" >Eliminar</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>nombre doc</td>
						<td>01*01*01</td>
						<td><button class="editar">Editar</button></td>
						<td><button class="eliminar">Eliminar</button></td>
					</tr>
				</tbody>
			</table>			
		</div>
	</div>
		<input type="checkbox" id="btn-modal">
	<div class="container-modal">
		<div class="contenido-modal">
			<div class="tituloagregar">
				<div class="titulo11">
					<h2>Agregar Nuevo Documento</h2>
				</div>
				<div class="btn-cerrar">
					<label for="btn-modal">Cerrar</label>
				</div>
			</div>
				<!--CONTENIDO DEL REGISTRO DE NUEVOS DOCUMENTOS-->

			<div class="cont-registro">
				<div class="seccionregistro">
					<input type="file">
				</div>
				<div class="secciondatos">
					<p>Indique el Docuemento a Guardar</p>
					<select name="doc" id="sel-doc">
						<option disabled>Seleccione</option>
						<option value="1">1</option>
						<option value="2">2</option>
					</select>
				</div>

			</div>

		</div>
	</div>

</body>
</html>
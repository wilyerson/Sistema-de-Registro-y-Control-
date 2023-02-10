<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, width=device-width">
	<title>Document</title>
	<link rel="stylesheet" href="modificar_trabajador.css">
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
		<div class="perfil">			
			<form action="">

				<div class="seccion1">					
					<img src="../perfil_usuario.png">
					<a href="#" id="editar_foto">Editar Foto</a>
					<p>Apellido1 Apellido2, Nombre1 Nombre 2</p>
					<p>C.I.: 12.123.123</p>
				</div>

					<div class="seccion_2">
						<div class="pt1">
							<p>Nombres</p>
							<input type="text" maxlength="50">
						</div>
						<div class="pt2">
							<p>Apellidos</p>
							<input type="text" maxlength="50">
						</div>
					</div>

					<div class="seccion_3">
						<div class="pt1">
								<p>Fecha de Nacimiento</p>
								<input type="date">
						</div>
						<div class="pt2">	
							<p>Sexo</p>
							<select name="sexo" id="sexo">
								<option value="masculino">Masculino</option>
								<option value="femenino">Femenino</option>
								<option value="otro">Otro</option>
							</select>
						</div>
					</div>

					<div class="seccion_4">
						<div class="pt1">
							<p>Número Telefónico Principal</p>
						<input type="number">
						</div>
						<div class="pt2">
							<p>Número telefonico de Habitación</p>
						<input type="number">
						</div>
					</div>

					<div class="seccion_5">
						<div class="pt1">
							<p>Peso</p>
						<input type="number" placeholder="kg">
						</div>
						<div class="pt2">
							<p>Estatura</p>
						<input type="number" placeholder="Mts">
						</div>
					</div>

					<div class="seccion_6">
						<div class="pt1">
							<p>Talla Camisa</p>
							<input type="text" class="text">
						</div>
						<div class="pt2">
							<p>Talla Pantalón</p>
							<input type="text" class="text">
						</div>
						<div class="pt3">
							<p>Talla Calzado</p>
							<input type="text" class="text">
						</div>
					</div>

					<div class="seccion_7">
						<button type="reset">Cancelar</button>
						<button type="submit">Guardar</button>
					</div>

			</form>
		</div>
	</div>

</body>
</html>
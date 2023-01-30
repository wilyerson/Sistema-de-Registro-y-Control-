<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registro</title>
	<link rel="stylesheet" href="registrotrabajador.css">
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
	
	<div class="articulo">
		<div class="perfil">			
			<form action="../controlador/controladorregistratrabajador.php" method="post">

				<div class="seccion1">					
					<img src="../perfil_usuario.png">
					<a href="#" id="editar_foto">Seleccionar Foto</a>	
				</div>
					<div class="seccion-11">
						<div class="pt1">
							<p>Cedula de Identidad</p>
							<input type="number" placeholder="Cedula Identidad" name="cedulapersona">
						</div>
						<div class="pt2">
							<p>Estado Civil</p>
							<select name="edo-divil" id="edo-civil">
								<option value="none" disabled="">Seleccione</option>
								<option value="soltero">Soltero</option>
								<option value="casado">Casado</option>
								<option value="viudo">Viudo</option>
							</select>
						</div>
					</div>

					<div class="seccion_2">
						<div class="pt1">
							<p>Nombres</p>
							<input type="text" maxlength="50" name="nombrepersona">
						</div>
						<div class="pt2">
							<p>Apellidos</p>
							<input type="text" maxlength="50">
						</div>
					</div>

					<div class="seccion_3">
						<div class="pt1">
							<p>Fecha de Nacimiento</p>
							<input type="date" id="fechanacimiento">
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

					<div class="seccion_8">
						<div class="pt1">
							<p>Municipio</p>
							<select name="municipioselect" id="municipio">
								<option value="" disabled selected hidden>Seleccione</option>
								<option value="municipioopt">1</option>
								<option value="municipioopt">2</option>
								<option value="municipioopt">3</option>
							</select>
						</div>
						<div class="pt2">
							<p>Parroquia</p>
							<select name="parroquiaselect" id="parroquia">
								<option value="" disabled selected hidden>Seleccione</option>
								<option value="parroquiaopt">1</option>
								<option value="parroquiaopt">2</option>
								<option value="parroquiaopt">3</option>
							</select>
						</div>
						<div class="pt3">
							<p>Sector</p>
							<select name="sectorselect" id="sector">
								<option value="" disabled selected hidden>Seleccione</option>
								<option value="sectoropt">1</option>
								<option value="sectoropt">2</option>
								<option value="sectoropt">3</option>
							</select>
						</div>
					</div>

					<div class="seccion_9">
					</div>

					<div class="seccion_10">
						<div class="pt1">
							<p>Dirección</p>
						</div>
						<div class="pt2">
							<input type="text" name="direccion" placeholder="Av. Calle, Eficio, N° Casa">
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
						<button type="reset"><a href="ingreso.php">Cancelar</a></button>
						<button type="submit" name="guardar">Guardar</button>
					</div>

			</form>
		</div>
	</div>

<?php 
        include("../controlador/controladorregistratrabajador.php");
        ?>

</body>
</html>
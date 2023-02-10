<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registro</title>
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="registrofamiliar.css">
</head>
<body>
	
	<div class="articulo">
		<div class="perfil">			
			<form action="post" id="registrarfamiliar">
				<div class="secciones seccion-1">
					<img src="../perfil_usuario.png">
					<a href="#" id="editar_foto">Seleccionar Foto</a>
				</div>
				<div class="secciones seccion-2">
					<div>
						<p>Cedula de Identidad</p>
						<input id="cece" type="number" placeholder="cedula de identidad">
					</div>
					<div class="inputcedula">
						<p><input type="checkbox" id="cedulacheck">No Posee Cedula</p>
					</div>
				</div>
				<div class="secciones seccion-3">
					<div>
						<p>Nombres</p>
						<input type="text" placeholder="Ingrese sus Nombres">
					</div>
					<div>
						<p>Apellidos</p>
						<input type="text" placeholder="Ingrese sus Apellidos">
					</div>
				</div>
				
				<div class="secciones seccion-4">
					<div>
						<p>Numero Principal</p>
						<input type="number">
					</div>
					<div>
						<p>Numero Habitacion</p>
						<input type="number">
					</div>
				</div>
				<div class="lineas">
					<hr>	
				</div>
				<div class="secciones seccion-5">
					<div>
						<p>Municipio</p>
						<select name="municipio" id="municipio">
							<option value="none" disabled="">Seleccione Municipio</option>
							<option value="1">Municipio 1</option>
						</select>
					</div>
					<div>
						<p>Parroquia</p>
						<select name="parroquia" id="parroquia">
							<option value="none" disabled="">Seleccione Parroquia</option>
							<option value="1">Parroquia 1</option>
						</select>
					</div>
				</div>
				<div class="secciones seccion-6">
					<div>
						<p>Sector</p>
						<select name="sector" id="sector">
							<option value="none" disabled="">Seleccione Sector</option>
							<option value="1">Sector 1</option>
						</select>
					</div>
				</div>
				<div class="secciones seccion-7">
					<div>
						<p>Dirección</p>
						<input type="text" placeholder="Ingrese la Dirección Completa">
					</div>
				</div>
				<div class="lineas">
					<hr>	
				</div>
				<div class="secciones seccion-8">
					<div>
						<p>Peso</p>
						<input type="number">
					</div>
					<div>
						<p>Estatura</p>
						<input type="number">
					</div>
				</div>
				<div class="secciones seccion-9">
					<div>
						<p>Talla Calzado</p>
						<input type="number">
					</div>
					<div>
						<p>Talla Camisa</p>
						<input type="number">
					</div>
					<div>
						<p>Talla Pantalón</p>
						<input type="number">
					</div>
				</div>
				<div class="lineas">
					<hr>	
				</div>
				<div class="seccion-10">
					<div>
						<button type="reset" id="btn-cancelar">Cancelar</button>
					</div>
					<div>
						<button type="submit" id="btn-guardar">Guardar</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
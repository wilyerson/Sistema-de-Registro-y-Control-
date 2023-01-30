
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, width=device-width">
	<title>Sirce</title>
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="estiloindex.css">
</head>
<body class="body">
	<div class="container">
		<div class="textoprincipal">
			<div class="titulosirce">
				<h3>S I R C E</h3>
			</div>
			<div class="lineainter">
				<hr>			
			</div>
			<div class="descripcion">
				<p>Sistema para el Registro y Control de Expedientes</p>
			</div>
		</div>

		<div class="formulario">
			<form method="post" action="../introsys/controlador/conexionbd.php">
				<div class="tituloinicio">
					<h2>Iniciar Sesion</h2>
				</div>
				<div class="formulariotext">
					<div class="seccionusuario">
						<label for="usuario">
							<p>Usuario</p>
							<input type="text" id="usuario" name="htmlusuario">					
						</label>
					</div>
					<div class="seccionpass">
						<label for="pass">
							<p>Contraseña</p>
							<input type="password" id="pass" name="htmlpassword">
						</label>
					</div>
					<div class="seccionfinal">
						<a href="#">¿Olvidó la Contraseña?</a>
						<input type="reset" value="Limpiar" id="reset">
						<input type="submit" value="Ingresar" id="submit" name="ingresar">					
					</div>
				</div>
			</form>
		</div>					
	</div>
	
</body>
</html>
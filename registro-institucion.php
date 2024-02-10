<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Instituciones</title>	
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	
	<link rel="stylesheet" href="../librerias/wall-iconos.css" />

	<style type="text/css">

		@font-face{
			font-family: opensan;
			src: url(fonts/googlesansnormal.woff2);

		}

		body{
			font-family: opensan;
		}
		
		input{
			text-transform: uppercase;
		}

		select{
			text-transform: uppercase;
		}

		.successinput input {
			border-color: #2ecc71;
		}

		.errorinput input {
			border-color: #e74c3c;
		}

		.successinput select {
			border-color: #2ecc71;
		}

		.errorinput select {
			border-color: #e74c3c;
		}	

		small {
			color: #e74c3c;

			visibility: hidden;
		}

		.successinput small {
			color: #e74c3c;

			visibility: hidden;
		}

		.errorinput small {
			visibility: visible;
			
		}

	</style>
</head>

<?php session_start(); if(!isset($_SESSION['usuarioad'])) {header("Location: ../index.php"); } ?>

<body class="bg-gray">

	<?php include"componentes/nav.php";	?>

	<div class="container border rounded py-3 bg-white" style="max-width: 1000px; margin-top: 100px; margin-bottom: 20px; ">

		<div class="row py-3"> 
			<h4 class="text-center">Registro de Institución</h4>
		</div>

		<form id="formulariogeistroinstitucion"  novalidate>

			<div class="row" id="salida"></div>

			<div class="row py-3">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0">Nombre de la Institución</p>
				</div>

				<div class="col col-sm-9">
					<input type="text" name="nombreinstitucion" id="nombreinstitucion" class="form-control" placeholder="Nombre de la Institución" aria-label="Nombre de la Institución" aria-describedby="basic-addon1" required>
					 <small>Error message</small>
				</div>

			</div>

			<div class="row mb-4 align-baseline">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0 ">Código de registro</p>
				</div>

				<div class="col col-sm-9">
					<input type="text" name="codigodeinstitucion" id="codigodeinstitucion" class="form-control" placeholder="Ingrese Código" aria-label="Ingrese Código" aria-describedby="basic-addon1" required>
					 <small>Error message</small>
				</div>

			</div>

			<div class="row mb-4 align-baseline">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0">Municipio</p>
				</div>

				<div class="col col-sm-9">
					<select class="form-select" name="id_mun" id="id_mun" aria-label="Default select example" required>
						<option selected disabled value="">Seleccione Municipio</option>
						<?php 

						require "../controlador/municipiosfetch.php";

						foreach ($municipio as $municipio) {
							echo '<option value="'.$municipio['CodigoMunicipio'].'">'.$municipio['NombreMunicipio'].'</option>';
							}
						?>
					</select>
					<small>Error message</small>
				</div>

			</div>

			<div class="row mb-4 align-baseline">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0">Parroquia</p>
				</div>

				<div class="col col-sm-9">
					<select class="form-select" name="parroquiareg" id="parroquiareg" aria-label="Default select example" required>
						
						
					</select>
					<small>Error message</small>
				</div>
				<script>
					document.querySelector('#id_mun').addEventListener('change', event => {
						console.log(event.target.value);
						fetch('../controlador/parroquiasfetch.php?id_mun='+event.target.value)
						.then(res => {
							if(!res.ok){
								throw new Error('error en la respuesta');
							}
							return res.json();
						})
						.then(datos => {
							let html = '<option value="">Seleccione Parroquia</option>';
							if(datos.data.length > 0){
								for(let i = 0; i < datos.data.length; i++){
									html += `<option value="${datos.data[i].CodigoParroquia}">${datos.data[i].NombreParroquia}</option>`; 
								}
							}
							document.querySelector('#parroquiareg').innerHTML = html;
						})
						.catch(error => {
							console.error('ocurrio un error '+error);
						});	
					});
				</script>

			</div>



			<div class="row mb-4 align-baseline">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0 ">Sector</p>
				</div>

				<div class="col col-sm-9">
					<input type="text" name="sectorinstitucion" id="sectorinstitucion" class="form-control" placeholder="Sector de la Institución" aria-label="Sector de la Institución" aria-describedby="basic-addon1" required>
					<small>Error message</small>
				</div>

			</div>

			<div class="row mb-4 align-baseline">

				<div class="col col-sm-3 d-flex justify-content-end align-items-center">
					<p class="m-0 ">Dirección</p>
				</div>

				<div class="col col-sm-9">
					<input type="text" name="direccioninstitucion" id="direccioninstitucion" class="form-control" placeholder="Ingrese la Dirección" aria-label="Ingrese la Dirección" aria-describedby="basic-addon1" required>
					<small>Error message</small>
				</div>

			</div>

			<div class="row mb-4">
				<div class="col col-sm-6 d-flex justify-content-end">
					<button class="btn btn-secondary" type="reset" onclick="limpiarformureginsti()">Limpiar</button>
				</div>
				<div class="col col-sm-6">
					<button class="btn btn-primary ml" type="submit">Registrar Institución</button>  					
				</div>
			</div>

		</form>					

	</div>

	
	<div class="container" id="mensajes"></div>
	

	<div class="container py-3 bg-white" style="max-width: 1000px; margin-bottom: 70px; margin-x: 30px;">

		<div class="row p-2 text-center">
			<h4>Listado de Instituciones</h4>
		</div>

		<div>
			<hr>
		</div>
			
		<div class="row justify-content-md-center table-responsive px-3 py-3">
			<table class="table table-hover" >
			  	<thead>
				    <tr>
				      <th scope="col" class="text-center">Nombre de la Institución</th>
				      <th scope="col" class="text-center">Código de Registro</th>
				      <th scope="col" colspan="" class="text-center" style="width: 10%;">Acción</th>
				    </tr>
			  	</thead>
				  <tbody id="data"></tbody>
			</table>
		</div>

	</div>




<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-editar" style="display: none;">
  Launch demo modal
</button>



 	<div class="modal fade" id="modal-editar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
 		<div class="modal-dialog">
 			<div class="modal-content">
 				<div class="modal-header" style="background-color: #009aff;">
 					<h5 class="modal-title text-white" id="exampleModalLabel">Modificar Institución</h5>
 					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
 				</div>
 				<!--inicio del form -->
 				<form id="formmodificarinstitucion" method="post">
 				<div class="modal-body">
 					<input type="hidden" name="codinstitucionmodificar" id="codinstitucionmodificar" value="">
 					<div class="row">
 						<div class="col-md-12 mb-3">
 							<label for="">Nombre de Institución</label>
 							<input class="form-control" type="text" class="" value="" name="nombremodificarinstitucion" id="nombremodificarinstitucion">
 						</div>
 					</div>
 					<div class="row">
 						<div class="col-md-12 mb-3">
 							<label for="">Codigo de Registro</label>
 							<input class="form-control" type="text" class="" value="" name="codigomodificarinstitucion" id="codigomodificarinstitucion">
 						</div>
 					</div>
<div class="col col-md-12 mb-3">
    <label for="">Selecione Municipio</label>
    <select class="form-select" name="id_mun2" id="id_mun2" aria-label="Default select example">
        <script>

        </script>
    </select>
</div>
<div class="row mb-4">
    <div class="col col-md-12">
        <label for="">Selecione Parroquia</label>
        <select class="form-select" name="parroquiareg2" id="parroquiareg2" aria-label="Default select example">
        </select>
    </div>
    <script>
    	fetch('../controlador/municipiosfetch2.php')
    .then(response => response.json())
    .then(municipio2 => {
        var select = document.getElementById('id_mun2');
        municipio2.forEach(function(municipio) {
            var option = document.createElement('option');
            option.value = municipio.CodigoMunicipio;
            option.text = municipio.NombreMunicipio;
            select.add(option);
        });

        // Almacena el valor inicial del select
        var lastValue = select.value;

        
        setInterval(function() {
            if (select.value !== lastValue) {
                lastValue = select.value;  // Actualiza el valor almacenado
                let valuerealmunicipio = lastValue;
                console.log(valuerealmunicipio);

                // Encuentra la opción con el valor actual y la selecciona
                for (var i = 0; i < select.options.length; i++) {
                    if (select.options[i].value === valuerealmunicipio) {
                        select.options[i].setAttribute('selected', 'selected'); // Añade el atributo 'selected'
                        break;
                    }
                }

                updateParroquias(valuerealmunicipio);
            }
        }, 250);
    })
    .catch(error => console.error('Error:', error));


function updateParroquias(value) {
    if(value) {
        fetch('../controlador/parroquiasfetch2.php?id_mun2='+value)
        .then(res2 => {
            if(!res2.ok){
                throw new Error('error en la respuesta');
            }
            return res2.json();
        })
        .then(datos => {
            let parroquianumero = localStorage.getItem("ParroquiaInstitucion");
            let parroquianombre = localStorage.getItem("ParroquiaNombre");
            let html = parroquianombre ? '<option value="'+parroquianumero+'">'+parroquianombre+'</option>' : '<option value="">Seleccione Parroquia</option>';
            if(datos.data.length > 0){
                for(let i = 0; i < datos.data.length; i++){
                    html += `<option value="${datos.data[i].CodigoParroquia}">${datos.data[i].NombreParroquia}</option>`; 
                }
            }
            document.querySelector('#parroquiareg2').innerHTML = html;
        })
        .catch(error => {
            console.error('ocurrio un error '+error);
        }); 
    } else {
        document.querySelector('#parroquiareg2').innerHTML = '<option value="">Seleccione Parroquia</option>';
    }
}

// Agrega un evento 'change' al select de municipios para llamar a la función updateParroquias cada vez que cambia su valor
document.querySelector('#id_mun2').addEventListener('change', function() {
    // Cuando el valor del select cambia, se eliminan los valores de localStorage
    localStorage.removeItem("ParroquiaInstitucion");
    localStorage.removeItem("ParroquiaNombre");
    updateParroquias(this.value);
});
    </script>
</div>
 					<div class="row">
 						<div class="col-md-12 mb-3">
 							<label for="">Sector</label>
 							<input class="form-control" type="text" class="" value="" name="sectormodificarinstution" id="sectormodificarinstution">
 						</div>
 					</div>
 					<div class="row">
 						<div class="col-md-12 mb-3">
 							<label for="">Dirección</label>
 							<input class="form-control" type="text" class="" value="" name="direccionmodificarinstitucion" id="direccionmodificarinstitucion">
 						</div>
 					</div>

 				</div>
 				<div class="modal-footer">
 					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
 					<button type="submit" class="btn btn-primary">Modificar</button>
 				</div>
 				</form>
 				<!--fin del form -->
 			</div>
 		</div>
 	</div>

 	<script src="../vista/jquery.min.js"></script>
 		<script src="../librerias/wall.js"></script>
	<script src="../controlador/registroinstitucion.js"></script>
 	<script src="../js/validar-registro-institucion.js"></script>
 	<script src="../js/dibtabla-instituciones.js"></script>
 	<script src="../js/get-instituciones.js"></script>
 	<script src="../js/update-instituciones.js"></script>
 	<script src="../js/municipiosparroquias.js"></script>
 	<script src="../js/capid-inst.js"></script>
 	<script src="../js/modificar-institucion.js"></script>
 	<script src="../bootstrap/js/bootstrap.bundle.min.js"></script>
 	
</body>
</html>

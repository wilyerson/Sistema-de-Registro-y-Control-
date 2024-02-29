document.addEventListener('DOMContentLoaded', (event) => {
  let nameuser = document.getElementById('iduser').value;
  localStorage.setItem("nameusuario", nameuser);
});


document.querySelector('#formumismovimientos').addEventListener('submit', function(event){
  event.preventDefault();

  
  let nameuserr = localStorage.getItem("nameusuario");
  //console.log(cedulauser);

  document.getElementById("nameuser").value = nameuserr;

    function selectfiltrobitacora() {
    var select = document.getElementById("selectfilterbitacora");
    var selectedValue = select.options[select.selectedIndex].value;
    console.log("Has seleccionado: " + selectedValue);
    // Aquí puedes agregar más código para manejar la selección
}

  console.log(nameuserr);
  let formData = new FormData(this);

  fetch('../controlador/bitacora.php', {
    method: 'POST',
    body: formData
  })
  .then(response => response.json())
  .then(respuesta => {
      // body...
      respuesta = respuesta.reverse();
      console.log(respuesta);

      document.getElementById("divmismovimientos").style.display="block";

      let selectmodificar = document.getElementById("selectfilterbitacora").value;

      let mostrarregistrobitacora = respuesta.filter(respuesta => respuesta.ActividadRealizada.includes('Se Registro'));
      let mostrarmodificacionesbitacora = respuesta.filter(respuesta => respuesta.ActividadRealizada.includes('Se Modifico'));
      let mostrarsesionesbitacora = respuesta.filter(respuesta => respuesta.ActividadRealizada.includes('Sesion'));

      let tbody = document.querySelector("#mismovimientos");

      let limite = 15;
    let desde = 0;
    let paginaActiva = 1;
    let arreglo = [];
    let paginas = 0;

    const cargarBitacora = () => {
      var tbody = document.querySelector("#mismovimientos");
      tbody.innerHTML = "";
      if (arreglo.length > 0) {
        for (let registro of arreglo) {
          tbody.innerHTML += `
             <tr>
             <th class="text-center">${registro.CodigoBitacora}</th>
             <td class="text-center">${registro.CodigoPersona}</td>
             <td class="text-center">${registro.Fecha}</td>
             <td class="text-center">${registro.ActividadRealizada}</td>
             <td class="text-center">${registro.InformacionActual}</td>
             </tr>
             `;
        }
      } else {
        tbody.innerHTML += `
            <tr>
            <th class="text-center" colspan="5" >No hay Registros en la Base de datos.</th>
            </td>
            </tr>
            `;
      }
      cargarItemPaginacion();
    };

    const cargarItemPaginacion = () => {
      document.querySelector("#items").innerHTML = "";

      let inicio = Math.max(0, paginaActiva - 5);
      let fin = Math.min(paginas, inicio + 10);

      for (let index = inicio; index < fin; index++) {
        const item = document.createElement("li");
        item.classList = `page-item ${paginaActiva == index + 1 ? "active" : ""}`;
        const enlace = `<button class="page-link" onclick="pasarPagina(${index})">${index + 1}</button>`;
        item.innerHTML = enlace;
        document.querySelector("#items").append(item);
      }
    };

    const modificarArregloBitacora = () => {
      arreglo = data.slice(desde, limite * paginaActiva);
      cargarBitacora();
    };

    window.pasarPagina = (pagina)=>{
      paginaActiva = pagina + 1;
      desde = limite * pagina;

      if (desde <= data.length) {
        modificarArregloBitacora();
      }
    };

    window.nextPage = () => {
      if (paginaActiva < paginas) {
        desde += 15;
        paginaActiva++;
        modificarArregloBitacora();
      }
    };

    window.previusPage = () => {
      if (desde > 0) {
        paginaActiva--;
        desde -= 15;
        modificarArregloBitacora();
      }
    };


    $('#selectfilterbitacora').on('change', function() {
      var selecthtml = $(this).find("option:selected").text();
      data = [];

      switch(selecthtml) {
        case "Registro":
          data = mostrarregistrobitacora;
          break;
        case "Modificacion":
          data = mostrarmodificacionesbitacora;
          break;
        case "Sesiones":
          data = mostrarsesionesbitacora;
          break;
        case "Todos":
          data = respuesta;
          break;
      }

      desde = 0;
      paginaActiva = 1;
      paginas = data.length / limite;
      modificarArregloBitacora();
    });//fin del oncharge

    //---------------------
    var botonmostrartodo = document.querySelector("#botonmismovimientos");

    botonmostrartodo.addEventListener('click', function() {
      data = respuesta;
      desde = 0;
      paginaActiva = 1;
      paginas = data.length / limite;
      modificarArregloBitacora();
    });
    //----------------------

    //////////////////////------------------buscardor-----------------------------///////////////////////////////

    $('#buscardatobitacora').on('keyup', function(){
      let search = $('#buscardatobitacora').val()

      data = respuesta.filter(respuesta => {
        let valores = Object.values(respuesta).join(" ").toLowerCase();
        return valores.includes(search);
      });

      desde = 0;
      paginaActiva = 1;
      paginas = data.length / limite;

      if (search == "") {
        modificarArregloBitacora();
      } else {
        if (data.length > 0) {
          modificarArregloBitacora();
        } else {
          tbody.innerHTML = `
            <tr>
              <th class="text-center" colspan="5" >No hay Registros de movimientos.</th>
            </td>
            </tr>
          `;
        }
      }
    });//fin buscar idbitacora

    ///////////////////---------------------finbuscador----------------------------/////////////////////////////////    

  })
  .catch(error => {
    console.error('Error:', error);
  })
  .finally(() => {
    console.log("complete");
  });

});




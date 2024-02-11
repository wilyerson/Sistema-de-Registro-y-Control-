<?php

class Personal extends dbconexion
{

    public function get_persona($CodigoPersona)
    {
        $conectar = dbconexion::conexion();
        $sql = $conectar->prepare("SELECT 
        	municipio.NombreMunicipio, 
        	municipio.CodigoMunicipio,
        	parroquia.NombreParroquia,
        	persona.CedulaPersona, 
        	persona.Nombres, 
        	persona.Apellidos, 
        	persona.FechaNacimiento,
        	persona.Sexo,
        	persona.EstadoCivil, 
        	persona.Direccion, 
        	persona.ParroquiaPersona, 
        	persona.Sector,
        	persona.Direccion,
        	persona.TelefonoPrincipal,
        	persona.TelefonoHabitacion,
        	persona.FotoPersona,
        	persona.Peso,
        	persona.Estatura,
        	persona.TallaCamisa,
        	persona.TallaPantalon,
        	persona.TallaCalzado        	 
        	FROM persona 
        	INNER JOIN parroquia ON persona.ParroquiaPersona = parroquia.CodigoParroquia 
        	INNER JOIN municipio ON parroquia.MunicipioParroquia = municipio.CodigoMunicipio 
        	WHERE persona.CodigoPersona = ?");
        $sql->bindValue(1, $CodigoPersona);
        if ($sql->execute()) {
            return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
        }
    }

public function insert_persona($CedulaPersona, $Nombres, $Apellidos, $FechaNacimiento, $Sexo, $EstadoCivil, $ParroquiaPersona, $Sector, $Direccion,$TelefonoPrincipal, $TelefonoHabitacion, $Peso, $Estatura, $TallaCamisa, $TallaPantalon, $TallaCalzado, $TipoPersona, $EstatusPersonal )
{
    $conectar = dbconexion::conexion();
    $sql = $conectar->prepare("INSERT INTO persona (CedulaPersona,Nombres, Apellidos, FechaNacimiento, Sexo, EstadoCivil, ParroquiaPersona, Sector, Direccion,TelefonoPrincipal, TelefonoHabitacion, Peso, Estatura, TallaCamisa, TallaPantalon, TallaCalzado, TipoPersona, EstatusPersonal ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    $sql->bindValue(1, $CedulaPersona);
    $sql->bindValue(2, $Nombres);
    $sql->bindValue(3, $Apellidos);
    $sql->bindValue(4, $FechaNacimiento);
    $sql->bindValue(5, $Sexo);
    $sql->bindValue(6, $EstadoCivil);
    $sql->bindValue(7, $ParroquiaPersona);
    $sql->bindValue(8, $Sector);
    $sql->bindValue(9, $Direccion);
    $sql->bindValue(10, $TelefonoPrincipal);
    $sql->bindValue(11, $TelefonoHabitacion);
    $sql->bindValue(12, $Peso);
    $sql->bindValue(13, $Estatura);
    $sql->bindValue(14, $TallaCamisa);
    $sql->bindValue(15, $TallaPantalon);
    $sql->bindValue(16, $TallaCalzado);
    $sql->bindValue(17, $TipoPersona);
    $sql->bindValue(18, $EstatusPersonal);
    

    $sqlprueba = $conectar->prepare("SELECT CodigoPersona, Nombres, Apellidos FROM persona where CedulaPersona = ?");
    $sqlprueba->bindValue(1, $CedulaPersona);
    
    if ($sqlprueba->execute()) {
        $resprueba = $sqlprueba->fetch();
        if ($resprueba) {
            echo "<div class='alert alert-warning' role='alert'>
                Personal ". $resprueba['Nombres'] ." ya está Registrado...
                </div>";
        } else {
            $sql->execute();
            $ultimo_id = $conectar->lastInsertId();
            echo "<div class='alert alert-success' role='alert'>
                Personal ". $Nombres ." Registrado con Exito!...
                </div>";
            header("Location: ../vista/manejo-trabajador2.php?id=" . $ultimo_id); // Redirige a la nueva URL con el ID de la persona
           
        }
    }
}

    public function update_personal($CodigoPersona, $CedulaPersona, $Nombres, $Apellidos, $FechaNacimiento, $Sexo, $EstadoCivil, $ParroquiaPersona, $Sector, $Direccion,$TelefonoPrincipal, $TelefonoHabitacion, $FotoPersona, $Peso, $Estatura, $TallaCamisa, $TallaPantalon, $TallaCalzado, $TipoPersona, $Estatus)
    {

        $conectar = dbconexion::conexion();
        $sql = "UPDATE instituciones SET NombreInstitucion = ?, CodigoRegistro = ?, ParroquiaInstitucion = ?, Sector = ?, Direccion = ? WHERE CodigoInstituciones = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $nombreinstimod);
        $sql->bindValue(2, $codigoregintimod);
        $sql->bindValue(3, $parroquiarinstimod);
        $sql->bindValue(4, $sectorinstimod);
        $sql->bindValue(5, $direccioninstimod);
        $sql->bindValue(6, $codinstimod);
        if ($sql->execute()) {
            return $resultado = self::get_instituciones();
        }
    }

}

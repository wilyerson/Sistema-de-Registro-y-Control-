-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 06:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sirceop`
--
CREATE DATABASE sirceop;
USE sirceop;
-- --------------------------------------------------------

--
-- Table structure for table `archivos`
--

CREATE TABLE `archivos` (
  `ArchivoRegistro` int(10) NOT NULL,
  `CodigoDocumento` int(10) NOT NULL,
  `idperarchivos` int(10) NOT NULL,
  `archivosjpg` text NOT NULL,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archivos`
--

INSERT INTO `archivos` (`ArchivoRegistro`, `CodigoDocumento`, `idperarchivos`, `archivosjpg`, `idusuario`) VALUES
(1, 8, 1, 'imagenes/590054c0-dc7e-4cd8-9ce6-41da51435347.jpg', 0),
(2, 1, 1, 'imagenes/8aa4ff22-5857-4aee-95e0-672c472c87c8.jpg', 0),
(3, 1, 9, 'imagenes/leon.jpg', 0),
(4, 8, 9, 'imagenes/9/leon1.jpg', 0),
(5, 14, 9, 'imagenes/9/422145271_349365321327281_3848567651902845081_n.jpg', 0),
(6, 1, 5, 'imagenes/5/Capture001.jpg', 0),
(7, 2, 9, 'imagenes/9/Capture001.jpg', 0),
(8, 14, 5, 'imagenes/5/leon1.jpg', 0),
(9, 2, 5, 'imagenes/5/leon.jpg', 0),
(10, 5, 5, 'imagenes/5/422145271_349365321327281_3848567651902845081_n.jpg', 0),
(11, 1, 35, 'imagenes/35/leon1.jpg', 0),
(12, 2, 35, 'imagenes/35/leon.jpg', 0),
(14, 7, 44, 'imagenes/44/leon1.jpg', 2),
(15, 1, 44, 'imagenes/44/leon.jpg', 2),
(16, 8, 44, 'imagenes/44/Capture001.jpg', 2),
(17, 1, 59, 'imagenes/59/leon1.jpg', 2);

--
-- Triggers `archivos`
--
DELIMITER $$
CREATE TRIGGER `ArchivoInsert` AFTER INSERT ON `archivos` FOR EACH ROW BEGIN
   DECLARE trabajador_cedula VARCHAR(55);
   DECLARE doc_nombre VARCHAR(55);

   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.idperarchivos;   
   SELECT NombreDocumento INTO doc_nombre FROM documento WHERE CodigoDocumento = NEW.CodigoDocumento;

   INSERT INTO bitacora (CodigoPersona, Fecha, idUsuario, ActividadRealizada, InformacionActual) 
   VALUES (trabajador_cedula, NOW(), NEW.idusuario, 'Se Registro nuevo Documento', CONCAT('Tipo de Documento: ', doc_nombre));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bitacora`
--

CREATE TABLE `bitacora` (
  `CodigoBitacora` int(11) NOT NULL,
  `CodigoPersona` varchar(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `idUsuario` int(11) NOT NULL,
  `ActividadRealizada` varchar(70) NOT NULL,
  `InformacionActual` text DEFAULT NULL,
  `InformacionAnterior` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bitacora`
--

INSERT INTO `bitacora` (`CodigoBitacora`, `CodigoPersona`, `Fecha`, `idUsuario`, `ActividadRealizada`, `InformacionActual`, `InformacionAnterior`) VALUES
(1, '7457', '2024-02-19 17:28:18', 2, 'Se Registro nueva Persona', 'Datos de la Persona: 7457 angular angular p', NULL),
(2, '7457', '2024-02-19 17:28:35', 2, 'Se Registro nuevo Documento', 'Tipo de Documento: cedula', NULL),
(3, '7457', '2024-02-19 17:28:56', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Bachiller III', NULL),
(4, '2323', '2024-02-19 17:29:26', 2, 'Se Registro nueva Persona', 'Datos de la Persona: 2323 wh wh p', NULL),
(5, '7457', '2024-02-19 17:29:26', 2, 'Se Registro nuevo Familiar', 'Datos del Familiar: Hijo 2323', NULL),
(6, '7457', '2024-02-19 17:29:53', 2, 'Se Modifico una Persona', 'Datos de la Persona: 7457 angular angular p', NULL),
(7, '7847', '2024-02-19 18:48:16', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Bachiller II', NULL),
(8, '7847', '2024-02-19 18:57:05', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Bachiller I', NULL),
(9, '7847', '2024-02-19 18:59:40', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Bachiller II', NULL),
(10, '7847', '2024-02-19 19:01:38', 2, 'Se Registro nuevo Historial', 'Datos del Historial: pdvsaa Bachiller II', NULL),
(11, '21293417', '2024-02-19 19:03:21', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Director General', NULL),
(12, '21293417', '2024-02-19 19:04:46', 2, 'Se Registro nuevo Historial', 'Datos del Historial: caipe Director General', NULL),
(65, '7847', '2024-02-20 11:45:54', 2, 'Se Modifico un Historial', 'Datos del Historial: caipe Bachiller I', NULL),
(66, '74577', '2024-02-20 15:42:41', 2, 'Se Registro nueva Persona', 'Datos de la Persona: 74577 ee eer', NULL),
(67, '34234237', '2024-02-20 15:42:41', 2, 'Se Registro nuevo Familiar', 'Datos del Familiar: Hijo 74577', NULL),
(71, '44557', '2024-02-21 10:02:53', 2, 'Se Modifico una Persona', 'Datos de la Persona: 44557 hijo de reactt react ape', NULL),
(72, '44557', '2024-02-21 10:03:15', 2, 'Se Modifico una Persona', 'Datos de la Persona: 44557 hijo de react react ape', NULL),
(73, '1122', '2024-02-21 10:37:03', 2, 'Se Modifico una Persona', 'Datos de la Persona: 1122 hijo de react react ape', NULL),
(84, '12452', '2024-02-21 14:58:40', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(85, '22337', '2024-02-21 15:00:18', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijoo pse ape', NULL),
(86, '22337', '2024-02-21 15:00:26', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijoo pse ape', NULL),
(87, '22337', '2024-02-21 15:00:26', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijoo pse ape', NULL),
(88, '12452', '2024-02-21 15:00:43', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(89, '12452', '2024-02-21 15:00:43', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(90, '12452', '2024-02-21 15:00:46', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(91, '12452', '2024-02-21 15:00:46', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(92, '12452', '2024-02-21 15:02:17', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijoo pse ape', NULL),
(93, '22337', '2024-02-21 15:59:46', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo pse ape', NULL),
(94, '22337', '2024-02-21 16:01:37', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo hola pse ape', NULL),
(95, '12452', '2024-02-21 16:01:56', 2, 'Se Modifico una Persona', 'Datos de la Persona: 12452 ps5 hijo pse ape', NULL),
(96, '22337', '2024-02-21 16:09:48', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo hola pse ape', NULL),
(97, '22337', '2024-02-21 16:11:58', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo hola pse ape', NULL),
(98, '22337', '2024-02-21 16:38:19', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo hola pse ape', NULL),
(99, '22337', '2024-02-21 16:38:44', 2, 'Se Modifico una Persona', 'Datos de la Persona: 22337 ps5 hijo hola pse ape', NULL),
(100, 'we', '2024-02-21 17:11:06', 2, 'Se Registro nueva Institucion', 'Datos de la Institucion: we we', NULL),
(101, 'we', '2024-02-21 17:12:49', 2, 'Se Modifico una Institucion', 'Datos de la Institucion: we wewe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `CodigoCargo` int(10) NOT NULL,
  `NombreCargo` varchar(40) NOT NULL,
  `TipoCargo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`CodigoCargo`, `NombreCargo`, `TipoCargo`) VALUES
(1, 'Bachiller I', 1),
(2, 'Bachiller II', 1),
(3, 'Bachiller III', 1),
(4, 'TSU I', 1),
(5, 'TSU II', 1),
(6, 'Profesional I', 1),
(7, 'Profesional II', 1),
(8, 'Profesional III', 1),
(9, 'Obrero Grado  1', 11),
(10, 'Obrero Grado  2', 11),
(11, 'Obrero Grado  3', 11),
(12, 'Obrero Grado  4', 11),
(13, 'Obrero Grado  5', 11),
(14, 'Obrero Grado  6', 11),
(15, 'Obrero Grado  7', 11),
(16, 'Obrero Grado  8', 11),
(17, 'Obrero Grado  9', 11),
(18, 'Obrero Grado  10', 11),
(19, 'Jefe de Departamento', 10),
(20, 'Jefe de División', 10),
(21, 'Director de Linea', 10),
(22, 'Director General', 10),
(23, 'Secretario General de gobierno', 10),
(24, 'Gobernador', 10);

-- --------------------------------------------------------

--
-- Table structure for table `documento`
--

CREATE TABLE `documento` (
  `CodigoDocumento` int(10) NOT NULL,
  `NombreDocumento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documento`
--

INSERT INTO `documento` (`CodigoDocumento`, `NombreDocumento`) VALUES
(7, 'asignacion de trabajado'),
(8, 'boleta de vacaciones'),
(9, 'carta de renuncia'),
(1, 'cedula'),
(10, 'comision de servicio asignado'),
(5, 'cuenta bancaria'),
(2, 'curriculum'),
(14, 'decreto de ascenso'),
(15, 'decreto de jubilacion'),
(13, 'decreto de nombramiento'),
(3, 'partida de nacimiento'),
(12, 'permiso no remunerado'),
(11, 'permiso remunerado'),
(4, 'r.i.f.'),
(6, 'titulo obtenido');

-- --------------------------------------------------------

--
-- Table structure for table `familiar`
--

CREATE TABLE `familiar` (
  `CodigoRegistroFamiliar` int(10) NOT NULL,
  `Trabajador` int(10) NOT NULL,
  `Familiar` int(10) NOT NULL,
  `Parentesco` varchar(20) NOT NULL,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `familiar`
--

INSERT INTO `familiar` (`CodigoRegistroFamiliar`, `Trabajador`, `Familiar`, `Parentesco`, `idusuario`) VALUES
(1, 5, 26, 'Hijo', 0),
(2, 9, 27, 'Esposa', 0),
(3, 5, 28, 'Hija', 0),
(4, 35, 37, 'Hijo', 0),
(5, 35, 38, 'Nieto', 0),
(17, 59, 60, 'Hijo', 2),
(18, 9, 62, 'Hijo', 2);

--
-- Triggers `familiar`
--
DELIMITER $$
CREATE TRIGGER `FamiliarInsert` AFTER INSERT ON `familiar` FOR EACH ROW BEGIN
   DECLARE trabajador_cedula VARCHAR(55);
   DECLARE familiar_cedula VARCHAR(55);
   
   
   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.Trabajador;
   SELECT CedulaPersona INTO familiar_cedula FROM persona WHERE CodigoPersona = NEW.Familiar;
   
   
   INSERT INTO bitacora (CodigoPersona, Fecha, idUsuario, ActividadRealizada, InformacionActual) 
   VALUES (trabajador_cedula, NOW(), NEW.idusuario, 'Se Registro nuevo Familiar', CONCAT('Datos del Familiar: ', NEW.Parentesco,' ',familiar_cedula));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `FamiliarUpdate` AFTER UPDATE ON `familiar` FOR EACH ROW BEGIN
   DECLARE trabajador_cedula VARCHAR(55);
   DECLARE familiar_cedula VARCHAR(55);
   
   
   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.Trabajador;
   SELECT CedulaPersona INTO familiar_cedula FROM persona WHERE CodigoPersona = NEW.Familiar;
   
   
   INSERT INTO bitacora (CodigoPersona, Fecha, idUsuario, ActividadRealizada, InformacionActual) 
   VALUES (trabajador_cedula, NOW(), NEW.idusuario, 'Se Modifico un Familiar', CONCAT('Datos del Familiar: ', NEW.Parentesco,' ',familiar_cedula));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `historico`
--

CREATE TABLE `historico` (
  `CodigoHistorico` int(10) NOT NULL,
  `Cargo` int(10) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaCulminacion` date DEFAULT NULL,
  `Obervacion` varchar(120) NOT NULL,
  `InstitucionHistorico` int(10) NOT NULL,
  `personal` int(10) NOT NULL,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historico`
--

INSERT INTO `historico` (`CodigoHistorico`, `Cargo`, `FechaInicio`, `FechaCulminacion`, `Obervacion`, `InstitucionHistorico`, `personal`, `idusuario`) VALUES
(4, 22, '1995-01-01', '1995-02-02', '', 28, 5, 2),
(5, 22, '1998-01-01', NULL, '', 28, 5, 2),
(9, 1, '1995-01-01', '1995-02-02', 't', 28, 44, 2),
(10, 2, '1995-03-03', '1995-04-04', 'tt', 11, 44, 2),
(11, 2, '1995-05-05', NULL, 'ttt', 11, 44, 2);

--
-- Triggers `historico`
--
DELIMITER $$
CREATE TRIGGER `HistoricoInsert` AFTER INSERT ON `historico` FOR EACH ROW BEGIN
   DECLARE trabajador_cedula VARCHAR(55);
   DECLARE int_nombre VARCHAR(55);
   DECLARE cargo_nombre VARCHAR(55);
   
   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.personal;
   SELECT NombreInstitucion INTO int_nombre FROM instituciones WHERE CodigoInstituciones = NEW.InstitucionHistorico;
   SELECT NombreCargo INTO cargo_nombre FROM cargos WHERE CodigoCargo = NEW.Cargo;
   
   INSERT INTO bitacora (CodigoPersona, Fecha, idUsuario, ActividadRealizada, InformacionActual) 
   VALUES (trabajador_cedula, NOW(), NEW.idusuario, 'Se Registro nuevo Historial', CONCAT('Datos del Historial: ', int_nombre,' ',cargo_nombre));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `HistoricoUpdate` AFTER UPDATE ON `historico` FOR EACH ROW BEGIN
   DECLARE trabajador_cedula VARCHAR(55);
   DECLARE int_nombre VARCHAR(55);
   DECLARE cargo_nombre VARCHAR(55);
   
   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.personal;
   SELECT NombreInstitucion INTO int_nombre FROM instituciones WHERE CodigoInstituciones = NEW.InstitucionHistorico;
   SELECT NombreCargo INTO cargo_nombre FROM cargos WHERE CodigoCargo = NEW.Cargo;
   
   INSERT INTO bitacora (CodigoPersona, Fecha, idUsuario, ActividadRealizada, InformacionActual) 
   VALUES (trabajador_cedula, NOW(), NEW.idusuario, 'Se Modifico un Historial', CONCAT('Datos del Historial: ', int_nombre,' ',cargo_nombre));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `instituciones`
--

CREATE TABLE `instituciones` (
  `CodigoInstituciones` int(10) NOT NULL,
  `NombreInstitucion` varchar(50) NOT NULL,
  `CodigoRegistro` varchar(50) NOT NULL,
  `Sector` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `ParroquiaInstitucion` int(10) NOT NULL,
  `idusuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instituciones`
--

INSERT INTO `instituciones` (`CodigoInstituciones`, `NombreInstitucion`, `CodigoRegistro`, `Sector`, `Direccion`, `ParroquiaInstitucion`, `idusuario`) VALUES
(11, 'La Inmaculada', 'C1223', 'valentin valiente', 'Avenida Carupano', 51, 0),
(12, 'pdvsaa', '1651515', 'gtav', 'nonononono', 41, 0),
(28, 'caipe', 'c288', '', 'direccion pdvsa', 39, 0),
(38, 'wewe', 'we', 'wew', 'we', 23, 2);

--
-- Triggers `instituciones`
--
DELIMITER $$
CREATE TRIGGER `InstitucionInsert` AFTER INSERT ON `instituciones` FOR EACH ROW BEGIN 


INSERT INTO bitacora(CodigoPersona, idUsuario,ActividadRealizada,InformacionActual)VALUES
(NEW.CodigoRegistro,NEW.idusuario,'Se Registro nueva Institucion',concat('Datos de la Institucion: ' ,NEW.CodigoRegistro,' ',NEW.NombreInstitucion));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `InstitucionUpdate` AFTER UPDATE ON `instituciones` FOR EACH ROW BEGIN 


INSERT INTO bitacora(CodigoPersona, idUsuario,ActividadRealizada,InformacionActual)VALUES
(NEW.CodigoRegistro,NEW.idusuario,'Se Modifico una Institucion',concat('Datos de la Institucion: ' ,NEW.CodigoRegistro,' ',NEW.NombreInstitucion));


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `CodigoMunicipio` int(10) NOT NULL,
  `NombreMunicipio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipio`
--

INSERT INTO `municipio` (`CodigoMunicipio`, `NombreMunicipio`) VALUES
(1, 'Andrés Eloy Blanco'),
(2, 'Andrés Mata'),
(3, 'Arismendi'),
(4, 'Benítez'),
(5, 'Bermúdez'),
(6, 'Bolívar'),
(7, 'Cajigal'),
(8, 'Cruz Salmerón Acosta'),
(9, 'Libertador'),
(10, 'Mariño'),
(11, 'Mejía'),
(12, 'Montes'),
(13, 'Ribero'),
(14, 'Sucre'),
(15, 'Valdez');

-- --------------------------------------------------------

--
-- Table structure for table `parroquia`
--

CREATE TABLE `parroquia` (
  `CodigoParroquia` int(10) NOT NULL,
  `NombreParroquia` varchar(50) NOT NULL,
  `MunicipioParroquia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parroquia`
--

INSERT INTO `parroquia` (`CodigoParroquia`, `NombreParroquia`, `MunicipioParroquia`) VALUES
(1, 'Mariño', 1),
(2, 'Rómulo Gallegos', 1),
(3, 'San José de Areocuar', 2),
(4, 'Tavera Acosta', 2),
(5, 'Río Caribe', 3),
(6, 'Antonio José de Sucre', 3),
(7, 'El Morro de Puerto Santo', 3),
(8, 'Puerto Santo', 3),
(9, 'San Juan de las Galdonas', 3),
(10, 'El Pilar', 4),
(11, 'El Rincón', 4),
(12, 'General Francisco Antonio Vázquez', 4),
(13, 'Guaraúnos', 4),
(14, 'Tunapuicito', 4),
(15, 'Unión', 4),
(16, 'Santa Catalina', 5),
(17, 'Santa Rosa', 5),
(18, 'Santa Teresa', 5),
(19, 'Bolívar', 5),
(20, 'Maracapana', 5),
(21, 'Divina Misericordia', 5),
(22, 'Nuestra Señora De Lourdes', 5),
(23, 'Marigüitar', 6),
(24, 'Libertad', 7),
(25, 'El Paujil', 7),
(26, 'Yaguaraparo', 7),
(27, 'Araya', 8),
(28, 'Chacopata', 8),
(29, 'Manicuare', 8),
(30, 'Tunapuy', 9),
(31, 'Campo Elías', 9),
(32, 'Irapa', 10),
(33, 'Campo Claro', 10),
(34, 'Marabal', 10),
(35, 'San Antonio de Irapa', 10),
(36, 'Soro', 10),
(37, 'San Antonio del Golfo', 11),
(38, 'Cumanacoa', 12),
(39, 'Arenas', 12),
(40, 'Aricagua', 12),
(41, 'Cocollar', 12),
(42, 'San Fernando', 12),
(43, 'San Lorenzo', 12),
(44, 'Cariaco', 13),
(45, 'Catuaro', 13),
(46, 'Rendón', 13),
(47, 'Santa Cruz', 13),
(48, 'Santa María', 13),
(49, 'Altagracia', 14),
(50, 'Santa Inés', 14),
(51, 'Valentín Valiente', 14),
(52, 'Ayacucho', 14),
(53, 'San Juan', 14),
(54, 'Raúl Leoni', 14),
(55, 'Gran Mariscal', 14),
(56, 'Cristóbal Colón', 15),
(57, 'Bideau', 15),
(58, 'Punta de Piedras', 15),
(59, 'Güiria', 15);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `CodigoPersona` int(10) NOT NULL,
  `CedulaPersona` varchar(10) DEFAULT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `EstadoCivil` varchar(20) NOT NULL,
  `ParroquiaPersona` int(10) DEFAULT NULL,
  `Sector` varchar(50) NOT NULL,
  `Direccion` varchar(120) NOT NULL,
  `TelefonoPrincipal` varchar(20) NOT NULL,
  `TelefonoHabitacion` varchar(20) NOT NULL,
  `Peso` varchar(10) NOT NULL,
  `Estatura` varchar(10) NOT NULL,
  `TallaCamisa` varchar(5) NOT NULL,
  `TallaPantalon` varchar(5) NOT NULL,
  `TallaCalzado` varchar(5) NOT NULL,
  `RegPartidaNacimientoFami` text DEFAULT NULL,
  `idusuario` int(10) NOT NULL,
  `TipoPersona` varchar(20) NOT NULL,
  `EstatusPersonal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`CodigoPersona`, `CedulaPersona`, `Nombres`, `Apellidos`, `FechaNacimiento`, `Sexo`, `EstadoCivil`, `ParroquiaPersona`, `Sector`, `Direccion`, `TelefonoPrincipal`, `TelefonoHabitacion`, `Peso`, `Estatura`, `TallaCamisa`, `TallaPantalon`, `TallaCalzado`, `RegPartidaNacimientoFami`, `idusuario`, `TipoPersona`, `EstatusPersonal`) VALUES
(1, '26293417', 'Endys Leonel', 'Rodriguez Rodriguez', '1997-11-25', 'masculino', 'soltero', 5, 'Valentin Valiente', 'Urbanizacion Salvador allende, Torre 13, Piso 4, Apto n20', '04126949323', '04126949323', '74', '190', 'xl', '36', '44', '', 0, 'trabajador', 'inactivo'),
(2, '29652552', 'hijo endys', 'rodriguez', '2000-11-25', 'masculino', 'soltero', 37, 'Sector de San Antonio', 'calle verde, ali', '04126949323', '04126949323', '70', '190', 'xl', '36', '44', '', 0, 'familiar', 'inactivo'),
(4, '20293417', 'endys2', 'werwer', '1997-11-25', 'masculino', 'casado', 39, 'La playa', 'miami newyork', '04121231212', '04123121212', '80', '1.90', 'm', '2', '30', '', 0, 'personal', 'inactivo'),
(5, '21293417', 'asdasda', 'sdasdad', '1222-12-12', 'masculino', 'soltero', 47, '12312312123123', '3123123123', '122312312312', '123123123123', '123123', '12312', '12312', '1231', '23', '', 0, 'personal', 'inactivo'),
(9, '34234237', 'xbx', '784', '1955-01-01', 'masculino', 'soltero', 31, '', 'y', '324234324', '234234234', '', '', '', '', '', '', 0, 'personal', 'inactivo'),
(10, '32487474', 'rodolfo', 'rodriguez', '2008-01-04', 'masculino', 'soltero', NULL, '', '', '123134564', '234234234', '', '', '', '', '', '', 0, 'personal', 'inactivo'),
(26, '22337', 'ps5 hijo hola', 'pse ape', '1995-01-03', 'masculino', '', 47, 'sector miami', 'direccion miami', '234234', '234234', '2', '2', '1', '1', '1', NULL, 2, 'familiar', 'inactivo'),
(27, '7845', 'chapote', 'xbox ape ', '1995-01-01', 'masculino', '', 46, 'sector wow', 'direccion wow', '234234', '23423423', '3', '3', '2', '2', '2', '', 0, 'familiar', ''),
(28, '12452', 'ps5 hijo', 'pse ape', '1980-01-03', 'masculino', '', 47, 'sector miami', 'direccion miami', '234234', '234234', '2', '2', '1', '1', '1', NULL, 2, 'familiar', 'inactivo'),
(35, '2255', 'react', 'react ape', '1991-07-07', 'masculino', 'soltero', 46, '', '', '232423', '423423423', '', '', '', '', '', '', 0, 'personal', 'inactivo'),
(36, '2277', 'angular', 'angular ape', '1997-02-02', 'masculino', 'soltero', NULL, '', '', '325235235', '235325235', '', '', '', '', '', '', 0, 'personal', 'inactivo'),
(37, '44557', 'hijo de react', 'react ape', '2005-01-01', 'masculino', '', 46, 'secto', 'direccion', '43534534', '534534534', '7', '7', '1', '1', '1', NULL, 2, 'familiar', 'inactivo'),
(38, '1122', 'hijo de react', 'react ape', '2005-01-01', 'masculino', '', 46, 'secto', 'direccion', '43534534', '534534534', '7', '7', '1', '1', '1', NULL, 2, 'familiar', 'inactivo'),
(43, '234324', 'react js', 'react js ape', '1995-03-02', 'masculino', 'casado', 46, 'werwerwerwerwerwe', 'rewrwerwerewrewr', '423423423', '4234234234234', '3', '3', '3', '3', '3', '', 2, 'personal', 'inactivo'),
(44, '7847', 'werr', 'wer', '1955-01-01', 'masculino', 'soltero', 32, '', '', '23423423', '423423423', '', '', '', '', '', '', 2, 'personal', 'inactivo'),
(59, '7457', 'angular', 'angular p', '1995-02-03', 'masculino', 'soltero', 46, '', '', '4234234234', '23423423423', '', '', '', '', '', NULL, 2, 'personal', 'inactivo'),
(60, '2323', 'hijo de react', 'react ape', '2005-01-01', 'masculino', '', 46, 'secto', 'direccion', '43534534', '534534534', '7', '7', '1', '1', '1', NULL, 2, 'familiar', 'inactivo'),
(62, '74577', 'ee', 'eer', '1995-01-01', 'masculino', '', 46, '', '', '234243234234', '23423423423', '', '', '', '', '', NULL, 2, 'familiar', 'inactivo');

--
-- Triggers `persona`
--
DELIMITER $$
CREATE TRIGGER `PersonaInsert` AFTER INSERT ON `persona` FOR EACH ROW BEGIN 
   DECLARE trabajador_cedula VARCHAR(55);

   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.CodigoPersona;

INSERT INTO bitacora(CodigoPersona, idUsuario,ActividadRealizada,InformacionActual)VALUES(trabajador_cedula,NEW.idusuario,'Se Registro nueva Persona',concat('Datos de la Persona: ' ,NEW.CedulaPersona,' ',NEW.Nombres,' ',NEW.Apellidos));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PersonaUpdate` AFTER UPDATE ON `persona` FOR EACH ROW BEGIN 
   DECLARE trabajador_cedula VARCHAR(55);

   SELECT CedulaPersona INTO trabajador_cedula FROM persona WHERE CodigoPersona = NEW.CodigoPersona;

INSERT INTO bitacora(CodigoPersona,	idUsuario,ActividadRealizada,InformacionActual)VALUES(trabajador_cedula,NEW.idusuario,'Se Modifico una Persona',concat('Datos de la Persona: ' ,NEW.CedulaPersona,' ',NEW.Nombres,' ',NEW.Apellidos));


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tipocargos`
--

CREATE TABLE `tipocargos` (
  `CodigoTipoCargo` int(10) NOT NULL,
  `NombreTipoCargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tipocargos`
--

INSERT INTO `tipocargos` (`CodigoTipoCargo`, `NombreTipoCargo`) VALUES
(1, 'Empleado'),
(10, 'Alto Nivel'),
(11, 'Obrero');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `CodigoUsuario` int(10) NOT NULL,
  `CodigoPersona` int(10) NOT NULL,
  `NombreUsuario` varchar(20) NOT NULL,
  `ConstraseñaUsuario` varchar(20) NOT NULL,
  `RolUsuario` varchar(20) NOT NULL,
  `EstatusUsuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`CodigoUsuario`, `CodigoPersona`, `NombreUsuario`, `ConstraseñaUsuario`, `RolUsuario`, `EstatusUsuario`) VALUES
(1, 1, 'APOLOENDYS', 'OROGZ.123*', 'administrador', 'usuarioactivo'),
(2, 9, 'sql', '1234', 'administrador', 'usuarioactivo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`ArchivoRegistro`),
  ADD KEY `CodigoDocumento` (`CodigoDocumento`),
  ADD KEY `idperarchivos` (`idperarchivos`);

--
-- Indexes for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`CodigoBitacora`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`CodigoCargo`),
  ADD UNIQUE KEY `NombreCargo` (`NombreCargo`),
  ADD KEY `TipoCargo` (`TipoCargo`);

--
-- Indexes for table `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`CodigoDocumento`),
  ADD UNIQUE KEY `NombreDocumento` (`NombreDocumento`);

--
-- Indexes for table `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`CodigoRegistroFamiliar`),
  ADD KEY `Trabajador` (`Trabajador`,`Familiar`),
  ADD KEY `familiar_ibfk_2` (`Familiar`);

--
-- Indexes for table `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`CodigoHistorico`),
  ADD KEY `Trabajador` (`Cargo`,`InstitucionHistorico`),
  ADD KEY `InstitucionHistorico` (`InstitucionHistorico`),
  ADD KEY `trabajador_2` (`personal`);

--
-- Indexes for table `instituciones`
--
ALTER TABLE `instituciones`
  ADD PRIMARY KEY (`CodigoInstituciones`),
  ADD UNIQUE KEY `NombreInstitucion` (`NombreInstitucion`),
  ADD KEY `ParroquiaInstitucion` (`ParroquiaInstitucion`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`CodigoMunicipio`),
  ADD UNIQUE KEY `CodigoEstado` (`NombreMunicipio`),
  ADD KEY `NombreMunicipio` (`NombreMunicipio`);

--
-- Indexes for table `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`CodigoParroquia`),
  ADD UNIQUE KEY `NombreParroquia` (`NombreParroquia`),
  ADD KEY `MunicipioParroquia` (`MunicipioParroquia`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`CodigoPersona`),
  ADD UNIQUE KEY `CedulaPersona` (`CedulaPersona`),
  ADD KEY `ParroquiaPersona` (`ParroquiaPersona`);

--
-- Indexes for table `tipocargos`
--
ALTER TABLE `tipocargos`
  ADD PRIMARY KEY (`CodigoTipoCargo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CodigoUsuario`),
  ADD UNIQUE KEY `IdPersona` (`CodigoPersona`,`NombreUsuario`),
  ADD KEY `IdPersona_2` (`CodigoPersona`),
  ADD KEY `codigopersona` (`CodigoPersona`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archivos`
--
ALTER TABLE `archivos`
  MODIFY `ArchivoRegistro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `CodigoBitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `CodigoCargo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `documento`
--
ALTER TABLE `documento`
  MODIFY `CodigoDocumento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1314;

--
-- AUTO_INCREMENT for table `familiar`
--
ALTER TABLE `familiar`
  MODIFY `CodigoRegistroFamiliar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `historico`
--
ALTER TABLE `historico`
  MODIFY `CodigoHistorico` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instituciones`
--
ALTER TABLE `instituciones`
  MODIFY `CodigoInstituciones` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `CodigoMunicipio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `CodigoParroquia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `CodigoPersona` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tipocargos`
--
ALTER TABLE `tipocargos`
  MODIFY `CodigoTipoCargo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archivos`
--
ALTER TABLE `archivos`
  ADD CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`CodigoDocumento`) REFERENCES `documento` (`CodigoDocumento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `archivos_ibfk_2` FOREIGN KEY (`idperarchivos`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`CodigoUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`TipoCargo`) REFERENCES `tipocargos` (`CodigoTipoCargo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `familiar`
--
ALTER TABLE `familiar`
  ADD CONSTRAINT `familiar_ibfk_1` FOREIGN KEY (`Trabajador`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `familiar_ibfk_2` FOREIGN KEY (`Familiar`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`Cargo`) REFERENCES `cargos` (`CodigoCargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`InstitucionHistorico`) REFERENCES `instituciones` (`CodigoInstituciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `historico_ibfk_4` FOREIGN KEY (`personal`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instituciones`
--
ALTER TABLE `instituciones`
  ADD CONSTRAINT `instituciones_ibfk_1` FOREIGN KEY (`ParroquiaInstitucion`) REFERENCES `parroquia` (`CodigoParroquia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parroquia`
--
ALTER TABLE `parroquia`
  ADD CONSTRAINT `parroquia_ibfk_1` FOREIGN KEY (`MunicipioParroquia`) REFERENCES `municipio` (`CodigoMunicipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ParroquiaPersona`) REFERENCES `parroquia` (`CodigoParroquia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`CodigoPersona`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`CodigoPersona`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

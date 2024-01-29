-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsirce`
--

-- --------------------------------------------------------

--
-- Table structure for table `documento`
--

CREATE TABLE `documento` (
  `coddocumento` int(11) NOT NULL,
  `CodigoPersona` int(11) NOT NULL,
  `Nombredocumento` text NOT NULL,
  `fotodocumento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `documento`
--

INSERT INTO `documento` (`coddocumento`, `CodigoPersona`, `Nombredocumento`, `fotodocumento`) VALUES
(48, 1, 'cedula', 'jaja.jpg'),
(49, 1, 'curriculum', '4444.JPG'),
(50, 2, 'cedula', '4444.JPG'),
(51, 2, 'curriculum', 'jaja.jpg'),
(52, 2, 'partidanacimiento', '4444.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `familia`
--

CREATE TABLE `familia` (
  `codfamilia` int(11) NOT NULL,
  `CodigoPersona` int(11) NOT NULL,
  `checkcedufami` varchar(5) NOT NULL,
  `parentesco` varchar(30) NOT NULL,
  `cedulafam` int(15) NOT NULL,
  `nombrefam` varchar(30) NOT NULL,
  `apellidofam` varchar(30) NOT NULL,
  `fechanacimientofam` date NOT NULL,
  `sexofam` varchar(15) NOT NULL,
  `estadocivilfam` varchar(30) NOT NULL,
  `telefonoprincipalfam` varchar(30) NOT NULL,
  `telefonohabitacionfam` varchar(30) NOT NULL,
  `direccionfam` text NOT NULL,
  `pesofam` double NOT NULL,
  `estaturafam` double NOT NULL,
  `tallacamisafam` varchar(15) NOT NULL,
  `tallapantalonfam` varchar(15) NOT NULL,
  `tallacalzadofam` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `familia`
--

INSERT INTO `familia` (`codfamilia`, `CodigoPersona`, `checkcedufami`, `parentesco`, `cedulafam`, `nombrefam`, `apellidofam`, `fechanacimientofam`, `sexofam`, `estadocivilfam`, `telefonoprincipalfam`, `telefonohabitacionfam`, `direccionfam`, `pesofam`, `estaturafam`, `tallacamisafam`, `tallapantalonfam`, `tallacalzadofam`) VALUES
(1, 2, '', 'hijo', 1114447, 'xboxhijonon', 'xboxhijoape', '2008-01-01', 'm', 'soltero', '1321334', '3213214', 'yiwyiuyrweyriuyiuweyrieyui', 7, 7, '7', '7', '7');

-- --------------------------------------------------------

--
-- Table structure for table `historico`
--

CREATE TABLE `historico` (
  `codhistorico` int(11) NOT NULL,
  `CodigoPersona` int(15) NOT NULL,
  `estatustrabajador` varchar(30) NOT NULL,
  `institucionhistorico` varchar(30) NOT NULL,
  `cargohistorico` varchar(30) NOT NULL,
  `tipotrabajador` varchar(38) NOT NULL,
  `tipopersonal` varchar(38) NOT NULL,
  `fechainiciohistorico` date NOT NULL,
  `fechaculminacionhistotico` date NOT NULL,
  `observacionhistorico` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `historico`
--

INSERT INTO `historico` (`codhistorico`, `CodigoPersona`, `estatustrabajador`, `institucionhistorico`, `cargohistorico`, `tipotrabajador`, `tipopersonal`, `fechainiciohistorico`, `fechaculminacionhistotico`, `observacionhistorico`) VALUES
(14, 2, 'Activo', 'institucion1', 'BACHILLER I', '', '', '2000-01-01', '0000-00-00', 'rt'),
(15, 2, 'Inactivo', 'institucion2', 'BACHILLER I', '', '', '2000-01-01', '0000-00-00', 'rt');

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `CodigoPersona` int(11) NOT NULL,
  `Cedulapersona` int(15) NOT NULL,
  `estadocivil` varchar(30) NOT NULL,
  `Fotopersona` text NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Fechanacimiento` date NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `Telefonoprincipal` varchar(30) NOT NULL,
  `Telefonohabitacion` varchar(30) NOT NULL,
  `sector` text NOT NULL,
  `direccion` text NOT NULL,
  `peso` double NOT NULL,
  `estatura` double NOT NULL,
  `tallacamisa` varchar(15) NOT NULL,
  `tallapantalon` varchar(15) NOT NULL,
  `tallacalzado` varchar(15) NOT NULL,
  `nombremunicipio` varchar(30) NOT NULL,
  `nombreparroquia` varchar(30) NOT NULL,
  `nombresector` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`CodigoPersona`, `Cedulapersona`, `estadocivil`, `Fotopersona`, `Nombres`, `Apellidos`, `Fechanacimiento`, `sexo`, `Telefonoprincipal`, `Telefonohabitacion`, `sector`, `direccion`, `peso`, `estatura`, `tallacamisa`, `tallapantalon`, `tallacalzado`, `nombremunicipio`, `nombreparroquia`, `nombresector`) VALUES
(1, 23433965, 'soltero', 'jaja.jpg', 'PILERO', 'pilero pro', '1995-07-29', 'MASCULINO', '1231234', '4321321', '', '', 0, 0, '', '', '', '', '', ''),
(2, 4442227, 'soltero', 'jaja.jpg', 'xbox', 'game', '1995-01-01', 'MASCULINO', '1231234', '4321321', '', '', 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `codigousuario` int(11) NOT NULL,
  `cedulapersona` int(30) NOT NULL,
  `nombreusuario` varchar(60) NOT NULL,
  `passwordusuario` varchar(60) NOT NULL,
  `rolusuario` varchar(30) NOT NULL,
  `estatususuario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`codigousuario`, `cedulapersona`, `nombreusuario`, `passwordusuario`, `rolusuario`, `estatususuario`) VALUES
(20, 8, 'q', '$2y$10$1Nks1p.KOm.7lJYRP3ziReq7WIpJ.J9yU86QZ/FDUYAlneXuJgJvi', 'administrador', 'usuariodesactivado'),
(21, 77, 'E', '1234', 'administrador', 'usuarioactivo'),
(22, 55, 'ana', '', 'analista', 'usuarioactivo'),
(23, 7788, 'juan', '$2y$10$3DqTNyEjdzkG3UvAGYAec.M2t/OrrgON.RFiKlcPq3.dxMhWEovpW', 'administrador', 'usuarioactivo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`coddocumento`),
  ADD KEY `CodigoPersona` (`CodigoPersona`);

--
-- Indexes for table `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`codfamilia`),
  ADD KEY `Cedulapersona` (`CodigoPersona`);

--
-- Indexes for table `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`codhistorico`),
  ADD KEY `Cedulapersona` (`CodigoPersona`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`CodigoPersona`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codigousuario`),
  ADD UNIQUE KEY `nombreusuario` (`nombreusuario`),
  ADD UNIQUE KEY `cedulapersona` (`cedulapersona`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documento`
--
ALTER TABLE `documento`
  MODIFY `coddocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `familia`
--
ALTER TABLE `familia`
  MODIFY `codfamilia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `historico`
--
ALTER TABLE `historico`
  MODIFY `codhistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `CodigoPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `codigousuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`CodigoPersona`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `familia`
--
ALTER TABLE `familia`
  ADD CONSTRAINT `familia_ibfk_1` FOREIGN KEY (`CodigoPersona`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`CodigoPersona`) REFERENCES `persona` (`CodigoPersona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

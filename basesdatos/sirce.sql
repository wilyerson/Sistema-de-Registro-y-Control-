-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2023 a las 19:10:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sirce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `codigopersona` int(9) NOT NULL,
  `fotopersona` text NOT NULL,
  `cedulapersona` varchar(20) NOT NULL,
  `estadocivilpersona` varchar(20) NOT NULL,
  `nombrespersona` varchar(30) NOT NULL,
  `apellidospersona` varchar(30) NOT NULL,
  `fechanacimientopersona` varchar(30) NOT NULL,
  `sexopersona` varchar(30) NOT NULL,
  `numerotelefonoprincipalpersona` varchar(30) NOT NULL,
  `numerotelefonicohabitacionpersona` varchar(30) NOT NULL,
  `direccionpersona` varchar(30) NOT NULL,
  `pesopersona` varchar(30) NOT NULL,
  `estaturapersona` varchar(30) NOT NULL,
  `tallacamisapersona` varchar(30) NOT NULL,
  `tallapantalonpersona` varchar(30) NOT NULL,
  `tallacalzadopersona` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`codigopersona`, `fotopersona`, `cedulapersona`, `estadocivilpersona`, `nombrespersona`, `apellidospersona`, `fechanacimientopersona`, `sexopersona`, `numerotelefonoprincipalpersona`, `numerotelefonicohabitacionpersona`, `direccionpersona`, `pesopersona`, `estaturapersona`, `tallacamisapersona`, `tallapantalonpersona`, `tallacalzadopersona`) VALUES
(1, '', '4578', '', '0', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '45784', '', '0', '', '', '', '', '', '', '', '', '', '', ''),
(3, '', '457844', '', 'yiyiyyiyyiyiiy', '', '', '', '', '', '', '', '', '', '', ''),
(4, '', '8888888', '', 'endys tu hermana esta buena', '', '', '', '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`codigopersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `codigopersona` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

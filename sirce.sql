-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2023 a las 19:21:56
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
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `codigomunicipio` int(11) NOT NULL,
  `nombremunicipio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`codigomunicipio`, `nombremunicipio`) VALUES
(1, 'municipioopt'),
(2, 'municipioopt'),
(3, 'municipioopt'),
(4, 'municipioopt'),
(5, 'municipioopt'),
(6, 'municipioopt2'),
(7, 'municipioopt2'),
(8, 'municipioopt2'),
(9, 'municipioopt2'),
(10, 'municipioopt'),
(11, 'municipioopt'),
(12, 'municipioopt'),
(13, 'municipioopt'),
(14, 'municipioopt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE `parroquia` (
  `codigoparroquia` int(11) NOT NULL,
  `nombreparroquia` varchar(30) NOT NULL,
  `municipioparroquia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`codigoparroquia`, `nombreparroquia`, `municipioparroquia`) VALUES
(1, 'parroquiaopt', ''),
(2, 'parroquiaopt', ''),
(3, '', '');

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
(5, 'Screenshot8888.jpg', '1234', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Screenshot8888 - Copy.jpg', '77', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'Screenshot8888 - Copy.jpg', '7755', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'copy.jpg', '22', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'copy.jpg', '1212', 'casado', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 'copy.jpg', '77', 'casado', 'ee', 'ee', '2023-01-07', '', '', '', '', '', '', '', '', ''),
(11, 'copy.jpg', '777777', 'soltero', 'er', 'erer', '2022-02-07', 'masculino', '454545', '454545', '', '34', '6', '5', '7', '7'),
(12, 'copy.jpg', '77777', 'soltero', 'tyty', 'tytytrr', '2023-02-01', 'masculino', '78787', '78787878', '', '5', '56', '7', '7', '7'),
(13, 'copy.jpg', '777', 'casado', 'trty', 'rtyrty', '2023-02-05', 'masculino', '78', '78', 'direcion', '4', '4', '4', '7', '7'),
(14, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '44', 'casado', 'kk', 'kk', '2023-02-07', 'masculino', '88', '88', 'jeje', '7', '7', '7', '7', '7'),
(15, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '44', 'casado', 'tt', 'tt', '2023-01-11', 'masculino', '44444', '44444', 'tyty', '44', '55', '55', '55', '55'),
(16, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '44', 'casado', 'hhh', 'hh', '2022-12-14', 'masculino', '54', '54', 'tt', '5', '5', '4', '4', '7'),
(17, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '45', 'casado', 'gg', 'gg', '2023-02-04', 'masculino', '5454545', '4545454545', 'tgtg', '4', '4', '5', '6', '4'),
(18, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(19, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(20, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(21, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(22, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(23, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(24, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(25, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(26, 'alessio-soggetti-44oFcp01cVU-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', ''),
(27, 'andre-benz-sLokLIacItI-unsplash.jpg', '', 'soltero', '', '', '', 'masculino', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `codigosector` int(11) NOT NULL,
  `nombresector` varchar(30) NOT NULL,
  `parroquiasector` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`codigosector`, `nombresector`, `parroquiasector`) VALUES
(1, 'sectoropt', ''),
(2, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`codigomunicipio`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`codigoparroquia`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`codigopersona`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`codigosector`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `codigomunicipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `codigoparroquia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `codigopersona` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `codigosector` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

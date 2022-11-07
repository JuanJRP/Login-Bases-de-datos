-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2022 a las 19:02:08
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos_mysql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblenvio`
--

CREATE TABLE `tblenvio` (
  `strCiudad` varchar(50) DEFAULT NULL,
  `intCodigo` int(11) DEFAULT NULL,
  `dateFecha` date DEFAULT NULL,
  `intFactura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblenvio`
--

INSERT INTO `tblenvio` (`strCiudad`, `intCodigo`, `dateFecha`, `intFactura`) VALUES
('Itagui', 2, '0000-00-00', 13),
('Caldas', 15, '0000-00-00', 50),
('Envigado', 30, '0000-00-00', 12),
('Bello', 79, '0000-00-00', 29),
('Copacabana', 782, '0000-00-00', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproducto`
--

CREATE TABLE `tblproducto` (
  `strProducto` varchar(50) DEFAULT NULL,
  `intCodigo` int(11) NOT NULL,
  `intPrecio` int(11) DEFAULT NULL,
  `intCantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproducto`
--

INSERT INTO `tblproducto` (`strProducto`, `intCodigo`, `intPrecio`, `intCantidad`) VALUES
('Tornillo', 2, 200, 300),
('Martillo', 15, 20000, 15),
('Perno', 30, 300, 400),
('Metro', 79, 50000, 30),
('Sierra', 782, 100000, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblenvio`
--
ALTER TABLE `tblenvio`
  ADD KEY `intCodigo` (`intCodigo`);

--
-- Indices de la tabla `tblproducto`
--
ALTER TABLE `tblproducto`
  ADD PRIMARY KEY (`intCodigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblenvio`
--
ALTER TABLE `tblenvio`
  ADD CONSTRAINT `tblenvio_ibfk_1` FOREIGN KEY (`intCodigo`) REFERENCES `tblproducto` (`intCodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

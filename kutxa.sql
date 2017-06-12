-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2017 a las 09:57:41
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kutxa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bezero`
--

CREATE TABLE `bezero` (
  `id` int(11) NOT NULL,
  `izena` varchar(32) NOT NULL,
  `abizena` varchar(32) NOT NULL,
  `herria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herria`
--

CREATE TABLE `herria` (
  `id` int(11) NOT NULL,
  `izena` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `herria`
--

INSERT INTO `herria` (`id`, `izena`) VALUES
(1, 'durango'),
(2, 'zornotza'),
(3, 'gernika'),
(4, 'bermeo'),
(5, 'lemoa'),
(6, 'bilbao'),
(7, 'galdakano'),
(8, 'berriz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kontu`
--

CREATE TABLE `kontu` (
  `id` int(11) NOT NULL,
  `iban` varchar(16) NOT NULL,
  `id_bezero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bezero`
--
ALTER TABLE `bezero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `herria`
--
ALTER TABLE `herria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kontu`
--
ALTER TABLE `kontu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `herria`
--
ALTER TABLE `herria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `kontu`
--
ALTER TABLE `kontu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

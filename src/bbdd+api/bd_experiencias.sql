-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-03-2021 a las 23:35:53
-- Versión del servidor: 10.1.47-MariaDB-0+deb9u1
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aperezh_viajes`
--
CREATE DATABASE IF NOT EXISTS `aperezh_viajes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aperezh_viajes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATEGORIA`
--

CREATE TABLE `CATEGORIA` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `CATEGORIA`
--

INSERT INTO `CATEGORIA` (`id`, `nombre`) VALUES
(1, 'Aventura'),
(2, 'Gastronomia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EXPERIENCIA`
--

CREATE TABLE `EXPERIENCIA` (
  `id` int(11) NOT NULL,
  `titulo` varchar(20) DEFAULT NULL,
  `descripcion` varchar(300) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `urlImagen` varchar(100) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `EXPERIENCIA`
--

INSERT INTO `EXPERIENCIA` (`id`, `titulo`, `descripcion`, `likes`, `dislikes`, `urlImagen`, `idCategoria`) VALUES
(1, 'Ruta en BTT', 'Ruta en Btt por Collserola', 43, 5, 'bike.png', 1),
(2, 'Ruta gastronomica', 'Ruta por los mejores restaurantes de BCN', 108, 28, 'food.png', 2),
(14, 'Paseo por Barcelona', 'Paseo por los mejors sitios escondidos de Barcelona', 6, 3, 'cinco.png', 1),
(16, 'Barcelona en globus', 'Viatge en globus per davant de les platges de Barcelona, i si hi ha sort acabarem fent una remullada al mar!!!!', 0, 0, 'globo.jpg', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CATEGORIA`
--
ALTER TABLE `CATEGORIA`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `EXPERIENCIA`
--
ALTER TABLE `EXPERIENCIA`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CATEGORIA`
--
ALTER TABLE `CATEGORIA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `EXPERIENCIA`
--
ALTER TABLE `EXPERIENCIA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `EXPERIENCIA`
--
ALTER TABLE `EXPERIENCIA`
  ADD CONSTRAINT `EXPERIENCIA_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `CATEGORIA` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

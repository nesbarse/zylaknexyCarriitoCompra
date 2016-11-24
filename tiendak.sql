-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-11-2016 a las 10:15:06
-- Versión del servidor: 5.6.32
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendak`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL COMMENT 'id_alumno',
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre_alumno',
  `apellido1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'apellido1_alumno',
  `apellido2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'apellido2_alumno',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'id_usuario_alumno'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tabla_de_alumno';

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellido1`, `apellido2`, `id_usuario`) VALUES
(1, 'pepe', 'marin', 'terrades', 3),
(2, 'paco', 'garcia', 'tenorio', 5),
(3, 'elena', 'roig', 'pardo', 13),
(4, 'maria', 'ferreres', 'tank', 15),
(5, 'paco', 'lopez', 'garcia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_factura`, `id_producto`, `id_usuario`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id` int(6) NOT NULL COMMENT 'Num.',
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titulo',
  `contenido` longtext COLLATE utf8_unicode_ci COMMENT 'Contenido',
  `alta` date DEFAULT NULL COMMENT 'Alta',
  `cambio` date DEFAULT NULL COMMENT 'Cambio',
  `hits` int(10) DEFAULT NULL COMMENT 'Hits',
  `id_usuario` int(6) DEFAULT NULL COMMENT 'Usuario',
  `etiquetas` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Etiquetas',
  `publicado` tinyint(1) DEFAULT NULL COMMENT 'Publicado',
  `portada` tinyint(1) DEFAULT NULL COMMENT 'Portada',
  `destacado` tinyint(1) DEFAULT NULL COMMENT 'Destacado',
  `id_tipodocumento` int(6) DEFAULT NULL COMMENT 'Tipo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id`, `titulo`, `contenido`, `alta`, `cambio`, `hits`, `id_usuario`, `etiquetas`, `publicado`, `portada`, `destacado`, `id_tipodocumento`) VALUES
(1, 'drdrdrtttwaaaa', '%3D%20Entrega%20de%20premios%20%3DsffsdfIntroducci%C3%B3n%20*%20ksjdlk%20*%20klk%C3%B1%20*%20k%C3%B1lk%C3%B1l//gdfg//dfgdfwdfgdfdfgdfgdfgdfgdfgdfgggggggggggggg%20dgdfgdfgdg%20dfgdfgdfgdfgddfgdgdfdd', '2068-04-01', '2067-12-07', 1, 0, 'das1a', 1, 1, 1, 0),
(2, 'doc%20de%20rafa1aaa', '%3DMi%20documento%2001%3D%0D%0A%0D%0A%20...', '2014-09-21', '2014-09-21', 411, 4, 'pepe', 1, 1, 0, 2),
(3, 'wwww1111', 'ggtttqqqd%20asdasdas%20das', '2014-09-28', '2014-09-28', 22, 5, 'pepe', 1, 1, 0, 3),
(4, 'sss', 'www', '2014-09-11', '2014-09-11', 0, 3, 'pepe', 1, 1, 0, 2),
(5, 'DFGDFG', 'HDFHDF', '2014-09-16', '2014-09-16', 1, 2, 'pepe', 1, 1, 0, 5),
(6, 'Mi doc', '[http://github.com|Github] \r\nhola =miau= [http://intel.com|Intel] \r\n hola ====jujujuj==== [http://google.es|Google]\r\n\r\n\r\n=rafa=\r\n\r\nHolaaaaaa\r\n\r\n==segundo titulo==\r\n\r\n<table class="table">\r\n<th><td>hola</td></th>\r\n</table>', '2013-11-19', NULL, 6, 5, 'rafa', NULL, NULL, NULL, NULL),
(7, 'doc de rafa', '=Mi documento 01=\r\n\r\n[http://materialesdaw-raznar.rhcloud.com|metriales daw] de rafa', '2013-11-20', NULL, 4, 4, 'rafa', NULL, NULL, NULL, NULL),
(8, 'swxxa%20sss%20s%20s%20', '', '2014-09-16', '2014-09-16', 0, 5, 'pepe', 1, 1, 0, 0),
(9, '', 'ssdwdwdss%20sssssss', '2014-09-16', '2014-09-16', 0, 3, 'rafa', 1, 1, 0, 0),
(10, 'DFGDFG', 'HDFHDF', '2013-11-20', NULL, 1, 1, 'rafa', NULL, NULL, NULL, NULL),
(19, 'assaaaaa', 'wedaaaa%20aaaaaaaaa%20cccc0000', '2014-10-15', '2014-10-15', 161, 4, 'aqw', 1, 1, 0, 9),
(22, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(23, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(24, 'd', 'dsds', '2014-09-21', '2014-09-21', 11, 1, 'ana', 0, 0, 0, 4),
(25, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(26, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(27, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(28, 'c', 'sd', '2014-09-21', '2014-09-21', 2, 2, 'das', 1, 1, 1, 7),
(29, 'dgdfgdfgdf', 'gdf', '2014-09-21', '2014-09-21', 555, 1, 'rafa', 0, 0, 0, 2),
(35, 'das', 'asdasd%20asdasd', '2014-09-28', '2014-09-28', 111, 2, 'ddd', 1, 1, 1, 10),
(36, 'dasd', 'asdas%20', '2014-09-28', '2014-09-28', 22, 1, 'ddd', 0, 1, 0, 2),
(37, 'ads', 'asd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(38, 'fd', 'fsdfsd', '2014-09-28', '2014-09-28', 2, 1, 'das', 0, 0, 0, 3),
(39, 'fadf', 'sdf', '2014-09-28', '2014-09-28', 2222, 1, 'ana', 1, 1, 0, 3),
(41, 'fsd', 'sdf', '2014-09-28', '2014-09-28', 3, 1, 'ana', 0, 0, 0, 1),
(45, 'sdf', 'sdfaaaaaaaaaa', '2014-09-30', '2014-09-30', 3333, 1, 'fdsfsdf', 1, 1, 0, 1),
(46, 'hfghf', 'hf', '2014-10-19', '2014-10-19', 4, 1, 'hfg', 1, 1, 1, 6),
(47, 'hfgh', 'fhgh', '2014-10-24', '2014-10-24', 55, 1, '12%20rrr', 1, 1, 1, 2),
(48, 'gggggggg', 'hhhhhhhhhhh', '2014-10-25', '2014-10-25', 333, 2, 'gfdgdf%20rrrr', 1, 1, 1, 5),
(49, 'dfaaaaaaaaaaag', 'aaaaaaaaadfg', '2015-10-08', '2015-10-08', 1, 0, 'aaaaaaaaaaaaaaa', 0, 0, 1, 0),
(50, 'sfdf', 'sdfs', '2015-10-08', '2015-10-08', 1, 0, 'fsdfs', 0, 0, 0, 0),
(51, 'dfg', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'sdfsdfsfsdf', 0, 0, 0, 0),
(52, 'dasd', 'dasda', '2015-10-08', '2015-10-08', 1, 0, 'dasd', 0, 0, 0, 0),
(53, 'qqqqqqqqqqq', 'qqqqqqqqqqqqq', '2015-10-08', '2015-10-08', 1, 0, '', 1, 1, 1, 0),
(54, 'gdf', 'dfg', '2015-10-08', '2015-10-08', 1, 0, 'fsdf', 0, 0, 0, 0),
(55, 'qq%20qqqq%20qqqqqqqqqq%20qqqqq', 'ww%20wwwwwww%20wwwwwwwwww', '2015-10-08', '2015-10-08', 1, 0, 'wwwww%20wwww', 1, 1, 1, 0),
(56, 'bcv', 'cvb', '2015-10-08', '2015-10-08', 1, 0, 'vxc', 0, 0, 0, 0),
(57, 'das', 'asdasd', '2015-10-08', '2015-10-08', 1, 0, 'qqw', 1, 1, 1, 0),
(58, 'f', 'kjkj', '2015-10-08', '2015-10-08', 7, 0, '7yuty', 1, 0, 0, 0),
(59, 'fd%20fsdfsdf%20%20sdf%20s', '%20sdf%20sdfsd', '2015-10-20', '2015-10-08', 1, 0, '%20gdfgd%20f%20gdfg%20d', 0, 1, 0, 0),
(60, '12', 'www%20ccc', '2015-10-08', '2015-10-08', 1, 0, 'eded', 0, 0, 0, 0),
(61, 'wwwe', 'eeew', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(62, 'da', 'dasd', '2015-10-08', '2015-10-08', 1, 0, 'das', 0, 0, 0, 0),
(63, 'fgh', 'fgh', '2015-10-08', '2015-10-08', 1, 0, 'dfg', 0, 0, 0, 0),
(64, 'sad', 'asd', '2015-10-08', '2015-10-08', 1, 0, 'fsd', 0, 0, 0, 0),
(65, 'gdf', 'dgf', '2015-10-08', '2015-10-08', 1, 0, 'fds', 0, 0, 0, 0),
(66, 'gd', 'gd', '2015-10-08', '2015-10-08', 1, 0, 'dsf', 0, 0, 0, 0),
(67, 'sdf', 'fsd', '2015-10-08', '2015-10-08', 1, 0, 'sfd', 0, 0, 0, 0),
(68, 'das', 'ddddd', '2015-10-08', '2015-10-08', 1, 0, 'aaq', 1, 1, 1, 0),
(69, 'sdf', 'sdf', '2015-10-08', '2015-10-08', 1, 0, 'f', 0, 0, 0, 0),
(70, 'qqq', 'fff', '2015-10-09', '2015-10-09', 1, 0, 'fff', 0, 0, 1, 0),
(71, 'uuu', 'uuu', '2015-10-09', '2015-10-09', 2, 0, 'uu', 1, 0, 0, 0),
(72, 'kk', 'kkk', '2015-10-09', '2015-10-09', 1, 0, 'r', 0, 0, 0, 0),
(73, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(74, '11111111', '11111', '2015-10-10', '2015-10-10', 1, 0, '1', 1, 1, 1, 0),
(75, 'aaaa', 'aaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 0, 1, 0, 0),
(76, 'aaa', 'aaa', '2015-10-10', '2015-10-10', 1, 0, 'aaaaa', 0, 1, 0, 0),
(77, 'aaaaaa', 'aaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(78, 'aaaaaaaa', 'aaaaaaaaaaa', '2015-10-10', '2015-10-10', 1, 0, 'aaa', 1, 1, 1, 0),
(79, 'aa', 'aa', '2015-10-10', '2015-10-10', 1, 0, 'aa', 0, 1, 1, 0),
(80, 'h', 'h', '2015-10-11', '2015-10-11', 1, 0, 'a', 0, 1, 0, 0),
(81, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(82, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(83, 'a', 'aserrr', '2015-10-11', '2015-10-11', 1, 0, 'fsd', 0, 0, 1, 0),
(84, 'sss', 'ssss', '2015-10-08', '2015-10-11', 1, 0, 'ssss', 0, 0, 1, 0),
(85, 'qqqqqqqqqqq', 'rrr', '2015-10-11', '2015-10-11', 3, 0, 'r', 0, 0, 0, 0),
(86, 'r', 'r', '2015-10-11', '2015-10-11', 1, 0, 'r', 0, 0, 0, 0),
(87, 'r', 'r', '2015-10-11', '2015-10-11', 3, 0, 'r', 1, 0, 0, 0),
(89, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(90, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(91, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(92, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(93, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(94, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(95, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(96, 'a', 'a', '2015-12-17', '2015-12-17', 1, 1, '11', 0, 0, 0, 2),
(97, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(98, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(99, 'registro%20nuevo%20de%20rafa', 'contenido%20del%20registro%20nuevo%20de%20rafa%20para%20prueba%20de%20selenium', '2015-12-18', '2015-12-18', 1, 1, 'prueba', 1, 1, 1, 3),
(100, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(101, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(102, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(103, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(104, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(105, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(106, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(107, '', 'gfdgdfg', '2015-12-21', '2015-12-21', 0, 0, '', 0, 0, 0, 0),
(108, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 1, 1, 1, 3),
(109, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 0, 0, 0, 3),
(110, 'pruebarafa', 'pruebarafa', '2015-12-21', '2015-12-21', 1, 1, 'pruebarafa', 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `tipo`) VALUES
(1, 'Estoy contento'),
(2, 'Estoy feliz'),
(3, 'Estoy happy'),
(4, 'Estoy triste'),
(5, 'Estoy con fiebre'),
(6, 'Tengo fiebre'),
(7, 'En el gimnasio'),
(8, 'De quintos'),
(9, 'En el cine'),
(10, 'Estudiando'),
(11, 'En el trabajo'),
(12, 'Durmiendo'),
(13, 'En el baño...'),
(14, 'En el medico'),
(15, 'De fiesta'),
(16, 'Confuso'),
(17, 'Deprimido'),
(18, 'Fantastico'),
(19, 'OP'),
(20, 'rafa es el mejor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `fecha`) VALUES
(1, '2016-11-23'),
(2, '2016-11-15'),
(3, '2016-11-07'),
(4, '2016-11-05'),
(5, '2016-11-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `cantidad`) VALUES
(1, 'papino', 100),
(2, 'patata', 50),
(3, 'lechuga', 125),
(4, 'papaya', 23),
(5, 'fresa', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `id` int(6) NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `privado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`id`, `descripcion`, `privado`) VALUES
(1, 'oferta de trabajo', 1),
(2, 'currículum', 1),
(3, 'actividad', 1),
(4, 'experencia', 1),
(5, 'formación', 1),
(6, 'valía', 1),
(7, 'inscripción', 1),
(8, 'solicitud', 1),
(9, 'bolsa de trabajo', 1),
(10, 'idiomas', 1),
(11, 'wer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `descripcion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Descripción'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(6) NOT NULL COMMENT 'Identificador',
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre',
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Apellidos',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Correo electrónico',
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nombre de usuario',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Contraseña',
  `id_tipousuario` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `id_estado` int(11) DEFAULT NULL COMMENT 'Estado',
  `ciudad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ciudad',
  `firma` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Firma',
  `skin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Plantilla'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidos`, `email`, `login`, `password`, `id_tipousuario`, `id_estado`, `ciudad`, `firma`, `skin`) VALUES
(1, 'José', 'García Sanchez', NULL, 'pepe', 'pepe', 2, 1, 'Valencia', 'is my life and do what I want', 'main'),
(2, 'Juan', 'MArtínez Gómez', NULL, 'juan', 'juan', 3, 3, 'Madrid', 'http://criticalandia.com críticas de entretenimiento, listas, opiniones...', 'main'),
(3, 'Maria', 'Moreno Flores', NULL, 'maria', 'maria', 3, 6, 'Barcelona', 'If you love something, set it free. Unless it\'\'s a tiger.', 'main'),
(4, 'Antonia', 'Rodolfo Gómez', NULL, 'antonia', 'antonia', 3, 7, 'Sevilla', '"El único límite a nuestros logros de mañana está en nuestras dudas de hoy."', 'main'),
(5, 'Eduardo', 'Alonso López', NULL, 'edu', 'edu', 3, 13, 'Zaragoza', 'Plataforma: ORGULLLO CADISTA no.58', 'main'),
(6, 'José', 'Escriche Muñoz', NULL, 'jose', 'jose', 3, 19, 'Teruel', 'Ironía: Figura literaria mediante la cual se da a entender lo contrario de lo que se dice.', 'main'),
(7, NULL, NULL, NULL, 'silvia', 'silvia', 3, 6, 'Huesca', 'Paso de firmas', 'main'),
(8, NULL, NULL, NULL, 'pedro', 'pedro', 3, 8, 'Alicante', 'Camisetas y calzado www.pedidoshicks.com', 'main'),
(9, NULL, NULL, NULL, 'raquel', 'raquel', 3, 15, 'Castellón', 'PEÑA COLCHONERA Socio número 629', 'main'),
(10, NULL, NULL, NULL, 'daniel', 'daniel', 3, 12, 'Almería', '"Obsesionado es tan sólo la palabra que usan los perezosos para describir a los dedicados"', 'main'),
(11, NULL, NULL, NULL, 'rafael', 'rafael', 1, 17, 'A Coruña', 'Ista ye a mia tierra, a mia fabla', 'main'),
(12, NULL, NULL, NULL, 'juan', 'juan', 3, 14, 'Barcelona', 'No todos los catalanes somos independentistas', 'main'),
(13, NULL, NULL, NULL, 'elena', 'elena', 3, 19, 'Bilbao', 'Buenas tardes', 'main'),
(14, NULL, NULL, NULL, 'luis', 'luis', 3, 4, 'Lugo', 'Preparado para cualquier combate', 'main'),
(15, NULL, NULL, NULL, 'alba', 'alba', 3, 5, 'Cuenca', 'Si tienes un Ibiza o un Cordoba, este es tu club: www.clubseatcordoba.com', 'main'),
(16, NULL, NULL, NULL, 'amparo', 'amparo', 3, 7, 'Ciudad Real', 'No hay dos sin tres', 'main'),
(17, NULL, NULL, NULL, 'ambrosio', 'ambrosio', 3, 8, 'Guadalajara', 'Tesis+Antítesis=Síntesis. Problema+Acción = Solución.', 'main'),
(18, NULL, NULL, NULL, 'luisa', 'luisa', 3, 1, 'Huelva', 'Y yo me iré. y se quedará mi huerto con su verde árbol, y con su pozo blanco. Y yo me iré.. Y se quedarán los pájaros cantando', 'main'),
(19, NULL, NULL, NULL, 'leon', 'leon', 3, 3, 'Granada', 'La Infanta no sabía nada y punto.', 'main'),
(20, NULL, NULL, NULL, 'rosa', 'rosa', 3, 2, 'Cádiz', 'Viva España', 'main'),
(21, NULL, NULL, NULL, 'capcom', 'capcom', 3, 17, 'Jerez', 'La gente cree que soy una mala persona, pero no es cierto, yo tengo el corazón de un niño...en un frasco con formol encima de mi escritorio.', 'main'),
(22, NULL, NULL, NULL, 'teleco', 'teleco', 3, 18, 'Vallecas', 'Foreros de la Comunidad de Madrid Nº25', 'main'),
(23, NULL, NULL, NULL, 'mercadona', 'mercadona', 3, 13, 'Jaén', 'Y veréis el resurgir poderoso del guerrero, sin miedo a leyes ni a nostalgias.', 'main'),
(24, NULL, NULL, NULL, 'vistaprint', 'vistaprint', 3, 15, 'Valencia', 'Codeados.com Diseño y Desarrollo web, Imagen Corporativa, SEO, Marketing Digital', 'main'),
(25, NULL, NULL, NULL, 'google', 'google', 3, 16, 'California', 'Viva google +', 'main'),
(26, NULL, NULL, NULL, 'konami', 'konami', 3, 6, 'Tokio', 'Viva Castolo, Minanda y Ximelez', 'main'),
(27, NULL, NULL, NULL, 'orange', 'orange', 3, 7, 'París', 'Viva movistar', 'main'),
(28, NULL, NULL, NULL, 'samsung', 'samsung', 3, 8, 'Cuenca', 'Viva el iPhone 6', 'main'),
(29, NULL, NULL, NULL, 'gigabyte', 'gigabyte', 3, 10, 'Oviedo', 'Viva gigabyte', 'main'),
(30, NULL, NULL, NULL, 'microsoft', 'microsoft', 3, 10, 'Albacete', 'La xbox ONE es la MEJOR CONSOLA', 'main');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_alumno', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Num.', AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'Identificador', AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2023 a las 20:37:40
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
-- Base de datos: `shadow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(10) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `TELEFONO` varchar(11) NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `PAIS` varchar(20) NOT NULL,
  `CIUDAD` varchar(50) NOT NULL,
  `POSTAL` varchar(100) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID`, `DNI`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `CORREO`, `PAIS`, `CIUDAD`, `POSTAL`, `DIRECCION`) VALUES
(2, '123456789', 'Juan', 'Villar', 'asdf', '', 'Bolivia', 'asdfg', 'sfgad', 'sdfga'),
(3, '456789123', 'asdg', 'asfh', 'asf', 'asdfh', 'Bolivia', 'asrrh', 'adfh', 'adfh'),
(4, '123789456', 'Martina', 'asfdg', 'asg', 'asfg', 'Bolivia', 'asdfg', 'asdfg', 'asf'),
(5, '789456123', 'asrg', 'asdfh', 'asfh', 'asdfh', 'Paraguay', 'afsh', 'adfh', 'afha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `ID` int(10) NOT NULL,
  `COD_PRODUCTO` varchar(20) NOT NULL,
  `CANTIDAD` int(10) NOT NULL,
  `PRECIO` decimal(10,2) NOT NULL,
  `ID_VENTA` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`ID`, `COD_PRODUCTO`, `CANTIDAD`, `PRECIO`, `ID_VENTA`) VALUES
(1, '486789123', 15, '950.00', 1),
(2, '645789123', 8, '1200.00', 1),
(3, '7945623', 2, '600.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(10) NOT NULL,
  `COD_PRODUCTO` varchar(20) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `MARCA` varchar(50) NOT NULL,
  `CATEGORIA` varchar(50) NOT NULL,
  `FAMILIA` varchar(50) NOT NULL,
  `AÑO` varchar(4) NOT NULL,
  `PRECIO` decimal(10,2) NOT NULL,
  `STOCK` int(10) NOT NULL,
  `PROVEEDOR` varchar(50) NOT NULL,
  `DESCRIPCION` text NOT NULL,
  `FECHA` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `COD_PRODUCTO`, `NOMBRE`, `MARCA`, `CATEGORIA`, `FAMILIA`, `AÑO`, `PRECIO`, `STOCK`, `PROVEEDOR`, `DESCRIPCION`, `FECHA`) VALUES
(1, '486789123', 'coreIcinco', 'INTEL', 'Informatica', 'CPU', '2021', '950.00', 937, 'Impacto', 'hokla\nquet t\nta l c\n\nciomo \nestas', '2022-11-19 17:14:35'),
(2, '123456', 'teclado', 'asdf', 'asg', 'asdhg', '1223', '200.00', 937, 'Impacto', 'asdgasdg', '2022-11-19 17:17:07'),
(3, '7945623', 'Monitor', 'asdgasd', 'gasd', 'asg', '1256', '600.00', 958, 'Impacto', 'asdg\nasfd\na\nsdg\nas\ndg\nasd', '2022-11-19 17:17:32'),
(4, '16548674', 'core i5', 'Intel', 'informatica', 'procesador', '2018', '500.00', 10, 'Farnell  ', 'hola', '2022-11-22 11:39:45'),
(5, '645789123', 'Rayzen 5 5600x', 'Rayzen', 'Informatica', 'Procesador', '2021', '1200.00', 22, 'Farnell  ', '6 nucleos\n12 hilos\nfreuencia 4.2g GHZ\nram max: 128gb\npci 4.0\n', '2022-11-22 11:42:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID` int(11) NOT NULL,
  `RUC` int(20) NOT NULL,
  `EMPRESA` varchar(50) NOT NULL,
  `URL` varchar(30) NOT NULL,
  `CONTACTO` varchar(30) NOT NULL,
  `TELEFONO1` varchar(12) NOT NULL,
  `TELEFONO2` varchar(12) NOT NULL,
  `CORREO` varchar(30) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL,
  `PAIS` varchar(15) NOT NULL,
  `FECHA` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID`, `RUC`, `EMPRESA`, `URL`, `CONTACTO`, `TELEFONO1`, `TELEFONO2`, `CORREO`, `DIRECCION`, `PAIS`, `FECHA`) VALUES
(2, 978456123, 'Impacto', 'https://www.impacto.com.pe/', 'Edgar Ramirez', '975137459', '945631878', 'RamierezED77@gmail.com', 'Surco / Lima', 'Perú', '2022-11-19 17:12:05'),
(3, 2060611, 'Farnell  ', 'https://uk.farnell.com/', 'servicio al cliente', '935881456', '935881456', 'tecnico@farnell.com ', 'Barcelona', 'Bolivia', '2022-11-22 11:35:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorios`
--

CREATE TABLE `recordatorios` (
  `id` int(10) NOT NULL,
  `Recordatorio` varchar(500) NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recordatorios`
--

INSERT INTO `recordatorios` (`id`, `Recordatorio`, `Fecha`) VALUES
(1, 'hola que tal como est as espero que est se bien copm', '2022-11-19 17:34:14'),
(2, 'Escriba su mensaje TENGO FE', '2022-11-19 17:43:14'),
(3, 'hola que tal espero que te muertas', '2022-11-22 11:32:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `CORREO` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CONTRASEÑA` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SEDE` varchar(50) NOT NULL,
  `COMPAÑIA` varchar(50) NOT NULL,
  `RUC` int(20) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID`, `CORREO`, `CONTRASEÑA`, `SEDE`, `COMPAÑIA`, `RUC`, `TELEFONO`, `DIRECCION`) VALUES
(1, 'Arkstore@gmail.com', '123456', 'San juan de Lurigancho', 'Arkstore', 456568, '902512606', 'Calle 27, San juan de Lurigancho'),
(2, 'once', 'doce', 'trece', 'catorce', 123456789, 'dieciseis', 'ciecisiete'),
(3, 'shadow', 'sombra', 'hola', 'que', 123564897, 'espero', 'bien'),
(4, 'axell@gmail.com', '123456789', 'SJL', 'UTP', 252829, '987654321', 'Los ,Mirables');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(10) NOT NULL,
  `NOMBRE_CLIENTE` varchar(50) NOT NULL,
  `APELLIDO_CLIENTE` varchar(50) NOT NULL,
  `SUBTOTAL` decimal(10,2) NOT NULL,
  `IGV` decimal(10,2) NOT NULL,
  `DESCUENTO` decimal(10,2) NOT NULL,
  `METODO` varchar(50) NOT NULL,
  `TOTAL` decimal(10,2) NOT NULL,
  `FECHA` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID`, `NOMBRE_CLIENTE`, `APELLIDO_CLIENTE`, `SUBTOTAL`, `IGV`, `DESCUENTO`, `METODO`, `TOTAL`, `FECHA`) VALUES
(1, 'Juan', 'Villar', '25050.00', '4509.00', '0.00', 'Transferencia Bancaria', '118236.00', '2022-11-22 11:43:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `recordatorios`
--
ALTER TABLE `recordatorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recordatorios`
--
ALTER TABLE `recordatorios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

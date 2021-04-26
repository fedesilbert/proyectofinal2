-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2021 a las 22:50:28
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoprogramacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comentario` text DEFAULT NULL,
  `fecha_comentario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `producto_id`, `user_id`, `comentario`, `fecha_comentario`) VALUES
(1, 1, 1, 'Excelente procesador', '2020-02-01'),
(2, 2, 2, 'Excelente GPU', '2020-01-02'),
(3, 3, 3, 'Excelente Procesador AMD', '2020-02-03'),
(4, 4, 4, 'Excelente Placa Madre', '2020-01-04'),
(5, 5, 5, 'Excelente gabinete', '2020-01-05'),
(6, 6, 1, 'Excelente Cooler', '2020-01-06'),
(7, 7, 2, 'Excelente cooler de cm', '2020-01-07'),
(8, 8, 3, 'Grandioso teclado', '2020-01-08'),
(9, 9, 4, 'bonito monitor', '2020-01-09'),
(10, 10, 5, 'Lujosos auriculares', '2020-01-10'),
(11, 9, 1, 'gran monitor', '2020-01-09'),
(12, 10, 5, 'lindos auriculares', '2020-01-12'),
(13, 9, 3, 'genial monitor', '2020-01-09'),
(14, 10, 2, 'impecables auriculares', '2020-01-10'),
(15, 9, 3, 'Impecable funcionamiento', '2020-02-01'),
(16, 10, 5, 'indiscutibles', '2020-01-02'),
(17, 8, 3, 'Impecable funcionamiento', '2020-02-01'),
(18, 7, 5, 'indiscutibles', '2020-01-02'),
(19, 8, 3, 'Impecable funcionamiento', '2020-02-01'),
(20, 7, 5, 'indiscutibles', '2020-01-02'),
(21, 8, 3, 'Impecable funcionamiento', '2020-02-01'),
(22, 7, 5, 'indiscutibles', '2020-01-02'),
(23, 6, 2, 'Impecable funcionamiento', '2020-02-01'),
(24, 5, 1, 'indiscutibles', '2020-01-02'),
(25, 6, 2, 'Impecable funcionamiento', '2020-02-01'),
(26, 5, 1, 'indiscutibles', '2020-01-02'),
(27, 6, 2, 'Impecable funcionamiento', '2020-02-01'),
(28, 5, 1, 'indiscutibles', '2020-01-02'),
(29, 4, 4, 'Impecable funcionamiento', '2020-02-01'),
(30, 3, 1, 'indiscutibles', '2020-01-02'),
(31, 4, 4, 'Impecable funcionamiento', '2020-02-01'),
(32, 3, 1, 'indiscutibles', '2020-01-02'),
(33, 4, 4, 'Impecable funcionamiento', '2020-02-01'),
(34, 3, 1, 'indiscutibles', '2020-01-02'),
(35, 2, 2, 'Impecable funcionamiento', '2020-02-01'),
(36, 1, 5, 'indiscutibles', '2020-01-02'),
(37, 2, 2, 'Impecable funcionamiento', '2020-02-01'),
(38, 1, 5, 'indiscutibles', '2020-01-02'),
(39, 2, 2, 'Impecable funcionamiento', '2020-02-01'),
(40, 1, 5, 'indiscutibles', '2020-01-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `producto`, `imagen`, `usuario_id`, `fecha_creacion`) VALUES
(1, 'Intel i7 10700k', 'https://www.comeros.com.ar/wp-content/uploads/2020/07/Comeros-500_.jpg', 1, '2021-04-26'),
(2, 'MSI RTX 3080 TI ', 'https://elchapuzasinformatico.com/wp-content/uploads/2021/04/MSI-GeForce-RTX-3080-Ventus.jpg', 4, '2021-01-06'),
(3, 'AMD Ryzen 9 3950x', 'https://www.mgtecnologia.com.ar/images/730143311809-PROCESADOR-AMD-RYZEN-9-3950X-4-7Ghz-(AM4)1601322421463.jpg', 3, '2021-04-23'),
(4, 'Motherboard X570 MSI', 'https://storage-asset.msi.com/global/picture/image/feature/mb/X570/ACE/X570-ACE.png', 4, NULL),
(5, 'Gabinete MSI FORGE', 'https://www.venex.com.ar/products_images/1607789677_product_0_20191112115827_5dca2de3dc215.png', 1, '2021-04-22'),
(6, 'Water Cooler CoolerMaster', 'https://files.coolermaster.com/og-image/masterliquid-ml240l-v2-rgb-1200x630.jpg', 5, '2021-01-09'),
(7, 'Air Cooler Cooler Master', 'https://s3-eu-west-1.amazonaws.com/cdn.coolermaster.com//1033/masterair-ma620p-380x380-hover.gif', 2, '2017-08-12'),
(8, 'Teclado Razer Huntsman mini', 'https://ockam-cloud-thebest.imgix.net/imagenes-s/productos/teclado-razer-huntsman-mini-79505.jpg?auto=format', 3, '2019-04-29'),
(9, 'Monitor Zowie XL2411', 'https://http2.mlstatic.com/D_NQ_NP_736391-MLA31063256117_062019-O.jpg', 5, '2017-06-12'),
(10, 'Auriculares Astro A504', 'https://http2.mlstatic.com/D_NQ_NP_733380-MLA40186283949_122019-O.jpg', 2, '2020-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombreusuario` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `fecha_nacimineto` date DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombreusuario`, `contraseña`, `fecha_nacimineto`, `telefono`) VALUES
(1, 'federico', 'fede123', '2011-04-02', '1154627756'),
(2, 'santos', 'pazo123', '2000-04-13', '1155637857'),
(3, 'pehuen', 'pehuen123', '1990-09-13', '1154627767'),
(4, 'mati', 'heber123', '1993-11-05', '1167890245'),
(5, 'adela', 'buye123', '2015-02-12', '1197658464');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

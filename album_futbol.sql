-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 23-05-2026 a las 05:09:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `album_futbol`
--
CREATE DATABASE IF NOT EXISTS `album_futbol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `album_futbol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `correo`, `password`, `fecha_registro`) VALUES
(1, 'admin@gmail.com', '$2y$12$muk3yJudevweKIcptUzyse2lovSLOiJnvlPPzMBRhXE6ST/z5tjRW', '2026-05-23 00:17:06'),
(2, 'lacontraes1234Jaja!@gmail.com', '$2y$10$u24z.d0spJrTKOT7uMk2ceZ2XCQmfi0Qx8uS9GDtrv2w4LXSmxccm', '2026-05-23 02:12:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccion`
--

DROP TABLE IF EXISTS `coleccion`;
CREATE TABLE `coleccion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `jugador_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT 1 CHECK (`cantidad` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coleccion`
--

INSERT INTO `coleccion` (`id`, `usuario_id`, `jugador_id`, `cantidad`) VALUES
(1, 1, 1, 4),
(2, 1, 35, 2),
(3, 1, 44, 3),
(4, 1, 43, 1),
(5, 1, 18, 3),
(6, 1, 33, 2),
(7, 1, 10, 1),
(8, 1, 50, 3),
(9, 1, 52, 3),
(10, 1, 19, 2),
(11, 1, 4, 1),
(12, 1, 47, 1),
(13, 1, 8, 1),
(14, 1, 13, 1),
(15, 1, 29, 3),
(16, 1, 30, 1),
(17, 1, 40, 1),
(18, 1, 51, 2),
(19, 1, 55, 1),
(20, 1, 31, 2),
(21, 1, 21, 2),
(22, 1, 14, 2),
(23, 1, 3, 2),
(24, 1, 2, 1),
(25, 1, 26, 1),
(26, 1, 42, 2),
(27, 1, 23, 3),
(28, 1, 45, 3),
(29, 1, 7, 2),
(30, 1, 48, 1),
(31, 1, 37, 2),
(32, 1, 38, 1),
(33, 1, 53, 2),
(34, 1, 34, 2),
(35, 1, 6, 1),
(36, 1, 5, 1),
(37, 1, 15, 1),
(38, 1, 20, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `imagen`) VALUES
(1, 'México', 'album/img/equipos/equipo1.jpg'),
(2, 'Estados Unidos', 'album/img/equipos/equipo2.jpg'),
(3, 'Canadá', 'album/img/equipos/equipo3.jpg'),
(4, 'Arabia Saudita', 'album/img/equipos/equipo4.jpg'),
(5, 'Argentina', 'album/img/equipos/equipo5.jpg'),
(6, 'Brasil', 'album/img/equipos/equipo6.jpg'),
(7, 'Bélgica', 'album/img/equipos/equipo7.jpg'),
(8, 'Qatar', 'album/img/equipos/equipo8.jpg'),
(9, 'Colombia', 'album/img/equipos/equipo9.jpg'),
(10, 'Ecuador', 'album/img/equipos/equipo10.jpg'),
(11, 'España', 'album/img/equipos/equipo11.jpg'),
(12, 'Japón', 'album/img/equipos/equipo12.jpg'),
(13, 'Portugal', 'album/img/equipos/equipo13.jpg'),
(14, 'Uruguay', 'album/img/equipos/equipo14.jpg'),
(15, 'Suiza', 'album/img/equipos/equipo15.jpg'),
(16, 'Túnez', 'uploads/equipos/equipo_1779497050.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_sobres`
--

DROP TABLE IF EXISTS `inventario_sobres`;
CREATE TABLE `inventario_sobres` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `sobre_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT 0 CHECK (`cantidad` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario_sobres`
--

INSERT INTO `inventario_sobres` (`id`, `usuario_id`, `sobre_id`, `cantidad`) VALUES
(13, 1, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `equipo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `imagen`, `equipo_id`) VALUES
(1, 'Gilberto Mora Zambrano', 'album/img/jugadores/mexico1.jpg', 1),
(2, 'Guillermo Ochoa', 'album/img/jugadores/mexico2.jpg', 1),
(3, 'Raúl Jiménez', 'album/img/jugadores/mexico3.jpg', 1),
(4, 'Edson Álvarez', 'album/img/jugadores/mexico4.jpg', 1),
(5, 'Armando González Alba', 'album/img/jugadores/mexico5.jpg', 1),
(6, 'Álvaro Fidalgo', 'album/img/jugadores/mexico6.jpg', 1),
(7, 'Germán Berterame', 'album/img/jugadores/mexico7.jpg', 1),
(8, 'Julián Andrés Quiñones', 'album/img/jugadores/mexico8.jpg', 1),
(9, 'Santiago Giménez', 'album/img/jugadores/mexico9.jpg', 1),
(10, 'Brian Gutiérrez', 'album/img/jugadores/mexico10.jpg', 1),
(11, 'Obed Vargas', 'album/img/jugadores/mexico11.jpg', 1),
(12, 'Christian Pulisic', 'album/img/jugadores/usa1.jpg', 2),
(13, 'Giovanni Reyna', 'album/img/jugadores/usa2.jpg', 2),
(14, 'Weston McKennie', 'album/img/jugadores/usa3.jpg', 2),
(15, 'Tyler Adams', 'album/img/jugadores/usa4.jpg', 2),
(16, 'Timothy Weah', 'album/img/jugadores/usa5.jpg', 2),
(17, 'Yunus Musah', 'album/img/jugadores/usa6.jpg', 2),
(18, 'Antonee Robinson', 'album/img/jugadores/usa7.jpg', 2),
(19, 'Sergiño Dest', 'album/img/jugadores/usa8.jpg', 2),
(20, 'Folarin Balogun', 'album/img/jugadores/usa9.jpg', 2),
(21, 'Matt Turner', 'album/img/jugadores/usa10.jpg', 2),
(22, 'Ricardo Pepi', 'album/img/jugadores/usa11.jpg', 2),
(23, 'Alphonso Davies', 'album/img/jugadores/canada1.jpg', 3),
(24, 'Jonathan David', 'album/img/jugadores/canada2.jpg', 3),
(25, 'Tajon Buchanan', 'album/img/jugadores/canada3.jpg', 3),
(26, 'Stephen Eustáquio', 'album/img/jugadores/canada4.jpg', 3),
(27, 'Cyle Larin', 'album/img/jugadores/canada5.jpg', 3),
(28, 'Ismaël Koné', 'album/img/jugadores/canada6.jpg', 3),
(29, 'Jonathan Osorio', 'album/img/jugadores/canada7.jpg', 3),
(30, 'Alistair Johnston', 'album/img/jugadores/canada8.jpg', 3),
(31, 'Kamal Miller', 'album/img/jugadores/canada9.jpg', 3),
(32, 'Milan Borjan', 'album/img/jugadores/canada10.jpg', 3),
(33, 'Jacob Shaffelburg', 'album/img/jugadores/canada11.jpg', 3),
(34, 'Salem Al-Dawsari', 'album/img/jugadores/arabia1.jpg', 4),
(35, 'Firas Al-Buraikan', 'album/img/jugadores/arabia2.jpg', 4),
(36, 'Saleh Al-Shehri', 'album/img/jugadores/arabia3.jpg', 4),
(37, 'Mohammed Al-Owais', 'album/img/jugadores/arabia4.jpg', 4),
(38, 'Saud Abdulhamid', 'album/img/jugadores/arabia5.jpg', 4),
(39, 'Abdulelah Al-Amri', 'album/img/jugadores/arabia6.jpg', 4),
(40, 'Ali Al-Bulaihi', 'album/img/jugadores/arabia7.jpg', 4),
(41, 'Mohamed Kanno', 'album/img/jugadores/arabia8.jpg', 4),
(42, 'Sami Al-Najei', 'album/img/jugadores/arabia9.jpg', 4),
(43, 'Nasser Al-Dawsari', 'album/img/jugadores/arabia10.jpg', 4),
(44, 'Hassan Tambakti', 'album/img/jugadores/arabia11.jpg', 4),
(45, 'Lionel Messi', 'album/img/jugadores/argentina1.jpg', 5),
(46, 'Emiliano Martínez', 'album/img/jugadores/argentina2.jpg', 5),
(47, 'Julián Álvarez', 'album/img/jugadores/argentina3.jpg', 5),
(48, 'Lautaro Martínez', 'album/img/jugadores/argentina4.jpg', 5),
(49, 'Ángel Di María', 'album/img/jugadores/argentina5.jpg', 5),
(50, 'Alexis Mac Allister', 'album/img/jugadores/argentina6.jpg', 5),
(51, 'Rodrigo De Paul', 'album/img/jugadores/argentina7.jpg', 5),
(52, 'Enzo Fernández', 'album/img/jugadores/argentina8.jpg', 5),
(53, 'Cristian Romero', 'album/img/jugadores/argentina9.jpg', 5),
(54, 'Nicolás Otamendi', 'album/img/jugadores/argentina10.jpg', 5),
(55, 'Nahuel Molina', 'album/img/jugadores/argentina11.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `leido` tinyint(1) DEFAULT 0,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `usuario_id`, `mensaje`, `leido`, `fecha`) VALUES
(1, 1, 'Prueba: tienes una nueva notificación de trueque.', 1, '2026-05-22 23:11:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobres`
--

DROP TABLE IF EXISTS `sobres`;
CREATE TABLE `sobres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo` enum('basico','premium','equipo') DEFAULT NULL,
  `cartas` int(11) DEFAULT NULL CHECK (`cartas` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sobres`
--

INSERT INTO `sobres` (`id`, `nombre`, `tipo`, `cartas`) VALUES
(1, 'Sobre Básico', 'basico', 3),
(2, 'Sobre Elegante', 'equipo', 5),
(3, 'Sobre Épico', 'premium', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trueques`
--

DROP TABLE IF EXISTS `trueques`;
CREATE TABLE `trueques` (
  `id` int(11) NOT NULL,
  `usuario_ofrece` int(11) DEFAULT NULL,
  `jugador_ofrece` int(11) DEFAULT NULL,
  `usuario_recibe` int(11) DEFAULT NULL,
  `jugador_recibe` int(11) DEFAULT NULL,
  `estado` enum('pendiente','aceptado','rechazado') DEFAULT 'pendiente',
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trueques`
--

INSERT INTO `trueques` (`id`, `usuario_ofrece`, `jugador_ofrece`, `usuario_recibe`, `jugador_recibe`, `estado`, `fecha`) VALUES
(1, 1, 42, NULL, 22, 'pendiente', '2026-05-22 21:42:10'),
(2, 1, 23, NULL, 41, 'pendiente', '2026-05-22 22:12:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cartas_totales` int(11) DEFAULT 0 CHECK (`cartas_totales` >= 0),
  `cartas_repetidas` int(11) DEFAULT 0 CHECK (`cartas_repetidas` >= 0),
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto_perfil` varchar(255) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `correo`, `password`, `cartas_totales`, `cartas_repetidas`, `fecha_registro`, `foto_perfil`) VALUES
(1, 'Estefany', 'e@gmail.com', '$2y$10$E391sKP0YB6.BnhHgB8m7el5y3G5QLT/lgp0qDD8ZfnoauHrGWszK', 0, 0, '2026-04-25 03:49:32', 'uploads/perfil_1_1779476417.webp'),
(6, 'TA', 'Q@gmail.com', '$2y$10$4BN67WeV5EmrgTEYXMzdqeRRJhyI4L7w9DQICcAe95rhQah2Kwp0e', 0, 0, '2026-04-25 16:21:57', 'default.png'),
(7, 'ES', 'T@gmail.com', '$2y$10$LPuNE/br1eBv.z2kuT5UHOpqscTHitypG2oQMJ44YB2Tnz7C9j2si', 0, 0, '2026-04-25 16:22:49', 'default.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`,`jugador_id`),
  ADD UNIQUE KEY `unique_usuario_jugador` (`usuario_id`,`jugador_id`),
  ADD KEY `jugador_id` (`jugador_id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `inventario_sobres`
--
ALTER TABLE `inventario_sobres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_usuario_sobre` (`usuario_id`,`sobre_id`),
  ADD KEY `sobre_id` (`sobre_id`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo_id` (`equipo_id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `sobres`
--
ALTER TABLE `sobres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trueques`
--
ALTER TABLE `trueques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_ofrece` (`usuario_ofrece`),
  ADD KEY `usuario_recibe` (`usuario_recibe`),
  ADD KEY `jugador_ofrece` (`jugador_ofrece`),
  ADD KEY `jugador_recibe` (`jugador_recibe`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `coleccion`
--
ALTER TABLE `coleccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `inventario_sobres`
--
ALTER TABLE `inventario_sobres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sobres`
--
ALTER TABLE `sobres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trueques`
--
ALTER TABLE `trueques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coleccion`
--
ALTER TABLE `coleccion`
  ADD CONSTRAINT `coleccion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coleccion_ibfk_2` FOREIGN KEY (`jugador_id`) REFERENCES `jugadores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inventario_sobres`
--
ALTER TABLE `inventario_sobres`
  ADD CONSTRAINT `inventario_sobres_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventario_sobres_ibfk_2` FOREIGN KEY (`sobre_id`) REFERENCES `sobres` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `trueques`
--
ALTER TABLE `trueques`
  ADD CONSTRAINT `trueques_ibfk_1` FOREIGN KEY (`usuario_ofrece`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `trueques_ibfk_2` FOREIGN KEY (`usuario_recibe`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `trueques_ibfk_3` FOREIGN KEY (`jugador_ofrece`) REFERENCES `jugadores` (`id`),
  ADD CONSTRAINT `trueques_ibfk_4` FOREIGN KEY (`jugador_recibe`) REFERENCES `jugadores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

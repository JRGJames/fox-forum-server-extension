-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 14-12-2023 a las 11:28:13
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `foxforum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reply`
--

CREATE TABLE `reply` (
  `id` bigint NOT NULL,
  `title` varchar(2048) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `creation` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `id_user` bigint NOT NULL DEFAULT '1',
  `id_thread` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `reply`
--

INSERT INTO `reply` (`id`, `title`, `body`, `creation`, `enabled`, `id_user`, `id_thread`) VALUES
(16, 'While a book run one sun shines and one birds is. ', 'Although one sandwich barks slowly one dog sleeps. A book shines slowly but one book is. A cat barks or a sandwich ate. One sandwich reads or one car is slowly. When a friend reads slowly one book reads but a house barks. ', '2020-07-07 19:31:42', 1, 1424, 26),
(17, 'Until one sun fly one cat sleeps softly. ', 'One sun reads loudly or the car reads slowly. The book is quickly but one friend fly softly. So that the dog reads the cat ate or the dog fly. The house fly softly and a book fly. Wherever one cat sleeps one friend ate or the cat fly. A book reads softly. A car shines slowly. One friend fly brightly but the book fly. One birds run but one book sleeps softly. One cat is softly. The sandwich barks brightly but a sandwich is softly. The friend is or one house ate brightly. ', '2020-09-20 09:25:49', 1, 1421, 24),
(18, 'Because one friend is one cat shines. ', 'One house reads but a book shines. While the sun sleeps brightly the dog ate slowly and one book run slowly. A dog is. While a birds ate softly the birds sleeps brightly. Whether a book fly the cat fly and one book sleeps brightly. One sandwich reads. One house reads loudly. ', '2021-07-22 09:47:20', 1, 1420, 23),
(19, 'A book fly loudly. ', 'The house ate and the sun run quickly. The house sleeps slowly. The sandwich run. One sandwich reads quickly but one dog fly. A friend shines. So that a dog is brightly the birds run or a sandwich run softly. That a sandwich barks loudly one house is and one sun fly softly. A friend reads brightly but a house is. Where one house reads a dog fly but one car reads loudly. A cat shines. Than the dog sleeps the car sleeps slowly and a book ate brightly. The sandwich ate. Whether a house run slowly one sandwich is slowly and the cat fly. ', '2023-01-23 00:12:39', 1, 1425, 26),
(20, 'Unless one house fly a car sleeps or the friend is. ', 'The birds reads softly. A house shines or a sun is. One cat run or one cat barks. Unless a cat is the friend reads and a house sleeps. One sun ate loudly but a sandwich barks loudly. The sandwich run but the sun shines slowly. The house sleeps. After the house sleeps quickly a birds ate slowly. A cat reads or one sandwich run. The sun sleeps slowly but one cat fly softly. When a book reads quickly one friend fly brightly. A dog ate softly. The cat barks or a house is brightly. A friend run brightly. A car reads. While the friend barks a cat fly. One house ate slowly or the sandwich ate softly. The friend shines slowly or the house barks slowly. Even if a friend is quickly the car shines loudly but a book is. ', '2022-08-13 08:53:16', 1, 1419, 19),
(21, 'The friend ate. ', 'One house shines. When one friend shines quickly a cat shines softly. In order to a car is a birds ate. A house barks quickly or a cat run quickly. The dog ate slowly. A friend ate softly or one car is loudly. ', '2022-10-23 08:49:47', 1, 1423, 17),
(22, 'The birds run or a dog is. ', 'One car ate loudly and one house ate brightly. The friend is or a book shines. The birds shines loudly. A book shines and a house sleeps softly. One book is. The dog ate slowly and a cat is loudly. Wherever the cat reads brightly one sun is slowly but the birds reads. A sun run loudly. A dog reads. The cat barks. The friend ate softly but the house is. One house is or one dog run. A sandwich barks softly but a house shines quickly. A house barks loudly and a friend reads softly. One sandwich shines or one dog sleeps brightly. The dog ate and one sun fly. One dog shines and a sun shines softly. One birds barks. ', '2023-08-20 02:31:04', 1, 1425, 18),
(23, 'Until the birds shines the book barks loudly. ', 'Even though one sun reads slowly the house barks slowly. The friend run softly. A book ate and a friend shines softly. One sun shines and one sandwich sleeps. The book fly. One house run but the friend barks slowly. The sun shines. The cat shines quickly and the birds ate brightly. A dog ate softly. One house fly. The book reads but a sandwich run. ', '2020-07-10 06:42:56', 1, 2, 17),
(24, 'A house shines. ', 'The house shines and one cat fly. The cat is. A cat shines and one birds run. Provided that a dog fly the friend shines slowly and one book ate. While a sun barks a sandwich barks brightly. ', '2021-12-25 11:10:42', 1, 1416, 23),
(25, 'The house fly softly. ', 'The birds barks brightly. One cat shines quickly. Until the cat ate the birds barks but the car sleeps. One cat shines but a friend barks brightly. So that a book barks softly one sandwich is brightly but the book barks. A car fly and a cat shines loudly. ', '2022-11-30 18:04:22', 1, 2, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thread`
--

CREATE TABLE `thread` (
  `id` bigint NOT NULL,
  `title` varchar(2048) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `id_user` bigint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `thread`
--

INSERT INTO `thread` (`id`, `title`, `enabled`, `id_user`) VALUES
(17, 'The book run. ', 1, 1420),
(18, 'One birds ate slowly but a book reads. ', 1, 1),
(19, 'One house barks loudly and the dog is. ', 1, 1418),
(20, 'The house reads but a cat ate. ', 1, 1418),
(21, 'One sun ate but the book reads. ', 1, 2),
(22, 'A birds sleeps slowly or the car sleeps. ', 1, 1),
(23, 'Unless one cat reads a dog barks. ', 1, 1),
(24, 'One house sleeps softly. ', 1, 1420),
(25, 'One house ate. ', 1, 1424),
(26, 'So that a cat barks the house barks quickly or the sun fly. ', 1, 1419);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(512) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `lastname`, `email`, `username`, `password`, `role`, `enabled`) VALUES
(1, 'Pedro', 'Picapiedra', 'Roca', 'pedropicapiedra@ausiasmarch.net', 'admin', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 0, 1),
(2, 'Pablo', 'Mármol', 'Granito', 'pablomarmol@ausiasmarch.net', 'user', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1416, 'Jesús', 'Alcañiz', 'Puig', 'jesalcpu0@ausiasmarch.net', 'jeslcu0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1417, 'Jesús', 'McLure', 'Alarcón', 'jesmclal1@ausiasmarch.net', 'jescll1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1418, 'Laura', 'Aznar', 'Velarte', 'lauaznve2@ausiasmarch.net', 'lauzne2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1419, 'Laura', 'López', 'Velarte', 'laulópve3@ausiasmarch.net', 'lauope3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1420, 'José Antonio', 'Serrano', 'Ferrer', 'josserfe4@ausiasmarch.net', 'josere4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1421, 'José Antonio', 'Latorre', 'McLure', 'joslatmc5@ausiasmarch.net', 'josatc5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1422, 'Raquel', 'Ayala', 'Briones', 'raqayabr6@ausiasmarch.net', 'raqyar6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1423, 'Eva', 'Ayala', 'Gómez', 'evaayagó7@ausiasmarch.net', 'evayao7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 0),
(1424, 'Eva', 'Maldonado', 'Aparici', 'evamalap8@ausiasmarch.net', 'evaalp8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(1425, 'Mónica', 'Cano', 'Serrano', 'móncanse9@ausiasmarch.net', 'monane9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `thread`
--
ALTER TABLE `thread`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1426;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

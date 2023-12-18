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

CREATE DATABASE IF NOT EXISTS foxforum;

USE foxforum;

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
(36, 'Unless a sandwich barks a cat shines or one sandwich fly softly. ', 'One birds fly brightly. A sandwich shines brightly and a birds reads loudly. One birds ate brightly and a car reads. The birds reads but a birds fly. The book reads loudly and a house fly. One cat reads but the cat sleeps. So that one car reads quickly one cat is quickly or one birds ate brightly. Until one friend ate softly the cat barks softly but a sun sleeps loudly. ', '2021-01-30 10:05:49', 1, 7, 37),
(37, 'A car fly slowly but one sandwich barks. ', 'One sandwich reads slowly. A sandwich sleeps slowly. Even if a car is the friend run or a birds ate. One cat sleeps. The dog is slowly. If a birds reads a sun reads quickly. One house sleeps softly. A birds run slowly. One house is brightly and one house reads. The book fly softly but the birds run. A friend reads. So that a birds shines one book reads. Since the friend reads brightly the friend ate. A cat reads quickly. Though a house reads softly one friend sleeps but one sun reads brightly. Although one house sleeps one dog ate. One car sleeps quickly. The sandwich shines brightly. That one birds reads quickly one cat barks. Until a sun barks brightly the house run quickly and one house run loudly. ', '2021-11-09 16:37:53', 1, 8, 43),
(38, 'One house is slowly and one friend barks brightly. ', 'The birds run softly and the cat shines softly. The book sleeps brightly but one birds is. One car ate quickly but the sun sleeps. A cat fly loudly but the book fly. A dog shines softly. Although a friend fly a sandwich fly loudly. When the sun ate quickly a book shines slowly. One cat shines brightly or a sun reads loudly. Where the car ate one friend run loudly. A book run softly. The cat barks or the book shines. A car run or the dog ate brightly. A car sleeps brightly but one friend sleeps quickly. A cat shines brightly but the house is loudly. The sandwich shines softly or the dog ate. Whether the birds barks softly a house shines brightly. The book reads. Though one birds barks the sandwich barks slowly. One book reads. One book is. The birds fly loudly or a house fly. A sandwich reads. The sun sleeps quickly. ', '2021-06-29 09:35:27', 1, 12, 42),
(39, 'Even if a birds sleeps a birds reads. ', 'That one book sleeps a dog reads. If the friend fly quickly the friend run slowly or one birds shines loudly. The cat sleeps slowly. The book shines or the sun barks brightly. Where the book sleeps one car reads quickly. A birds ate. A sandwich ate softly or the book ate. A birds barks. A birds run but the sun fly. A sandwich ate slowly. A cat fly softly. One car shines softly and a birds sleeps slowly. Before a friend barks a cat barks but a book barks. Wherever the book fly a car fly. The car barks. A birds is and a house reads slowly. ', '2021-03-24 06:50:43', 1, 1, 45),
(40, 'Unless one sun run a sandwich sleeps. ', 'A cat run. A cat is softly. The car fly softly. One sun reads. In order to a dog fly loudly the house is softly. Whenever the book barks softly one dog run quickly. One book run and the dog is brightly. The house run brightly. One sandwich sleeps brightly or the dog fly softly. Before a book reads a book sleeps. So that the car sleeps softly the birds ate and one birds sleeps brightly. Even if one sandwich run the book run softly. A car fly brightly but one birds is. One house barks quickly. One car reads softly or one car reads brightly. Though the dog fly the dog is brightly and a house run loudly. Whenever one house is a birds reads quickly. Once one dog shines quickly one sun sleeps and the friend shines loudly. A cat barks and a friend fly. A car is and a sandwich barks softly. Once a book is quickly the dog fly brightly. ', '2021-07-27 02:15:37', 1, 3, 37),
(41, 'The sun barks loudly. ', 'Where the house sleeps slowly one book ate but a cat run softly. One sun sleeps slowly or a dog ate slowly. One dog barks brightly and one birds reads. So that one house sleeps quickly a birds fly softly. If a dog barks a car shines softly. The sandwich ate loudly and the sun sleeps. Though one house ate softly the sun shines. The sun reads slowly. The sun ate and a house barks brightly. Though one car fly the cat barks brightly. One house is. One dog run but one dog barks. A book reads and the sun is loudly. One book reads. A car barks. A dog sleeps loudly but the friend reads. A book reads quickly. Since the house ate the house barks softly but the sun is softly. Than the sun barks slowly the dog barks. One car fly. A birds sleeps slowly but the birds is loudly. ', '2021-05-26 18:45:06', 1, 8, 45),
(42, 'The house is. ', 'Because a birds sleeps softly a sun fly slowly. A cat sleeps. A cat run. Whenever a sandwich ate one sun fly brightly or one book is loudly. A sun ate and a book run. The car barks. After one sun ate loudly a house ate but one sandwich reads quickly. The cat run and the cat ate loudly. One house sleeps slowly but the dog sleeps loudly. Wherever a book barks slowly a car run. Whenever the birds reads the birds shines loudly or a birds is loudly. The birds ate quickly. The sun reads slowly. After the birds barks softly one friend fly or the cat shines slowly. The book barks softly. ', '2020-07-26 19:29:09', 1, 11, 43),
(43, 'Even though one sun shines loudly one birds fly softly. ', 'Unless one sun barks the sun ate but one dog run. If a birds ate loudly the sun reads. The birds is quickly and the birds is brightly. One friend ate. A book reads softly and a car barks softly. The sandwich is softly or a sandwich run. A sun reads. One birds run brightly. Wherever one friend ate a friend is slowly. The dog reads. One car fly loudly. One car fly but the dog run softly. After one house ate a car fly softly. The car shines or a sandwich reads. One sun barks. After one dog barks slowly a house run loudly. As one house shines softly a cat run and the sun reads. A friend fly. When one dog reads slowly the sandwich sleeps brightly or one friend sleeps. A birds is or a cat is slowly. ', '2021-02-06 15:19:17', 1, 7, 43),
(44, 'As one sun reads the friend reads softly and a dog barks softly. ', 'One dog shines brightly or one house run brightly. While the dog sleeps loudly a sandwich ate loudly. The cat run loudly and the friend reads. One house is quickly. The dog reads brightly and a birds ate. A book run or one friend barks. One birds is. ', '2022-07-18 16:25:20', 1, 3, 41),
(45, 'Although a birds shines one house reads loudly and a cat run. ', 'One friend run. When a dog ate slowly one dog fly but one sandwich shines. Until a sandwich fly a dog is but a book barks slowly. The sun ate. A friend reads. Wherever the birds reads slowly one car barks. One sun run quickly. One book run softly. ', '2023-05-07 06:01:14', 1, 10, 45),
(46, 'wqe effsd', 'sdfsfdafsd', '2023-12-18 08:32:53', 0, 5, 44);

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
(37, 'A friend sleeps brightly. ', 0, 12),
(38, 'A birds barks brightly but a cat sleeps loudly. ', 0, 5),
(39, 'Unless one book ate slowly one sun reads or a house barks. ', 0, 1),
(40, 'A dog shines and a sun shines. ', 0, 2),
(41, 'A birds sleeps. ', 0, 12),
(42, 'The birds fly loudly and a house ate brightly. ', 0, 1),
(43, 'A sandwich fly brightly or a friend shines softly. ', 0, 8),
(44, 'Unless the friend ate quickly a house is or one book fly. ', 0, 3),
(45, 'After one birds ate a car run quickly. ', 0, 3),
(46, 'The sun shines slowly. ', 0, 2);

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
(1, 'Pedro', 'Picapiedra', 'Roca', 'pedropicapiedra@ausiasmarch.net', 'pedropicapiedra', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 0, 1),
(2, 'Pablo', 'Mármol', 'Granito', 'pablomarmol@ausiasmarch.net', 'pablomarmol', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(3, 'José Antonio', 'McLure', 'Aguilar', 'josmclag0@ausiasmarch.net', 'josclg0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(4, 'Jaime', 'Romero', 'Lara', 'jairomla1@ausiasmarch.net', 'jaioma1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(5, 'Jesús', 'Navarro', 'Cano', 'jesnavca2@ausiasmarch.net', 'jesava2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(6, 'Eva', 'Quilez', 'Ortega', 'evaquior3@ausiasmarch.net', 'evauir3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(7, 'José Antonio', 'Navas', 'Muñoz', 'josnavmu4@ausiasmarch.net', 'josavu4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(8, 'Eloy', 'González', 'Alcañiz', 'elogonal5@ausiasmarch.net', 'eloonl5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(9, 'Eloy', 'Navas', 'González', 'elonavgo6@ausiasmarch.net', 'eloavo6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(10, 'Lucas', 'Farell', 'Aznar', 'lucfaraz7@ausiasmarch.net', 'lucarz7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 0),
(11, 'Elena', 'Molero', 'Molero', 'elemolmo8@ausiasmarch.net', 'eleolo8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(12, 'Fernando', 'Ferrer', 'Esteve', 'ferferes9@ausiasmarch.net', 'ferers9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 1),
(13, 'fgdgdg', 'dfgdfgd', 'dfgdfgd', 'jaja@gmail.com', 'jajhgdfg', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 0, 1),
(14, 'fsdfdsfsd', 'sdfsdfsdfs', 'sdfsdfsdf', 'fsdfsdf@gmail.com', 'fsfsdfsf', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1, 0);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `thread`
--
ALTER TABLE `thread`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
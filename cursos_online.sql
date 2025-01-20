-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 02:05:10
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
-- Base de datos: `cursos_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(43, 'sd', 'Keneth@gmail.com', 'fd', '2024-11-19 05:22:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `youtube_playlist_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `youtube_playlist_id`, `created_at`) VALUES
(11, 'Curso Python desde 0', 'Aprende Python desde lo básico de forma rápida.', 'PLU8oAlHdN5BlvPxziopYZRd55pdqFwkeS', '2024-11-24 18:58:23'),
(12, 'Curso Java desde 0', 'Introducción a Java desde lo esencial.', 'PLyvsggKtwbLX9LrDnl1-K6QtYo7m0yXWB', '2024-11-24 18:58:23'),
(13, 'Curso C desde 0', 'Conoce la programación en C desde cero.', 'PLWtYZ2ejMVJmUTNE2QVaCd1y_6GslOeZ6', '2024-11-24 18:58:23'),
(14, 'Curso C++ desde 0', 'Inicia con C++ con explicaciones claras.', 'PLWtYZ2ejMVJlUu1rEHLC0i_oibctkl0Vh', '2024-11-24 18:58:23'),
(15, 'Curso PHP desde 0', 'Domina PHP de manera simple y eficaz.', 'PLH_tVOsiVGzmnl7ImSmhIw5qb9Sy5KJRE', '2024-11-24 18:58:23'),
(16, 'Curso PHP desde 0', 'Aprende a programar en PHP desde lo básico.', 'PLmIB7uA74Vvaub8PVR2Tj3B6_Wq1wr21Y', '2024-11-24 18:58:23'),
(17, 'Curso Excel desde 0', 'Maneja Excel con herramientas prácticas.', 'PLLniqWgyb4HHfkyWNgMWSvTq6RlUGusgN', '2024-11-24 18:58:23'),
(18, 'Curso CSS desde 0', 'Aprende a estilizar páginas web con CSS.', 'PLH_tVOsiVGznLd-dSQP9_ttuxLnSmSWwq', '2024-11-24 18:58:23'),
(19, 'Curso DISEÑO gráfico', 'Introducción al diseño gráfico profesional.', 'PLjrXqm46I4pPgzUlnemhxWatJZzG9WFTB', '2024-11-24 18:58:23'),
(20, 'Curso Autocad', 'Diseña y modela con herramientas de Autocad.', 'PLFX8Q1hun4izyLOUuCOC8tAu03wgY4cLe', '2024-11-24 18:58:23'),
(21, 'Curso Fusion 360', 'Modelado avanzado en Fusion 360.', 'PL55BJ0x8OC8KtOe_NUhDv_uEbeItggh14', '2024-11-24 18:58:23'),
(22, 'Curso Cobol desde 0', 'Aprende Cobol desde sus fundamentos.', 'PLVzwufPir355nStjiLrg1WKBNyV-zdLzx', '2024-11-24 18:58:23'),
(23, 'Curso Redes desde 0', 'Conoce redes desde conceptos básicos.', 'PLSvxAUzJ-XSfY0KpwV8SHBlyLVcrZkENc', '2024-11-24 18:58:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `role`) VALUES
(4, 'Admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2024-11-12 23:09:02', 'admin'),
(5, 'Keneth', 'Keneth@gmail.com', '$2y$10$5FX671jfwM/YgYhGCP6Mcekthtz/YeTgeuR4sJVNIZBPLnTghb5QC', '2024-11-12 23:12:17', 'admin'),
(9, 'juann', 'Juan@gmail.com', '$2y$10$J5AOy.flRUpuaiMu6WdoH.Tl5EWzGEyARZZwR8bp0koFE4jwbrYuW', '2024-11-23 15:25:47', 'user'),
(10, 'abiel', 'Abiel@gmail.com', '$2y$10$ifIs5bnIO83RQGsU/CsNAOcKbuh5iJbXMfdq9P8/RUq3l1rRz.4uC', '2024-11-24 15:27:30', 'user'),
(11, 'Usuario1', 'usuario1@example.com', '$2y$10$.qZ8vkvq6vtZT/7vJ4e1UuGtn0hpQUHbf2LxuSnpJ0DSauQcBQe5u', '2024-08-15 05:00:00', 'user'),
(12, 'Usuario2', 'usuario2@example.com', '$2y$10$/0a7t4TVFThcPhZncmrKwOe0ozFpizaylCc.2tf1R4TUn/d0nuo.e', '2024-08-05 05:00:00', 'user'),
(13, 'Usuario3', 'usuario3@example.com', '$2y$10$bCVOSbSD5Bw.00vTuDo5V.NBVV4WjK.YZYIk3SgN.WvvEvP7FjTtS', '2024-01-15 05:00:00', 'user'),
(14, 'Usuario4', 'usuario4@example.com', '$2y$10$g69v8VfewoCjO2IU/sPG9e5lqlxYosb2dpVHvbKxZGjnI8x6l./Dy', '2024-10-22 05:00:00', 'user'),
(15, 'Usuario5', 'usuario5@example.com', '$2y$10$fqufSoLPX0BosqRDMSIiwOkr96ShiNhZPtmG4g8w1Aw56eGcjZChW', '2024-08-13 05:00:00', 'user'),
(16, 'Usuario6', 'usuario6@example.com', '$2y$10$7sb0gCMMfKb5eYhBe/zTiupcXbMaX8.IfFTcmJvmsjm42fy8i3XOS', '2024-02-19 05:00:00', 'user'),
(17, 'Usuario7', 'usuario7@example.com', '$2y$10$tZTPXutckiArQVQqt1W3qumMM84hQKSFi1tmHj0126thruhRChiWe', '2024-04-20 05:00:00', 'user'),
(18, 'Usuario8', 'usuario8@example.com', '$2y$10$8YaJ1ukNqAo3txhq.5B.LuJCEqOJf.baatgljr02aciroO.SB2A4G', '2024-08-26 05:00:00', 'user'),
(19, 'Usuario9', 'usuario9@example.com', '$2y$10$c3JlSzf5WP0NYCmrtduoouRo4EJW2L/EXJfTsyijN7hCt38sLRaLu', '2024-07-16 05:00:00', 'user'),
(20, 'Usuario10', 'usuario10@example.com', '$2y$10$K7COD/sg8xgWFNd0YRxssujxF5Q4fcpOsYLka1jCtvIfo7u9A.izq', '2024-07-22 05:00:00', 'user'),
(21, 'Usuario11', 'usuario11@example.com', '$2y$10$Dsg0GvsylBaDvRzrIyLlOex4/.wd7G82UJTKEnEk5nvoAyGMpbpn2', '2024-03-28 05:00:00', 'user'),
(22, 'Usuario12', 'usuario12@example.com', '$2y$10$60iVOmYIaJTBnXfTz60LfO.cDFlLbZKJkTS6z2qjvsEW7Q6RbbnEq', '2024-05-06 05:00:00', 'user'),
(23, 'Usuario13', 'usuario13@example.com', '$2y$10$/ikuONeFq/m7g0of5T/YeuARcvldFvI5jlChDrWMBZjEjkYRczUgy', '2024-01-24 05:00:00', 'user'),
(24, 'Usuario14', 'usuario14@example.com', '$2y$10$9nZWS8DJVLTUW9ILg99zUO5Tyfkzj7Zx/5tIgfimiV9C241SFue56', '2024-03-19 05:00:00', 'user'),
(25, 'Usuario15', 'usuario15@example.com', '$2y$10$Fs9S9vBPmA.ZjMTbPkV5.eFH3gBau52Ptum1qV9fVcgdm7v91uD0C', '2024-03-13 05:00:00', 'user'),
(26, 'Usuario16', 'usuario16@example.com', '$2y$10$TmJqLybBe2Dua/C2Z/QfPe5WxNskD7zCH3vh0XZBnqw.d9ohq17Ty', '2024-04-16 05:00:00', 'user'),
(27, 'Usuario17', 'usuario17@example.com', '$2y$10$zobotLD3Q3eRWI9azEFyuuw2oYyRMju6wRFGUBKYsjlElvXYnNOgK', '2024-05-13 05:00:00', 'user'),
(28, 'Usuario18', 'usuario18@example.com', '$2y$10$AOaLh8KHUJ.veGTLnDuDw.8MS5Gk/T10D0bS55e4vtMXLcIbKcjPC', '2024-07-14 05:00:00', 'user'),
(29, 'Usuario19', 'usuario19@example.com', '$2y$10$yg5v7e5JdNmoY6a/c7XLHurQt2f.CuVZyA1zX3wW7trwv0g5CilWm', '2024-07-28 05:00:00', 'user'),
(30, 'Usuario20', 'usuario20@example.com', '$2y$10$VHgipXq18wwO2iv6PYIrg.bBiRU6pq9OdzVtc8C93rx2.WNRaSegW', '2024-06-01 05:00:00', 'user'),
(31, 'Usuario21', 'usuario21@example.com', '$2y$10$ZpssrF3sFDm06zL92RfNt.XW9l92GocZumYJF9i0Bd3HOcQHZ5E2e', '2024-08-02 05:00:00', 'user'),
(32, 'Usuario22', 'usuario22@example.com', '$2y$10$PfsnCyKFxI.vzAbFgzxNV.0EcR3VUYLBdIFtX2XmMi6ZYmtrrGTQ2', '2024-11-05 05:00:00', 'user'),
(33, 'Usuario23', 'usuario23@example.com', '$2y$10$epxT4ETFEy3ckqN6DfFZqONkLwMJHRnXZ5gmSpQyoXCINii.W1uBq', '2024-02-27 05:00:00', 'user'),
(34, 'Usuario24', 'usuario24@example.com', '$2y$10$59QiZzLsKiYCdBwEA.BSxuILHt/vUT2QLhG0XbpUvam/eWO5/ttnC', '2024-09-03 05:00:00', 'user'),
(35, 'Usuario25', 'usuario25@example.com', '$2y$10$inCQWgt82zHSWl3s9B5f6uaH0MNzn.o6wd2EGAyKVWApRfGnM2OSy', '2024-04-21 05:00:00', 'user'),
(36, 'Usuario26', 'usuario26@example.com', '$2y$10$mg9SPfR/EaeR6zaigPJTZerDsz./fPI2UxHwWYTYkYz3VckEcEvba', '2024-03-21 05:00:00', 'user'),
(37, 'Usuario27', 'usuario27@example.com', '$2y$10$mkFLYcMfuAxKYLtOhUDGp.7LY5ewueI60ccDsGTbMTc73V34ULR2G', '2024-08-12 05:00:00', 'user'),
(38, 'Usuario28', 'usuario28@example.com', '$2y$10$k2bbzhS5e2w0lxlK9JfTeOhQUZ/uX1pjKOKlGLq8jVHCaUtlp8PfS', '2024-02-18 05:00:00', 'user'),
(39, 'Usuario29', 'usuario29@example.com', '$2y$10$jEGjSxrWoH1ExR72F/02iuR75.ImhIyNnussCkP4BFRMalKhqIw5u', '2024-01-05 05:00:00', 'user'),
(40, 'Usuario30', 'usuario30@example.com', '$2y$10$fjpCeZIgjHBJPVu23t1M9O7wQ3oxXSMy0bIAZ06edktUyGlM6ZF2W', '2024-01-12 05:00:00', 'user'),
(41, 'Usuario31', 'usuario31@example.com', '$2y$10$lpv3Bp8uXfEyA07quqIQDOEplqi6gAf6kSym/W6JQJVjAiEWtBe9m', '2024-05-06 05:00:00', 'user'),
(42, 'Usuario32', 'usuario32@example.com', '$2y$10$vz2fkXfudzrvgJAPl0gMBe0WS7Ox5ca.3Mt.C9ezBDJTTUHWk3gbO', '2024-09-03 05:00:00', 'user'),
(43, 'Usuario33', 'usuario33@example.com', '$2y$10$/SvROqxsEw6qaaYxVAwQEOeBuNy6AjzMScwYgyOw8WItbJFKqrDg6', '2024-01-25 05:00:00', 'user'),
(44, 'Usuario34', 'usuario34@example.com', '$2y$10$8EjkrRobsTsDzv88uhAbK.ihn.iW3i/FlEJdP2jk6zE43FVmkE6Me', '2024-04-13 05:00:00', 'user'),
(45, 'Usuario35', 'usuario35@example.com', '$2y$10$UmCpn3lTdSrmjlvfoO5oPu18NjwbWA/gU1P.j3guUuJtOTWrOPWXK', '2024-09-23 05:00:00', 'user'),
(46, 'Usuario36', 'usuario36@example.com', '$2y$10$/T2th4jqlPvUKXk3MeC4Me3nEO.k2WmPEI2bP4ryElP4mFNUOwm5K', '2024-11-19 05:00:00', 'user'),
(47, 'Usuario37', 'usuario37@example.com', '$2y$10$qAq9DRbGZwYqGT7ZaOEyZe1qaJKIsW06.Ko3FfEMRF0o/NJTeyVUe', '2024-04-01 05:00:00', 'user'),
(48, 'Usuario38', 'usuario38@example.com', '$2y$10$ePoePy.Ax1AI3Mt5HfSH9uYgpYDrYSWKDxIr0ZJoXpK8HIdwAuUPC', '2024-06-19 05:00:00', 'user'),
(49, 'Usuario39', 'usuario39@example.com', '$2y$10$pkEHhHCJhqr7uGERyCDVhufJQwBwho4kOh3fUvz73.O/FY7M0izzS', '2024-09-27 05:00:00', 'user'),
(50, 'Usuario40', 'usuario40@example.com', '$2y$10$NfA7J4GDEG.wxkyzerLEIuFuALRkWJVqPPOEpnr7ib14kgcOHN5BC', '2024-02-20 05:00:00', 'user'),
(51, 'Usuario41', 'usuario41@example.com', '$2y$10$yQhQJheU4QrQeIUJJ2fmyOK33kwbORsONLki/3hD7DUh229BGtmKK', '2024-07-05 05:00:00', 'user'),
(52, 'Usuario42', 'usuario42@example.com', '$2y$10$vqbtBH38ID2pJ3Bc.BsYJuGvwefi.1tx32RSzjANFjFdXa.DRvfAq', '2024-08-17 05:00:00', 'user'),
(53, 'Usuario43', 'usuario43@example.com', '$2y$10$xJvQps6F7BSkXD.W5ynQQuBpzFuIcCsNHOXrDvoSr4PscpapwqSKG', '2024-03-02 05:00:00', 'user'),
(54, 'Usuario44', 'usuario44@example.com', '$2y$10$MfLAS.UZz0YiKqSmHbooneofTzDNMt5ANZsb8Oxxr65xccfLnPpiu', '2024-09-12 05:00:00', 'user'),
(55, 'Usuario45', 'usuario45@example.com', '$2y$10$7rNU4IQENcL5xXyFO5izy.orsX.u2hWO2hmKHxcjI3ee9vC8ECq0G', '2024-06-23 05:00:00', 'user'),
(56, 'Usuario46', 'usuario46@example.com', '$2y$10$ybB2G9YGwCwne5IPOebBKuZW35qsFy5oPOrPjbTKVxvyyVeMDFePG', '2024-11-25 05:00:00', 'user'),
(57, 'Usuario47', 'usuario47@example.com', '$2y$10$IquzqIX7jYuWITLDzCGg1el2CwiepL/g0AVnlgaGogC9p7m48n1kG', '2024-01-08 05:00:00', 'user'),
(58, 'Usuario48', 'usuario48@example.com', '$2y$10$7NNmQ56vzRj0g4cmgtbFCevj9U0o2pJpNOGZckoYpLZLzsuoPOQTK', '2024-02-21 05:00:00', 'user'),
(59, 'Usuario49', 'usuario49@example.com', '$2y$10$RY5wU8xqLUHQciihUZa.3OBWQcSjvRSZUdMrrV4y5.2Whagb135.m', '2024-11-28 05:00:00', 'user'),
(60, 'Usuario50', 'usuario50@example.com', '$2y$10$jrBT9YfAVLo.NNU4mfsyXu0gk9qUCgq8s4g6OEXeQsmRN.sny03au', '2024-11-22 05:00:00', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_courses`
--

CREATE TABLE `user_courses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `enrollment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_courses`
--

INSERT INTO `user_courses` (`id`, `user_id`, `course_id`, `completed`, `enrollment_date`) VALUES
(5, 9, 23, 1, '2024-11-24 14:15:06'),
(6, 9, 22, 1, '2024-11-24 14:15:07'),
(7, 9, 21, 1, '2024-11-24 14:15:09'),
(8, 9, 20, 1, '2024-11-24 14:15:11'),
(9, 9, 19, 0, '2024-11-24 14:15:13'),
(10, 9, 18, 0, '2024-11-24 14:15:14'),
(11, 9, 17, 1, '2024-11-24 14:15:16'),
(12, 9, 14, 0, '2024-11-24 14:23:45'),
(13, 11, 13, 1, '2024-08-15 00:00:00'),
(14, 11, 15, 0, '2024-08-15 00:00:00'),
(15, 11, 21, 1, '2024-08-15 00:00:00'),
(16, 11, 23, 1, '2024-08-15 00:00:00'),
(17, 12, 19, 1, '2024-08-05 00:00:00'),
(18, 12, 22, 1, '2024-08-05 00:00:00'),
(19, 13, 16, 1, '2024-01-15 00:00:00'),
(20, 13, 19, 1, '2024-01-15 00:00:00'),
(21, 13, 20, 1, '2024-01-15 00:00:00'),
(22, 13, 23, 0, '2024-01-15 00:00:00'),
(23, 14, 22, 1, '2024-10-22 00:00:00'),
(24, 15, 16, 0, '2024-08-13 00:00:00'),
(25, 15, 18, 1, '2024-08-13 00:00:00'),
(26, 15, 19, 0, '2024-08-13 00:00:00'),
(27, 16, 13, 1, '2024-02-19 00:00:00'),
(28, 16, 16, 1, '2024-02-19 00:00:00'),
(29, 16, 17, 0, '2024-02-19 00:00:00'),
(30, 16, 22, 0, '2024-02-19 00:00:00'),
(31, 16, 23, 0, '2024-02-19 00:00:00'),
(32, 17, 11, 0, '2024-04-20 00:00:00'),
(33, 17, 23, 0, '2024-04-20 00:00:00'),
(34, 18, 12, 1, '2024-08-26 00:00:00'),
(35, 18, 21, 0, '2024-08-26 00:00:00'),
(36, 18, 23, 0, '2024-08-26 00:00:00'),
(37, 19, 17, 1, '2024-07-16 00:00:00'),
(38, 19, 18, 0, '2024-07-16 00:00:00'),
(39, 19, 19, 0, '2024-07-16 00:00:00'),
(40, 19, 22, 0, '2024-07-16 00:00:00'),
(41, 20, 15, 1, '2024-07-22 00:00:00'),
(42, 20, 23, 1, '2024-07-22 00:00:00'),
(43, 21, 11, 0, '2024-03-28 00:00:00'),
(44, 21, 13, 1, '2024-03-28 00:00:00'),
(45, 21, 14, 0, '2024-03-28 00:00:00'),
(46, 21, 20, 0, '2024-03-28 00:00:00'),
(47, 21, 22, 1, '2024-03-28 00:00:00'),
(48, 22, 13, 1, '2024-05-06 00:00:00'),
(49, 22, 23, 1, '2024-05-06 00:00:00'),
(50, 23, 12, 1, '2024-01-24 00:00:00'),
(51, 24, 12, 0, '2024-03-19 00:00:00'),
(52, 24, 13, 0, '2024-03-19 00:00:00'),
(53, 24, 16, 1, '2024-03-19 00:00:00'),
(54, 24, 17, 1, '2024-03-19 00:00:00'),
(55, 25, 14, 1, '2024-03-13 00:00:00'),
(56, 26, 13, 0, '2024-04-16 00:00:00'),
(57, 26, 14, 1, '2024-04-16 00:00:00'),
(58, 26, 18, 0, '2024-04-16 00:00:00'),
(59, 26, 21, 0, '2024-04-16 00:00:00'),
(60, 26, 23, 1, '2024-04-16 00:00:00'),
(61, 27, 16, 0, '2024-05-13 00:00:00'),
(62, 27, 18, 1, '2024-05-13 00:00:00'),
(63, 27, 22, 0, '2024-05-13 00:00:00'),
(64, 28, 18, 1, '2024-07-14 00:00:00'),
(65, 28, 19, 0, '2024-07-14 00:00:00'),
(66, 29, 11, 1, '2024-07-28 00:00:00'),
(67, 29, 15, 0, '2024-07-28 00:00:00'),
(68, 29, 16, 1, '2024-07-28 00:00:00'),
(69, 30, 11, 1, '2024-06-01 00:00:00'),
(70, 30, 18, 1, '2024-06-01 00:00:00'),
(71, 31, 13, 0, '2024-08-02 00:00:00'),
(72, 31, 14, 0, '2024-08-02 00:00:00'),
(73, 31, 17, 1, '2024-08-02 00:00:00'),
(74, 31, 19, 1, '2024-08-02 00:00:00'),
(75, 32, 19, 1, '2024-11-05 00:00:00'),
(76, 32, 21, 0, '2024-11-05 00:00:00'),
(77, 33, 17, 1, '2024-02-27 00:00:00'),
(78, 34, 15, 1, '2024-09-03 00:00:00'),
(79, 34, 18, 0, '2024-09-03 00:00:00'),
(80, 34, 21, 0, '2024-09-03 00:00:00'),
(81, 35, 15, 0, '2024-04-21 00:00:00'),
(82, 35, 16, 0, '2024-04-21 00:00:00'),
(83, 35, 17, 0, '2024-04-21 00:00:00'),
(84, 35, 20, 1, '2024-04-21 00:00:00'),
(85, 36, 21, 1, '2024-03-21 00:00:00'),
(86, 37, 12, 0, '2024-08-12 00:00:00'),
(87, 37, 15, 1, '2024-08-12 00:00:00'),
(88, 37, 18, 1, '2024-08-12 00:00:00'),
(89, 37, 19, 0, '2024-08-12 00:00:00'),
(90, 37, 20, 1, '2024-08-12 00:00:00'),
(91, 38, 15, 0, '2024-02-18 00:00:00'),
(92, 38, 18, 1, '2024-02-18 00:00:00'),
(93, 39, 15, 0, '2024-01-05 00:00:00'),
(94, 39, 18, 1, '2024-01-05 00:00:00'),
(95, 40, 12, 0, '2024-01-12 00:00:00'),
(96, 40, 14, 1, '2024-01-12 00:00:00'),
(97, 40, 16, 1, '2024-01-12 00:00:00'),
(98, 40, 18, 0, '2024-01-12 00:00:00'),
(99, 40, 20, 1, '2024-01-12 00:00:00'),
(100, 41, 14, 1, '2024-05-06 00:00:00'),
(101, 41, 19, 0, '2024-05-06 00:00:00'),
(102, 41, 20, 1, '2024-05-06 00:00:00'),
(103, 41, 21, 0, '2024-05-06 00:00:00'),
(104, 42, 19, 0, '2024-09-03 00:00:00'),
(105, 43, 11, 0, '2024-01-25 00:00:00'),
(106, 43, 12, 1, '2024-01-25 00:00:00'),
(107, 43, 16, 1, '2024-01-25 00:00:00'),
(108, 43, 17, 1, '2024-01-25 00:00:00'),
(109, 43, 21, 1, '2024-01-25 00:00:00'),
(110, 44, 15, 1, '2024-04-13 00:00:00'),
(111, 44, 16, 1, '2024-04-13 00:00:00'),
(112, 44, 18, 0, '2024-04-13 00:00:00'),
(113, 44, 22, 0, '2024-04-13 00:00:00'),
(114, 45, 22, 0, '2024-09-23 00:00:00'),
(115, 46, 14, 1, '2024-11-19 00:00:00'),
(116, 46, 15, 0, '2024-11-19 00:00:00'),
(117, 46, 23, 1, '2024-11-19 00:00:00'),
(118, 47, 11, 1, '2024-04-01 00:00:00'),
(119, 47, 23, 1, '2024-04-01 00:00:00'),
(120, 48, 21, 1, '2024-06-19 00:00:00'),
(121, 49, 15, 0, '2024-09-27 00:00:00'),
(122, 49, 20, 1, '2024-09-27 00:00:00'),
(123, 49, 23, 1, '2024-09-27 00:00:00'),
(124, 50, 23, 0, '2024-02-20 00:00:00'),
(125, 51, 13, 0, '2024-07-05 00:00:00'),
(126, 51, 14, 1, '2024-07-05 00:00:00'),
(127, 51, 15, 0, '2024-07-05 00:00:00'),
(128, 51, 22, 1, '2024-07-05 00:00:00'),
(129, 52, 13, 0, '2024-08-17 00:00:00'),
(130, 52, 14, 0, '2024-08-17 00:00:00'),
(131, 53, 11, 1, '2024-03-02 00:00:00'),
(132, 53, 19, 1, '2024-03-02 00:00:00'),
(133, 53, 22, 0, '2024-03-02 00:00:00'),
(134, 54, 11, 0, '2024-09-12 00:00:00'),
(135, 54, 16, 1, '2024-09-12 00:00:00'),
(136, 54, 19, 0, '2024-09-12 00:00:00'),
(137, 54, 22, 0, '2024-09-12 00:00:00'),
(138, 54, 23, 0, '2024-09-12 00:00:00'),
(139, 55, 18, 0, '2024-06-23 00:00:00'),
(140, 55, 21, 1, '2024-06-23 00:00:00'),
(141, 56, 13, 1, '2024-11-25 00:00:00'),
(142, 56, 14, 0, '2024-11-25 00:00:00'),
(143, 56, 18, 1, '2024-11-25 00:00:00'),
(144, 57, 12, 0, '2024-01-08 00:00:00'),
(145, 57, 16, 0, '2024-01-08 00:00:00'),
(146, 57, 17, 1, '2024-01-08 00:00:00'),
(147, 57, 18, 0, '2024-01-08 00:00:00'),
(148, 57, 22, 0, '2024-01-08 00:00:00'),
(149, 58, 12, 0, '2024-02-21 00:00:00'),
(150, 58, 21, 1, '2024-02-21 00:00:00'),
(151, 59, 12, 1, '2024-11-28 00:00:00'),
(152, 59, 16, 0, '2024-11-28 00:00:00'),
(153, 59, 22, 1, '2024-11-28 00:00:00'),
(154, 59, 23, 1, '2024-11-28 00:00:00'),
(155, 60, 15, 1, '2024-11-22 00:00:00'),
(156, 60, 18, 1, '2024-11-22 00:00:00'),
(157, 60, 20, 0, '2024-11-22 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `user_courses`
--
ALTER TABLE `user_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `user_courses`
--
ALTER TABLE `user_courses`
  ADD CONSTRAINT `user_courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

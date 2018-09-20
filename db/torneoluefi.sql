
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torneolu_efi`
--
CREATE DATABASE IF NOT EXISTS `torneolu_efi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `torneolu_efi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_equipos_torneo`
--

CREATE TABLE `datos_equipos_torneo` (
  `id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `torneo_id` int(11) NOT NULL,
  `partidos_jugados` int(11) DEFAULT NULL,
  `puntos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_equipos_torneo`
--

INSERT INTO `datos_equipos_torneo` (`id`, `equipo_id`, `torneo_id`, `partidos_jugados`, `puntos`) VALUES
(202, 5, 1, 20, 44),
(203, 2, 1, 20, 50),
(204, 21, 1, 20, 35),
(205, 11, 1, 20, 38),
(206, 3, 1, 20, 42),
(207, 18, 1, 20, 34),
(209, 29, 1, 20, 48),
(210, 34, 1, 20, 36),
(211, 26, 1, 20, 33),
(212, 9, 1, 20, 33),
(213, 14, 1, 20, 39),
(214, 1, 1, 20, 48),
(215, 4, 7, 16, 37),
(216, 7, 7, 16, 24),
(217, 13, 7, 16, 26),
(218, 15, 7, 19, 43),
(219, 37, 7, 16, 41),
(220, 38, 7, 16, 37),
(221, 24, 7, 16, 30),
(222, 39, 7, 20, 42),
(223, 40, 7, 20, 24),
(224, 41, 7, 16, 35),
(225, 43, 7, 19, 36),
(227, 9, 12, 5, 15),
(228, 11, 12, 4, 4),
(229, 14, 12, 5, 13),
(230, 15, 12, 5, 12),
(231, 19, 12, 4, 5),
(232, 21, 12, 5, 8),
(233, 23, 12, 5, 9),
(234, 29, 12, 5, 12),
(235, 32, 12, 4, 6),
(236, 34, 12, 4, 5),
(237, 42, 12, 5, 12),
(238, 43, 12, 5, 11),
(239, 5, 11, 4, 5),
(240, 7, 11, 4, 5),
(241, 11, 11, 1, 1),
(242, 19, 11, 4, 6),
(243, 23, 11, 5, 13),
(244, 29, 11, 4, 9),
(245, 34, 11, 3, 6),
(246, 40, 11, 5, 15),
(247, 1, 2, 5, 14),
(248, 2, 2, 5, 11),
(249, 3, 2, 5, 11),
(250, 5, 2, 5, 10),
(251, 9, 2, 5, 10),
(252, 11, 2, 5, 11),
(253, 14, 2, 5, 11),
(254, 18, 2, 5, 5),
(255, 19, 2, 5, 10),
(256, 21, 2, 5, 7),
(257, 29, 2, 5, 11),
(258, 34, 2, 5, 9),
(259, 1, 3, 5, 8),
(260, 2, 3, 5, 13),
(261, 3, 3, 5, 13),
(262, 5, 3, 5, 10),
(263, 9, 3, 5, 13),
(264, 11, 3, 5, 8),
(265, 14, 3, 5, 13),
(266, 18, 3, 5, 9),
(267, 19, 3, 5, 5),
(268, 21, 3, 5, 5),
(269, 29, 3, 5, 15),
(270, 34, 3, 5, 8),
(271, 1, 4, 5, 11),
(272, 2, 4, 5, 15),
(273, 3, 4, 5, 12),
(274, 5, 4, 5, 11),
(275, 9, 4, 5, 5),
(276, 11, 4, 5, 7),
(277, 14, 4, 5, 8),
(278, 18, 4, 5, 13),
(279, 19, 4, 5, 5),
(280, 21, 4, 5, 9),
(281, 29, 4, 5, 15),
(282, 34, 4, 5, 9),
(283, 34, 5, 5, 10),
(284, 2, 5, 5, 11),
(285, 19, 5, 5, 13),
(286, 14, 5, 5, 7),
(287, 29, 5, 5, 7),
(288, 9, 5, 5, 5),
(289, 1, 5, 5, 15),
(290, 5, 5, 5, 13),
(291, 21, 5, 5, 14),
(292, 3, 5, 5, 7),
(293, 11, 5, 5, 12),
(294, 18, 5, 5, 7),
(295, 40, 8, 5, 8),
(296, 37, 8, 4, 8),
(297, 15, 8, 5, 14),
(298, 7, 8, 4, 4),
(299, 24, 8, 4, 8),
(300, 41, 8, 4, 9),
(301, 4, 8, 4, 6),
(302, 39, 8, 5, 10),
(303, 38, 8, 4, 4),
(304, 43, 8, 5, 14),
(305, 13, 8, 4, 11),
(306, 40, 9, 5, 5),
(307, 37, 9, 4, 11),
(308, 15, 9, 4, 9),
(309, 7, 9, 4, 5),
(310, 24, 9, 4, 6),
(311, 41, 9, 4, 8),
(312, 39, 9, 5, 12),
(313, 4, 9, 4, 11),
(314, 38, 9, 4, 11),
(315, 43, 9, 4, 9),
(317, 13, 9, 4, 5),
(318, 40, 10, 5, 11),
(319, 37, 10, 4, 10),
(320, 15, 10, 5, 10),
(321, 7, 10, 4, 8),
(322, 24, 10, 4, 8),
(323, 41, 10, 4, 8),
(324, 4, 10, 4, 12),
(325, 39, 10, 5, 7),
(326, 38, 10, 4, 12),
(327, 43, 10, 5, 6),
(328, 13, 10, 4, 4),
(329, 40, 13, 5, 0),
(330, 37, 13, 4, 12),
(331, 15, 13, 5, 11),
(332, 7, 13, 4, 7),
(333, 24, 13, 4, 8),
(334, 41, 13, 4, 10),
(335, 39, 13, 5, 13),
(336, 4, 13, 4, 8),
(337, 38, 13, 4, 10),
(338, 43, 13, 5, 7),
(339, 13, 13, 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `divisiones`
--

CREATE TABLE `divisiones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `divisiones`
--

INSERT INTO `divisiones` (`id`, `nombre`) VALUES
(1, 'Infantiles'),
(2, 'Juveniles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equipo_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `escudo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equipo_id`, `nombre`, `escudo`) VALUES
(1, 'CSB Verde', 'CSB_Verde_1.jpg'),
(2, 'CSB Blanco', 'CSB_Blanco_2.png'),
(3, 'Nordelta Verde', 'Nordelta_Verde_3.png'),
(4, 'Nordelta Blanco', 'Nordelta_Blanco_4.jpg'),
(5, 'River Pilar', 'River_pilar_Formativo_5.png'),
(7, 'F.F.C', 'F.F.C_7.jpg'),
(9, 'Pacheco Futbol', 'UTN_Azul_9.jpg'),
(11, 'Boulevard', 'Boulevard_11.png'),
(12, 'Libre', 'Libre_12.jpg'),
(13, 'El Poli Blanco', 'El_Poli_Blanco_13.jpg'),
(14, 'Barrio Nuevo', 'Barrio_Nuevo_14.jpg'),
(15, 'El Chasqui', 'El_Chasqui_15.jpg'),
(17, 'Esc Magliano', 'Esc_Magliano_17.png'),
(18, 'El Encuentro Naranja', 'El_Encuentro_18.jpg'),
(19, 'El Poli', 'El_Poli_19.jpg'),
(21, 'Delta FC', 'Delta_FC_21.jpg'),
(23, 'Club Santa Barbara', 'CLUB_SANTA_BARBARA_22.jpg'),
(24, 'Semillero FC', 'Loquitos_X_el_Futbol_24.jpg'),
(25, 'Libre', 'Libre_25.png'),
(26, 'El Poli', 'El_Poli_Blanco_26.jpg'),
(27, 'River pilar Escuela', 'River_pilar_Escuela_27.png'),
(29, 'Rhino', 'Rhino_29.jpg'),
(32, 'El Encuentro', 'El_Encuentro_32.jpg'),
(33, 'River', 'River_33.png'),
(34, 'Argentinos San Isidro', 'Argentinos_San_Isidro_34.jpg'),
(37, 'Esc.de Futbol Tocalli', 'C.H.C_Andersen_37.jpg'),
(38, 'El Encuentro Negro', 'El_Encuentro_Negro_38.jpg'),
(39, 'Delta Negro F.C', 'Delta_Negro_F.C_39.jpg'),
(40, 'Argentinos Blanco S.I', 'Argentinos_Blanco_S.I_40.jpg'),
(41, 'C.F Roma', 'Esc_Roma_41.jpg'),
(42, 'San Lorenzo Bella Vista', 'San_Lorenzo_Bella_Vista_42.jpg'),
(43, 'Boulevard Azul', 'Boulevard_Azul_43.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `nombre`, `categoria_id`) VALUES
(15, 'CSB_VERDE_00000002.JPG', 2),
(16, 'CSB_VERDE_00000016.jpg', 2),
(18, 'CSB_VERDE_00000018.JPG', 2),
(19, 'CSB_VERDE_00000019.JPG', 2),
(20, 'CSB_VERDE_00000020.JPG', 2),
(21, 'CSB_VERDE_00000021.JPG', 2),
(22, 'CSB_VERDE_00000022.JPG', 2),
(26, 'CSB_VERDE_00000026.jpg', 2),
(28, 'CSB_VERDE_00000027.jpg', 2),
(30, 'CSB_VERDE_00000030.jpg', 2),
(31, 'CSB_BLANCO_00000002.jpg', 3),
(32, 'CSB_BLANCO_00000032.JPG', 3),
(34, 'CSB_BLANCO_00000034.JPG', 3),
(36, 'CSB_BLANCO_00000035.jpg', 3),
(42, 'CSB_BLANCO_00000037.JPG', 3),
(43, 'CSB_BLANCO_00000043.JPG', 3),
(44, 'CSB_BLANCO_00000044.JPG', 3),
(45, 'CSB_BLANCO_00000045.JPG', 3),
(46, 'CSB_VERDE_00000031.JPG', 2),
(47, 'CLUB_PACHECO_-_ITALIANO_00000002.jpg', 5),
(48, 'CLUB_PACHECO_-_ITALIANO_00000048.jpg', 5),
(49, 'CLUB_PACHECO_-_ITALIANO_00000049.jpg', 5),
(50, 'CLUB_PACHECO_-_ITALIANO_00000050.jpg', 5),
(51, 'CLUB_PACHECO_-_ITALIANO_00000051.jpg', 5),
(53, 'CLUB_BARRIO_NUEVO_00000002.jpg', 6),
(54, 'CLUB_BARRIO_NUEVO_00000054.jpg', 6),
(55, 'CLUB_BARRIO_NUEVO_00000055.jpg', 6),
(56, 'CLUB_BARRIO_NUEVO_00000056.jpg', 6),
(57, 'CLUB_BARRIO_NUEVO_00000057.jpg', 6),
(59, 'CLUB_TERCER_TIEMPO_00000002.jpg', 7),
(61, 'CLUB_TERCER_TIEMPO_00000060.jpg', 7),
(62, 'CLUB_TERCER_TIEMPO_00000062.jpg', 7),
(63, 'CLUB_TERCER_TIEMPO_00000063.jpg', 7),
(64, 'CLUB_TERCER_TIEMPO_00000064.jpg', 7),
(65, 'CLUB_TERCER_TIEMPO_00000065.jpg', 7),
(66, 'CLUB_TERCER_TIEMPO_00000066.jpg', 7),
(72, 'CSB_BLANCO_00000046.JPG', 3),
(73, 'CSB_BLANCO_00000073.JPG', 3),
(78, 'CAMPEONES_APERTURA_2016_00000002.jpg', 8),
(80, 'NORDELTA_00000002.jpg', 9),
(81, 'NORDELTA_00000081.jpg', 9),
(93, 'EL_ENCUENTRO_00000002.jpg', 11),
(94, 'EL_ENCUENTRO_00000094.jpg', 11),
(95, 'EL_ENCUENTRO_00000095.jpg', 11),
(96, 'EL_ENCUENTRO_00000096.jpg', 11),
(97, 'EL_ENCUENTRO_00000097.jpg', 11),
(98, 'EL_ENCUENTRO_00000098.jpg', 11),
(99, 'EL_ENCUENTRO_00000099.jpg', 11),
(102, 'CAMPEONES_APERTURA_2016_00000079.jpg', 8),
(105, 'CAMPEONES_APERTURA_2016_00000105.jpg', 8),
(107, 'CAMPEONES_APERTURA_2016_00000106.jpg', 8),
(110, 'CAMPEONES_APERTURA_2016_00000108.jpg', 8),
(112, 'CAMPEONES_APERTURA_2016_00000111.jpg', 8),
(116, 'CAMPEONES_APERTURA_2016_00000113.jpg', 8),
(117, 'CAMPEONES_APERTURA_2016_00000117.jpg', 8),
(118, 'CAMPEONES_APERTURA_2016_00000118.jpg', 8),
(120, 'CAMPEONES_APERTURA_2016_00000119.jpg', 8),
(121, 'CAMPEONES_APERTURA_2016_00000121.jpg', 8),
(123, 'CAMPEONES_APERTURA_2016_00000122.jpg', 8),
(126, 'UTN_00000002.JPG', 12),
(127, 'UTN_00000127.JPG', 12),
(128, 'UTN_00000128.JPG', 12),
(129, 'UTN_00000129.JPG', 12),
(130, 'UTN_00000130.JPG', 12),
(151, 'CAMPEONES_CLAUSURA_2016_00000002.jpg', 13),
(152, 'CAMPEONES_CLAUSURA_2016_00000152.jpg', 13),
(153, 'CAMPEONES_CLAUSURA_2016_00000153.jpg', 13),
(154, 'CAMPEONES_CLAUSURA_2016_00000154.jpg', 13),
(155, 'CAMPEONES_CLAUSURA_2016_00000155.jpg', 13),
(156, 'CAMPEONES_CLAUSURA_2016_00000156.jpg', 13),
(157, 'CAMPEONES_CLAUSURA_2016_00000157.jpg', 13),
(158, 'CAMPEONES_CLAUSURA_2016_00000158.jpg', 13),
(159, 'CAMPEONES_CLAUSURA_2016_00000159.jpg', 13),
(162, 'CAMPEONES_CLAUSURA_2016_00000160.jpg', 13),
(163, 'CAMPEONES_CLAUSURA_2016_00000163.jpg', 13),
(164, 'RHINO_00000002.jpg', 14),
(165, 'RHINO_00000165.jpg', 14),
(171, 'Slider_Principal_00000002.jpg', 1),
(172, 'Slider_Principal_00000172.jpg', 1),
(173, 'Slider_Principal_00000173.jpg', 1),
(174, 'Slider_Principal_00000174.jpg', 1),
(175, 'Slider_Principal_00000175.jpg', 1),
(176, 'Slider_Principal_00000176.jpg', 1),
(177, 'Slider_Principal_00000177.jpg', 1),
(178, 'Slider_Principal_00000178.jpg', 1),
(179, 'Slider_Principal_00000179.jpg', 1),
(180, 'Slider_Principal_00000180.jpg', 1),
(181, 'Slider_Principal_00000181.jpg', 1),
(182, 'CAMPEONES_APERTURA_2018_00000002.jpg', 16),
(183, 'CAMPEONES_APERTURA_2018_00000183.jpg', 16),
(184, 'CAMPEONES_APERTURA_2018_00000184.jpg', 16),
(185, 'CAMPEONES_APERTURA_2018_00000185.jpg', 16),
(186, 'CAMPEONES_APERTURA_2018_00000186.jpg', 16),
(187, 'CAMPEONES_APERTURA_2018_00000187.jpg', 16),
(188, 'CAMPEONES_APERTURA_2018_00000188.jpg', 16),
(189, 'CAMPEONES_APERTURA_2018_00000189.jpg', 16),
(190, 'CAMPEONES_APERTURA_2018_00000190.jpg', 16),
(191, 'CAMPEONES_APERTURA_2018_00000191.jpg', 16),
(192, 'CAMPEONES_APERTURA_2018_00000192.jpg', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_categorias`
--

CREATE TABLE `imagenes_categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `imagenes_categorias`
--

INSERT INTO `imagenes_categorias` (`id`, `nombre`) VALUES
(1, 'Slider Principal'),
(2, 'CSB VERDE'),
(3, 'CSB BLANCO'),
(5, 'CLUB PACHECO - ITALIANO'),
(6, 'CLUB BARRIO NUEVO'),
(7, 'CLUB TERCER TIEMPO'),
(8, 'CAMPEONES APERTURA 2016'),
(9, 'NORDELTA'),
(11, 'EL ENCUENTRO'),
(12, 'UTN'),
(13, 'CAMPEONES CLAUSURA 2016'),
(14, 'RHINO'),
(15, 'ARGENTINOS SAN ISIDRO'),
(16, 'CAMPEONES APERTURA 2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subtitulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mensaje` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `subtitulo`, `mensaje`) VALUES
(36, 'JUVENILES', 'CATEGORIA 2002/03', 'EN UNA FINAL APASIONANTE ,RHINO SE IMPUSO DE VISITANTE ANTE BARRIO NUEVO Y SE CONSAGRO CAMPEON DEL TORNEO APERTURA !!!'),
(38, 'JUVENILES', 'CATEGORIA 1999/00/01', 'EN UNA FINAL ,NO APTO PARA CARDIACOS ,RHINO LOGRO UN TRIUNFO DE VISITANTE FRENTE AL POLI Y GRITO CAMPEON !!!'),
(40, 'SABADO 15 DE SEPTIEMBRE', 'SE JUEGA FECHA DE POSTERGADOS', 'LES RECORDAMOS  QUE TODOS LOS EQUIPOS QUE ADEUDAN ENCUENTROS TENDRÁN QUE JUGAR LOS PARTIDOS PENDIENTES .');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `partido_id` int(11) NOT NULL,
  `equipo_a` int(255) NOT NULL,
  `equipo_b` int(255) NOT NULL,
  `goles_a` varchar(255) DEFAULT NULL,
  `goles_b` varchar(255) DEFAULT NULL,
  `fecha` int(11) NOT NULL,
  `dia` date NOT NULL,
  `torneo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`partido_id`, `equipo_a`, `equipo_b`, `goles_a`, `goles_b`, `fecha`, `dia`, `torneo_id`) VALUES
(443, 2, 34, '11', '5', 1, '2018-08-11', 1),
(444, 14, 19, '10', '6', 1, '2018-08-11', 1),
(445, 29, 9, '12', '4', 1, '2018-08-11', 1),
(446, 5, 1, '9', '7', 1, '2018-08-11', 1),
(447, 21, 3, '8', '8', 1, '2018-08-11', 1),
(448, 11, 18, '9', '7', 1, '2018-08-11', 1),
(449, 40, 37, '4', '11', 1, '2018-08-11', 7),
(450, 15, 7, '10', '6', 1, '2018-08-11', 7),
(451, 24, 41, '6', '10', 1, '2018-08-11', 7),
(452, 4, 39, '7', '9', 1, '2018-08-11', 7),
(453, 38, 43, '9', '7', 1, '2018-08-11', 7),
(454, 13, 25, NULL, '', 1, '2018-08-11', 7),
(455, 23, 34, '3', '1', 1, '2018-08-11', 11),
(456, 7, 19, '2', '2', 1, '2018-08-11', 11),
(457, 11, 29, NULL, NULL, 1, '2018-08-11', 11),
(458, 5, 40, '1', '3', 1, '2018-08-11', 11),
(459, 23, 34, '3', '1', 1, '2018-08-11', 12),
(460, 14, 19, '2', '2', 1, '2018-08-11', 12),
(461, 9, 29, '3', '1', 1, '2018-08-11', 12),
(462, 15, 42, '1', '3', 1, '2018-08-11', 12),
(463, 21, 43, '3', '1', 1, '2018-08-11', 12),
(464, 11, 32, '1', '3', 1, '2018-08-11', 12),
(465, 14, 23, '3', '1', 2, '2018-08-18', 12),
(466, 34, 9, '1', '3', 2, '2018-08-18', 12),
(467, 15, 19, '3', '1', 2, '2018-08-18', 12),
(468, 21, 29, '1', '3', 2, '2018-08-18', 12),
(469, 32, 42, '1', '3', 2, '2018-08-18', 12),
(470, 11, 43, '1', '3', 2, '2018-08-18', 12),
(471, 7, 23, '1', '3', 2, '2018-08-18', 11),
(472, 11, 34, '0', '0', 2, '2018-08-18', 11),
(473, 40, 19, '3', '1', 2, '2018-08-18', 11),
(474, 29, 5, '2', '2', 2, '2018-08-18', 11),
(475, 14, 2, '6', '10', 2, '2018-08-18', 1),
(476, 34, 9, '8', '8', 2, '2018-08-18', 1),
(477, 1, 19, '12', '4', 2, '2018-08-18', 1),
(478, 29, 21, '10', '6', 2, '2018-08-18', 1),
(479, 18, 5, '6', '10', 2, '2018-08-18', 1),
(480, 3, 11, '11', '5', 2, '2018-08-18', 1),
(481, 15, 40, '10', '5', 2, '2018-08-18', 7),
(482, 13, 24, '5', '11', 2, '2018-08-18', 7),
(483, 39, 7, '12', '4', 2, '2018-08-18', 7),
(484, 41, 38, '8', '8', 2, '2018-08-18', 7),
(485, 43, 4, '6', '10', 2, '2018-08-18', 7),
(486, 37, 25, NULL, NULL, 2, '2018-08-18', 7),
(487, 23, 11, '3', '1', 3, '2018-08-24', 11),
(488, 7, 40, '1', '3', 3, '2018-08-24', 11),
(489, 5, 34, '1', '3', 3, '2018-08-24', 11),
(490, 29, 19, '3', '1', 3, '2018-08-24', 11),
(491, 23, 9, '1', '3', 3, '2018-08-25', 12),
(492, 14, 15, '2', '2', 3, '2018-08-25', 12),
(493, 21, 34, '2', '2', 3, '2018-08-25', 12),
(494, 19, 32, NULL, NULL, 3, '2018-08-25', 12),
(495, 29, 11, '3', '1', 3, '2018-08-25', 12),
(496, 42, 43, '1', '3', 3, '2018-08-25', 12),
(497, 2, 9, '10', '6', 3, '2018-08-25', 1),
(498, 14, 1, '6', '10', 3, '2018-08-25', 1),
(499, 21, 34, '8', '8', 3, '2018-08-25', 1),
(500, 19, 18, '8', '8', 3, '2018-08-25', 1),
(501, 11, 29, '7', '9', 3, '2018-08-25', 1),
(502, 5, 3, '9', '7', 3, '2018-08-25', 1),
(503, 37, 15, '9', '7', 3, '2018-08-25', 7),
(504, 40, 39, '6', '9', 3, '2018-08-25', 7),
(505, 38, 13, '10', '6', 3, '2018-08-25', 7),
(506, 7, 43, '7', '9', 3, '2018-08-25', 7),
(507, 4, 41, '10', '6', 3, '2018-08-25', 7),
(508, 24, 25, NULL, NULL, 3, '2018-08-25', 7),
(509, 23, 40, '1', '3', 4, '2018-09-01', 11),
(510, 5, 11, NULL, NULL, 4, '2018-09-01', 11),
(511, 29, 7, '3', '1', 4, '2018-09-01', 11),
(512, 19, 34, '2', '2', 4, '2018-09-01', 11),
(513, 15, 23, '3', '1', 4, '2018-09-02', 12),
(514, 9, 21, '3', '1', 4, '2018-09-02', 12),
(515, 32, 14, '1', '3', 4, '2018-09-02', 12),
(516, 34, 11, NULL, NULL, 4, '2018-09-02', 12),
(517, 43, 19, '3', '1', 4, '2018-09-02', 12),
(518, 29, 42, '2', '2', 4, '2018-09-02', 12),
(519, 1, 2, '8', '8', 4, '2018-09-02', 1),
(520, 9, 21, '8', '8', 4, '2018-09-02', 1),
(521, 18, 14, '8', '8', 4, '2018-09-02', 1),
(522, 34, 11, '8', '8', 4, '2018-09-02', 1),
(523, 3, 19, '9', '7', 4, '2018-09-02', 1),
(524, 29, 5, '9', '7', 4, '2018-09-02', 1),
(525, 24, 37, '7', '9', 4, '2018-09-02', 7),
(526, 39, 15, '8', '8', 4, '2018-09-02', 7),
(527, 43, 40, '10', '5', 4, '2018-09-02', 7),
(528, 13, 4, '6', '10', 4, '2018-09-02', 7),
(529, 41, 7, NULL, NULL, 4, '2018-09-02', 7),
(530, 38, 25, NULL, NULL, 4, '2018-09-02', 7),
(531, 23, 5, '3', '1', 5, '2018-09-08', 11),
(532, 29, 40, '1', '3', 5, '2018-09-08', 11),
(533, 19, 11, NULL, NULL, 5, '2018-09-08', 11),
(534, 7, 34, NULL, NULL, 5, '2018-09-08', 11),
(535, 23, 21, '3', '1', 5, '2018-09-08', 12),
(536, 15, 32, '3', '1', 5, '2018-09-08', 12),
(537, 11, 9, '1', '3', 5, '2018-09-08', 12),
(538, 14, 43, '3', '1', 5, '2018-09-08', 12),
(539, 34, 42, '1', '3', 5, '2018-09-08', 12),
(540, 26, 29, '1', '3', 5, '2018-09-08', 12),
(541, 2, 21, '11', '5', 5, '2018-09-08', 1),
(542, 1, 18, '11', '5', 5, '2018-09-08', 1),
(543, 11, 9, '9', '7', 5, '2018-09-08', 1),
(544, 14, 3, '9', '7', 5, '2018-09-08', 1),
(545, 5, 34, '9', '7', 5, '2018-09-08', 1),
(546, 29, 19, '8', '8', 5, '2018-09-08', 1),
(547, 39, 37, '4', '12', 5, '2018-09-08', 7),
(548, 38, 24, '10', '6', 5, '2018-09-08', 7),
(549, 15, 43, '8', '4', 5, '2018-09-08', 7),
(550, 41, 40, '11', '4', 5, '2018-09-08', 7),
(551, 7, 13, '7', '9', 5, '2018-09-08', 7),
(552, 4, 25, NULL, NULL, 5, '2018-09-08', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `torneo_id` int(11) NOT NULL,
  `nombre_torneo` varchar(255) NOT NULL,
  `zona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`torneo_id`, `nombre_torneo`, `zona_id`) VALUES
(1, 'General', 1),
(2, 'Categoría 2004/2005', 1),
(3, 'Categoría 2006/2007', 1),
(4, 'Categoría 2008/2009', 1),
(5, 'Categoría 2010/2011', 1),
(6, 'General', 0),
(7, 'General', 2),
(8, 'Categoría 2004/2005', 2),
(9, 'Categoría 2006/2007', 2),
(10, 'Categoría 2008/2009', 2),
(11, 'Categoría 99/00/01', 3),
(12, 'Categoría 2002/2003', 3),
(13, 'Categoría 2010/2011', 2),
(14, 'Categoría 1999', 0),
(15, 'Categoría 2001/2002', 5),
(16, 'Categoría 2001/2002', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Martin Mantara', 'mmantara@luefi.com.ar', '$2y$10$d8XFNxt07l0vvThnX9QsSOPdmWyFKzWTb46xJ2E.4HsiGAUQ/3oJG', NULL, '2017-09-07 05:14:32', '2017-09-07 05:14:32'),
(2, 'Martin Fronteras', 'mfronteras@luefi.com.ar', '$2y$10$a2OPqTwAjO3ayfVZofEuNuX5cDQye4D.aFqObcxbuCw1EPrko5Wp6', NULL, '2017-09-07 05:14:32', '2017-09-07 05:14:32'),
(3, 'Nicolas Ovelar', 'ovelar.nico@gmail.com', '$2y$10$aMW5zqIU1MIexeS0x/93ROKfI2S1XoTQv10CNDJon5Ah.w5GuVd7q', NULL, '2017-09-07 05:14:32', '2017-09-07 05:14:32'),
(4, 'Nicolas Ovelar 2', 'novelar@luefi.com.ar', '$2y$10$a2OPqTwAjO3ayfVZofEuNuX5cDQye4D.aFqObcxbuCw1EPrko5Wp6', NULL, '2017-09-07 05:14:32', '2017-09-07 05:14:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `division_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`id`, `nombre`, `division_id`) VALUES
(1, 'Zona Oro', 1),
(2, 'Zona Plata', 1),
(3, 'Zona Oro', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_equipos_torneo`
--
ALTER TABLE `datos_equipos_torneo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo_id` (`equipo_id`),
  ADD KEY `torneo_id` (`torneo_id`);

--
-- Indices de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equipo_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagenes_categorias_idx` (`categoria_id`);

--
-- Indices de la tabla `imagenes_categorias`
--
ALTER TABLE `imagenes_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`partido_id`),
  ADD KEY `equipo_a_id` (`equipo_a`),
  ADD KEY `equipo_b_id` (`equipo_b`),
  ADD KEY `torneo_partido_id` (`torneo_id`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`torneo_id`),
  ADD KEY `nombre_torneo` (`nombre_torneo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_zonas_division_idx` (`division_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_equipos_torneo`
--
ALTER TABLE `datos_equipos_torneo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT de la tabla `divisiones`
--
ALTER TABLE `divisiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `equipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT de la tabla `imagenes_categorias`
--
ALTER TABLE `imagenes_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `partido_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `torneo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_equipos_torneo`
--
ALTER TABLE `datos_equipos_torneo`
  ADD CONSTRAINT `equipo_id` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `torneo_id` FOREIGN KEY (`torneo_id`) REFERENCES `torneos` (`torneo_id`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_imagenes_categorias` FOREIGN KEY (`categoria_id`) REFERENCES `imagenes_categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `equipo_a_id` FOREIGN KEY (`equipo_a`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `equipo_b_id` FOREIGN KEY (`equipo_b`) REFERENCES `equipos` (`equipo_id`),
  ADD CONSTRAINT `torneo_partido_id` FOREIGN KEY (`torneo_id`) REFERENCES `torneos` (`torneo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

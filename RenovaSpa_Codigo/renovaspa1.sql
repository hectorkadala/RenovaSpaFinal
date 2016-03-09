-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2016 at 02:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `renovaspa1`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencias`
--

CREATE TABLE IF NOT EXISTS `agencias` (
`id` int(11) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `nombre_comercial` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agencias`
--

INSERT INTO `agencias` (`id`, `razon_social`, `nombre_comercial`, `telefono`, `correo_electronico`) VALUES
(1, 'xcaret plus', 'xcaret', '984161', 'xcaret@hotmail.com'),
(2, 'xcaret plus', 'xcaret', '984161', 'xcaret@hotmail.com'),
(3, '', '', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', 'BestBuy', '', ''),
(7, '', 'Best day', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `circustancias_medicas`
--

CREATE TABLE IF NOT EXISTS `circustancias_medicas` (
`id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `circustancias_medicas`
--

INSERT INTO `circustancias_medicas` (`id`, `nombre`) VALUES
(1, 'alergia'),
(2, 'alergia'),
(3, ''),
(4, 'claustrofobia'),
(5, 'problemas');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
`id` int(11) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `idioma_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `agencia_id` int(11) NOT NULL,
  `circustancia_medica:id` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `habitacion` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `pais_id`, `idioma_id`, `hotel_id`, `agencia_id`, `circustancia_medica:id`, `fecha_alta`, `nombre`, `apellidos`, `edad`, `correo_electronico`, `habitacion`) VALUES
(1, 0, 0, 0, 0, 0, '2016-03-01', 'juan', 'tu', 19, 'juan@cachondo', '69'),
(2, 1, 1, 1, 1, 1, '2016-03-01', 'juan', 'Rivera', 22, 'Juan@hotmail.com', '65'),
(3, 1, 1, 1, 1, 1, '2016-03-01', 'juan', 'Rivera', 22, 'Juan@hotmail.com', '65'),
(4, 0, 0, 0, 0, 0, '0000-00-00', 'andres', '', 3, 'andres@hoymail.com', 'habitacion'),
(5, 0, 0, 0, 0, 0, '0000-00-00', '', '', 0, '', ''),
(6, 0, 0, 0, 0, 0, '0000-00-00', 'Cesar', '', 21, 'Cesar@hotmail.com', '293'),
(7, 0, 0, 0, 0, 0, '0000-00-00', 'Andy', '', 22, 'Andycerca@hotmail.com', '69');

-- --------------------------------------------------------

--
-- Table structure for table `hoteles`
--

CREATE TABLE IF NOT EXISTS `hoteles` (
`id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ubicacion` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoteles`
--

INSERT INTO `hoteles` (`id`, `nombre`, `ubicacion`) VALUES
(1, 'barcelo', 'por ahi'),
(2, '', ''),
(3, 'Black Seal', ''),
(4, 'Hilton', '');

-- --------------------------------------------------------

--
-- Table structure for table `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
`id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idiomas`
--

INSERT INTO `idiomas` (`id`, `nombre`) VALUES
(1, 'español');

-- --------------------------------------------------------

--
-- Table structure for table `opiniones`
--

CREATE TABLE IF NOT EXISTS `opiniones` (
`id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opiniones`
--

INSERT INTO `opiniones` (`id`, `nombre`) VALUES
(1, 'buena la chava'),
(2, 'buena la chava'),
(3, ''),
(4, 'bueni'),
(5, 'muyBueno');

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
`id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`id`, `nombre`) VALUES
(1, 'mexico'),
(2, 'italia'),
(3, ''),
(4, 'China'),
(5, 'No muy cerca');

-- --------------------------------------------------------

--
-- Table structure for table `sesiones`
--

CREATE TABLE IF NOT EXISTS `sesiones` (
`id` int(11) NOT NULL,
  `opinion_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `terapeuta_id` int(11) NOT NULL,
  `tratamietno_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sesiones`
--

INSERT INTO `sesiones` (`id`, `opinion_id`, `cliente_id`, `terapeuta_id`, `tratamietno_id`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `terapeutas`
--

CREATE TABLE IF NOT EXISTS `terapeutas` (
`id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `terapeutascol` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `terapeutas`
--

INSERT INTO `terapeutas` (`id`, `nombre`, `terapeutascol`) VALUES
(1, 'melisa', 'hola'),
(2, 'melisa', 'hola'),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, 'Andrea', ''),
(7, 'milissa', '');

-- --------------------------------------------------------

--
-- Table structure for table `tratamientos`
--

CREATE TABLE IF NOT EXISTS `tratamientos` (
`id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tratamientos`
--

INSERT INTO `tratamientos` (`id`, `nombre`) VALUES
(1, 'masaje feliz'),
(2, 'masaje feliz'),
(3, ''),
(4, ''),
(5, ''),
(6, 'Fisico'),
(7, 'Belleza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencias`
--
ALTER TABLE `agencias`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circustancias_medicas`
--
ALTER TABLE `circustancias_medicas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`id`), ADD KEY `pais_id` (`pais_id`,`idioma_id`,`hotel_id`,`agencia_id`,`circustancia_medica:id`), ADD KEY `circustancia_medica:id` (`circustancia_medica:id`), ADD KEY `agencia_id` (`agencia_id`), ADD KEY `hotel_id` (`hotel_id`), ADD KEY `idioma_id` (`idioma_id`);

--
-- Indexes for table `hoteles`
--
ALTER TABLE `hoteles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idiomas`
--
ALTER TABLE `idiomas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opiniones`
--
ALTER TABLE `opiniones`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sesiones`
--
ALTER TABLE `sesiones`
 ADD PRIMARY KEY (`id`), ADD KEY `opinion_id_2` (`opinion_id`), ADD KEY `cliente_id` (`cliente_id`), ADD KEY `terapeuta_id` (`terapeuta_id`), ADD KEY `tratamietno_id` (`tratamietno_id`);

--
-- Indexes for table `terapeutas`
--
ALTER TABLE `terapeutas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tratamientos`
--
ALTER TABLE `tratamientos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencias`
--
ALTER TABLE `agencias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `circustancias_medicas`
--
ALTER TABLE `circustancias_medicas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hoteles`
--
ALTER TABLE `hoteles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `idiomas`
--
ALTER TABLE `idiomas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `opiniones`
--
ALTER TABLE `opiniones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sesiones`
--
ALTER TABLE `sesiones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `terapeutas`
--
ALTER TABLE `terapeutas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tratamientos`
--
ALTER TABLE `tratamientos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

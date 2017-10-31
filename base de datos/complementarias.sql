-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2017 a las 07:54:28
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `complementarias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `act_complementaria`
--

CREATE TABLE `act_complementaria` (
  `clave_act` int(11) NOT NULL,
  `nombre_complementarias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `act_complementaria`
--

INSERT INTO `act_complementaria` (`clave_act`, `nombre_complementarias`) VALUES
(1, 'Tutorias'),
(2, 'Ajedrez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `clave_carrera` varchar(45) NOT NULL,
  `nombre_carrera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`clave_carrera`, `nombre_carrera`) VALUES
('COPU-2010-205', 'Contador Público'),
('IAGR-2010-214', 'Ingeniería en Agronomía'),
('IAMD-2010-213', 'Ingeniería en Administración'),
('IINF-2010-220', 'Ingeniería en Informática'),
('LADM-2010-234', 'Licenciatura en Administración'),
('LBIO-2010-233', 'Licenciatura en Biología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `rfc_departamento` varchar(45) NOT NULL,
  `nombre_departamento` varchar(45) DEFAULT NULL,
  `trabajador_rfc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`rfc_departamento`, `nombre_departamento`, `trabajador_rfc`) VALUES
('1', 'Desarrollo Academico', 'GOVL801204159'),
('251', 'Escolares', 'GOVL801204159');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `No_control` int(11) NOT NULL,
  `nombre_estudiante` varchar(45) DEFAULT NULL,
  `apellido_p` varchar(45) DEFAULT NULL,
  `apellido_m` varchar(45) DEFAULT NULL,
  `semestre` varchar(45) DEFAULT NULL,
  `firma` varchar(45) DEFAULT NULL,
  `carrera` varchar(45) NOT NULL,
  `carrera_clave` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`No_control`, `nombre_estudiante`, `apellido_p`, `apellido_m`, `semestre`, `firma`, `carrera`, `carrera_clave`) VALUES
(14930123, 'Jesus', 'Martinez', 'Solis', 'VI', NULL, 'INGENIERIA EN AGRONOMIA', 'IAGR-2010-214'),
(15930012, 'Maria', 'Lopez', 'Antunez', 'V', NULL, 'LICENCIATURA EN BIOLIOGIA', 'LBIO-2010-233'),
(15930129, 'Daniel', 'Macedonio', 'Bedolla', 'V', ' ', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930159, 'citlali', 'arroyo', 'romero', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930163, 'Alan Henry', 'Alcantar', 'Medrano', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930164, 'Lucas Alberto', 'Alonso', 'Cruz', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930167, 'Paola Rubi', 'Benitez', 'Bartolo', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930168, 'Neftali', 'Cabrera', 'Torres', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930170, 'Mario de jesus', 'Carranza', 'Diaz', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930178, 'Ernesto_Quintín', 'García', 'Pineda', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930185, 'Alondra', 'Jaimes', 'Gutierrez', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930187, 'Evelia', 'Maldonado', 'Miranda', 'V', '', 'INGENIERIA EN INFORMATICA', 'IINF-2010-220'),
(15930194, 'jorge luis', 'ocampo', 'millan', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930200, 'Jose_Ramon', 'Ortiz', 'Lopez', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930208, 'jorge', 'roque', 'pineda', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930210, 'Carlos Alberto ', 'Ruiz', 'Gutierrez', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930216, 'Hernan', 'Santana', 'Benitez', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930218, 'Jonathan', 'Urieta', 'Albarran', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930219, 'Marco Antonio', 'Valle', 'Toledo', 'V', NULL, 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930221, 'Agustín ', 'vivas ', 'Pineda ', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220'),
(15930227, 'Cristian', 'Alonso', 'Ignacio', 'V', '', 'INGENIERÍA EN INFORMÁTICA', 'IINF-2010-220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE `instituto` (
  `clave_instituto` varchar(45) NOT NULL,
  `nombre_instituto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`clave_instituto`, `nombre_instituto`) VALUES
('12DIT0005B', 'Instituto Tecnologico de Cd Altamirano'),
('fuijhr3456y', 'Tecnologico de Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `rfc_instructor` varchar(45) NOT NULL,
  `nombre_instructor` varchar(45) DEFAULT NULL,
  `apellido_p` varchar(45) DEFAULT NULL,
  `apellido_m` varchar(45) DEFAULT NULL,
  `act_complementaria_clave_act` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`rfc_instructor`, `nombre_instructor`, `apellido_p`, `apellido_m`, `act_complementaria_clave_act`) VALUES
('GOVL801204159', 'Leonel', 'González', 'Vidales', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `folio` int(11) NOT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `instituto_clave` varchar(45) NOT NULL,
  `instructor_rfc` varchar(45) NOT NULL,
  `estudiante_No_contro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `rfc_trabajador` varchar(45) NOT NULL,
  `nombre_trabajador` varchar(45) DEFAULT NULL,
  `apellido_p` varchar(45) DEFAULT NULL,
  `apellido_m` varchar(45) DEFAULT NULL,
  `clave_presupuestal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`rfc_trabajador`, `nombre_trabajador`, `apellido_p`, `apellido_m`, `clave_presupuestal`) VALUES
('6789', 'carlos', 'a;ertry', 'kjhgvhjk', NULL),
('CRL0vU5', 'Carlos', 'Bernal', 'Beltran', NULL),
('GOVL801204159', 'Leonel', 'González', 'Vidales', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `act_complementaria`
--
ALTER TABLE `act_complementaria`
  ADD PRIMARY KEY (`clave_act`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`clave_carrera`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`rfc_departamento`),
  ADD KEY `fk_departamento_trabajador1_idx` (`trabajador_rfc`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`No_control`,`carrera_clave`),
  ADD KEY `fk_estudiante_carrera1_idx` (`carrera_clave`);

--
-- Indices de la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`clave_instituto`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`rfc_instructor`),
  ADD KEY `fk_instructor_act_complementaria_idx` (`act_complementaria_clave_act`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `fk_solicitud_instituto1_idx` (`instituto_clave`),
  ADD KEY `fk_solicitud_instructor1_idx` (`instructor_rfc`),
  ADD KEY `fk_solicitud_estudiante1_idx` (`estudiante_No_contro`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`rfc_trabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_departamento_trabajador1` FOREIGN KEY (`trabajador_rfc`) REFERENCES `trabajador` (`rfc_trabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_carrera1` FOREIGN KEY (`carrera_clave`) REFERENCES `carrera` (`clave_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `fk_instructor_act_complementaria` FOREIGN KEY (`act_complementaria_clave_act`) REFERENCES `act_complementaria` (`clave_act`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_estudiante1` FOREIGN KEY (`estudiante_No_contro`) REFERENCES `estudiante` (`No_control`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_instituto1` FOREIGN KEY (`instituto_clave`) REFERENCES `instituto` (`clave_instituto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_instructor1` FOREIGN KEY (`instructor_rfc`) REFERENCES `instructor` (`rfc_instructor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

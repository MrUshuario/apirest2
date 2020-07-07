
CREATE DATABASE citasmedicas;

CREATE TABLE `citas` (
  `idcita` int(11) NOT NULL,
  `citfecha` date NOT NULL,
  `cithora` time NOT NULL,
  `citPaciente` varchar(30) NOT NULL,
  `citMedico` varchar(30) NOT NULL,
  `citestado` enum('Asignado','atendido') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `citobservaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `citas` (`idcita`, `citfecha`, `cithora`, `citPaciente`, `citMedico`, `citestado`, `citobservaciones`) VALUES
(3, '2018-11-12', '11:45:00', 'Oscar', 'Carlos', 'Asignado', 'Sacar muela del juicio');




CREATE TABLE `especialidades` (
  `idespecialidad` int(11) NOT NULL,
  `espNombre` char(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `medicos` (
  `idMedico` int(11) NOT NULL,
  `medidentificacion` char(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mednombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `medapellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `medEspecialidad` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `medtelefono` char(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `medcorreo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `medNacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `medicos` (`idMedico`, `medidentificacion`, `mednombres`, `medapellidos`, `medEspecialidad`, `medtelefono`, `medcorreo`, `medNacimiento`) VALUES
(1, '1234567', 'Carlos', 'Alcantara', 'Cirujia', '88888888', 'carlos1213@hotmail.com', '1999-04-12');



CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pacFechaNacimiento` date NOT NULL,
  `pacSexo` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `usuarios` (`id`, `usuario`, `pass`, `nombres`, `apellidos`, `pacFechaNacimiento`, `pacSexo`) VALUES
(1, 'admin', '1234', 'admin', 'admin', '2018-11-06', 'Masculino'),
(8, 'okumo', 'seguridad', 'Oscar', 'Caballero', '1997-04-13', 'Masculino'),
(12, 'user1', 'contra', 'Bill', 'Gates', '2000-04-13', 'Masculino');




ALTER TABLE `citas`
  ADD PRIMARY KEY (`idcita`),
  ADD KEY `cithora` (`cithora`),
  ADD KEY `id` (`citPaciente`),
  ADD KEY `idMedico` (`citMedico`);


ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`idespecialidad`),
  ADD UNIQUE KEY `espNombre` (`espNombre`);


ALTER TABLE `medicos`
  ADD PRIMARY KEY (`idMedico`),
  ADD UNIQUE KEY `medidentificacion` (`medidentificacion`);


ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);


--
-- AUTO_INCREMENTO
--
ALTER TABLE `citas`
  MODIFY `idcita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `especialidades`
  MODIFY `idespecialidad` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `medicos`
  MODIFY `idMedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;


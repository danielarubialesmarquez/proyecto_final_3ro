
CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `USUARIO` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `NOMBRE_USUARIO` varchar(80) NOT NULL,
  `CORREO` varchar(45) NOT NULL,
  `FECHA` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `clientes` (`ID`, `USUARIO`, `PASSWORD`, `NOMBRE_USUARIO`, `CORREO`, `FECHA`) VALUES
(1, 'Gabi', 'utec', 'Gabriela Curiel ', 'gabi@gmail.com', '2018-06-01 00:00:00'),
(2, 'Danni', 'uno', 'Daniela Rubiales', 'dani@gmail.com', '2018-09-01 00:00:00'),


CREATE TABLE `reservaciones` (
  `nombrec` varchar(30) DEFAULT NULL,
  `id_mesa` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `numero_telefono` varchar(15) DEFAULT NULL,
  `hora` float DEFAULT NULL,
  `informacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `reservaciones` (`nombrec`, `id_mesa`, `fecha`, `apellido`, `numero_telefono`, `hora`, `informacion`) VALUES
('Danii', 2, '2018-08-15', 'Rios', '7711121438', 16, 'informacion');


CREATE TABLE `usuario` (
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `usuario` (`usuario`, `contraseña`) VALUES
('Gabriela', 'utec'),
('Daniela', 'uno');

ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `clientes`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

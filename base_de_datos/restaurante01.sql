create database restaurante01;

use restaurante01;

create table mesa(
    no_mesa int not null primary key);

create table comandas(
    num_comanda int not null primary key auto_increment,
    no_mesa int,
    platillo varchar(30) not null,
    bebida varchar(30) not null,
    costo_pla float not null,
    costo_beb float not null);

create table productos_existentes(
    codigo_producto char(4) not null primary key,
    nombre_p varchar(50)     not null,
    tipo     varchar(50)            not null,
    precio              float           not null);



create table trabajadores(
    id_empleado int not null primary key,
    nombre_em varchar(70) null,
    cargo varchar(20) not null);


create table detalle_factura(
    numero_factura int not null primary key,
    fecha timestamp,
    id_empleado int,
    no_mesa int);

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
(2, 'Danni', 'uno', 'Daniela Rubiales', 'dani@gmail.com', '2018-09-01 00:00:00');


CREATE TABLE `reservaciones` (
  `nombrec` varchar(30) DEFAULT NULL,
  `id_mesa` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `numero_telefono` varchar(15) DEFAULT NULL,
  `hora` float DEFAULT NULL,
  `informacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table detalle_factura
add foreign key(no_mesa) references
mesa(no_mesa);

alter table detalle_factura 
add foreign key (id_empleado) references
trabajadores(id_empleado);

alter table comandas 
add foreign key (id_empleado) references
trabajadores(id_empleado);

alter table comandas
add foreign key(no_mesa) references
mesa(no_mesa);

















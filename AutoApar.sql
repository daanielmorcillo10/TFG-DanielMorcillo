-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2023 a las 18:06:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `AutoApar`
--

CREATE SCHEMA IF NOT EXISTS `AutoApar` DEFAULT CHARACTER SET utf8 ;
USE `AutoApar` ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categorias`
--

CREATE TABLE `Categorias` (
  `Nombre` varchar(100) NOT NULL,
  `Imagen` longblob DEFAULT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Categorias`
--

INSERT INTO `Categorias` (`Nombre`, `Imagen`, `Descripcion`) VALUES
('Aceites', 0x2e2f63617465676f726961732f616365697465436f636865732e706e67, 'Aceite Del Coche'),
('Escobillas', 0x2e2f63617465676f726961732f6573636f62696c6c61732e706e67, 'Escobillas Del Coche'),
('Faros', 0x2e2f63617465676f726961732f6661726f732d636f6368652e706e67, 'Faros Del Coche'),
('Frenos', 0x2e2f63617465676f726961732f6672656e6f732e706e67, 'Frenos Del Coche'),
('Motores', 0x2e2f63617465676f726961732f6d6f746f722e706e67, 'Motor Del Coche'),
('Neumaticos', 0x2e2f63617465676f726961732f6e65756d617469636f732e706e67, 'Neumaticos Del Coche'),
('Turbos', 0x2e2f63617465676f726961732f747572626f312e504e47, 'Turbos Del Coche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ChequesRegalo`
--

CREATE TABLE `ChequesRegalo` (
  `Porcentaje` int(11) NOT NULL,
  `FechaCaducidad` date NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ChequesRegalo`
--

INSERT INTO `ChequesRegalo` (`Porcentaje`, `FechaCaducidad`, `Usuario`, `ID`) VALUES
(40, '2023-06-16', 'admin@gmail.com', 80),
(20, '2023-06-16', 'damianGil@gmail.com', 81);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Direcciones`
--

CREATE TABLE `Direcciones` (
  `Nombre` varchar(180) NOT NULL,
  `Calle` varchar(255) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Puerta` int(11) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Direcciones`
--

INSERT INTO `Direcciones` (`Nombre`, `Calle`, `Numero`, `Puerta`, `Usuario`, `ID`) VALUES
('Damian', 'C/Juan', 45, 4, 'damianGil@gmail.com', 7),
('Damian', 'C/Sol', 23, 3, 'damianGil@gmail.com', 8),
('admin', 'C/Buenavista', 86, 5, 'admin@gmail.com', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `ID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Precio` double NOT NULL,
  `Usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Pedidos`
--

INSERT INTO `Pedidos` (`ID`, `Fecha`, `Precio`, `Usuario`) VALUES
(34, '2023-06-03', 3636, 'damianGil@gmail.com'),
(35, '2023-06-04', 34, 'damianGil@gmail.com'),
(36, '2023-06-04', 1920, 'damianGil@gmail.com'),
(37, '2023-06-04', 62, 'damianGil@gmail.com'),
(38, '2023-06-04', 32, 'damianGil@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Productos`
--

CREATE TABLE `Productos` (
  `Nombre` varchar(255) NOT NULL,
  `Imagen` longblob DEFAULT NULL,
  `Precio` double NOT NULL,
  `PrioridadVenta` int(11) DEFAULT NULL,
  `Categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Productos`
--

INSERT INTO `Productos` (`Nombre`, `Imagen`, `Precio`, `PrioridadVenta`, `Categoria`) VALUES
(' Diésel K9KA500 100017372R 1.5 dci Renault Scenic 4 0km', 0x2e2f50726f647563746f732f6d6f746f72322e6a7067, 974, 2, 'Motores'),
(' Renault Scenic 1.9 DCI Diesel 96kW (131HP)', 0x2e2f50726f647563746f732f6d6f746f72312e6a7067, 370, 3, 'Motores'),
(' Turbo Mazda 3 1.6 DI Garrett 753420', 0x2e2f50726f647563746f732f747572626f322e6a7067, 290, 1, 'Turbos'),
('Aceite motor SHELL Helix Ultra', 0x2e2f50726f647563746f732f616365697465322e6a7067, 36, 2, 'Aceites'),
('BOSCH 0 986 479 A01 Disco de freno ', 0x2e2f50726f647563746f732f6672656e6f73322e6a7067, 45, 2, 'Frenos'),
('BREMBO 09.B769.51 Disco de freno ', 0x2e2f50726f647563746f732f6672656e6f73342e6a7067, 107, 3, 'Frenos'),
('Castrol EDGE 5W-30 LL', 0x2e2f50726f647563746f732f616365697465342e6a7067, 46, 2, 'Aceites'),
('Castrol Edge Titanium FST 5W30 LL 4l', 0x2e2f50726f647563746f732f616365697465312e6a7067, 62, 1, 'Aceites'),
('Escobilla limpiaparabrisas Bosch', 0x2e2f50726f647563746f732f6573636f62696c6c6173312e6a7067, 16, 1, 'Escobillas'),
('Escobilla limpiaparabrisas Bosch Rear H253', 0x2e2f50726f647563746f732f6573636f62696c6c6173342e6a7067, 5, 4, 'Escobillas'),
('Escobilla limpiaparabrisas Bosch Twin Spoiler', 0x2e2f50726f647563746f732f6573636f62696c6c6173332e6a7067, 17, 2, 'Escobillas'),
('Limpiaparabrisas delanteros + traseros válidos para CITROEN C4 ', 0x2e2f50726f647563746f732f6573636f62696c6c6173322e6a7067, 19, 2, 'Escobillas'),
('LOTT Faro delantero', 0x2e2f50726f647563746f732f6661726f73312e504e47, 47, 1, 'Faros'),
('MANNOL MN7915-5', 0x2e2f50726f647563746f732f616365697465332e6a7067, 28, 3, 'Aceites'),
('MAPCO 47754 Kit de discos y pastillas de freno', 0x2e2f50726f647563746f732f6672656e6f73312e6a7067, 72, 4, 'Frenos'),
('motor diésel TOYOTA A28NET 2.8 V6', 0x2e2f50726f647563746f732f6d6f746f72342e6a7067, 5370, 1, 'Motores'),
('motor diésel TOYOTA de 3,0 L, 5L, 5LE', 0x2e2f50726f647563746f732f6d6f746f72332e6a7067, 2700, 1, 'Motores'),
('Neumático CONTINENTAL PREMIUMCONTACT 7 225/50 R 17 98 Y XL', 0x2e2f50726f647563746f732f6e65756d617469636f332e6a7067, 123, 1, 'Neumaticos'),
('Neumático MICHELIN PRIMACY 4 185/65 R15 88 T', 0x2e2f50726f647563746f732f6e65756d617469636f342e6a7067, 83, 1, 'Neumaticos'),
('Neumático NORAUTO PREVENSYS 4 165/65 R14 79 T', 0x2e2f50726f647563746f732f6e65756d617469636f322e6a7067, 53, 1, 'Neumaticos'),
('Neumático TRAZANO Z-107 175/65 R 14 82 T', 0x2e2f50726f647563746f732f6e65756d617469636f312e504e47, 37, 2, 'Neumaticos'),
('PAX Faro delantero', 0x2e2f50726f647563746f732f6661726f73342e6a7067, 37, 4, 'Faros'),
('Pinza de freno CP9040 CP5200 CP9200 CP9600', 0x2e2f50726f647563746f732f6672656e6f73332e6a7067, 350, 1, 'Frenos'),
('TPA Faro delantero', 0x2e2f50726f647563746f732f6661726f73332e6a7067, 94, 2, 'Faros'),
('Turbo BMW 120 d(E87)/320 d (E90/E91) 150/ 163 Cv', 0x2e2f50726f647563746f732f747572626f332e6a7067, 314, 1, 'Turbos'),
('Turbo Ford Fiesta/Focus 1.6 TDCi 90 Cv', 0x2e2f50726f647563746f732f747572626f312e6a7067, 199, 3, 'Turbos'),
('Turbo Nissan Primera/Renault/V40', 0x2e2f50726f647563746f732f747572626f342e6a7067, 180, 2, 'Turbos'),
('TYC Faro delantero', 0x2e2f50726f647563746f732f6661726f73322e6a7067, 42, 3, 'Faros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `Email` varchar(255) NOT NULL,
  `Rol` varchar(30) NOT NULL,
  `Contrasenya` text NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido1` varchar(60) NOT NULL,
  `Apellido2` varchar(60) NOT NULL,
  `FotoPerfil` longblob DEFAULT NULL,
  `Telefono` int(9) DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `CategoriaFavorita` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Usuarios`
-- Contraseña Admin: dani

INSERT INTO `Usuarios` (`Email`, `Rol`, `Contrasenya`, `Nombre`, `Apellido1`, `Apellido2`, `FotoPerfil`, `Telefono`, `Saldo`, `CategoriaFavorita`) VALUES
('admin@gmail.com', 'administrador', '$2y$10$fgzRRBP4FSD308ZMPk8yDuq7gje/AqECmAUWBP3Ikz8OdeDpCfZzm', 'admin3', 'admin', 'admin', 0x2e2f666f746f5573756172696f2f65717569706f732e6a7067, 623545676, 120, 'Faros'),
('damianGil@gmail.com', 'cliente', '$2y$10$uaIImVZ5dG0mdYA2i2Y/0uxYCxpIeXZf9GRU875sOJLDG8Tg8aKFi', 'Damian', 'Gil', 'Lopez', 0x2e2f666f746f5573756172696f2f332e706e67, 654378654, 100, 'Motores');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categorias`
--
ALTER TABLE `Categorias`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `ChequesRegalo`
--
ALTER TABLE `ChequesRegalo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_cheque_usuario` (`Usuario`);

--
-- Indices de la tabla `Direcciones`
--
ALTER TABLE `Direcciones`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_direccion_usuario` (`Usuario`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_usuario_ped` (`Usuario`);

--
-- Indices de la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD PRIMARY KEY (`Nombre`),
  ADD KEY `fk_categoria` (`Categoria`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ChequesRegalo`
--
ALTER TABLE `ChequesRegalo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `Direcciones`
--
ALTER TABLE `Direcciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ChequesRegalo`
--
ALTER TABLE `ChequesRegalo`
  ADD CONSTRAINT `fk_cheque_usuario` FOREIGN KEY (`Usuario`) REFERENCES `Usuarios` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Direcciones`
--
ALTER TABLE `Direcciones`
  ADD CONSTRAINT `fk_direccion_usuario` FOREIGN KEY (`Usuario`) REFERENCES `Usuarios` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD CONSTRAINT `fk_usuario_ped` FOREIGN KEY (`Usuario`) REFERENCES `Usuarios` (`Email`);

--
-- Filtros para la tabla `Productos`
--
ALTER TABLE `Productos`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`Categoria`) REFERENCES `Categorias` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

GRANT ALL PRIVILEGES ON AutoApar.* TO 'admin'@'localhost' IDENTIFIED BY 'admin';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para componentsbd
CREATE DATABASE IF NOT EXISTS `componentsbd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `componentsbd`;

-- Volcando estructura para tabla componentsbd.historial_producto
CREATE TABLE IF NOT EXISTS `historial_producto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_historial_producto_producto` (`IdProducto`),
  CONSTRAINT `FK_historial_producto_producto` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.historial_producto: ~24 rows (aproximadamente)
DELETE FROM `historial_producto`;
/*!40000 ALTER TABLE `historial_producto` DISABLE KEYS */;
INSERT INTO `historial_producto` (`Id`, `IdProducto`, `CreationDate`) VALUES
	(1, 1, '2022-08-26 11:40:04'),
	(2, 2, '2022-08-26 11:40:04'),
	(3, 3, '2022-08-26 11:40:04'),
	(4, 4, '2022-08-26 11:40:04'),
	(5, 5, '2022-08-26 11:40:04'),
	(6, 6, '2022-08-26 11:40:04'),
	(7, 7, '2022-08-26 11:40:04'),
	(8, 8, '2022-08-26 11:40:04'),
	(9, 9, '2022-08-26 11:40:04'),
	(10, 10, '2022-08-26 11:40:04'),
	(11, 11, '2022-08-26 11:40:04'),
	(12, 12, '2022-08-26 11:40:04'),
	(13, 13, '2022-08-26 11:40:04'),
	(14, 14, '2022-08-26 11:40:04'),
	(15, 15, '2022-08-26 11:40:04'),
	(16, 16, '2022-08-26 11:40:04'),
	(17, 17, '2022-08-26 11:40:04'),
	(18, 18, '2022-08-26 11:40:04'),
	(19, 19, '2022-08-26 11:40:04'),
	(20, 20, '2022-08-26 11:40:04'),
	(21, 21, '2022-08-26 11:40:04'),
	(22, 23, '2022-08-26 11:40:04'),
	(23, 24, '2022-08-26 11:40:04'),
	(24, 25, '2022-08-26 11:40:04');
/*!40000 ALTER TABLE `historial_producto` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipo` int(11) NOT NULL DEFAULT '0',
  `IdProveedor` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `Caracteristicas` varchar(500) NOT NULL DEFAULT '0',
  `ImagenProducto` varchar(100) NOT NULL DEFAULT '0',
  `Precio` double NOT NULL DEFAULT '0',
  `Stock` int(11) NOT NULL DEFAULT '0',
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) NOT NULL DEFAULT '0',
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteUserId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_producto_tipo` (`IdTipo`),
  KEY `FK_producto_proveedor` (`IdProveedor`),
  CONSTRAINT `FK_producto_proveedor` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedor` (`Id`),
  CONSTRAINT `FK_producto_tipo` FOREIGN KEY (`IdTipo`) REFERENCES `tipo` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.producto: ~103 rows (aproximadamente)
DELETE FROM `producto`;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`Id`, `IdTipo`, `IdProveedor`, `Nombre`, `Caracteristicas`, `ImagenProducto`, `Precio`, `Stock`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteUserId`) VALUES
	(67, 1, 3, 'i3 10100', '4 nucleos, frecuencia base 3.6 GHz, max frecuencia 4.1 GHz', 'Intel-Core-i3-10100.jpg', 150, 15, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(68, 1, 3, 'i3 10300', '4 nucleos, frecuencia base 3.7 GHz, max frecuencia 4.2 GHz', 'Intel-Core-i3-10100.jpg', 165, 20, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(69, 1, 3, 'i3 10320', '4 nucleos, frecuencia base 3.8 GHz, max frecuencia 4.4 GHz', 'Intel-Core-i3-10100.jpg', 170, 20, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(70, 1, 3, 'i3 10100T', '4 nucleos, frecuencia base 3.0 GHz, max frecuencia 3.5 GHz', 'Intel-Core-i3-10100.jpg', 160, 20, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(71, 1, 3, 'i3 10300T', '4 nucleos, frecuencia base 3.0 GHz, max frecuencia 3.6 GHz', 'Intel-Core-i3-10100.jpg', 160, 20, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(72, 1, 3, 'i5 10400T', '6 nucleos, frecuencia base 2.0 GHz, max frecuencia 3.2 GHz', 'Intel-Core-i5-10400.jpg', 180, 17, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(73, 1, 3, 'i5 10500T', '6 nucleos, frecuencia base 2.3 GHz, max frecuencia 3.5 GHz', 'Intel-Core-i5-10400.jpg', 190, 17, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(74, 1, 3, 'i5 10600T', '6 nucleos, frecuencia base 2.4 GHz, max frecuencia 3.7 GHz', 'Intel-Core-i5-10400.jpg', 215, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(75, 1, 3, 'i5 10400F', '6 nucleos, frecuencia base 2.9 GHz, max frecuencia 4.0 GHz', 'Intel-Core-i5-10400.jpg', 215, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(76, 1, 3, 'i5 10400', '6 nucleos, frecuencia base 2.9 GHz, max frecuencia 4.0 GHz', 'Intel-Core-i5-10400.jpg', 235, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(77, 1, 3, 'i5 10500', '6 nucleos, frecuencia base 3.1 GHz, max frecuencia 4.2 GHz', 'Intel-Core-i5-10400.jpg', 235, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(78, 1, 3, 'i5 10600', '6 nucleos, frecuencia base 3.3 GHz, max frecuencia 4.4 GHz', 'Intel-Core-i5-10400.jpg', 235, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(79, 1, 3, 'i5 10600KF', '6 nucleos, frecuencia base 4.1 GHz, max frecuencia 4.5 GHz', 'Intel-Core-i5-10400.jpg', 245, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(80, 1, 3, 'i5 10600K', '6 nucleos, frecuencia base 4.1 GHz, max frecuencia 4.5 GHz', 'Intel-Core-i5-10400.jpg', 245, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(81, 1, 3, 'i7 10700T', '8 nucleos, frecuencia base 2.0 GHz, max frecuencia 3.7 GHz', 'Intel-Core-i7-10700.jpg', 255, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(82, 1, 3, 'i7 10700F', '8 nucleos, frecuencia base 2.9 GHz, max frecuencia 4.6 GHz', 'Intel-Core-i7-10700.jpg', 255, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(83, 1, 3, 'i7 10700KF', '8 nucleos, frecuencia base 3.8 GHz, max frecuencia 4.8 GHz', 'Intel-Core-i7-10700.jpg', 265, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(84, 1, 3, 'i7 10700K', '8 nucleos, frecuencia base 3.7 GHz, max frecuencia 4.8 GHz', 'Intel-Core-i7-10700.jpg', 275, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(85, 1, 3, 'i9 10900F', '10 nucleos, frecuencia base 2.8 GHz, max frecuencia 5.0 GHz', 'Intel-Core-i9-10900k.jpg', 325, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(86, 1, 3, 'i9 10900', '10 nucleos, frecuencia base 2.8 GHz, max frecuencia 4.5 GHz', 'Intel-Core-i9-10900k.jpg', 335, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(87, 1, 3, 'i9 10900KF', '10 nucleos, frecuencia base 3.7 GHz, max frecuencia 4.8 GHz', 'Intel-Core-i9-10900k.jpg', 349, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(88, 1, 3, 'i9 10900K', '10 nucleos, frecuencia base 3.7 GHz, max frecuencia 4.8 GHz', 'Intel-Core-i9-10900k.jpg', 360, 19, '2022-08-31 00:11:48', 0, NULL, 0, NULL, 0),
	(89, 1, 3, 'i5 11600T', '6 nucleos, frecuencia base 1.70 GHz ,max frecuencia 4.10 GHz', 'Intel-Core-i5-11600k.jpg', 185, 18, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(90, 1, 3, 'i5 11500', '6 nucleos, frecuencia base 2.70 GHz, max frecuencia 4.60 GHz', 'Intel-Core-i5-11600k.jpg', 195, 17, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(91, 1, 3, 'i5 11600', '6 nucleos, frecuencia base 2.80 GHz, max frecuencia 4.80 GHz', 'Intel-Core-i5-11600k.jpg', 215, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(92, 1, 3, 'i5 i5 11600KF', '6 nucleos, frecuencia base 3.90 GHz, max frecuencia 4.90 GHz', 'Intel-Core-i5-11600k.jpg', 215, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(93, 1, 3, 'i5 11400T', '6 nucleos, frecuencia base 1.30 GHz, max frecuencia 3.70 GHz', 'Intel-Core-i5-11600k.jpg', 235, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(94, 1, 3, 'i5 11500T', '6 nucleos, frecuencia base 1.70 GHz, max frecuencia 3.90 GHz', 'Intel-Core-i5-11600k.jpg', 235, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(95, 1, 3, 'i5 11400F', '6 nucleos, frecuencia base 2.60 GHz, max frecuencia 4.40 GHz', 'Intel-Core-i5-11600k.jpg', 235, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(96, 1, 3, 'i7 11700', '8 nucleos, frecuencia base 2.5 GHz, max frecuencia 4.9 GHz', 'Intel-Core-i7-11700.jpg', 255, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(97, 1, 3, 'i7 11700F', '8 nucleos, frecuencia base 2.5 GHz, max frecuencia 4.9 GHz', 'Intel-Core-i7-11700.jpg', 255, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(98, 1, 3, 'i7 11700KF', '8 nucleos, frecuencia base 3.6 GHz, max frecuencia 5.0 GHz', 'Intel-Core-i7-11700.jpg', 265, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(99, 1, 3, 'i7 11700K', '8 nucleos, frecuencia base 3.6 GHz, max frecuencia 5.0 GHz', 'Intel-Core-i7-11700.jpg', 275, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(100, 1, 3, 'i7 11700T', '8 nucleos, frecuencia base 1.4 GHz, max frecuencia 4.6 GHz', 'Intel-Core-i7-11700.jpg', 275, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(101, 1, 3, 'i9 11900', '8 nucleos, frecuencia base 2.5 GHz, max frecuencia 5.2 GHz', 'Intel-Core-i9-11900k.jpg', 325, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(102, 1, 3, 'i9 11900F', '8 nucleos, frecuencia base 2.5 GHz, max frecuencia 5.2 GHz', 'Intel-Core-i9-11900k.jpg', 335, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(103, 1, 3, 'i9 11900KF', '8 nucleos, frecuencia base 3.5 GHz, max frecuencia 5.3 GHz', 'Intel-Core-i9-11900k.jpg', 349, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(104, 1, 3, 'i9 11900K', '8 nucleos, frecuencia base 3.5 GHz, max frecuencia 5.3 GHz', 'Intel-Core-i9-11900k.jpg', 360, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(105, 1, 3, 'i9 11900T', '8 nucleos, frecuencia base 1.5 GHz, max frecuencia 5.3 GHz', 'Intel-Core-i9-11900k.jpg', 360, 19, '2022-08-31 00:11:58', 0, NULL, 0, NULL, 0),
	(106, 1, 4, 'AMD Ryzen 3 3200G', '4 nucleos, frecuencia min 3.6 GHz, max frecuencia  4.0 GHz', 'amd-ryzen-3-3200g.jpg', 185, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(107, 1, 4, 'AMD Ryzen 5 3400G', '4 nucleos, frecuencia min 3.7 GHz, max frecuencia 4.2 GHz', 'amd-ryzen-5-3400g.jpg', 205, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(108, 1, 4, 'AMD Ryzen 5 3600', '6 nucleos, frecuencia min 3.6 GHz, max frecuencia 4.2 GHz', 'amd-ryzen-5-3400g.jpg', 215, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(109, 1, 4, 'AMD Ryzen 5 3600X', '6 nucleos, frecuencia min 3.8 GHz, max frecuencia 4.4 GHz', 'amd-ryzen-5-3400g.jpg', 225, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(110, 1, 4, 'AMD Ryzen 7 3700X', '8 nucleos, frecuencia min 3.6 GHz, max frecuencia 4.4 GHz', 'amd-ryzen-7-3700g.jpg', 225, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(111, 1, 4, 'AMD Ryzen 7 3800X', '8 nucleos, frecuencia min 3.9 GHz, max frecuencia 4.5 GHz', 'amd-ryzen-7-3700g.jpg', 245, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(112, 1, 4, 'AMD Ryzen 9 3900X', '12 nucleos, frecuencia min 3.8 GHz, max frecuencia 4.6 GHz', 'amd-ryzen-9-3900x.jpg', 275, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(113, 1, 4, 'AMD Ryzen 9 3950X', '12 nucleos, frecuencia min 3.5 GHz, max frecuencia 4.7 GHz', 'amd-ryzen-9-3900x.jpg', 300, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(114, 1, 4, 'AMD Ryzen 5 5600G', '6 nucleos, frecuencia min 3.9 GHz, max frecuencia 4.4 GHz', 'amd-ryzen-5-5500.jpg', 185, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(115, 1, 4, 'AMD Ryzen 5 5500', '6 nucleos, frecuencia min 3.6 GHz, max frecuencia 4.2 GHz', 'amd-ryzen-5-5500.jpg', 205, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(116, 1, 4, 'AMD Ryzen 5 5600', '6 nucleos, frecuencia min 3.5 GHz, max frecuencia 4.4 GHz', 'amd-ryzen-5-5500.jpg', 215, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(117, 1, 4, 'AMD Ryzen 5 5600X', '6 nucleos, frecuencia min 3.7 GHz, max frecuencia 4.6 GHz', 'amd-ryzen-5-5500.jpg', 225, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(118, 1, 4, 'AMD Ryzen 7 5700G', '8 nucleos, frecuencia min 3.8 GHz, max frecuencia 4.6 GHz', 'amd-ryzen-7-5700X.jpg', 225, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(119, 1, 4, 'AMD Ryzen 7 5800', '8 nucleos, frecuencia min 3.4 GHz, max frecuencia 4.6 GHz', 'amd-ryzen-7-5700X.jpg', 245, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(120, 1, 4, 'AMD Ryzen 7 5700X', '8 nucleos, frecuencia min 3.4 GHz, max frecuencia 4.6 GHz', 'amd-ryzen-7-5700X.jpg', 275, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(121, 1, 4, 'AMD Ryzen 7 5800X', '8 nucleos, frecuencia min 3.8 GHz, max frecuencia 4.7 GHz', 'amd-ryzen-7-5700X.jpg', 300, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(122, 1, 4, 'AMD Ryzen 7 5800X3D', '8 nucleos, frecuencia min 3.4 GHz, max frecuencia 4.5 GHz', 'amd-ryzen-7-5700X.jpg', 300, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(123, 1, 4, 'AMD Ryzen 9 5900X', '12 nucleos, frecuencia min 3.7 GHz, max frecuencia 4.8 GHz', 'amd-ryzen-9-5900X.jpg', 300, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(124, 1, 4, 'AMD Ryzen 9 5950X', '16 nucleos, frecuencia min 3.4 GHz, max frecuencia 4.9 GHz', 'amd-ryzen-9-5900X.jpg', 300, 18, '2022-08-31 00:12:03', 0, NULL, 0, NULL, 0),
	(125, 2, 1, 'Kit memoria RAM Corsair Vengeance', '16GB (2 x 8) rgb black DDR4 3200MHz', 'Kit_memoria_RAM_Corsair_Vengeance.jpg', 74, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(126, 2, 1, 'Memoria RAM Kingston FURY Beast', '8GB black DDR4 3200MHz Non-ECC, XMP', 'Memoria_RAM_Kingston_FURY_Beast.jpg', 34, 18, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(127, 2, 1, 'Memoria RAM XPG Spectrix D60G', '8GB rgb DDR4 3200MHz Non-ECC, CL16, XMP', 'Memoria_RAM_XPG_Spectrix _D60G.jpg', 32, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(128, 2, 1, 'Memoria RAM XPG Spectrix D50', '8GB rgb DDR4 3200MHz Non-ECC,  XMP', 'Memoria_RAM_XPG_Spectrix_D50.jpg', 32, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(129, 2, 1, 'Memoria RAM XPG Gammix D10 black', '8GB rgb DDR4 3200MHz Non-ECC,  XMP', 'Memoria_RAM_XPG_Gammix_D10_balck.jpg', 25, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(130, 2, 1, 'Memoria RAM XPG Spectrix D41', '16GB rgb DDR4 3200MHz Non-ECC,  XMP, Tungsten Grey', 'Memoria_RAM_XPG_Spectrix_D41.jpg', 68.95, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(131, 2, 1, 'Memoria RAM Patriot Viper 3', '8B rgb DDR3 1600MHz Non-ECC, CL10, Black Mamba', 'Memoria_RAM_Patriot_Viper_3.jpg', 26.45, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(132, 2, 1, 'Kit memoria RAM Patriot Viper Steel', '16B (2 x 8) rgb DDR4 3200MHz Non-ECC, CL16', 'Kit_memoria_RAM_Patriot_Viper_Steel.jpg', 59.95, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(133, 2, 1, 'Memoria RAM XPG GAMMIX red', '8B rgb DDR4 3200MHz Non-ECC, CL16,  XMP', 'Memoria_RAM_XPG_GAMMIX_red.jpg', 25.95, 10, '2022-08-31 00:12:26', 0, NULL, 0, NULL, 0),
	(140, 4, 1, 'Samsung 860 pro sata', '256GB, 512GB 1, 2 y 4TB (2.5 pulgadas) lectura 530MB/s escritura 560MB/s', 'samsung_850_pro.jpg', 107, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(141, 4, 1, 'Adata su800', '512GB, 1 y 4TB (2.5 pulgadas) lectura 560MB/s escritura 520MB/s', 'adata_su800.jpg', 57, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(142, 4, 1, 'Crucial MX500', '500GB (2.5 pulgadas) lectura 560MB/s escritura 510MB/s', 'Crucial_MX500.jpg', 45, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(143, 4, 1, 'Kingston kc600', '256GB, 512GB, 1 y 2TB (2.5 pulgadas) lectura 550MB/s escritura 500MB/s', 'kingston_kc600.jpg', 65, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(144, 4, 1, 'Sandisk Ultra 3D', '250GB, 500GB, 1,  2 y 4TB (2.5 pulgadas) lectura 550MB/s escritura 525MB/s', 'sandisk_ultra3d.jpg', 70, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(145, 4, 1, 'Seagate Barracuda 120D', '250GB, 500GB, 1,  2 y 4TB (2.5 pulgadas) lectura 550MB/s escritura 525MB/s', 'Seagate _Barracuda_120D.jpg', 65, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(146, 4, 1, 'Crucial BX500', '250GB, 480GB y 1T (2.5 pulgadas) lectura 540MB/s escritura 500MB/s', 'Crucial_BX500.jpg', 50, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(147, 4, 1, 'DELTA S TUF Gaming Alliance RGB SSD', ' 500GB y 1T (2.5 pulgadas) lectura 560MB/s escritura 510MB/s', 'DELTA_S_TUF_Gaming_Alliance_RGB_SSD.jpg', 80, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(148, 4, 1, 'VULCAN Z SSD', ' 240GB, 500GB, 1 y 2TB (2.5 pulgadas) lectura 550MB/s escritura 500MB/s', 'VULCAN_Z_SSD.jpg', 65, 10, '2022-08-31 00:14:04', 0, NULL, 0, NULL, 0),
	(149, 5, 2, 'Aorus PCIe 4.0', '256GB, 512GB 1, 2 y 4TB (2.5 pulgadas) lectura 530MB/s escritura 560MB/s', 'samsung_850_pro.jpg', 107, 10, '2022-08-31 00:14:10', 0, NULL, 0, NULL, 0),
	(150, 3, 1, 'Seagate Barracuda', '500GB, 1, 2, 3, 4, 7TB (3.5 pulgadas), 5400 y 7200 RPM', 'Seagate_Barracuda.jpg', 50, 10, '2022-08-31 00:15:00', 0, NULL, 0, NULL, 0),
	(151, 3, 1, 'Seagate Barracuda PRO', ' 1, 2, 3, 4, 5, 6, 8, 10, 12 y 14TB (3.5 pulgadas), 7200 RPM', 'Seagate_Barracuda_PRO.jpg', 70, 10, '2022-08-31 00:15:26', 0, NULL, 0, NULL, 0),
	(152, 3, 1, 'Seagate FireCuda', ' 500GB, 1, 2TB (3.5 y 2.5 pulgadas), 5200 y 7200 RPM', 'Seagate_FireCuda.jpg', 69, 10, '2022-08-31 00:15:40', 0, NULL, 0, NULL, 0),
	(153, 3, 1, 'WD Blue', ' 500GB 1, 2, 3, 4, 6, 8TB (3.5 y 2.5 pulgadas),  7200 RPM', 'WD_Blue.jpg', 45, 10, '2022-08-31 00:17:05', 0, NULL, 0, NULL, 0),
	(154, 3, 1, 'WD Black', ' 1, 2, 4, 6, 8 y 10TB (3.5 y 2.5 pulgadas),  7200 RPM', 'WD_Black.jpg', 60, 10, '2022-08-31 00:17:05', 0, NULL, 0, NULL, 0),
	(155, 3, 1, 'WD Gold', ' 1, 2, 4, 5, 6, 8, 10, 12 y 14, 16, 18, 20 y 22TB (3.5 pulgadas),  7200 RPM', 'WD_Gold.jpg', 115, 10, '2022-08-31 00:17:05', 0, NULL, 0, NULL, 0),
	(156, 7, 1, 'Auricular Logitech H111', 'tiene Interfaz Mini Jack 3.5 mm con cable de 1,8 m', 'A1.jpg', 49, 30, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(157, 7, 1, 'Auricular Micronics H701 Platinum DJ', 'Auricular con Micrófono y estereo envolvente de alta calidad', 'A2.jpg', 88.9, 25, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(158, 7, 1, 'Auricular Gamer Halion S2 Dragon', 'Auricular Estéreo Gamer con Micrófono y Acabado Brillante + Detalles de Metal', 'A3.jpg', 139.99, 40, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(159, 7, 1, 'Auricular Xtech Ixion XTH541 Gaming', 'Máx potencia de salida de 50mW y Tipo de conexión: 3,5mm TRRS y USB para alimentación', 'A4.jpg', 100, 18, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(160, 7, 2, 'Auricular MICRONICS Lúdico HG801R', 'Sonido con vibracion e iliminacion LED Auricular Gamer con Micrófono.', 'A5.jpg', 249.99, 33, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(161, 7, 1, 'Auricular Antryx CS Thunder Silver 7.1', 'Iluminacion RGB y frecuencia de 20 Hz', 'A6.jpg', 220, 11, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(162, 7, 2, 'Auricular Logitech H390 USB', 'Respuesta de Frecuencia Auricular 20 Hz a 20 kHz y Micrófono 100 Hz a 10KHz', 'A7.jpg', 200, 5, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(163, 7, 2, 'Auricular Microsoft Lifechat LX 6000', 'Sonido estereofónico claro y Micrófono con cancelación de ruido', 'A8.jpg', 180, 9, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(164, 7, 1, 'Auricular Razer Electra V2 USB', 'Sonido con inmersión envolvente Micrófono flexible y extraíble', 'A9.jpg', 350, 50, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(165, 7, 1, 'AURICULARES LOGITECH G335', 'Conector de audio de 3,5 mm y Respuesta de frecuencia de Auricular es de 20 Hz-20 KHz', 'A10.jpg', 400, 35, '2022-08-31 11:52:35', 0, NULL, 0, NULL, 0),
	(166, 8, 2, 'Teclado Logitech G513 Carbon Lightsync Gaming RGB Black', 'iluminacion LED RGB con diseño reposa manos desmontable', 'T1.jpg', 330, 37, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(167, 8, 2, 'Teclado Mecánico Gamer EVGA Z15 KAILH SPEED SILVER SWITCH', 'Interruptores de velocidad mecánicos Kailh y 4 LED indicadores', 'T2.jpg', 450, 9, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(168, 8, 2, 'Kit Teclado + Mouse Gamer Micronics Frantic', 'teclas curvas con iluminacion LED en teclado y raton ', 'A3.jpg', 300, 13, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(169, 8, 1, 'combo Teclado + Mouse basico ', 'Longitud de cable: Teclado: 1,5 m Mouse: 1,5 m', 'T4.jpg', 120, 55, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(170, 8, 1, 'KIT THUNDERWOLF 4 EN 1', 'Mouse gamer,Teclado gamer,Audífonos gamer y Mouse Pad todo con iluminacion LED ', 'T5.jpg', 550, 7, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(171, 8, 2, 'Mouse Logitech G502 Lightspeed Wireless Black', 'tiene Sensor HERO™ 25k e iluminacion RGB', 'T6.jpg', 170, 42, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(172, 8, 1, 'Mouse Gamer Logitech G203 Lightsync', 'La Resolución del sensor 8000 dpi y 6 botones', 'T7.jpg', 150, 31, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(173, 8, 1, 'Mouse Clutch GM41 Lightweight', 'interfaz USB 2.0 con Tiempo de respuesta: 100Hz / 1ms', 'T8.jpg', 300, 4, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(174, 8, 2, 'Mouse Gamer Micronics Winner M802 USB', 'Mouse Óptico Gamer RGB de 7 Botones con Iluminación LED RGB Running', 'T9.jpg', 159.99, 9, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0),
	(175, 8, 1, 'Teclado basico', 'teclado basico para aprendizaje informatico', 'T10.jpg', 80, 60, '2022-08-31 11:55:28', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `Telefono` int(11) NOT NULL DEFAULT '0',
  `Nit` int(11) NOT NULL DEFAULT '0',
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) DEFAULT '0',
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) DEFAULT '0',
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteUserId` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.proveedor: ~4 rows (aproximadamente)
DELETE FROM `proveedor`;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` (`Id`, `Nombre`, `Telefono`, `Nit`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteUserId`) VALUES
	(1, 'Super Mario', 78906543, 45567889, '2022-08-24 11:22:38', 0, NULL, 0, NULL, 0),
	(2, 'ROG', 78998765, 987889, '2022-08-24 11:22:38', 0, NULL, 0, NULL, 0),
	(3, 'Intel', 69789321, 123678, '2022-08-24 11:22:38', 0, NULL, 0, NULL, 0),
	(4, 'AMD', 70789099, 456321, '2022-08-24 11:22:38', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) NOT NULL DEFAULT '0',
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteUserId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.rol: ~2 rows (aproximadamente)
DELETE FROM `rol`;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` (`Id`, `Nombre`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteUserId`) VALUES
	(1, 'administrador', '2022-08-24 09:49:28', 0, NULL, 0, NULL, 0),
	(2, 'cliente', '2022-08-24 09:49:33', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) NOT NULL,
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteUserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.tipo: ~8 rows (aproximadamente)
DELETE FROM `tipo`;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` (`Id`, `Nombre`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteUserId`) VALUES
	(1, 'Procesador', '2022-08-24 09:26:53', 0, NULL, 0, NULL, 0),
	(2, 'Memoria Ram', '2022-08-24 09:28:02', 0, NULL, 0, NULL, 0),
	(3, 'Almacenamiento HDD', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0),
	(4, 'Almacenamiento SDD', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0),
	(5, 'Almacenamiento M.2', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0),
	(6, 'Tarjeta De Video', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0),
	(7, 'Audifonos', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0),
	(8, 'Teclado', '2022-08-24 09:58:51', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdRol` int(11) NOT NULL DEFAULT '0',
  `Nombre` varchar(100) NOT NULL DEFAULT '0',
  `CI` int(11) NOT NULL DEFAULT '0',
  `Telefono` int(11) NOT NULL DEFAULT '0',
  `Direccion` varchar(100) NOT NULL DEFAULT '0',
  `Username` varchar(50) DEFAULT NULL,
  `Password` tinyblob,
  `Correo` varchar(100) NOT NULL DEFAULT '0',
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) NOT NULL DEFAULT '0',
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteuserId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `FK_usuario_rol` (`IdRol`),
  CONSTRAINT `FK_usuario_rol` FOREIGN KEY (`IdRol`) REFERENCES `rol` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.usuario: ~5 rows (aproximadamente)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`Id`, `IdRol`, `Nombre`, `CI`, `Telefono`, `Direccion`, `Username`, `Password`, `Correo`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteuserId`) VALUES
	(3, 1, 'Roberto', 8974634, 6057873, 'Miraflores', 'roberto123', _binary 0x6233F586D5C67812DE8AF4D8570F4718, 'roberto123@gmail.com', '2022-08-24 09:49:55', 0, NULL, 0, NULL, 0),
	(4, 2, 'luis', 8974234, 605782343, 'Miraflores', 'luis123', _binary 0x6233F586D5C67812DE8AF4D8570F4718, 'luis123@gmail.com', '2022-08-29 09:28:45', 0, NULL, 0, NULL, 0),
	(5, 2, 'juan', 8974234, 605782343, 'san pedro', 'juan123', _binary 0x6233F586D5C67812DE8AF4D8570F4718, 'juan123@gmail.com', '2022-08-29 09:28:45', 0, NULL, 0, NULL, 0),
	(6, 2, 'carlos', 8944623, 6057232, 'Villa Fatima', 'carlos123', _binary 0x6233F586D5C67812DE8AF4D8570F4718, 'carlos123@gmail.com', '2022-08-29 09:28:45', 0, NULL, 0, NULL, 0),
	(7, 2, 'buddy', 834534, 676782343, 'Achacachi', 'buddy123', _binary 0x6233F586D5C67812DE8AF4D8570F4718, 'buddy123@gmail.com', '2022-08-29 09:28:45', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla componentsbd.venta
CREATE TABLE IF NOT EXISTS `venta` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) NOT NULL DEFAULT '0',
  `IdUsuario` int(11) NOT NULL DEFAULT '0',
  `FechaVenta` datetime DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreationUserId` int(11) NOT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `UpdateUserId` int(11) NOT NULL,
  `DeleteDate` datetime DEFAULT NULL,
  `DeleteUserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_venta_producto` (`IdProducto`),
  KEY `FK_venta_usuario` (`IdUsuario`),
  CONSTRAINT `FK_venta_producto` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`Id`),
  CONSTRAINT `FK_venta_usuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla componentsbd.venta: ~24 rows (aproximadamente)
DELETE FROM `venta`;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` (`Id`, `IdProducto`, `IdUsuario`, `FechaVenta`, `Cantidad`, `CreationDate`, `CreationUserId`, `UpdateDate`, `UpdateUserId`, `DeleteDate`, `DeleteUserId`) VALUES
	(1, 1, 4, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(2, 2, 4, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(3, 3, 5, '2022-08-29 09:30:12', 3, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(4, 4, 6, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(5, 5, 6, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(6, 6, 6, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(7, 7, 7, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(8, 8, 7, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(9, 9, 4, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(10, 10, 5, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(11, 11, 5, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(12, 12, 6, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(13, 13, 6, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(14, 14, 6, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(15, 15, 7, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(16, 16, 7, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(17, 17, 4, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(18, 18, 4, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(19, 19, 4, '2022-08-29 09:30:12', 3, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(20, 20, 5, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(21, 21, 5, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(22, 23, 5, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(23, 24, 6, '2022-08-29 09:30:12', 2, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0),
	(24, 25, 7, '2022-08-29 09:30:12', 1, '2022-08-29 09:30:12', 0, NULL, 0, NULL, 0);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.13-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para prueba
CREATE DATABASE IF NOT EXISTS `prueba` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prueba`;

-- Volcando estructura para tabla prueba.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `productos` int(11) DEFAULT NULL,
  `comprados` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `FK_clientes_productos` (`productos`),
  CONSTRAINT `FK_clientes_productos` FOREIGN KEY (`productos`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba.clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
REPLACE INTO `clientes` (`dni`, `nombre`, `apellido`, `direccion`, `productos`, `comprados`) VALUES
	(1, 'cliente1', 'rosa', 'nos', 1, 199),
	(2, 'cliente2', 'viquez', 'nose', 2, 5),
	(3, 'cliente3', 'cruz', 'asd', 3, 9);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba.productos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
REPLACE INTO `productos` (`codigo`, `nombre`, `precio`, `cantidad`) VALUES
	(1, 'producto 1', 12, 300),
	(2, 'producto 2', 23, 234),
	(3, 'producto 3', 34, 255);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla prueba.provedores
CREATE TABLE IF NOT EXISTS `provedores` (
  `NIF` int(11) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  KEY `FK_provedores_productos` (`NIF`),
  CONSTRAINT `FK_provedores_productos` FOREIGN KEY (`NIF`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla prueba.provedores: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `provedores` DISABLE KEYS */;
REPLACE INTO `provedores` (`NIF`, `Nombre`, `Direccion`) VALUES
	(3, 'provedor 1', 'nose'),
	(1, 'provedor 2', 'los pedregales');
/*!40000 ALTER TABLE `provedores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

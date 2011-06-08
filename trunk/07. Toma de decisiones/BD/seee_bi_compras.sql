# SQL Manager 2007 for MySQL 4.3.1.3
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : seee_bi_compras


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `seee_bi_compras`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `seee_bi_compras`;

#
# Structure for the `cliente` table : 
#

CREATE TABLE `cliente` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `razonSocial` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT '',
  `mail` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCliente` INTEGER(11) DEFAULT NULL,
  `fecha` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `razonSocial` (`razonSocial`),
  KEY `idCliente` (`idCliente`)

)ENGINE=InnoDB
AUTO_INCREMENT=7 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `proveedor` table : 
#

CREATE TABLE `proveedor` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `idProveedor` INTEGER(11) DEFAULT NULL,
  `razonSocial` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=6 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tiempo` table : 
#

CREATE TABLE `tiempo` (
  `id` INTEGER(11) NOT NULL,
  `fecha` DATETIME DEFAULT NULL,
  `año` INTEGER(11) DEFAULT NULL,
  `mes` INTEGER(11) DEFAULT NULL,
  `dia_del_año` INTEGER(11) DEFAULT NULL,
  `dia_del_mes` INTEGER(11) DEFAULT NULL,
  `dia_de_la_semana` INTEGER(11) DEFAULT NULL,
  `mes_del_año` INTEGER(11) DEFAULT NULL,
  `dia_de_la_semana_desc` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `dia_de_la_semana_corto_desc` VARCHAR(3) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mes_desc` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mes_corto_desc` VARCHAR(3) COLLATE latin1_swedish_ci DEFAULT NULL,
  `trimestre` VARCHAR(2) COLLATE latin1_swedish_ci DEFAULT NULL,
  `dia_de_la_semana_completa` VARCHAR(35) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fecha` (`fecha`),
  KEY `id` (`id`)

)ENGINE=InnoDB
CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tipocobro` table : 
#

CREATE TABLE `tipocobro` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `viajante` table : 
#

CREATE TABLE `viajante` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombreApellido` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT '',
  `telefono` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idViajante` INTEGER(11) DEFAULT NULL,
  `fecha` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `nombreApellido` (`nombreApellido`),
  KEY `idViajante` (`idViajante`)

)ENGINE=InnoDB
AUTO_INCREMENT=3 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cobroventa` table : 
#

CREATE TABLE `cobroventa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `idCliente` INTEGER(11) DEFAULT NULL,
  `idViajante` INTEGER(11) DEFAULT NULL,
  `idTipoCobro` INTEGER(11) DEFAULT NULL,
  `nroFactura` INTEGER(11) DEFAULT NULL,
  `idFechaCobro` INTEGER(11) DEFAULT NULL,
  `estado` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `cantidadCobros` INTEGER(11) DEFAULT NULL,
  `importe` DOUBLE(15,3) DEFAULT NULL,
  `idProveedor` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idCliente` (`idCliente`),
  KEY `idViajante` (`idViajante`),
  KEY `idTipoCobro` (`idTipoCobro`),
  KEY `idFechaCobro` (`idFechaCobro`),
  KEY `nroFactura` (`nroFactura`),
  KEY `cantidadCobros` (`cantidadCobros`),
  KEY `importe` (`importe`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `cobroventa_fk` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `cobroventa_fk1` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`id`),
  CONSTRAINT `cobroventa_fk2` FOREIGN KEY (`idTipoCobro`) REFERENCES `tipocobro` (`id`),
  CONSTRAINT `cobroventa_fk3` FOREIGN KEY (`idFechaCobro`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `cobroventa_fk4` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=29 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `color` table : 
#

CREATE TABLE `color` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idColor` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_color_tk` (`id`),
  KEY `nombre` (`nombre`),
  KEY `idColor` (`idColor`)

)ENGINE=InnoDB
AUTO_INCREMENT=7 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `divisa` table : 
#

CREATE TABLE `divisa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fecha` DATETIME DEFAULT NULL,
  `idDivisa` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `nombre` (`nombre`),
  KEY `idDivisa` (`idDivisa`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `materiaprimaproducto` table : 
#

CREATE TABLE `materiaprimaproducto` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT '',
  `tipo` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT '',
  `fecha` DATETIME DEFAULT NULL,
  `idMateriaPrimaProducto` INTEGER(11) DEFAULT NULL,
  `idDetalleCompra` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `nombre` (`nombre`),
  KEY `tipo` (`tipo`),
  KEY `codigo` (`codigo`),
  KEY `idMateriaPrimaProducto` (`idMateriaPrimaProducto`)

)ENGINE=InnoDB
AUTO_INCREMENT=13 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `compras` table : 
#

CREATE TABLE `compras` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `idTiempo` INTEGER(11) DEFAULT NULL,
  `idDivisa` INTEGER(11) DEFAULT NULL,
  `idMateriaPrimaProducto` INTEGER(11) DEFAULT NULL,
  `idProveedor` INTEGER(11) DEFAULT NULL,
  `nombreProveedor` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mailProveedor` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCompra` INTEGER(11) DEFAULT NULL,
  `idDetalleCompra` INTEGER(11) DEFAULT NULL,
  `importe` DOUBLE(15,3) DEFAULT NULL,
  `cantidadPagos` INTEGER(11) DEFAULT NULL,
  `cantidadComprada` INTEGER(11) DEFAULT NULL,
  `cantidadProductosDefectuosos` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idTiempo` (`idTiempo`),
  KEY `idDivisa` (`idDivisa`),
  KEY `idMateriaPrimaProducto` (`idMateriaPrimaProducto`),
  KEY `nombreProveedor` (`nombreProveedor`),
  KEY `importe` (`importe`),
  KEY `cantidadPagos` (`cantidadPagos`),
  KEY `cantidadComprada` (`cantidadComprada`),
  KEY `cantidadProductosDefectuosos` (`cantidadProductosDefectuosos`),
  CONSTRAINT `compras_fk` FOREIGN KEY (`idTiempo`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `compras_fk1` FOREIGN KEY (`idDivisa`) REFERENCES `divisa` (`id`),
  CONSTRAINT `compras_fk2` FOREIGN KEY (`idMateriaPrimaProducto`) REFERENCES `materiaprimaproducto` (`idMateriaPrimaProducto`)

)ENGINE=InnoDB
AUTO_INCREMENT=61 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `compras_ventas_rendimiento` table : 
#

CREATE TABLE `compras_ventas_rendimiento` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idProducto` INTEGER(11) DEFAULT NULL,
  `tipo` VARCHAR(8) COLLATE latin1_swedish_ci DEFAULT NULL,
  `precioTotal` FLOAT(9,3) DEFAULT NULL,
  `precioPromedio` FLOAT(9,3) DEFAULT NULL,
  `cantTotal` INTEGER(11) DEFAULT NULL,
  `fecha` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=248 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `disponibilidadmateriaprima` table : 
#

CREATE TABLE `disponibilidadmateriaprima` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `codigo` INTEGER(11) DEFAULT NULL,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT '',
  `idFechaFoto` INTEGER(11) DEFAULT NULL,
  `cantidadMateriaPrima` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idTiempo` (`idFechaFoto`),
  KEY `nombre` (`nombre`),
  KEY `cantidadMateriaPrima` (`cantidadMateriaPrima`),
  CONSTRAINT `disponibilidadmateriaprima_fk` FOREIGN KEY (`idFechaFoto`) REFERENCES `tiempo` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=59 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `marca` table : 
#

CREATE TABLE `marca` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT '',
  `idMarca` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `nombre` (`nombre`),
  KEY `idMarca` (`idMarca`)

)ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `modelo` table : 
#

CREATE TABLE `modelo` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idModelo` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `nombre` (`nombre`),
  KEY `idModelo` (`idModelo`)

)ENGINE=InnoDB
AUTO_INCREMENT=9 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tamaño` table : 
#

CREATE TABLE `tamaño` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fecha` DATETIME DEFAULT NULL,
  `idTamano` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `nombre` (`nombre`),
  KEY `idTamano` (`idTamano`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `disponibilidadproductos` table : 
#

CREATE TABLE `disponibilidadproductos` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `nroProducto` INTEGER(11) DEFAULT NULL,
  `idFechaIngreso` INTEGER(11) DEFAULT NULL,
  `idModelo` INTEGER(11) DEFAULT NULL,
  `idMarca` INTEGER(11) DEFAULT NULL,
  `idColor` INTEGER(11) DEFAULT NULL,
  `idTamaño` INTEGER(11) DEFAULT NULL,
  `idFechaFoto` INTEGER(11) DEFAULT NULL,
  `cantidadProductos` INTEGER(11) DEFAULT NULL,
  `cantidadEnProveedor` INTEGER(11) DEFAULT NULL,
  `cantidadEnDepositoProdTerminado` INTEGER(11) DEFAULT NULL,
  `cantidadEnDepositoProdImportado` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idTiempo` (`idFechaIngreso`),
  KEY `idModelo` (`idModelo`),
  KEY `idMarca` (`idMarca`),
  KEY `idColor` (`idColor`),
  KEY `idTamaño` (`idTamaño`),
  KEY `idFechaFoto` (`idFechaFoto`),
  KEY `cantidadProductos` (`cantidadProductos`),
  KEY `cantidadEnProveedor` (`cantidadEnProveedor`),
  KEY `cantidadEnDepositoProdTerminado` (`cantidadEnDepositoProdTerminado`),
  KEY `cantidadEnDepositoProdImportado` (`cantidadEnDepositoProdImportado`),
  CONSTRAINT `disponibilidadproductos_fk` FOREIGN KEY (`idFechaIngreso`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `disponibilidadproductos_fk1` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`id`),
  CONSTRAINT `disponibilidadproductos_fk2` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`id`),
  CONSTRAINT `disponibilidadproductos_fk3` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`),
  CONSTRAINT `disponibilidadproductos_fk4` FOREIGN KEY (`idTamaño`) REFERENCES `tamaño` (`id`),
  CONSTRAINT `disponibilidadproductos_fk5` FOREIGN KEY (`idFechaFoto`) REFERENCES `tiempo` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=36 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `provincia` table : 
#

CREATE TABLE `provincia` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `nombre` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idProvincia` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=24 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `localidad` table : 
#

CREATE TABLE `localidad` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `nombre` VARCHAR(70) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idLocalidad` INTEGER(11) DEFAULT NULL,
  `idProvincia` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idProvincia` (`idProvincia`),
  CONSTRAINT `localidad_fk` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=2338 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `domicilio` table : 
#

CREATE TABLE `domicilio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME DEFAULT NULL,
  `calle` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `depto` VARCHAR(10) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idLocalidad` INTEGER(11) DEFAULT NULL,
  `altura` INTEGER(11) DEFAULT NULL,
  `idDomicilio` INTEGER(11) DEFAULT NULL,
  `barrio` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idLocalidad` (`idLocalidad`),
  CONSTRAINT `domicilio_fk` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=18 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `pedidos_ventas` table : 
#

CREATE TABLE `pedidos_ventas` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `idViajante` INTEGER(11) DEFAULT NULL,
  `idCliente` INTEGER(11) DEFAULT NULL,
  `idDomicilioEnvio` INTEGER(11) DEFAULT NULL,
  `idProducto` INTEGER(11) DEFAULT NULL,
  `nroProducto` INTEGER(11) DEFAULT NULL,
  `nombreProducto` VARCHAR(50) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idFechaPedido` INTEGER(11) DEFAULT NULL,
  `idFechaFoto` INTEGER(11) DEFAULT NULL,
  `cantidadVentas` INTEGER(11) DEFAULT NULL,
  `importe` DOUBLE(15,3) DEFAULT NULL,
  `nroPedido` INTEGER(11) DEFAULT NULL,
  `cantidadVendida` INTEGER(11) DEFAULT NULL,
  `cantidadClientes` INTEGER(11) DEFAULT NULL,
  `cantidadPedida` INTEGER(11) DEFAULT NULL,
  `idFechaVenta` INTEGER(11) DEFAULT NULL,
  `idProvincia` INTEGER(11) DEFAULT NULL,
  `idLocalidad` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idViajante` (`idViajante`),
  KEY `idCliente` (`idCliente`),
  KEY `idProducto` (`idProducto`),
  KEY `idTiempo` (`idFechaPedido`),
  KEY `fechaFoto` (`idFechaFoto`),
  KEY `cantidadVentas` (`cantidadVentas`),
  KEY `importe` (`importe`),
  KEY `cantidadPedidos` (`nroPedido`),
  KEY `cantidadClientes` (`cantidadClientes`),
  KEY `domicilioEnvio` (`idDomicilioEnvio`),
  KEY `idFechaVenta` (`idFechaVenta`),
  KEY `idProvincia` (`idProvincia`),
  KEY `idLocalidad` (`idLocalidad`),
  CONSTRAINT `pedidos_ventas_fk` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`id`),
  CONSTRAINT `pedidos_ventas_fk1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedidos_ventas_fk2` FOREIGN KEY (`idDomicilioEnvio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `pedidos_ventas_fk3` FOREIGN KEY (`idFechaPedido`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `pedidos_ventas_fk4` FOREIGN KEY (`idFechaVenta`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `pedidos_ventas_fk5` FOREIGN KEY (`idFechaFoto`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `pedidos_ventas_fk6` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`),
  CONSTRAINT `pedidos_ventas_fk7` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=327 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `rendimientoproducto` table : 
#

CREATE TABLE `rendimientoproducto` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `version` INTEGER(11) DEFAULT NULL,
  `date_from` DATE DEFAULT NULL,
  `date_to` DATE DEFAULT NULL,
  `idProducto` INTEGER(11) DEFAULT NULL,
  `idFecha` INTEGER(11) DEFAULT NULL,
  `balaneVtasSobranteHist` FLOAT(9,3) DEFAULT NULL,
  `balanceVtasSinSobranteHist` FLOAT(9,3) DEFAULT NULL,
  `rendimientoHistorico` FLOAT(9,3) DEFAULT NULL,
  `balanceVtasSinSobranteAct` FLOAT(9,3) DEFAULT NULL,
  `balaneVtasSobranteAct` FLOAT(9,3) DEFAULT NULL,
  `rendimientoActual` FLOAT(9,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idFechaFoto` (`idFecha`),
  KEY `idProducto` (`idProducto`),
  KEY `gananciaPorVenta` (`balanceVtasSinSobranteHist`),
  KEY `rendimiento` (`rendimientoHistorico`),
  CONSTRAINT `rendimientoproducto_fk` FOREIGN KEY (`idFecha`) REFERENCES `tiempo` (`id`),
  CONSTRAINT `rendimientoproducto_fk1` FOREIGN KEY (`idProducto`) REFERENCES `materiaprimaproducto` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=22 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';


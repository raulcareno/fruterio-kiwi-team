﻿# SQL Manager 2007 for MySQL 4.3.1.3
# ---------------------------------------
# Host     : twwing.dnsalias.com
# Port     : 3306
# Database : seee


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `seee`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `seee`;

#
# Structure for the `color` table : 
#

CREATE TABLE `color` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `marca` table : 
#

CREATE TABLE `marca` (
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `modelo` table : 
#

CREATE TABLE `modelo` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nroSerie` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `muestrario` table : 
#

CREATE TABLE `muestrario` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaDesde` DATE NOT NULL,
  `fechaHasta` DATE NOT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tamano` table : 
#

CREATE TABLE `tamano` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=4 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `productoterminado` table : 
#

CREATE TABLE `productoterminado` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nroProducto` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `precioSugerido` FLOAT(9,2) DEFAULT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nivelReaprovisionamiento` INTEGER(11) NOT NULL DEFAULT '0',
  `stockMaximo` INTEGER(11) NOT NULL DEFAULT '0',
  `fechaIngreso` DATE NOT NULL,
  `idModelo` INTEGER(11) NOT NULL,
  `idColor` INTEGER(11) NOT NULL,
  `stockActual` INTEGER(11) NOT NULL DEFAULT '0',
  `idTamano` INTEGER(11) NOT NULL,
  `precioVenta` FLOAT(9,2) DEFAULT NULL,
  `idMarca` INTEGER(11) NOT NULL,
  `idUbicacion` INTEGER(11) DEFAULT NULL,
  `idMuestrario` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idModelo` (`idModelo`),
  KEY `idColor` (`idColor`),
  KEY `idTamano` (`idTamano`),
  KEY `idMarca` (`idMarca`),
  KEY `idUbicacion` (`idUbicacion`),
  KEY `idMuestrario` (`idMuestrario`),
  CONSTRAINT `FK_productoterminado_idColor` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`),
  CONSTRAINT `FK_productoterminado_idMarca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`id`),
  CONSTRAINT `FK_productoterminado_idModelo` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`id`),
  CONSTRAINT `FK_productoterminado_idMuestrario` FOREIGN KEY (`idMuestrario`) REFERENCES `muestrario` (`id`),
  CONSTRAINT `FK_productoterminado_idTamano` FOREIGN KEY (`idTamano`) REFERENCES `tamano` (`id`),
  CONSTRAINT `productoterminado_fk` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`id`),
  CONSTRAINT `productoterminado_fk1` FOREIGN KEY (`idColor`) REFERENCES `color` (`id`),
  CONSTRAINT `productoterminado_fk2` FOREIGN KEY (`idTamano`) REFERENCES `tamano` (`id`),
  CONSTRAINT `productoterminado_fk3` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`id`),
  CONSTRAINT `productoterminado_fk5` FOREIGN KEY (`idMuestrario`) REFERENCES `muestrario` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=14 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tipoaccesorio` table : 
#

CREATE TABLE `tipoaccesorio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `accesorio` table : 
#

CREATE TABLE `accesorio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idTipoaccesorio` INTEGER(11) NOT NULL,
  `idProducto` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoaccesorio` (`idTipoaccesorio`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `accesorio_fk` FOREIGN KEY (`idTipoaccesorio`) REFERENCES `tipoaccesorio` (`id`),
  CONSTRAINT `accesorio_fk1` FOREIGN KEY (`idProducto`) REFERENCES `productoterminado` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `condicioniva` table : 
#

CREATE TABLE `condicioniva` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=11 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `creditocliente` table : 
#

CREATE TABLE `creditocliente` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `monto` FLOAT(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `empresacliente` table : 
#

CREATE TABLE `empresacliente` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `razonSocial` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `cuit` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idCondicionIVA` INTEGER(11) NOT NULL,
  `telefono` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fax` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `celular` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCreditoCliente` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCondicionIVA` (`idCondicionIVA`),
  KEY `idCreditoCliente` (`idCreditoCliente`),
  CONSTRAINT `empresacliente_fk` FOREIGN KEY (`idCondicionIVA`) REFERENCES `condicioniva` (`id`),
  CONSTRAINT `empresacliente_fk1` FOREIGN KEY (`idCreditoCliente`) REFERENCES `creditocliente` (`id`),
  CONSTRAINT `FK_empresacliente_idCondicionIVA` FOREIGN KEY (`idCondicionIVA`) REFERENCES `condicioniva` (`id`),
  CONSTRAINT `FK_empresacliente_idCreditoCliente` FOREIGN KEY (`idCreditoCliente`) REFERENCES `creditocliente` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=20 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadocartera` table : 
#

CREATE TABLE `estadocartera` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallecartera` table : 
#

CREATE TABLE `detallecartera` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaDesde` DATE NOT NULL,
  `fechaHasta` DATE DEFAULT NULL,
  `idEstadoCartera` INTEGER(11) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEstadoCartera` (`idEstadoCartera`),
  KEY `idEmpresaCliente` (`idEmpresaCliente`),
  CONSTRAINT `detallecartera_fk` FOREIGN KEY (`idEstadoCartera`) REFERENCES `estadocartera` (`id`),
  CONSTRAINT `detallecartera_fk1` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`),
  CONSTRAINT `FK_detallecartera_idEmpresaCliente` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`),
  CONSTRAINT `FK_detallecartera_idEstadoCartera` FOREIGN KEY (`idEstadoCartera`) REFERENCES `estadocartera` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `provincia` table : 
#

CREATE TABLE `provincia` (
  `nombre` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=24 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `localidad` table : 
#

CREATE TABLE `localidad` (
  `nombre` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idProvincia` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idProvincia` (`idProvincia`),
  CONSTRAINT `FK_localidad_idProvincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`),
  CONSTRAINT `localidad_fk` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=5659 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `domicilio` table : 
#

CREATE TABLE `domicilio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `altura` INTEGER(11) DEFAULT NULL,
  `nombreCalle` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `depto` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `codPostal` INTEGER(11) DEFAULT NULL,
  `barrio` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idLocalidad` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idBarrio` (`barrio`),
  KEY `idLocalidad` (`idLocalidad`),
  CONSTRAINT `domicilio_fk` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=16 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tipodocumento` table : 
#

CREATE TABLE `tipodocumento` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=2 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `persona` table : 
#

CREATE TABLE `persona` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `apellido` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idDomicilio` INTEGER(11) DEFAULT NULL,
  `telefono` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `celular` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `dni` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idTipoDni` INTEGER(11) DEFAULT NULL,
  `mail` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `PER_TYPE` VARCHAR(2) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idDomicilio` (`idDomicilio`),
  KEY `idTipoDni` (`idTipoDni`),
  CONSTRAINT `FK_persona_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_persona_idTipoDni` FOREIGN KEY (`idTipoDni`) REFERENCES `tipodocumento` (`id`),
  CONSTRAINT `persona_fk` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `persona_fk1` FOREIGN KEY (`idTipoDni`) REFERENCES `tipodocumento` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=2 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `viajante` table : 
#

CREATE TABLE `viajante` (
  `idPersona` INTEGER(11) NOT NULL,
  `comisionPorVenta` INTEGER(11) NOT NULL DEFAULT '0',
  `idDetalleCartera` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `idDetalleCartera` (`idDetalleCartera`),
  CONSTRAINT `FK_viajante_idDetalleCartera` FOREIGN KEY (`idDetalleCartera`) REFERENCES `detallecartera` (`id`),
  CONSTRAINT `FK_viajante_idPersona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `viajante_fk` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `viajante_fk1` FOREIGN KEY (`idDetalleCartera`) REFERENCES `detallecartera` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `barrio` table : 
#

CREATE TABLE `barrio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idViajante` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idViajante` (`idViajante`),
  CONSTRAINT `barrio_fk1` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`idPersona`)

)ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cargo` table : 
#

CREATE TABLE `cargo` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `precioPorHora` FLOAT(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cheque` table : 
#

CREATE TABLE `cheque` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `banco` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nro` INTEGER(11) NOT NULL,
  `emisor` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `fechaEmision` DATE NOT NULL,
  `fechaCobro` DATE DEFAULT NULL,
  `cobrador` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadocobropedido` table : 
#

CREATE TABLE `estadocobropedido` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cobropedido` table : 
#

CREATE TABLE `cobropedido` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idEstadoCobroPedido` INTEGER(11) NOT NULL,
  `fechaCobro` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEstadoCobroPedido` (`idEstadoCobroPedido`),
  CONSTRAINT `cobropedido_fk` FOREIGN KEY (`idEstadoCobroPedido`) REFERENCES `estadocobropedido` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallecobropedido` table : 
#

CREATE TABLE `detallecobropedido` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `valor` FLOAT(9,2) NOT NULL,
  `fecha` DATE NOT NULL,
  `idCobroPedido` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCobroPedido` (`idCobroPedido`),
  CONSTRAINT `detallecobropedido_fk` FOREIGN KEY (`idCobroPedido`) REFERENCES `cobropedido` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadocobrocheque` table : 
#

CREATE TABLE `estadocobrocheque` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cobrocheque` table : 
#

CREATE TABLE `cobrocheque` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  `idCheque` INTEGER(11) NOT NULL,
  `idEstadoCobroCheque` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idDetalleCobroPedido`),
  KEY `idCheque` (`idCheque`),
  KEY `idEstadoCobroCheque` (`idEstadoCobroCheque`),
  CONSTRAINT `cobrocheque_fk` FOREIGN KEY (`idDetalleCobroPedido`) REFERENCES `detallecobropedido` (`id`),
  CONSTRAINT `cobrocheque_fk1` FOREIGN KEY (`idCheque`) REFERENCES `cheque` (`id`),
  CONSTRAINT `cobrocheque_fk2` FOREIGN KEY (`idEstadoCobroCheque`) REFERENCES `estadocobrocheque` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cobroefectivo` table : 
#

CREATE TABLE `cobroefectivo` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idDetalleCobroPedido`),
  CONSTRAINT `cobroefectivo_fk` FOREIGN KEY (`idDetalleCobroPedido`) REFERENCES `detallecobropedido` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `cobronotacredito` table : 
#

CREATE TABLE `cobronotacredito` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  `idCreditoCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idDetalleCobroPedido`),
  KEY `idCreditoCliente` (`idCreditoCliente`),
  CONSTRAINT `cobronotacredito_fk` FOREIGN KEY (`idDetalleCobroPedido`) REFERENCES `detallecobropedido` (`id`),
  CONSTRAINT `cobronotacredito_fk1` FOREIGN KEY (`idCreditoCliente`) REFERENCES `creditocliente` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `importacion` table : 
#

CREATE TABLE `importacion` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` DATE NOT NULL,
  `lugarOrigen` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `pagoAduana` FLOAT(9,2) DEFAULT NULL,
  `fechaEmbarque` DATE DEFAULT NULL,
  `fechaEstimadaLlegada` DATE DEFAULT NULL,
  `fechaRealLlegada` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `compra` table : 
#

CREATE TABLE `compra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` DATE DEFAULT NULL,
  `idImportacion` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idImportacion` (`idImportacion`),
  CONSTRAINT `compra_fk` FOREIGN KEY (`idImportacion`) REFERENCES `importacion` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadodetalleordencompra` table : 
#

CREATE TABLE `estadodetalleordencompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detalleordencompra` table : 
#

CREATE TABLE `detalleordencompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `precio` FLOAT(9,2) NOT NULL DEFAULT '0.00',
  `idEstadoDetalleOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEstadoDetalleOrdenCompra` (`idEstadoDetalleOrdenCompra`),
  CONSTRAINT `detalleordencompra_fk` FOREIGN KEY (`idEstadoDetalleOrdenCompra`) REFERENCES `estadodetalleordencompra` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallecompra` table : 
#

CREATE TABLE `detallecompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCompra` (`idCompra`),
  KEY `idDetalleOrdenCompra` (`idDetalleOrdenCompra`),
  CONSTRAINT `detallecompra_fk` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`id`),
  CONSTRAINT `detallecompra_fk1` FOREIGN KEY (`idDetalleOrdenCompra`) REFERENCES `detalleordencompra` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `materiaprima` table : 
#

CREATE TABLE `materiaprima` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `codigo` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `stockActual` INTEGER(11) NOT NULL DEFAULT '0',
  `unidadMedida` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nivelReaprovisionamiento` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detalleordencompramateriaprima` table : 
#

CREATE TABLE `detalleordencompramateriaprima` (
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  `idMateriaPrima` INTEGER(11) NOT NULL,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idDetalleOrdenCompra`),
  KEY `idMateriaPrima` (`idMateriaPrima`),
  CONSTRAINT `detalleordencompramateriaprima_fk` FOREIGN KEY (`idDetalleOrdenCompra`) REFERENCES `detalleordencompra` (`id`),
  CONSTRAINT `detalleordencompramateriaprima_fk1` FOREIGN KEY (`idMateriaPrima`) REFERENCES `materiaprima` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallecompramateriaprima` table : 
#

CREATE TABLE `detallecompramateriaprima` (
  `idDetalleCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompraMateriaPrima` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`),
  KEY `idDetalleOrdenCompraMateriaPrima` (`idDetalleOrdenCompraMateriaPrima`),
  CONSTRAINT `detallecompramateriaprima_fk` FOREIGN KEY (`idDetalleCompra`) REFERENCES `detallecompra` (`id`),
  CONSTRAINT `detallecompramateriaprima_fk1` FOREIGN KEY (`idDetalleOrdenCompraMateriaPrima`) REFERENCES `detalleordencompramateriaprima` (`idDetalleOrdenCompra`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `productoimportado` table : 
#

CREATE TABLE `productoimportado` (
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `precioCompra` FLOAT(9,2) NOT NULL,
  PRIMARY KEY (`idProductoTerminado`),
  CONSTRAINT `FK_productoimportado_idProductoTerminado` FOREIGN KEY (`idProductoTerminado`) REFERENCES `productoterminado` (`id`),
  CONSTRAINT `productoimportado_fk` FOREIGN KEY (`idProductoTerminado`) REFERENCES `productoterminado` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detalleordencompraproductoimportado` table : 
#

CREATE TABLE `detalleordencompraproductoimportado` (
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  `idProductoImportado` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idDetalleOrdenCompra`),
  KEY `idProductoImportado` (`idProductoImportado`),
  CONSTRAINT `detalleordencompraproductoimportado_fk` FOREIGN KEY (`idDetalleOrdenCompra`) REFERENCES `detalleordencompra` (`id`),
  CONSTRAINT `detalleordencompraproductoimportado_fk1` FOREIGN KEY (`idProductoImportado`) REFERENCES `productoimportado` (`idProductoTerminado`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallecompraproductoimportado` table : 
#

CREATE TABLE `detallecompraproductoimportado` (
  `idDetalleCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompraProductoImportado` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`),
  KEY `idDetalleOrdenCompraProductoImportado` (`idDetalleOrdenCompraProductoImportado`),
  CONSTRAINT `detallecompraproductoimportado_fk` FOREIGN KEY (`idDetalleCompra`) REFERENCES `detallecompra` (`id`),
  CONSTRAINT `detallecompraproductoimportado_fk1` FOREIGN KEY (`idDetalleOrdenCompraProductoImportado`) REFERENCES `detalleordencompraproductoimportado` (`idDetalleOrdenCompra`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadodetalleventa` table : 
#

CREATE TABLE `estadodetalleventa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadoventa` table : 
#

CREATE TABLE `estadoventa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `empleado` table : 
#

CREATE TABLE `empleado` (
  `cuil` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `fechaIngreso` DATE NOT NULL,
  `fechaBaja` DATE DEFAULT NULL,
  `motivoBaja` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idPersona` INTEGER(11) NOT NULL,
  `idCargo` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `idCargo` (`idCargo`),
  CONSTRAINT `empleado_fk` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `empleado_fk1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`id`)

)ENGINE=InnoDB
CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadopedidoproductosterminados` table : 
#

CREATE TABLE `estadopedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `pedidoproductosterminados` table : 
#

CREATE TABLE `pedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaPedido` DATE NOT NULL,
  `idEstadoPedidoProductosTerminados` INTEGER(11) NOT NULL,
  `fechaCancelacion` DATE DEFAULT NULL,
  `motivoEstado` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaEstimadaEntrega` DATE DEFAULT NULL,
  `fechaEntregaViajante` DATE DEFAULT NULL,
  `idViajante` INTEGER(11) NOT NULL,
  `idEmpleado` INTEGER(11) NOT NULL,
  `descuento` FLOAT(9,2) DEFAULT NULL,
  `domicilioEnvio` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEstadoPedidoProductosTerminados` (`idEstadoPedidoProductosTerminados`),
  KEY `idViajante` (`idViajante`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `idEmpresaCliente` (`idEmpresaCliente`),
  CONSTRAINT `pedidoproductosterminados_fk` FOREIGN KEY (`idEstadoPedidoProductosTerminados`) REFERENCES `estadopedidoproductosterminados` (`id`),
  CONSTRAINT `pedidoproductosterminados_fk1` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`idPersona`),
  CONSTRAINT `pedidoproductosterminados_fk2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idPersona`),
  CONSTRAINT `pedidoproductosterminados_fk3` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `venta` table : 
#

CREATE TABLE `venta` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `fechaVenta` DATE NOT NULL,
  `nroFactura` INTEGER(11) NOT NULL,
  `idCobroPedido` INTEGER(11) NOT NULL,
  `idPedidoProductosTerminados` INTEGER(11) NOT NULL,
  `idEstadoVenta` INTEGER(11) NOT NULL,
  `fechaMaximaDevolucion` DATE DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCobroPedido` (`idCobroPedido`),
  KEY `idPedidoProductosTerminados` (`idPedidoProductosTerminados`),
  KEY `idEstadoVenta` (`idEstadoVenta`),
  CONSTRAINT `venta_fk` FOREIGN KEY (`idCobroPedido`) REFERENCES `cobropedido` (`id`),
  CONSTRAINT `venta_fk1` FOREIGN KEY (`idPedidoProductosTerminados`) REFERENCES `pedidoproductosterminados` (`id`),
  CONSTRAINT `venta_fk2` FOREIGN KEY (`idEstadoVenta`) REFERENCES `estadoventa` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detalleventa` table : 
#

CREATE TABLE `detalleventa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idProducto` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '1',
  `precioUnidad` FLOAT(9,2) NOT NULL DEFAULT '0.00',
  `idEstadoDetalleVenta` INTEGER(11) NOT NULL,
  `motivoDevolucion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaDevolucion` DATE DEFAULT NULL,
  `idVenta` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProducto` (`idProducto`),
  KEY `idEstadoDetalleVenta` (`idEstadoDetalleVenta`),
  KEY `idVenta` (`idVenta`),
  CONSTRAINT `detalleventa_fk` FOREIGN KEY (`idProducto`) REFERENCES `productoterminado` (`id`),
  CONSTRAINT `detalleventa_fk1` FOREIGN KEY (`idEstadoDetalleVenta`) REFERENCES `estadodetalleventa` (`id`),
  CONSTRAINT `detalleventa_fk2` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `devolucionproductosterminados` table : 
#

CREATE TABLE `devolucionproductosterminados` (
  `fecha` DATE NOT NULL,
  `idViajante` INTEGER(11) NOT NULL,
  `idCliente` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idViajante` (`idViajante`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `devolucionproductosterminados_fk` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`idPersona`),
  CONSTRAINT `devolucionproductosterminados_fk1` FOREIGN KEY (`idCliente`) REFERENCES `empresacliente` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detalledevolucionproductosterminados` table : 
#

CREATE TABLE `detalledevolucionproductosterminados` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idDevolucionProductosTerminados` INTEGER(11) NOT NULL,
  `idDetalleVenta` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idDevolucionProductosTerminados` (`idDevolucionProductosTerminados`),
  KEY `idDetalleVenta` (`idDetalleVenta`),
  CONSTRAINT `detalledevolucionproductosterminados_fk` FOREIGN KEY (`idDevolucionProductosTerminados`) REFERENCES `devolucionproductosterminados` (`id`),
  CONSTRAINT `detalledevolucionproductosterminados_fk1` FOREIGN KEY (`idDetalleVenta`) REFERENCES `detalleventa` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadodetallepedidoproductoterminado` table : 
#

CREATE TABLE `estadodetallepedidoproductoterminado` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallepedidoproductosterminados` table : 
#

CREATE TABLE `detallepedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '1',
  `precioPorUnidad` FLOAT(9,2) NOT NULL,
  `idEstadoDetallePedidoProductoTerminado` INTEGER(11) NOT NULL,
  `motivoDevolucion` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `motivoNoEntregado` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaDevolucion` INTEGER(11) DEFAULT NULL,
  `idPedidoProductosTerminados` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idProductoTerminado` (`idProductoTerminado`),
  KEY `idEstadoDetallePedidoProductoTerminado` (`idEstadoDetallePedidoProductoTerminado`),
  KEY `idPedidoProductosTerminados` (`idPedidoProductosTerminados`),
  CONSTRAINT `detallepedidoproductosterminados_fk` FOREIGN KEY (`idProductoTerminado`) REFERENCES `productoterminado` (`id`),
  CONSTRAINT `detallepedidoproductosterminados_fk1` FOREIGN KEY (`idEstadoDetallePedidoProductoTerminado`) REFERENCES `estadodetallepedidoproductoterminado` (`id`),
  CONSTRAINT `detallepedidoproductosterminados_fk2` FOREIGN KEY (`idPedidoProductosTerminados`) REFERENCES `pedidoproductosterminados` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tipofactura` table : 
#

CREATE TABLE `tipofactura` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `factura` table : 
#

CREATE TABLE `factura` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idTipoFactura` INTEGER(11) NOT NULL,
  `idPedidoProductosTerminados` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoFactura` (`idTipoFactura`),
  KEY `idPedidoProductosTerminados` (`idPedidoProductosTerminados`),
  CONSTRAINT `factura_fk` FOREIGN KEY (`idTipoFactura`) REFERENCES `tipofactura` (`id`),
  CONSTRAINT `factura_fk1` FOREIGN KEY (`idPedidoProductosTerminados`) REFERENCES `pedidoproductosterminados` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallefactura` table : 
#

CREATE TABLE `detallefactura` (
  `idDetallePedidoProductosTerminados` INTEGER(11) DEFAULT NULL,
  `idFactura` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `idDetallePedidoProductosTerminados` (`idDetallePedidoProductosTerminados`),
  KEY `idFactura` (`idFactura`),
  CONSTRAINT `detallefactura_fk` FOREIGN KEY (`idDetallePedidoProductosTerminados`) REFERENCES `detallepedidoproductosterminados` (`id`),
  CONSTRAINT `detallefactura_fk1` FOREIGN KEY (`idFactura`) REFERENCES `factura` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `hojaruta` table : 
#

CREATE TABLE `hojaruta` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idPosicionViajante` INTEGER(11) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPosicionViajante` (`idPosicionViajante`),
  CONSTRAINT `hojaruta_fk` FOREIGN KEY (`idPosicionViajante`) REFERENCES `domicilio` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallehojaruta` table : 
#

CREATE TABLE `detallehojaruta` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idHojaRuta` INTEGER(11) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  `idDomicilioVisitar` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idHojaRuta` (`idHojaRuta`),
  KEY `idEmpresaCliente` (`idEmpresaCliente`),
  KEY `idDomicilioVisitar` (`idDomicilioVisitar`),
  CONSTRAINT `detallehojaruta_fk` FOREIGN KEY (`idHojaRuta`) REFERENCES `hojaruta` (`id`),
  CONSTRAINT `detallehojaruta_fk1` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`),
  CONSTRAINT `detallehojaruta_fk2` FOREIGN KEY (`idDomicilioVisitar`) REFERENCES `domicilio` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `lote` table : 
#

CREATE TABLE `lote` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nroLote` INTEGER(11) NOT NULL DEFAULT '0',
  `cantidadProducida` INTEGER(11) NOT NULL DEFAULT '0',
  `idProducto` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `lote_fk` FOREIGN KEY (`idProducto`) REFERENCES `productoterminado` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallemateriaprima` table : 
#

CREATE TABLE `detallemateriaprima` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cantidadMateriaPrima` INTEGER(11) NOT NULL DEFAULT '1',
  `idMateriaPrima` INTEGER(11) NOT NULL,
  `idLote` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idMateriaPrima` (`idMateriaPrima`),
  KEY `idLote` (`idLote`),
  CONSTRAINT `detallemateriaprima_fk` FOREIGN KEY (`idMateriaPrima`) REFERENCES `materiaprima` (`id`),
  CONSTRAINT `detallemateriaprima_fk1` FOREIGN KEY (`idLote`) REFERENCES `lote` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadonotificacionreaprovisionamiento` table : 
#

CREATE TABLE `estadonotificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `notificacionreaprovisionamiento` table : 
#

CREATE TABLE `notificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idEmpleado` INTEGER(11) NOT NULL,
  `idEstadoNotificacionReaprovisionamiento` INTEGER(11) NOT NULL,
  `fechaIngresoDeposito` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpleado` (`idEmpleado`),
  KEY `idEstadoNotificacionReaprovisionamiento` (`idEstadoNotificacionReaprovisionamiento`),
  CONSTRAINT `notificacionreaprovisionamiento_fk` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idPersona`),
  CONSTRAINT `notificacionreaprovisionamiento_fk1` FOREIGN KEY (`idEstadoNotificacionReaprovisionamiento`) REFERENCES `estadonotificacionreaprovisionamiento` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `detallenotificacionreaprovisionamiento` table : 
#

CREATE TABLE `detallenotificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  `idNotificacionReaprovisionamiento` INTEGER(11) NOT NULL,
  `idProductoImportado` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idNotificacionReaprovisionamiento` (`idNotificacionReaprovisionamiento`),
  KEY `idProductoImportado` (`idProductoImportado`),
  CONSTRAINT `detallenotificacionreaprovisionamiento_fk` FOREIGN KEY (`idNotificacionReaprovisionamiento`) REFERENCES `notificacionreaprovisionamiento` (`id`),
  CONSTRAINT `detallenotificacionreaprovisionamiento_fk1` FOREIGN KEY (`idProductoImportado`) REFERENCES `productoimportado` (`idProductoTerminado`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `divisa` table : 
#

CREATE TABLE `divisa` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tasaCambio` FLOAT(9,2) NOT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `empresaclientexdomicilio` table : 
#

CREATE TABLE `empresaclientexdomicilio` (
  `idEmpresacliente` INTEGER(11) NOT NULL,
  `idDomicilio` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idEmpresacliente`, `idDomicilio`),
  KEY `FK_empresaclienteXdomicilio_idDomicilio` (`idDomicilio`),
  CONSTRAINT `FK_empresaclienteXdomicilio_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_empresaclienteXdomicilio_idEmpresacliente` FOREIGN KEY (`idEmpresacliente`) REFERENCES `empresacliente` (`id`)

)ENGINE=InnoDB
CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `empresaclientexpersona` table : 
#

CREATE TABLE `empresaclientexpersona` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  `idPersona` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpresaCliente` (`idEmpresaCliente`),
  KEY `idPersona` (`idPersona`),
  CONSTRAINT `empresaclientexpersona_fk` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`),
  CONSTRAINT `empresaclientexpersona_fk1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `empresatransporte` table : 
#

CREATE TABLE `empresatransporte` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idDomicilio` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idDomicilio` (`idDomicilio`),
  CONSTRAINT `empresatransporte_fk` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `estadoordencompra` table : 
#

CREATE TABLE `estadoordencompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `proveedor` table : 
#

CREATE TABLE `proveedor` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `razonSocial` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `telefonoFijo` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `telefonoCelular` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idDomicilioa` INTEGER(11) DEFAULT NULL,
  `pais` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaAlta` DATE NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idDomicilioa` (`idDomicilioa`),
  CONSTRAINT `proveedor_fk` FOREIGN KEY (`idDomicilioa`) REFERENCES `domicilio` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `ordencompra` table : 
#

CREATE TABLE `ordencompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idEmpresaTransporteInterior` INTEGER(11) DEFAULT NULL,
  `idEmpresaTransporteExterior` INTEGER(11) DEFAULT NULL,
  `idProveedor` INTEGER(11) DEFAULT NULL,
  `fechaPedido` DATE NOT NULL,
  `fechaEstimadaLlegada` DATE DEFAULT NULL,
  `idEstadoOrdenCompra` INTEGER(11) NOT NULL,
  `otrosGastos` FLOAT(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpresaTransporteInterior` (`idEmpresaTransporteInterior`),
  KEY `idEmpresaTransporteExterior` (`idEmpresaTransporteExterior`),
  KEY `idProveedor` (`idProveedor`),
  KEY `idEstadoOrdenCompra` (`idEstadoOrdenCompra`),
  CONSTRAINT `ordencompra_fk` FOREIGN KEY (`idEmpresaTransporteInterior`) REFERENCES `empresatransporte` (`id`),
  CONSTRAINT `ordencompra_fk1` FOREIGN KEY (`idEmpresaTransporteExterior`) REFERENCES `empresatransporte` (`id`),
  CONSTRAINT `ordencompra_fk2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `ordencompra_fk3` FOREIGN KEY (`idEstadoOrdenCompra`) REFERENCES `estadoordencompra` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `ordencompraximportacion` table : 
#

CREATE TABLE `ordencompraximportacion` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idImportacion` INTEGER(11) NOT NULL,
  `idOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idImportacion` (`idImportacion`),
  KEY `idOrdenCompra` (`idOrdenCompra`),
  CONSTRAINT `ordencompraximportacion_fk` FOREIGN KEY (`idImportacion`) REFERENCES `importacion` (`id`),
  CONSTRAINT `ordencompraximportacion_fk1` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompra` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `pago` table : 
#

CREATE TABLE `pago` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `monto` FLOAT(9,3) NOT NULL DEFAULT '0.000',
  `fechaPago` DATE NOT NULL,
  `nroPago` INTEGER(11) NOT NULL,
  `idDivisa` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `otrosgastos` table : 
#

CREATE TABLE `otrosgastos` (
  `idPago` INTEGER(11) NOT NULL,
  `descripcion` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idPago`),
  CONSTRAINT `otrosgastos_fk` FOREIGN KEY (`idPago`) REFERENCES `pago` (`id`)

)ENGINE=InnoDB
CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `pagoempleado` table : 
#

CREATE TABLE `pagoempleado` (
  `idEmpleado` INTEGER(11) NOT NULL,
  `idPago` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `pagoempleado_fk` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idPersona`),
  CONSTRAINT `pagoempleado_fk1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `pagoproveedor` table : 
#

CREATE TABLE `pagoproveedor` (
  `idPago` INTEGER(11) NOT NULL,
  `idOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idOrdenCompra` (`idOrdenCompra`),
  CONSTRAINT `pagoproveedor_fk` FOREIGN KEY (`idPago`) REFERENCES `pago` (`id`),
  CONSTRAINT `pagoproveedor_fk1` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompra` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `productofabricado` table : 
#

CREATE TABLE `productofabricado` (
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `costoProduccion` FLOAT(9,2) NOT NULL,
  PRIMARY KEY (`idProductoTerminado`),
  CONSTRAINT `FK_productofabricado_idProductoTerminado` FOREIGN KEY (`idProductoTerminado`) REFERENCES `productoterminado` (`id`),
  CONSTRAINT `productofabricado_fk` FOREIGN KEY (`idProductoTerminado`) REFERENCES `productoterminado` (`id`)

)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `tipodefecto` table : 
#

CREATE TABLE `tipodefecto` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `productosdefectuosos` table : 
#

CREATE TABLE `productosdefectuosos` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  `idTipoDefecto` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoDefecto` (`idTipoDefecto`),
  CONSTRAINT `productosdefectuosos_fk` FOREIGN KEY (`idTipoDefecto`) REFERENCES `tipodefecto` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `productosdefectuososxcompra` table : 
#

CREATE TABLE `productosdefectuososxcompra` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `idCompra` INTEGER(11) NOT NULL,
  `idProductosDefectuosos` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCompra` (`idCompra`),
  KEY `idProductosDefectuosos` (`idProductosDefectuosos`),
  CONSTRAINT `productosdefectuososxcompra_fk` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`id`),
  CONSTRAINT `productosdefectuososxcompra_fk1` FOREIGN KEY (`idProductosDefectuosos`) REFERENCES `productosdefectuosos` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `rentabilidadcliente` table : 
#

CREATE TABLE `rentabilidadcliente` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `coeficiente` FLOAT(9,2) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idEmpresaCliente` (`idEmpresaCliente`),
  CONSTRAINT `rentabilidadcliente_fk` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`)

)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Data for the `condicioniva` table  (LIMIT 0,500)
#

INSERT INTO `condicioniva` (`id`, `nombre`, `descripcion`) VALUES
  (1,'Monotributista',NULL),
  (2,'Responsable Inscripto',NULL),
  (3,'Exento',NULL),
  (4,'IVA No Responsable',NULL),
  (5,'RI Agente de Retención',NULL),
  (6,'Sujeto no Categorizado',NULL);
COMMIT;

#
# Data for the `provincia` table  (LIMIT 0,500)
#

INSERT INTO `provincia` (`nombre`, `id`) VALUES
  ('Buenos Aires',1),
  ('Catamarca',2),
  ('Chaco',3),
  ('Chubut',4),
  ('Cordoba',5),
  ('Corrientes',6),
  ('Entre Rios',7),
  ('Formosa',8),
  ('Jujuy',9),
  ('La Pampa',10),
  ('La Rioja',11),
  ('Mendoza',12),
  ('Misiones',13),
  ('Neuquen',14),
  ('Rio Negro',15),
  ('Salta',16),
  ('San Juan',17),
  ('San Luis',18),
  ('Santa Cruz',19),
  ('Santa Fe',20),
  ('Santiago del Estero',21),
  ('Tierra del Fuego',22),
  ('Tucuman',23);
COMMIT;

#
# Data for the `localidad` table  (LIMIT 0,500)
#

INSERT INTO `localidad` (`nombre`, `idProvincia`, `id`) VALUES
  ('Achiras',5,3521),
  ('Adelia Maria',5,3522),
  ('Agua De Oro',5,3523),
  ('Alcira Gigena',5,3524),
  ('Aldea Santa María',5,3525),
  ('Alejandro Roca',5,3526),
  ('Alejo Ledesma',5,3527),
  ('Alicia',5,3528),
  ('Almafuerte',5,3529),
  ('Alpa Corral',5,3530),
  ('Alta Gracia',5,3531),
  ('Alto Alegre',5,3532),
  ('Alto De Los Quebrachos',5,3533),
  ('Altos De Chipion',5,3534),
  ('Amboy',5,3535),
  ('Ambul',5,3536),
  ('Ana Zumarán',5,3537),
  ('Anisacate',5,3538),
  ('Arias',5,3539),
  ('Arroyito',5,3540),
  ('Arroyo Algodon',5,3541),
  ('Arroyo Cabral',5,3542),
  ('Arroyo De Los Patos',5,3543),
  ('Assunta',5,3544),
  ('Atahona',5,3545),
  ('Ausonia',5,3546),
  ('Avellaneda',5,3547),
  ('Ballesteros',5,3548),
  ('Ballesteros Sud',5,3549),
  ('Balnearia',5,3550),
  ('Bañado De Soto',5,3551),
  ('Bell Ville',5,3552),
  ('Bengolea',5,3553),
  ('Benjamin Gould',5,3554),
  ('Berrotaran',5,3555),
  ('Bialet Masse',5,3556),
  ('Bouwer',5,3557),
  ('Brinkmann',5,3558),
  ('Buchardo',5,3559),
  ('Bulnes',5,3560),
  ('Cabalango',5,3561),
  ('Calchin',5,3562),
  ('Calchin Oeste',5,3563),
  ('Calmayo',5,3564),
  ('Camilo Aldao',5,3565),
  ('Caminiaga',5,3566),
  ('Cañada De Luque',5,3567),
  ('Cañada De Machado',5,3568),
  ('Cañada De Rio Pinto',5,3569),
  ('Canals',5,3570),
  ('Candelaria Sud',5,3571),
  ('Capilla De Los Remedios',5,3572),
  ('Capilla De Siton',5,3573),
  ('Capilla Del Carmen',5,3574),
  ('Capilla Del Monte',5,3575),
  ('Capitán General Bernardo Ohiggins',5,3576),
  ('Carnerillo',5,3577),
  ('Carrilobo',5,3578),
  ('Casa Grande',5,3579),
  ('Cavanagh',5,3580),
  ('Cerro Colorado',5,3581),
  ('Chajan',5,3582),
  ('Chalacea',5,3583),
  ('Chañar Viejo',5,3584),
  ('Chancani',5,3585),
  ('Charbonier',5,3586),
  ('Charras',5,3587),
  ('Chazon',5,3588),
  ('Chilibroste',5,3589),
  ('Chucul',5,3590),
  ('Chuña',5,3591),
  ('Chuña Huasi',5,3592),
  ('Churqui Cañada',5,3593),
  ('Ciénaga Del Coro',5,3594),
  ('Cintra',5,3595),
  ('Colazo',5,3596),
  ('Colonia Almada',5,3597),
  ('Colonia Anita',5,3598),
  ('Colonia Barge',5,3599),
  ('Colonia Bismark',5,3600),
  ('Colonia Bremen',5,3601),
  ('Colonia Caroya',5,3602),
  ('Colonia Italiana',5,3603),
  ('Colonia Iturraspe',5,3604),
  ('Colonia Las Cuatro Esquinas',5,3605),
  ('Colonia Las Pichanas',5,3606),
  ('Colonia Marina',5,3607),
  ('Colonia Prosperidad',5,3608),
  ('Colonia San Bartolomé',5,3609),
  ('Colonia San Pedro',5,3610),
  ('Colonia Tirolesa',5,3611),
  ('Colonia Vicente Agüero',5,3612),
  ('Colonia Videla',5,3613),
  ('Colonia Vignaud',5,3614),
  ('Colonia Waltelina',5,3615),
  ('Comechingones',5,3616),
  ('Conlara',5,3617),
  ('Copacabana',5,3618),
  ('Cordoba',5,3619),
  ('Coronel Baigorria',5,3620),
  ('Coronel Moldes',5,3621),
  ('Corral De Bustos - Ifflinger',5,3622),
  ('Corralito',5,3623),
  ('Cosquin',5,3624),
  ('Costasacate',5,3625),
  ('Cruz Alta',5,3626),
  ('Cruz De Caña',5,3627),
  ('Cruz Del Eje',5,3628),
  ('Cuesta Blanca',5,3629),
  ('Dalmacio Velez Sarsfield',5,3630),
  ('Dean Funes',5,3631),
  ('Del Campillo',5,3632),
  ('Despeñaderos',5,3633),
  ('Devoto',5,3634),
  ('Diego De Rojas',5,3635),
  ('Dique Chico',5,3636),
  ('El Arañado',5,3637),
  ('El Brete',5,3638),
  ('El Chacho',5,3639),
  ('El Crispín',5,3640),
  ('El Fortin',5,3641),
  ('El Manzano',5,3642),
  ('El Rastreador',5,3643),
  ('El Rodeo',5,3644),
  ('El Tio',5,3645),
  ('Elena',5,3646),
  ('Embalse',5,3647),
  ('Esquina',5,3648),
  ('Estación General Paz',5,3649),
  ('Estacion Juarez Celman',5,3650),
  ('Estancia Guadalupe',5,3651),
  ('Estancia Vieja',5,3652),
  ('Etruria',5,3653),
  ('Eufrasio Loza',5,3654),
  ('Falda Del Carmen',5,3655),
  ('Freyre',5,3656),
  ('General Baldissera',5,3657),
  ('General Cabrera',5,3658),
  ('General Deheza',5,3659),
  ('General Fotheringham',5,3660),
  ('General Levalle',5,3661),
  ('General Roca',5,3662),
  ('Guanaco Muerto',5,3663),
  ('Guasapampa',5,3664),
  ('Guatimozin',5,3665),
  ('Gutemberg',5,3666),
  ('Hernando',5,3667),
  ('Huanchilla',5,3668),
  ('Huerta Grande',5,3669),
  ('Huinca Renanco',5,3670),
  ('Idiazabal',5,3671),
  ('Impira',5,3672),
  ('Inriville',5,3673),
  ('Isla Verde',5,3674),
  ('Italo',5,3675),
  ('James Craik',5,3676),
  ('Jesus Maria',5,3677),
  ('Jovita',5,3678),
  ('Justiniano Posse',5,3679),
  ('Kilometro 658',5,3680),
  ('La Batea',5,3681),
  ('La Calera',5,3682),
  ('La Carlota',5,3683),
  ('La Carolina (El Potosí)',5,3684),
  ('La Cautiva',5,3685),
  ('La Cesira',5,3686),
  ('La Cruz',5,3687),
  ('La Cumbre',5,3688),
  ('La Cumbrecita',5,3689),
  ('La Falda',5,3690),
  ('La Francia',5,3691),
  ('La Granja',5,3692),
  ('La Higuera',5,3693),
  ('La Laguna',5,3694),
  ('La Paisanita',5,3695),
  ('La Palestina',5,3696),
  ('La Pampa',5,3697),
  ('La Paquita',5,3698),
  ('La Para',5,3699),
  ('La Paz',5,3700),
  ('La Playa',5,3701),
  ('La Playosa',5,3702),
  ('La Población',5,3703),
  ('La Posta',5,3704),
  ('La Puerta',5,3705),
  ('La Quinta',5,3706),
  ('La Rancherita',5,3707),
  ('La Rinconada',5,3708),
  ('La Serranita',5,3709),
  ('La Tordilla',5,3710),
  ('Laborde',5,3711),
  ('Laboulaye',5,3712),
  ('Laguna Larga',5,3713),
  ('Las Acequias',5,3714),
  ('Las Albahacas',5,3715),
  ('Las Arrias',5,3716),
  ('Las Bajadas',5,3717),
  ('Las Caleras',5,3718),
  ('Las Calles',5,3719),
  ('Las Cañadas',5,3720),
  ('Las Gramillas',5,3721),
  ('Las Higueras',5,3722),
  ('Las Isletillas',5,3723),
  ('Las Junturas',5,3724),
  ('Las Palmas',5,3725),
  ('Las Peñas',5,3726),
  ('Las Peñas Sud',5,3727),
  ('Las Perdices',5,3728),
  ('Las Playas',5,3729),
  ('Las Rabonas',5,3730),
  ('Las Saladas',5,3731),
  ('Las Tapias',5,3732),
  ('Las Varas',5,3733),
  ('Las Varillas',5,3734),
  ('Las Vertientes',5,3735),
  ('Leguizamón',5,3736),
  ('Leones',5,3737),
  ('Los Cedros',5,3738),
  ('Los Cerrillos',5,3739),
  ('Los Chañaritos (Cruz Del Eje)',5,3740),
  ('Los Chañaritos (Rio Segundo)',5,3741),
  ('Los Cisnes',5,3742),
  ('Los Cocos',5,3743),
  ('Los Condores',5,3744),
  ('Los Hornillos',5,3745),
  ('Los Hoyos',5,3746),
  ('Los Mistoles',5,3747),
  ('Los Molinos',5,3748),
  ('Los Pozos',5,3749),
  ('Los Reartes',5,3750),
  ('Los Surgentes',5,3751),
  ('Los Talares',5,3752),
  ('Los Zorros',5,3753),
  ('Lozada',5,3754),
  ('Luca',5,3755),
  ('Lucio Victorio Mansilla',5,3756),
  ('Luque',5,3757),
  ('Lutti',5,3758),
  ('Luyaba',5,3759),
  ('Malagueño',5,3760),
  ('Malena',5,3761),
  ('Malvinas Argentinas',5,3762),
  ('Manfredi',5,3763),
  ('Maquinista Gallini',5,3764),
  ('Marcos Juarez',5,3765),
  ('Marull',5,3766),
  ('Matorrales',5,3767),
  ('Mattaldi',5,3768),
  ('Mayu Sumaj',5,3769),
  ('Media Naranja',5,3770),
  ('Melo',5,3771),
  ('Mendiolaza',5,3772),
  ('Mi Granja',5,3773),
  ('Mina Clavero',5,3774),
  ('Miramar',5,3775),
  ('Monte Buey',5,3776),
  ('Monte Cristo',5,3777),
  ('Monte De Los Gauchos',5,3778),
  ('Monte Leña',5,3779),
  ('Monte Maiz',5,3780),
  ('Monte Ralo',5,3781),
  ('Morrison',5,3782),
  ('Morteros',5,3783),
  ('Nicolás Bruzzone',5,3784),
  ('Noetinger',5,3785),
  ('Nono',5,3786),
  ('Obispo Trejo',5,3787),
  ('Olaeta',5,3788),
  ('Oliva',5,3789),
  ('Olivares De San Nicolás',5,3790),
  ('Onagoyti',5,3791),
  ('Oncativo',5,3792),
  ('Ordoñez',5,3793),
  ('Pacheco De Melo',5,3794),
  ('Pampayasta Norte',5,3795),
  ('Pampayasta Sud',5,3796),
  ('Panaholma',5,3797),
  ('Pascanas',5,3798),
  ('Pasco',5,3799),
  ('Paso Del Durazno',5,3800),
  ('Paso Viejo',5,3801),
  ('Pilar',5,3802),
  ('Pincén',5,3803),
  ('Piquillin',5,3804),
  ('Plaza De Mercedes',5,3805),
  ('Plaza Luxardo',5,3806),
  ('Porteña',5,3807),
  ('Potrero De Garay',5,3808),
  ('Pozo Del Molle',5,3809),
  ('Pozo Nuevo',5,3810),
  ('Pueblo Italiano',5,3811),
  ('Puesto De Castro',5,3812),
  ('Punta Del Agua',5,3813),
  ('Quebracho Herrado',5,3814),
  ('Quilino',5,3815),
  ('Rafael García',5,3816),
  ('Ranqueles',5,3817),
  ('Rayo Cortado',5,3818),
  ('Reduccion',5,3819),
  ('Rincón',5,3820),
  ('Río Bamba',5,3821),
  ('Rio Ceballos',5,3822),
  ('Rio Cuarto',5,3823),
  ('Rio De Los Sauces',5,3824),
  ('Rio Primero',5,3825),
  ('Rio Segundo',5,3826),
  ('Rio Tercero',5,3827),
  ('Rosales',5,3828),
  ('Rosario Del Saladillo',5,3829),
  ('Sacanta',5,3830),
  ('Sagrada Familia',5,3831),
  ('Saira',5,3832),
  ('Saladillo',5,3833),
  ('Saldan',5,3834),
  ('Salsacate',5,3835),
  ('Salsipuedes',5,3836),
  ('Sampacho',5,3837),
  ('San Agustin',5,3838),
  ('San Antonio De Arredondo',5,3839),
  ('San Antonio De Litin',5,3840),
  ('San Basilio',5,3841),
  ('San Carlos Minas',5,3842),
  ('San Clemente',5,3843),
  ('San Esteban',5,3844),
  ('San Francisco',5,3845),
  ('San Francisco Del Chañar',5,3846),
  ('San Gerónimo',5,3847),
  ('San Ignacio',5,3848),
  ('San Javier Y Yacanto',5,3849),
  ('San Joaquín',5,3850),
  ('San Jose',5,3851),
  ('San Jose De La Dormida',5,3852),
  ('San Jose De Las Salinas',5,3853),
  ('San Lorenzo',5,3854),
  ('San Marcos Sierras',5,3855),
  ('San Marcos Sud',5,3856),
  ('San Pedro',5,3857),
  ('San Pedro Norte',5,3858),
  ('San Roque',5,3859),
  ('San Vicente',5,3860),
  ('Santa Catalina',5,3861),
  ('Santa Elena',5,3862),
  ('Santa Eufemia',5,3863),
  ('Santa Maria',5,3864),
  ('Santa Rosa De Calamuchita',5,3865),
  ('Santa Rosa De Rio Primero',5,3866),
  ('Santiago Temple',5,3867),
  ('Sarmiento',5,3868),
  ('Saturnino María Laspiur',5,3869),
  ('Sauce Arriba',5,3870),
  ('Sebastian Elcano',5,3871),
  ('Seeber',5,3872),
  ('Segunda Usina',5,3873),
  ('Serrano',5,3874),
  ('Serrezuela',5,3875),
  ('Silvio Pellico',5,3876),
  ('Simbolar',5,3877),
  ('Sinsacate',5,3878),
  ('Suco',5,3879),
  ('Tala Cañada',5,3880),
  ('Tala Huasi',5,3881),
  ('Talaini',5,3882),
  ('Tancacha',5,3883),
  ('Tanti',5,3884),
  ('Ticino',5,3885),
  ('Tinoco',5,3886),
  ('Tio Pujio',5,3887),
  ('Toledo',5,3888),
  ('Toro Pujío',5,3889),
  ('Tosno',5,3890),
  ('Tosquita',5,3891),
  ('Transito',5,3892),
  ('Tuclame',5,3893),
  ('Ucacha',5,3894),
  ('Unquillo',5,3895),
  ('Valle De Anisacate',5,3896),
  ('Valle Hermoso',5,3897),
  ('Viamonte',5,3898),
  ('Vicuña Mackenna',5,3899),
  ('Villa Allende',5,3900),
  ('Villa Amancay',5,3901),
  ('Villa Ascasubi',5,3902),
  ('Villa Cañada Del Sauce',5,3903),
  ('Villa Candelaria Norte',5,3904),
  ('Villa Carlos Paz',5,3905),
  ('Villa Cerro Azul',5,3906),
  ('Villa Ciudad De America',5,3907),
  ('Villa Ciudad Parque Los Reartes',5,3908),
  ('Villa Concepcion Del Tio',5,3909),
  ('Villa Cura Brochero',5,3910),
  ('Villa De Las Rosas',5,3911),
  ('Villa De María',5,3912),
  ('Villa De Pocho',5,3913),
  ('Villa De Soto',5,3914),
  ('Villa Del Dique',5,3915),
  ('Villa Del Prado',5,3916),
  ('Villa Del Rosario',5,3917),
  ('Villa Del Totoral',5,3918),
  ('Villa Dolores',5,3919),
  ('Villa El Chacay',5,3920),
  ('Villa Elisa',5,3921),
  ('Villa Flor Serrana',5,3922),
  ('Villa Fontana',5,3923),
  ('Villa General Belgrano',5,3924),
  ('Villa Giardino',5,3925),
  ('Villa Gutiérrez',5,3926),
  ('Villa Huidobro',5,3927),
  ('Villa Icho Cruz',5,3928),
  ('Villa La Bolsa',5,3929),
  ('Villa Los Aromos',5,3930),
  ('Villa Los Patos',5,3931),
  ('Villa Maria',5,3932),
  ('Villa Nueva',5,3933),
  ('Villa Parque Santa Ana',5,3934),
  ('Villa Parque Siquiman',5,3935),
  ('Villa Quillinzo',5,3936),
  ('Villa Rossi',5,3937),
  ('Villa Rumipal',5,3938),
  ('Villa San Esteban',5,3939),
  ('Villa San Isidro',5,3940),
  ('Villa Santa Cruz Del Lago',5,3941),
  ('Villa Sarmiento (General Roca)',5,3942),
  ('Villa Sarmiento (San Alberto)',5,3943),
  ('Villa Tulumba',5,3944),
  ('Villa Valeria',5,3945),
  ('Villa Yacanto',5,3946),
  ('Washington',5,3947),
  ('Wenceslao Escalante',5,3948),
  ('Adolfo Alsina',1,3949),
  ('Alberti',1,3950),
  ('Almirante Brown',1,3951),
  ('Arrecifes',1,3952),
  ('Avellaneda',1,3953),
  ('Ayacucho',1,3954),
  ('Azul',1,3955),
  ('Bahia Blanca',1,3956),
  ('Balcarce',1,3957),
  ('Baradero',1,3958),
  ('Benito Juarez',1,3959),
  ('Berazategui',1,3960),
  ('Berisso',1,3961),
  ('Bolivar',1,3962),
  ('Bragado',1,3963),
  ('Campana',1,3964),
  ('Cañuelas',1,3965),
  ('Capitan Sarmiento',1,3966),
  ('Carlos Casares',1,3967),
  ('Carlos Tejedor',1,3968),
  ('Carmen De Areco',1,3969),
  ('Castelli',1,3970),
  ('Chacabuco',1,3971),
  ('Chascomus',1,3972),
  ('Chivilcoy',1,3973),
  ('Colon',1,3974),
  ('Coronel Brandsen',1,3975),
  ('Coronel Dorrego',1,3976),
  ('Coronel Pringles',1,3977),
  ('Coronel Rosales',1,3978),
  ('Coronel Suarez',1,3979),
  ('Daireaux',1,3980),
  ('Dolores',1,3981),
  ('Ensenada',1,3982),
  ('Escobar',1,3983),
  ('Esteban Echeverria',1,3984),
  ('Exaltacion De La Cruz',1,3985),
  ('Ezeiza',1,3986),
  ('Florencio Varela',1,3987),
  ('Florentino Ameghino',1,3988),
  ('General Alvarado',1,3989),
  ('General Alvear',1,3990),
  ('General Arenales',1,3991),
  ('General Belgrano',1,3992),
  ('General Guido',1,3993),
  ('General Lamadrid',1,3994),
  ('General Las Heras',1,3995),
  ('General Lavalle',1,3996),
  ('General Madariaga',1,3997),
  ('General Paz',1,3998),
  ('General Pinto',1,3999),
  ('General Pueyrredon',1,4000),
  ('General Rodriguez',1,4001),
  ('General San Martin',1,4002),
  ('General Viamonte',1,4003),
  ('General Villegas',1,4004),
  ('Gonzalez Chaves',1,4005),
  ('Guamini',1,4006),
  ('Hipolito Yrigoyen',1,4007),
  ('Hurlingham',1,4008),
  ('Ituzaingo',1,4009),
  ('Jose Clemente Paz',1,4010),
  ('Junin',1,4011),
  ('La Matanza',1,4012),
  ('La Plata',1,4013),
  ('Lanus',1,4014),
  ('Laprida',1,4015),
  ('Las Flores',1,4016),
  ('Leandro Nicéforo Alem',1,4017),
  ('Lincoln',1,4018),
  ('Loberia',1,4019),
  ('Lobos',1,4020);
COMMIT;

#
# Data for the `localidad` table  (LIMIT 500,500)
#

INSERT INTO `localidad` (`nombre`, `idProvincia`, `id`) VALUES
  ('Lomas De Zamora',1,4021),
  ('Lujan',1,4022),
  ('Magdalena',1,4023),
  ('Maipu',1,4024),
  ('Malvinas Argentinas',1,4025),
  ('Mar Chiquita',1,4026),
  ('Marcos Paz',1,4027),
  ('Mercedes',1,4028),
  ('Merlo',1,4029),
  ('Monte',1,4030),
  ('Moreno',1,4031),
  ('Moron',1,4032),
  ('Municipio De La Costa',1,4033),
  ('Municipio De Monte Hermoso',1,4034),
  ('Municipio De Pinamar',1,4035),
  ('Municipio De Villa Gesell',1,4036),
  ('Navarro',1,4037),
  ('Necochea',1,4038),
  ('Nueve De Julio',1,4039),
  ('Olavarria',1,4040),
  ('Patagones',1,4041),
  ('Pehuajo',1,4042),
  ('Pellegrini',1,4043),
  ('Pergamino',1,4044),
  ('Pila',1,4045),
  ('Pilar',1,4046),
  ('Presidente Peron',1,4047),
  ('Puan',1,4048),
  ('Punta Indio',1,4049),
  ('Quilmes',1,4050),
  ('Ramallo',1,4051),
  ('Rauch',1,4052),
  ('Rivadavia',1,4053),
  ('Rojas',1,4054),
  ('Roque Perez',1,4055),
  ('Saavedra',1,4056),
  ('Saladillo',1,4057),
  ('Salliquelo',1,4058),
  ('Salto',1,4059),
  ('San Andres De Giles',1,4060),
  ('San Antonio De Areco',1,4061),
  ('San Cayetano',1,4062),
  ('San Fernando',1,4063),
  ('San Isidro',1,4064),
  ('San Miguel',1,4065),
  ('San Nicolas',1,4066),
  ('San Pedro',1,4067),
  ('San Vicente',1,4068),
  ('Suipacha',1,4069),
  ('Tandil',1,4070),
  ('Tapalque',1,4071),
  ('Tigre',1,4072),
  ('Tordillo',1,4073),
  ('Tornquist',1,4074),
  ('Trenque Lauquen',1,4075),
  ('Tres Arroyos',1,4076),
  ('Tres De Febrero',1,4077),
  ('Tres Lomas',1,4078),
  ('Veinticinco De Mayo',1,4079),
  ('Vicente Lopez',1,4080),
  ('Villarino',1,4081),
  ('Zarate',1,4082),
  ('Balde',18,4083),
  ('Carpintería ',18,4084),
  ('Concarán',18,4085),
  ('Cortaderas',18,4086),
  ('El Trapiche ',18,4087),
  ('La Carolina ',18,4088),
  ('La Punta ',18,4089),
  ('La Toma ',18,4090),
  ('Los Molles',18,4091),
  ('Lujan',18,4092),
  ('Merlo',18,4093),
  ('Nogolí',18,4094),
  ('Papagayos',18,4095),
  ('Potrero de los Funes',18,4096),
  ('Quines',18,4097),
  ('San Francisco del Monte',18,4098),
  ('San Luis Capital',18,4099),
  ('Santa Rosa del Conlara',18,4100),
  ('Villa Elena',18,4101),
  ('Villa la Quebrada',18,4102),
  ('Villa Larca',18,4103),
  ('Villa Mercedes',18,4104),
  ('Arauco',11,4105),
  ('Castro Barros',11,4106),
  ('Chamical',11,4107),
  ('Chilecito',11,4108),
  ('Coronel Felipe Varela',11,4109),
  ('Famatina',11,4110),
  ('General Angel Vicente Peñaloza',11,4111),
  ('General Belgrano',11,4112),
  ('General Juan Facundo Quiroga',11,4113),
  ('General Lamadrid',11,4114),
  ('General Ocampo',11,4115),
  ('General San Martín',11,4116),
  ('Independencia',11,4117),
  ('La Rioja',11,4118),
  ('Rosario Vera Peñaloza',11,4119),
  ('San Blas De Los Sauces',11,4120),
  ('Sanagasta',11,4121),
  ('Vinchina',11,4122),
  ('Aconquija',2,4123),
  ('Ancasti',2,4124),
  ('Andalgalá',2,4125),
  ('Antofagasta',2,4126),
  ('Belén',2,4127),
  ('Capayan',2,4128),
  ('Corral Quemado',2,4129),
  ('El Alto',2,4130),
  ('El Rodeo',2,4131),
  ('Fiambalá',2,4132),
  ('Fray Mamerto Esquiu',2,4133),
  ('Hualfin',2,4134),
  ('Huillapima (Capayan)',2,4135),
  ('Icaño (La Paz)',2,4136),
  ('La Puerta',2,4137),
  ('Las Juntas',2,4138),
  ('Londres',2,4139),
  ('Los Altos',2,4140),
  ('Los Varela',2,4141),
  ('Mutquín',2,4142),
  ('Paclin',2,4143),
  ('Pomán',2,4144),
  ('Pozo De La Piedra',2,4145),
  ('Puerta De Corral Quemado',2,4146),
  ('Puerta De San José',2,4147),
  ('Recreo',2,4148),
  ('San Fernando',2,4149),
  ('San Fernando Del Valle De Catamarca',2,4150),
  ('San José',2,4151),
  ('Santa María',2,4152),
  ('Santa Rosa',2,4153),
  ('Saujil',2,4154),
  ('Tapso',2,4155),
  ('Tinogasta',2,4156),
  ('Valle Viejo',2,4157),
  ('Villa Vil',2,4158),
  ('Abdon Castro Tolay (Barrancas)',9,4159),
  ('Abra Pampa',9,4160),
  ('Abralaite',9,4161),
  ('Aguas Calientes',9,4162),
  ('Arrayanal',9,4163),
  ('Barrios',9,4164),
  ('Barro Negro',9,4165),
  ('Caimancito',9,4166),
  ('Calilegua',9,4167),
  ('Cangrejillos',9,4168),
  ('Caspalá',9,4169),
  ('Catua',9,4170),
  ('Cieneguillas',9,4171),
  ('Coranzuli',9,4172),
  ('Cusi Cusi',9,4173),
  ('El Aguilar',9,4174),
  ('El Carmen',9,4175),
  ('El Condor',9,4176),
  ('El Fuerte',9,4177),
  ('El Piquete',9,4178),
  ('El Talar',9,4179),
  ('Fraile Pintado',9,4180),
  ('Hipolito Yrigoyen',9,4181),
  ('Huacalera',9,4182),
  ('Humahuaca',9,4183),
  ('La Esperanza',9,4184),
  ('La Mendieta',9,4185),
  ('La Quiaca',9,4186),
  ('Libertador General San Martin',9,4187),
  ('Maimará',9,4188),
  ('Mina Pirquitas',9,4189),
  ('Monterrico',9,4190),
  ('Palma Sola',9,4191),
  ('Palpalá',9,4192),
  ('Pampa Blanca',9,4193),
  ('Pampichuela',9,4194),
  ('Perico',9,4195),
  ('Puesto Del Marquéz',9,4196),
  ('Puesto Viejo',9,4197),
  ('Pumahuasi',9,4198),
  ('Purmamarca',9,4199),
  ('Rinconada',9,4200),
  ('Rodeíto',9,4201),
  ('Rosario De Río Grande',9,4202),
  ('San Antonio',9,4203),
  ('San Francisco',9,4204),
  ('San Pedro De Jujuy',9,4205),
  ('San Salvador De Jujuy',9,4206),
  ('Santa Ana',9,4207),
  ('Santa Catalina',9,4208),
  ('Santa Clara',9,4209),
  ('Susques',9,4210),
  ('Tilcara',9,4211),
  ('Tres Cruces',9,4212),
  ('Tumbaya',9,4213),
  ('Valle Grande',9,4214),
  ('Vinalito',9,4215),
  ('Volcan',9,4216),
  ('Yala',9,4217),
  ('Yaví',9,4218),
  ('Yuto',9,4219),
  ('Avia Terai',3,4220),
  ('Barranqueras',3,4221),
  ('Basail',3,4222),
  ('Campo Largo',3,4223),
  ('Capitan Solari',3,4224),
  ('Charadai',3,4225),
  ('Charata',3,4226),
  ('Chorotis',3,4227),
  ('Ciervo Petiso',3,4228),
  ('Colonia Benitez',3,4229),
  ('Colonia Elisa',3,4230),
  ('Colonia Popular',3,4231),
  ('Colonias Unidas',3,4232),
  ('Concepción Del Bermejo',3,4233),
  ('Coronel Du Graty',3,4234),
  ('Corzuela',3,4235),
  ('Cote Lai',3,4236),
  ('El Sauzalito',3,4237),
  ('Enrique Urien',3,4238),
  ('Fontana',3,4239),
  ('Fuerte Esperanza',3,4240),
  ('Gancedo',3,4241),
  ('General Capdevila',3,4242),
  ('General Pinedo',3,4243),
  ('General San Martin',3,4244),
  ('General Vedia',3,4245),
  ('Hermoso Campo',3,4246),
  ('Isla Del Cerrito',3,4247),
  ('Juan Jose Castelli',3,4248),
  ('La Clotilde',3,4249),
  ('La Eduviges',3,4250),
  ('La Escondida',3,4251),
  ('La Leonesa',3,4252),
  ('La Tigra',3,4253),
  ('La Verde',3,4254),
  ('Laguna Blanca',3,4255),
  ('Laguna Limpia',3,4256),
  ('Lapachito',3,4257),
  ('Las Breñas',3,4258),
  ('Las Garcitas',3,4259),
  ('Las Palmas',3,4260),
  ('Los Frentones',3,4261),
  ('Machagai',3,4262),
  ('Makalle',3,4263),
  ('Margarita Belen',3,4264),
  ('Miraflores',3,4265),
  ('Mision Nueva Pompeya',3,4266),
  ('Napenay',3,4267),
  ('Pampa Almiron',3,4268),
  ('Pampa Del Indio',3,4269),
  ('Pampa Del Infierno',3,4270),
  ('Presidencia Roca',3,4271),
  ('Presidente De La Plaza',3,4272),
  ('Puerto Bermejo',3,4273),
  ('Puerto Eva Peron',3,4274),
  ('Puerto Tirol',3,4275),
  ('Puerto Vilelas',3,4276),
  ('Quitilipi',3,4277),
  ('Resistencia',3,4278),
  ('Roque Saenz Peña',3,4279),
  ('Samuhu',3,4280),
  ('San Bernardo',3,4281),
  ('Santa Sylvina',3,4282),
  ('Taco Pozo',3,4283),
  ('Tres Isletas',3,4284),
  ('Villa Angela',3,4285),
  ('Villa Berthet',3,4286),
  ('Villa Rio Bermejito',3,4287),
  ('28 De Julio',4,4288),
  ('Aldea Apeleg',4,4289),
  ('Aldea Beleiro',4,4290),
  ('Aldea Epulef',4,4291),
  ('Alto Rio Senguer',4,4292),
  ('Buen Pasto',4,4293),
  ('Camarones',4,4294),
  ('Carrenleufú',4,4295),
  ('Cerro Centinela',4,4296),
  ('Cholila',4,4297),
  ('Colán Conhué',4,4298),
  ('Comodoro Rivadavia',4,4299),
  ('Corcovado',4,4300),
  ('Cushamen Centro',4,4301),
  ('Dique Florentino Ameghino',4,4302),
  ('Doctor Ricardo Rojas',4,4303),
  ('Dolavon',4,4304),
  ('El Hoyo',4,4305),
  ('El Maiten',4,4306),
  ('Epuyen',4,4307),
  ('Esquel',4,4308),
  ('Facundo',4,4309),
  ('Gaiman',4,4310),
  ('Gan Gan',4,4311),
  ('Gastre',4,4312),
  ('Gobernador Costa',4,4313),
  ('Gualjaina',4,4314),
  ('Jose De San Martin',4,4315),
  ('Lago Blanco',4,4316),
  ('Lago Puelo',4,4317),
  ('Lagunita Salada',4,4318),
  ('Las Plumas',4,4319),
  ('Los Altares',4,4320),
  ('Paso De Indios',4,4321),
  ('Paso Del Sapo',4,4322),
  ('Puerto Madryn',4,4323),
  ('Puerto Pirámide',4,4324),
  ('Rada Tilly',4,4325),
  ('Rawson',4,4326),
  ('Rio Mayo',4,4327),
  ('Rio Pico',4,4328),
  ('Sarmiento',4,4329),
  ('Tecka',4,4330),
  ('Telsen',4,4331),
  ('Trelew',4,4332),
  ('Trevelin',4,4333),
  ('Alvear',6,4334),
  ('Bella Vista',6,4335),
  ('Beron De Astrada',6,4336),
  ('Bonpland',6,4337),
  ('Caa Cati',6,4338),
  ('Chavarria',6,4339),
  ('Colonia Carlos Pellegrini',6,4340),
  ('Colonia Libertad',6,4341),
  ('Colonia Liebig',6,4342),
  ('Colonia Santa Rosa',6,4343),
  ('Concepcion',6,4344),
  ('Corrientes',6,4345),
  ('Cruz De Los Milagros',6,4346),
  ('Curuzu Cuatia',6,4347),
  ('Empedrado',6,4348),
  ('Esquina',6,4349),
  ('Estacion Torrent',6,4350),
  ('Felipe Yofre',6,4351),
  ('Garruchos',6,4352),
  ('Gobernador Martinez',6,4353),
  ('Gobernador Virasoro',6,4354),
  ('Goya',6,4355),
  ('Guaviravi',6,4356),
  ('Herlitzka',6,4357),
  ('Ita Ibate',6,4358),
  ('Itati',6,4359),
  ('Ituzaingo',6,4360),
  ('Jose Rafael Gomez',6,4361),
  ('Juan Pujol',6,4362),
  ('La Cruz',6,4363),
  ('Lavalle',6,4364),
  ('Lomas De Vallejos',6,4365),
  ('Loreto',6,4366),
  ('Mariano I. Loza',6,4367),
  ('Mburucuya',6,4368),
  ('Mercedes',6,4369),
  ('Mocoreta',6,4370),
  ('Monte Caseros',6,4371),
  ('Nueve De Julio',6,4372),
  ('Palmar Grande',6,4373),
  ('Parada Pucheta',6,4374),
  ('Paso De La Patria',6,4375),
  ('Paso De Los Libres',6,4376),
  ('Pedro Fernandez',6,4377),
  ('Perugorria',6,4378),
  ('Pueblo Libertador',6,4379),
  ('Ramada Paso',6,4380),
  ('Riachuelo',6,4381),
  ('Saladas',6,4382),
  ('San Antonio',6,4383),
  ('San Carlos',6,4384),
  ('San Cosme',6,4385),
  ('San Lorenzo',6,4386),
  ('San Luis Del Palmar',6,4387),
  ('San Miguel',6,4388),
  ('San Roque',6,4389),
  ('Santa Ana',6,4390),
  ('Santa Lucia',6,4391),
  ('Santo Tome',6,4392),
  ('Sauce',6,4393),
  ('Tabay',6,4394),
  ('Tapebicua',6,4395),
  ('Tatacua',6,4396),
  ('Villa Olivari',6,4397),
  ('Yapeyu',6,4398),
  ('Yatayti Calle',6,4399),
  ('Alarcón',7,4400),
  ('Alcaraz Norte',7,4401),
  ('Alcaraz Sur',7,4402),
  ('Aldea Asunción',7,4403),
  ('Aldea Brasilera',7,4404),
  ('Aldea Eigenfeld',7,4405),
  ('Aldea Grapschental',7,4406),
  ('Aldea María Luisa',7,4407),
  ('Aldea Protestante',7,4408),
  ('Aldea Salto',7,4409),
  ('Aldea San Antonio (Gualeguaychú)',7,4410),
  ('Aldea San Antonio (Paraná)',7,4411),
  ('Aldea San Juan',7,4412),
  ('Aldea San Miguel',7,4413),
  ('Aldea San Rafael',7,4414),
  ('Aldea Santa María',7,4415),
  ('Aldea Santa Rosa',7,4416),
  ('Aldea Spatzenkutter',7,4417),
  ('Aldea Valle Maria',7,4418),
  ('Alejandro Roca',7,4419),
  ('Altamirano Sur',7,4420),
  ('Antelo',7,4421),
  ('Antonio Tomás',7,4422),
  ('Aranguren',7,4423),
  ('Arroyo Barú',7,4424),
  ('Arroyo Burgos',7,4425),
  ('Arroyo Clé',7,4426),
  ('Arroyo Corralito',7,4427),
  ('Arroyo Del Medio',7,4428),
  ('Arroyo Maturrango',7,4429),
  ('Arroyo Palo Seco',7,4430),
  ('Banderas',7,4431),
  ('Basavilbaso',7,4432),
  ('Berrera',7,4433),
  ('Betbeder',7,4434),
  ('Bovril',7,4435),
  ('Caseros',7,4436),
  ('Ceibas',7,4437),
  ('Cerrito',7,4438),
  ('Chajari',7,4439),
  ('Chilcas',7,4440),
  ('Clodomiro Ledesma',7,4441),
  ('Colon',7,4442),
  ('Colonia Alemana',7,4443),
  ('Colonia Avellaneda',7,4444),
  ('Colonia Avigdor',7,4445),
  ('Colonia Ayui',7,4446),
  ('Colonia Baylina',7,4447),
  ('Colonia Carrasco',7,4448),
  ('Colonia Celina',7,4449),
  ('Colonia Cerrito',7,4450),
  ('Colonia Crespo',7,4451),
  ('Colonia Elía',7,4452),
  ('Colonia Ensayo',7,4453),
  ('Colonia General Roca',7,4454),
  ('Colonia La Argentina',7,4455),
  ('Colonia Merou',7,4456),
  ('Colonia Oficial N° 13',7,4457),
  ('Colonia Oficial N° 3 Y 14',7,4458),
  ('Colonia Oficial N°5',7,4459),
  ('Colonia Reffino',7,4460),
  ('Colonia Tunas',7,4461),
  ('Colonia Viraró',7,4462),
  ('Concepcion Del Uruguay',7,4463),
  ('Concordia',7,4464),
  ('Conscripto Bernardi',7,4465),
  ('Costa Grande',7,4466),
  ('Costa San Antonio',7,4467),
  ('Costa Uruguay Norte',7,4468),
  ('Costa Uruguay Sur',7,4469),
  ('Crespo',7,4470),
  ('Crucesitas Octava',7,4471),
  ('Crucesitas Séptima',7,4472),
  ('Crucesitas Tercera',7,4473),
  ('Cuchilla Redonda',7,4474),
  ('Curtiembre',7,4475),
  ('Diamante',7,4476),
  ('Distrito Chañar',7,4477),
  ('Distrito Chiqueros',7,4478),
  ('Distrito Cuarto',7,4479),
  ('Distrito Diego López',7,4480),
  ('Distrito Pajonal',7,4481),
  ('Distrito Sauce',7,4482),
  ('Distrito Sexto Costa De Nogoyá',7,4483),
  ('Distrito Tala',7,4484),
  ('Distrito Talitas',7,4485),
  ('Don Cristóbal Primero',7,4486),
  ('Don Cristóbal Segundo',7,4487),
  ('Durazno',7,4488),
  ('El Cimarrón',7,4489),
  ('El Gramiyal',7,4490),
  ('El Palenque',7,4491),
  ('El Pingo',7,4492),
  ('El Quebracho',7,4493),
  ('El Redomón',7,4494),
  ('El Solar',7,4495),
  ('Enrique Carbo',7,4496),
  ('Espinillo Norte',7,4497),
  ('Estación Camps',7,4498),
  ('Estación Escriña',7,4499),
  ('Estación Lazo',7,4500),
  ('Estación Raíces',7,4501),
  ('Estación Yerúa',7,4502),
  ('Estancia Grande',7,4503),
  ('Estancia Líbaros',7,4504),
  ('Estancia Racedo (El Carmen)',7,4505),
  ('Estancia Sola',7,4506),
  ('Estancia Yuquerí',7,4507),
  ('Estaquitas',7,4508),
  ('Faustino María Parera',7,4509),
  ('Febre',7,4510),
  ('Federacion',7,4511),
  ('Federal',7,4512),
  ('General Almada',7,4513),
  ('General Alvear',7,4514),
  ('General Campos',7,4515),
  ('General Galarza',7,4516),
  ('General Ramirez',7,4517),
  ('Gilbert',7,4518),
  ('Gobernador Echagüe',7,4519),
  ('Gobernador Mansilla',7,4520);
COMMIT;

#
# Data for the `localidad` table  (LIMIT 1000,500)
#

INSERT INTO `localidad` (`nombre`, `idProvincia`, `id`) VALUES
  ('González Calderón',7,4521),
  ('Gualeguay',7,4522),
  ('Gualeguaychu',7,4523),
  ('Gualeguaycito',7,4524),
  ('Guardamonte',7,4525),
  ('Hambis',7,4526),
  ('Hasenkamp',7,4527),
  ('Hernandarias',7,4528),
  ('Hernandez',7,4529),
  ('Herrera',7,4530),
  ('Hinojal',7,4531),
  ('Hocker',7,4532),
  ('Ingeniero Sajaroff',7,4533),
  ('Irazusta',7,4534),
  ('Islas Del Ibicuy',7,4535),
  ('Isletas',7,4536),
  ('Jubileo',7,4537),
  ('Justo José De Urquiza',7,4538),
  ('La Clarita',7,4539),
  ('La Criolla',7,4540),
  ('La Esmeralda',7,4541),
  ('La Florida',7,4542),
  ('La Fraternidad Y Santa Juana',7,4543),
  ('La Hierra',7,4544),
  ('La Ollita',7,4545),
  ('La Paz',7,4546),
  ('La Picada',7,4547),
  ('La Providencia',7,4548),
  ('La Verbena',7,4549),
  ('Laguna Benítez',7,4550),
  ('Larroque',7,4551),
  ('Las Cuevas',7,4552),
  ('Las Garzas (Pueblo Bellocq)',7,4553),
  ('Las Guachas',7,4554),
  ('Las Mercedes',7,4555),
  ('Las Moscas',7,4556),
  ('Las Mulitas',7,4557),
  ('Las Toscas',7,4558),
  ('Laurencena',7,4559),
  ('Libertador San Martin',7,4560),
  ('Loma Limpia',7,4561),
  ('Los Ceibos',7,4562),
  ('Los Charruas',7,4563),
  ('Los Conquistadores',7,4564),
  ('Lucas Gonzalez',7,4565),
  ('Lucas Norte',7,4566),
  ('Lucas Sur Primera',7,4567),
  ('Lucas Sur Segundo',7,4568),
  ('Macia',7,4569),
  ('Maria Grande',7,4570),
  ('María Grande Segunda',7,4571),
  ('Médanos',7,4572),
  ('Mojones Norte',7,4573),
  ('Mojones Sur',7,4574),
  ('Molino Doll',7,4575),
  ('Monte Redondo',7,4576),
  ('Montoya',7,4577),
  ('Mulas Grandes',7,4578),
  ('Ñancay',7,4579),
  ('Nogoya',7,4580),
  ('Nueva Escocia',7,4581),
  ('Nueva Vizcaya',7,4582),
  ('Ombú',7,4583),
  ('Oro Verde',7,4584),
  ('Paraje Las Tunas',7,4585),
  ('Parana',7,4586),
  ('Pasaje Guayaquil',7,4587),
  ('Paso De La Arena',7,4588),
  ('Paso De La Laguna',7,4589),
  ('Paso De Las Piedras',7,4590),
  ('Paso Duarte',7,4591),
  ('Pastor Britos',7,4592),
  ('Pedernal',7,4593),
  ('Perdices',7,4594),
  ('Picada Berón',7,4595),
  ('Piedras Blancas',7,4596),
  ('Primer Distrito Cuchilla',7,4597),
  ('Primero De Mayo',7,4598),
  ('Pronunciamiento',7,4599),
  ('Pueblo Brugo',7,4600),
  ('Pueblo Cazes',7,4601),
  ('Pueblo General Belgrano',7,4602),
  ('Pueblo Liebig',7,4603),
  ('Puerto Algarrobo',7,4604),
  ('Puerto Ibicuy',7,4605),
  ('Puerto Yerua',7,4606),
  ('Punta Del Monte',7,4607),
  ('Quebracho',7,4608),
  ('Quinto Distrito',7,4609),
  ('Raíces Oeste',7,4610),
  ('Rincón De Nogoyá',7,4611),
  ('Rincón Del Cinto',7,4612),
  ('Rincón Del Doll',7,4613),
  ('Rincón Del Gato',7,4614),
  ('Rocamora',7,4615),
  ('Rosario Del Tala',7,4616),
  ('S.J. De La Frontera',7,4617),
  ('San Benito',7,4618),
  ('San Cipriano',7,4619),
  ('San Ernesto',7,4620),
  ('San Gustavo',7,4621),
  ('San Jaime',7,4622),
  ('San Jose',7,4623),
  ('San José De Feliciano',7,4624),
  ('San Justo (Concordia)',7,4625),
  ('San Justo (Uruguay)',7,4626),
  ('San Marcial',7,4627),
  ('San Pedro',7,4628),
  ('San Ramírez',7,4629),
  ('San Ramón',7,4630),
  ('San Roque',7,4631),
  ('San Salvador',7,4632),
  ('San Víctor',7,4633),
  ('Santa Ana (Federación)',7,4634),
  ('Santa Ana (Uruguay)',7,4635),
  ('Santa Anita',7,4636),
  ('Santa Elena',7,4637),
  ('Santa Lucía',7,4638),
  ('Santa Luisa',7,4639),
  ('Sauce De Luna',7,4640),
  ('Sauce Montrull',7,4641),
  ('Sauce Pintos',7,4642),
  ('Sauce Sur',7,4643),
  ('Segui',7,4644),
  ('Sir Leonard',7,4645),
  ('Sosa',7,4646),
  ('Tabossi',7,4647),
  ('Tezanos Pintos',7,4648),
  ('Ubajay',7,4649),
  ('Urdinarrain',7,4650),
  ('Veinte De Setiembre',7,4651),
  ('Viale',7,4652),
  ('Victoria',7,4653),
  ('Villa Clara',7,4654),
  ('Villa Del Rosario',7,4655),
  ('Villa Dominguez',7,4656),
  ('Villa Elisa',7,4657),
  ('Villa Fontana',7,4658),
  ('Villa Gobernador Etchevehere',7,4659),
  ('Villa Mantero',7,4660),
  ('Villa Paranacito',7,4661),
  ('Villa Urquiza',7,4662),
  ('Villaguay',7,4663),
  ('Walter Moss',7,4664),
  ('Yacaré',7,4665),
  ('Yeso Oeste',7,4666),
  ('Buena Vista',8,4667),
  ('Clorinda',8,4668),
  ('Colonia Pastoril',8,4669),
  ('Comandante Fontana',8,4670),
  ('El Colorado',8,4671),
  ('El Espinillo',8,4672),
  ('Estanislao Del Campo',8,4673),
  ('Formosa',8,4674),
  ('Fortín Cabo 1º Lugones',8,4675),
  ('General Enrique Mosconi',8,4676),
  ('General Güemes',8,4677),
  ('General Lucio Victorio Mansilla',8,4678),
  ('General Manuel Belgrano',8,4679),
  ('Gran Guardia',8,4680),
  ('Herradura',8,4681),
  ('Ibarreta',8,4682),
  ('Ingeniero Juarez',8,4683),
  ('Laguna Blanca',8,4684),
  ('Laguna Naick Neck',8,4685),
  ('Laguna Yema',8,4686),
  ('Las Lomitas',8,4687),
  ('Los Chiriguanos',8,4688),
  ('Mayor Vicente Villafañe',8,4689),
  ('Mision San Francisco De Laishi',8,4690),
  ('Mision Tacaagle',8,4691),
  ('Mojon De Fierro',8,4692),
  ('Palo Santo',8,4693),
  ('Pirane',8,4694),
  ('Posta San Martin',8,4695),
  ('Pozo De Maza',8,4696),
  ('Pozo Del Tigre',8,4697),
  ('Riacho He He',8,4698),
  ('San Hilario',8,4699),
  ('Siete Palmas',8,4700),
  ('Subteniente Perin',8,4701),
  ('Tres Lagunas',8,4702),
  ('Villa Dos Trece',8,4703),
  ('Villa Escolar',8,4704),
  ('Villa General Guemes',8,4705),
  ('25 De Mayo',10,4706),
  ('Abramo',10,4707),
  ('Adolfo Van Praet',10,4708),
  ('Agustoni',10,4709),
  ('Algarrobo Del Aguila',10,4710),
  ('Alpachiri',10,4711),
  ('Alta Italia',10,4712),
  ('Anguil',10,4713),
  ('Arata',10,4714),
  ('Ataliva Roca',10,4715),
  ('Bernardo Larroude',10,4716),
  ('Bernasconi',10,4717),
  ('Caleufu',10,4718),
  ('Carro Quemado',10,4719),
  ('Catrilo',10,4720),
  ('Ceballos',10,4721),
  ('Chacharramendi',10,4722),
  ('Colonia Baron',10,4723),
  ('Colonia Santa Maria',10,4724),
  ('Colonia Santa Teresa',10,4725),
  ('Conhelo',10,4726),
  ('Coronel Hilario Lagos',10,4727),
  ('Cuchillo Co',10,4728),
  ('Doblas',10,4729),
  ('Dorila',10,4730),
  ('Eduardo Castex',10,4731),
  ('Embajador Martini',10,4732),
  ('Falucho',10,4733),
  ('General Acha',10,4734),
  ('General Manuel Campos',10,4735),
  ('General Pico',10,4736),
  ('General San Martin',10,4737),
  ('Gobernador Duval',10,4738),
  ('Guatrache',10,4739),
  ('Ingeniero Luiggi',10,4740),
  ('Intendente Alvear',10,4741),
  ('Jacinto Arauz',10,4742),
  ('La Adela',10,4743),
  ('La Humada',10,4744),
  ('La Maruja',10,4745),
  ('La Reforma',10,4746),
  ('Limay Mahuida',10,4747),
  ('Lonquimay',10,4748),
  ('Loventue',10,4749),
  ('Luan Toro',10,4750),
  ('Macachin',10,4751),
  ('Maisonnave',10,4752),
  ('Mauricio Mayer',10,4753),
  ('Metileo',10,4754),
  ('Miguel Cane',10,4755),
  ('Miguel Riglos',10,4756),
  ('Monte Nievas',10,4757),
  ('Parera',10,4758),
  ('Peru',10,4759),
  ('Pichi Huinca',10,4760),
  ('Puelches',10,4761),
  ('Puelen',10,4762),
  ('Quehue',10,4763),
  ('Quemu Quemu',10,4764),
  ('Quetrequen',10,4765),
  ('Rancul',10,4766),
  ('Realico',10,4767),
  ('Relmo',10,4768),
  ('Rolon',10,4769),
  ('Rucanelo',10,4770),
  ('Santa Isabel',10,4771),
  ('Santa Rosa',10,4772),
  ('Sarah',10,4773),
  ('Speluzzi',10,4774),
  ('Telen',10,4775),
  ('Toay',10,4776),
  ('Tomas Manuel Anchorena',10,4777),
  ('Trenel',10,4778),
  ('Unanue',10,4779),
  ('Uriburu',10,4780),
  ('Vertiz',10,4781),
  ('Victorica',10,4782),
  ('Villa Mirasol',10,4783),
  ('Winifreda',10,4784),
  ('General Alvear',12,4785),
  ('Godoy Cruz',12,4786),
  ('Guaymallen',12,4787),
  ('Junin',12,4788),
  ('La Paz',12,4789),
  ('Las Heras',12,4790),
  ('Lavalle',12,4791),
  ('Lujan De Cuyo',12,4792),
  ('Maipu',12,4793),
  ('Malargue',12,4794),
  ('Mendoza',12,4795),
  ('Rivadavia',12,4796),
  ('San Carlos',12,4797),
  ('San Martin',12,4798),
  ('San Rafael',12,4799),
  ('Santa Rosa',12,4800),
  ('Tunuyan',12,4801),
  ('Tupungato',12,4802),
  ('25 De Mayo',13,4803),
  ('Alba Posse',13,4804),
  ('Almafuerte',13,4805),
  ('Apostoles',13,4806),
  ('Aristobulo Del Valle',13,4807),
  ('Arroyo Del Medio',13,4808),
  ('Azara',13,4809),
  ('Bernardo De Irigoyen',13,4810),
  ('Bompland',13,4811),
  ('Caa Yari',13,4812),
  ('Campo Grande',13,4813),
  ('Campo Ramon',13,4814),
  ('Campo Viera',13,4815),
  ('Candelaria',13,4816),
  ('Capiovi',13,4817),
  ('Caraguatay',13,4818),
  ('Cerro Azul',13,4819),
  ('Cerro Cora',13,4820),
  ('Colonia Alberdi',13,4821),
  ('Colonia Aurora',13,4822),
  ('Colonia Delicia',13,4823),
  ('Colonia Polana',13,4824),
  ('Colonia Victoria',13,4825),
  ('Colonia Wanda',13,4826),
  ('Comandante Andrés Guacurari',13,4827),
  ('Concepción De La Sierra',13,4828),
  ('Corpus',13,4829),
  ('Dos Arroyos',13,4830),
  ('Dos De Mayo',13,4831),
  ('El Alcazar',13,4832),
  ('El Soberbio',13,4833),
  ('Eldorado',13,4834),
  ('Fachinal',13,4835),
  ('Florentino Ameghino',13,4836),
  ('Garuhape',13,4837),
  ('Garupa',13,4838),
  ('General Alvear',13,4839),
  ('General Manuel Belgrano',13,4840),
  ('General Urquiza',13,4841),
  ('Gobernador Lopez',13,4842),
  ('Gobernador Roca',13,4843),
  ('Guarani',13,4844),
  ('Hipolito Irigoyen',13,4845),
  ('Itacaruare',13,4846),
  ('Jardin America',13,4847),
  ('Leandro Nicéforo Alem',13,4848),
  ('Loreto',13,4849),
  ('Los Helechos',13,4850),
  ('Martires',13,4851),
  ('Mojon Grande',13,4852),
  ('Montecarlo',13,4853),
  ('Nueve De Julio',13,4854),
  ('Obera',13,4855),
  ('Olegario Víctor Andrade',13,4856),
  ('Panambi',13,4857),
  ('Posadas',13,4858),
  ('Profundidad',13,4859),
  ('Puerto Esperanza',13,4860),
  ('Puerto Iguazu',13,4861),
  ('Puerto Leoni',13,4862),
  ('Puerto Libertad',13,4863),
  ('Puerto Piray',13,4864),
  ('Puerto Rico',13,4865),
  ('Ruiz De Montoya',13,4866),
  ('San Antonio',13,4867),
  ('San Ignacio',13,4868),
  ('San Javier',13,4869),
  ('San Jose',13,4870),
  ('San Martin',13,4871),
  ('San Pedro',13,4872),
  ('San Vicente',13,4873),
  ('Santa Ana',13,4874),
  ('Santa Maria',13,4875),
  ('Santiago De Liniers',13,4876),
  ('Santo Pipo',13,4877),
  ('Tres Capones',13,4878),
  ('Aguada San Roque',14,4879),
  ('Alumine',14,4880),
  ('Andacollo',14,4881),
  ('Añelo',14,4882),
  ('Bajada Del Agrio',14,4883),
  ('Barrancas',14,4884),
  ('Buta Ranquil',14,4885),
  ('Caviahue',14,4886),
  ('Centenario',14,4887),
  ('Chorriaca',14,4888),
  ('Chos Malal',14,4889),
  ('Covunco Abajo',14,4890),
  ('Coyuco - Cochico',14,4891),
  ('Cutral Co',14,4892),
  ('El Cholar',14,4893),
  ('El Huecu',14,4894),
  ('El Sauce',14,4895),
  ('Guañacos',14,4896),
  ('Huinganco',14,4897),
  ('Junin De Los Andes',14,4898),
  ('Las Coloradas',14,4899),
  ('Las Lajas',14,4900),
  ('Las Ovejas',14,4901),
  ('Loncopue',14,4902),
  ('Los Catutos',14,4903),
  ('Los Chihuidos',14,4904),
  ('Los Miches',14,4905),
  ('Mariano Moreno',14,4906),
  ('Neuquen',14,4907),
  ('Octavio Pico',14,4908),
  ('Paso Aguerre',14,4909),
  ('Picun Leufu',14,4910),
  ('Piedra Del Aguila',14,4911),
  ('Pilo Lil',14,4912),
  ('Plaza Huincul',14,4913),
  ('Plotier',14,4914),
  ('Puente Picun Leufu',14,4915),
  ('Quili Malal',14,4916),
  ('Ramón M. Castro',14,4917),
  ('Rincon De Los Sauces',14,4918),
  ('San Martin De Los Andes',14,4919),
  ('San Patricio Del Chañar',14,4920),
  ('Santo Tomas',14,4921),
  ('Sauzal Bonito (Cutralco)',14,4922),
  ('Senillosa',14,4923),
  ('Taquimilan',14,4924),
  ('Tricao Malal',14,4925),
  ('Varvarco',14,4926),
  ('Villa Curi Leuvu',14,4927),
  ('Villa Del Nahueve',14,4928),
  ('Villa El Chocon',14,4929),
  ('Villa La Angostura',14,4930),
  ('Villa Manzano Amargo',14,4931),
  ('Villa Pehuenia',14,4932),
  ('Villa Traful',14,4933),
  ('Vista Alegre',14,4934),
  ('Zapala',14,4935),
  ('Aguada Cecilio',15,4936),
  ('Aguada De Guerra',15,4937),
  ('Aguada Guzmán',15,4938),
  ('Allen',15,4939),
  ('Arroyo De La Ventana',15,4940),
  ('Arroyo Los Berros',15,4941),
  ('Campo Grande',15,4942),
  ('Catriel',15,4943),
  ('Cerro Policia',15,4944),
  ('Cervantes',15,4945),
  ('Chelforo',15,4946),
  ('Chichinales',15,4947),
  ('Chimpay',15,4948),
  ('Chipauquil',15,4949),
  ('Choele Choel',15,4950),
  ('Cinco Saltos',15,4951),
  ('Cipolletti',15,4952),
  ('Clemente Onelli',15,4953),
  ('Colán Conhue',15,4954),
  ('Comallo',15,4955),
  ('Comicó',15,4956),
  ('Cona Niyeu',15,4957),
  ('Contralmirante Cordero',15,4958),
  ('Coronel Belisle',15,4959),
  ('Cubanea',15,4960),
  ('Darwin',15,4961),
  ('Dina Huapi',15,4962),
  ('El Bolson',15,4963),
  ('El Caín',15,4964),
  ('El Cuy',15,4965),
  ('El Manso',15,4966),
  ('General Conesa',15,4967),
  ('General Enrique Godoy',15,4968),
  ('General Fernandez Oro',15,4969),
  ('General Roca',15,4970),
  ('Guardia Mitre',15,4971),
  ('Ingeniero Huergo',15,4972),
  ('Ingeniero Jacobacci',15,4973),
  ('Laguna Blanca',15,4974),
  ('Lamarque',15,4975),
  ('Los Menucos',15,4976),
  ('Luis Beltran',15,4977),
  ('Mainque',15,4978),
  ('Mamuel Choique',15,4979),
  ('Maquinchao',15,4980),
  ('Mencué',15,4981),
  ('Ministro Ramos Mexia',15,4982),
  ('Nahuel Niyeu',15,4983),
  ('Naupa Huen',15,4984),
  ('Ñorquinco',15,4985),
  ('Ojos De Agua',15,4986),
  ('Paso Flores',15,4987),
  ('Peñas Blancas',15,4988),
  ('Pichi Mahuida',15,4989),
  ('Pilcaniyeu',15,4990),
  ('Pilquiniyeu',15,4991),
  ('Pilquiniyeu Del Limay',15,4992),
  ('Pomona',15,4993),
  ('Prahuaniyeu',15,4994),
  ('Rincón Treneta',15,4995),
  ('Río Chico',15,4996),
  ('Rio Colorado',15,4997),
  ('San Antonio Oeste',15,4998),
  ('San Carlos De Bariloche',15,4999),
  ('San Javier',15,5000),
  ('Sierra Colorada',15,5001),
  ('Sierra Grande',15,5002),
  ('Sierra Pailemán',15,5003),
  ('Valcheta',15,5004),
  ('Valle Azul',15,5005),
  ('Viedma',15,5006),
  ('Villa Llanquín',15,5007),
  ('Villa Mascardi',15,5008),
  ('Villa Regina',15,5009),
  ('Yaminué',15,5010),
  ('Aguaray',16,5011),
  ('Angastaco',16,5012),
  ('Animana',16,5013),
  ('Apolinario Saravia',16,5014),
  ('Cachi',16,5015),
  ('Cafayate',16,5016),
  ('Campo Quijano',16,5017),
  ('Campo Santo',16,5018),
  ('Cerrillos',16,5019),
  ('Chicoana',16,5020);
COMMIT;

#
# Data for the `localidad` table  (LIMIT 1500,500)
#

INSERT INTO `localidad` (`nombre`, `idProvincia`, `id`) VALUES
  ('Colonia Santa Rosa',16,5021),
  ('Coronel Moldes',16,5022),
  ('Delegacion Dragones',16,5023),
  ('El Bordo',16,5024),
  ('El Carril',16,5025),
  ('El Galpon',16,5026),
  ('El Jardin',16,5027),
  ('El Potrero',16,5028),
  ('El Quebrachal',16,5029),
  ('El Tala',16,5030),
  ('Embarcacion',16,5031),
  ('General Ballivian',16,5032),
  ('General Guemes',16,5033),
  ('General Mosconi',16,5034),
  ('General Pizarro',16,5035),
  ('Guachipas',16,5036),
  ('Hipolito Yrigoyen',16,5037),
  ('Iruya',16,5038),
  ('Isla De Cañas',16,5039),
  ('Joaquin Víctor Gonzalez',16,5040),
  ('La Caldera',16,5041),
  ('La Candelaria',16,5042),
  ('La Merced',16,5043),
  ('La Poma',16,5044),
  ('La Viña',16,5045),
  ('Las Lajitas',16,5046),
  ('Los Toldos',16,5047),
  ('Molinos',16,5048),
  ('Nazareno',16,5049),
  ('Payogasta',16,5050),
  ('Pichanal',16,5051),
  ('Profesor Salvador Mazza',16,5052),
  ('Rio De Las Piedras',16,5053),
  ('Rivadavia Banda Norte',16,5054),
  ('Rivadavia Banda Sur',16,5055),
  ('Rosario De La Frontera',16,5056),
  ('Rosario De Lerma',16,5057),
  ('Salta',16,5058),
  ('San Antonio De Los Cobres',16,5059),
  ('San Carlos',16,5060),
  ('San José De Metán',16,5061),
  ('San Ramón De La Nueva Orán',16,5062),
  ('Santa Victoria Este',16,5063),
  ('Santa Victoria Oeste',16,5064),
  ('Seclantas',16,5065),
  ('Tartagal',16,5066),
  ('Tolar Gande',16,5067),
  ('Urundel',16,5068),
  ('Vaqueros',16,5069),
  ('Villa San Lorenzo',16,5070),
  ('25 De Mayo',17,5071),
  ('9 De Julio',17,5072),
  ('Albardon',17,5073),
  ('Angaco',17,5074),
  ('Calingasta',17,5075),
  ('Caucete',17,5076),
  ('Chimbas',17,5077),
  ('Iglesia',17,5078),
  ('Jachal',17,5079),
  ('Pocito',17,5080),
  ('Rawson',17,5081),
  ('Rivadavia',17,5082),
  ('San Juan',17,5083),
  ('San Martin',17,5084),
  ('Santa Lucia',17,5085),
  ('Sarmiento',17,5086),
  ('Ullum',17,5087),
  ('Valle Fertil',17,5088),
  ('Zonda',17,5089),
  ('28 De Noviembre',19,5090),
  ('Caleta Olivia',19,5091),
  ('Cañadon Seco',19,5092),
  ('Comandante Luis Piedrabuena',19,5093),
  ('El Calafate',19,5094),
  ('El Chalten',19,5095),
  ('Gobernador Gregores',19,5096),
  ('Hipolito Irigoyen',19,5097),
  ('Jaramillo',19,5098),
  ('Koluel Kaike',19,5099),
  ('Las Heras',19,5100),
  ('Los Antiguos',19,5101),
  ('Perito Moreno',19,5102),
  ('Pico Truncado',19,5103),
  ('Puerto Deseado',19,5104),
  ('Puerto San Julian',19,5105),
  ('Puerto Santa Cruz',19,5106),
  ('Rio Gallegos',19,5107),
  ('Rio Turbio',19,5108),
  ('Tres Lagos',19,5109),
  ('Acebal',20,5110),
  ('Aguara Grande',20,5111),
  ('Albarellos',20,5112),
  ('Alcorta',20,5113),
  ('Aldao',20,5114),
  ('Aldao ( C )',20,5115),
  ('Alejandra',20,5116),
  ('Alvarez',20,5117),
  ('Alvear',20,5118),
  ('Ambrosetti',20,5119),
  ('Amenabar',20,5120),
  ('Angelica',20,5121),
  ('Angeloni',20,5122),
  ('Arequito',20,5123),
  ('Arminda',20,5124),
  ('Armstrong',20,5125),
  ('Arocena',20,5126),
  ('Aron Castellanos',20,5127),
  ('Arroyo Aguiar',20,5128),
  ('Arroyo Ceibal',20,5129),
  ('Arroyo Leyes',20,5130),
  ('Arroyo Seco',20,5131),
  ('Arrufo',20,5132),
  ('Arteaga',20,5133),
  ('Ataliva',20,5134),
  ('Aurelia',20,5135),
  ('Avellaneda',20,5136),
  ('Barrancas',20,5137),
  ('Bauer Y Sigel',20,5138),
  ('Bella Italia',20,5139),
  ('Berabevu',20,5140),
  ('Berna',20,5141),
  ('Bernardo De Irigoyen',20,5142),
  ('Bigand',20,5143),
  ('Bombal',20,5144),
  ('Bouquet',20,5145),
  ('Bustinza',20,5146),
  ('Cabal',20,5147),
  ('Cacique Ariacaiquin',20,5148),
  ('Cafferata',20,5149),
  ('Calchaqui',20,5150),
  ('Campo Andino',20,5151),
  ('Campo Piaggio',20,5152),
  ('Cañada De Gomez',20,5153),
  ('Cañada Del Ucle',20,5154),
  ('Cañada Ombu',20,5155),
  ('Cañada Rica',20,5156),
  ('Cañada Rosquin',20,5157),
  ('Candioti',20,5158),
  ('Capitan Bermudez',20,5159),
  ('Capivara',20,5160),
  ('Carcaraña',20,5161),
  ('Carlos Pellegrini',20,5162),
  ('Carmen',20,5163),
  ('Carmen Del Sauce',20,5164),
  ('Carreras',20,5165),
  ('Carrizales',20,5166),
  ('Casalegno',20,5167),
  ('Casas',20,5168),
  ('Casilda',20,5169),
  ('Castelar',20,5170),
  ('Castellanos',20,5171),
  ('Cavour',20,5172),
  ('Cayasta',20,5173),
  ('Cayastacito',20,5174),
  ('Centeno',20,5175),
  ('Cepeda',20,5176),
  ('Ceres',20,5177),
  ('Chabas',20,5178),
  ('Chañar Ladeado',20,5179),
  ('Chapuy',20,5180),
  ('Chovet',20,5181),
  ('Christophersen',20,5182),
  ('Classon',20,5183),
  ('Clucellas',20,5184),
  ('Colonia Ana',20,5185),
  ('Colonia Belgrano',20,5186),
  ('Colonia Bicha',20,5187),
  ('Colonia Bigand',20,5188),
  ('Colonia Bossi',20,5189),
  ('Colonia Cello',20,5190),
  ('Colonia Dolores',20,5191),
  ('Colonia Duran',20,5192),
  ('Colonia Iturraspe',20,5193),
  ('Colonia Margarita',20,5194),
  ('Colonia Mascias',20,5195),
  ('Colonia Raquel',20,5196),
  ('Colonia Rosa',20,5197),
  ('Colonia San Jose',20,5198),
  ('Constanza',20,5199),
  ('Coronda',20,5200),
  ('Coronel Arnold',20,5201),
  ('Coronel Bogado',20,5202),
  ('Coronel Dominguez',20,5203),
  ('Coronel Fraga',20,5204),
  ('Correa',20,5205),
  ('Crespo',20,5206),
  ('Crispi',20,5207),
  ('Cululu',20,5208),
  ('Curupaity',20,5209),
  ('Desvio Arijon',20,5210),
  ('Diego De Alvear',20,5211),
  ('Dos Rosas Y La Legua',20,5212),
  ('Egusquiza',20,5213),
  ('El Araza',20,5214),
  ('El Rabon',20,5215),
  ('El Sombrerito',20,5216),
  ('El Trebol',20,5217),
  ('Elisa',20,5218),
  ('Elortondo',20,5219),
  ('Emilia',20,5220),
  ('Empalme San Carlos',20,5221),
  ('Empalme Villa Constitucion',20,5222),
  ('Esmeralda',20,5223),
  ('Esperanza',20,5224),
  ('Estacion Clucellas',20,5225),
  ('Estacion Diaz',20,5226),
  ('Esteban Rams',20,5227),
  ('Esther',20,5228),
  ('Eusebia Y Carolina',20,5229),
  ('Eustolia',20,5230),
  ('Felicia',20,5231),
  ('Fidela',20,5232),
  ('Fighiera',20,5233),
  ('Firmat',20,5234),
  ('Florencia',20,5235),
  ('Fortin Olmos',20,5236),
  ('Franck',20,5237),
  ('Fray Luis Beltran',20,5238),
  ('Frontera',20,5239),
  ('Fuentes',20,5240),
  ('Funes',20,5241),
  ('G- Perez De Denis - El Noche',20,5242),
  ('Gaboto',20,5243),
  ('Galisteo',20,5244),
  ('Galvez',20,5245),
  ('Garabato',20,5246),
  ('Garibaldi',20,5247),
  ('Gato Colorado',20,5248),
  ('General Gelly',20,5249),
  ('General Lagos',20,5250),
  ('Gessler',20,5251),
  ('Godeken',20,5252),
  ('Godoy',20,5253),
  ('Golondrina',20,5254),
  ('Granadero Baigorria',20,5255),
  ('Grutly',20,5256),
  ('Guadalupe Norte',20,5257),
  ('Helvecia',20,5258),
  ('Hersilia',20,5259),
  ('Hipatia',20,5260),
  ('Huanqueros',20,5261),
  ('Hugentobler',20,5262),
  ('Hughes',20,5263),
  ('Humberto Primo',20,5264),
  ('Humboldt',20,5265),
  ('Ibarlucea',20,5266),
  ('Ingeniero Chanourdie',20,5267),
  ('Intiyaco',20,5268),
  ('Irigoyen',20,5269),
  ('Ituzaingo',20,5270),
  ('Jacinto L. Arauz',20,5271),
  ('Josefina',20,5272),
  ('Juan Bernabé Molina',20,5273),
  ('Juan De Garay',20,5274),
  ('Juncal',20,5275),
  ('La Brava',20,5276),
  ('La Cabral',20,5277),
  ('La Camila',20,5278),
  ('La Chispa',20,5279),
  ('La Clara',20,5280),
  ('La Criolla',20,5281),
  ('La Gallareta',20,5282),
  ('La Lucila',20,5283),
  ('La Pelada',20,5284),
  ('La Penca Y Caraguata',20,5285),
  ('La Rubia',20,5286),
  ('La Sarita',20,5287),
  ('La Vanguardia',20,5288),
  ('Labordeboy',20,5289),
  ('Laguna Paiva',20,5290),
  ('Landeta',20,5291),
  ('Lanteri',20,5292),
  ('Larrechea',20,5293),
  ('Las Avispas',20,5294),
  ('Las Bandurrias',20,5295),
  ('Las Garzas',20,5296),
  ('Las Palmeras',20,5297),
  ('Las Parejas',20,5298),
  ('Las Petacas',20,5299),
  ('Las Rosas',20,5300),
  ('Las Toscas',20,5301),
  ('Las Tunas',20,5302),
  ('Lazzarino',20,5303),
  ('Lehmann',20,5304),
  ('Llambi Campbell',20,5305),
  ('Logroño',20,5306),
  ('Loma Alta',20,5307),
  ('Lopez',20,5308),
  ('Los Amores',20,5309),
  ('Los Cardos',20,5310),
  ('Los Laureles',20,5311),
  ('Los Molinos',20,5312),
  ('Los Quirquinchos',20,5313),
  ('Lucio V. Lopez',20,5314),
  ('Luis Palacios',20,5315),
  ('Maciel',20,5316),
  ('Maggiolo',20,5317),
  ('Malabrigo',20,5318),
  ('Marcelino Escalada',20,5319),
  ('Margarita',20,5320),
  ('Maria Juana',20,5321),
  ('Maria Luisa',20,5322),
  ('Maria Susana',20,5323),
  ('Maria Teresa',20,5324),
  ('Matilde',20,5325),
  ('Maua',20,5326),
  ('Maximo Paz',20,5327),
  ('Melincue',20,5328),
  ('Miguel Torres',20,5329),
  ('Moises Ville',20,5330),
  ('Monigotes',20,5331),
  ('Monje',20,5332),
  ('Monte Oscuridad',20,5333),
  ('Monte Vera',20,5334),
  ('Montefiore',20,5335),
  ('Montes De Oca',20,5336),
  ('Murphy',20,5337),
  ('Ñanducita',20,5338),
  ('Nare',20,5339),
  ('Nelson',20,5340),
  ('Nicanor Molinas',20,5341),
  ('Nuevo Torino',20,5342),
  ('Oliveros',20,5343),
  ('Palacios',20,5344),
  ('Pavon',20,5345),
  ('Pavon Arriba',20,5346),
  ('Pedro Gomez Cello',20,5347),
  ('Perez',20,5348),
  ('Peyrano',20,5349),
  ('Piamonte',20,5350),
  ('Pilar',20,5351),
  ('Piñero',20,5352),
  ('Portugalete',20,5353),
  ('Pozo Borrado',20,5354),
  ('Presidente Roca',20,5355),
  ('Progreso',20,5356),
  ('Providencia',20,5357),
  ('Pto.General San Martin',20,5358),
  ('Pueblo Andino',20,5359),
  ('Pueblo Esther',20,5360),
  ('Pueblo Marini',20,5361),
  ('Pueblo Muñoz',20,5362),
  ('Pueblo San Bernardo',20,5363),
  ('Pueblo Uranga',20,5364),
  ('Pujato',20,5365),
  ('Pujato Norte',20,5366),
  ('Rafaela',20,5367),
  ('Ramayon',20,5368),
  ('Ramona',20,5369),
  ('Reconquista',20,5370),
  ('Recreo',20,5371),
  ('Ricardone',20,5372),
  ('Rivadavia',20,5373),
  ('Roldan',20,5374),
  ('Romang',20,5375),
  ('Rosario',20,5376),
  ('Rueda',20,5377),
  ('Rufino',20,5378),
  ('Sa Pereira',20,5379),
  ('Saguier',20,5380),
  ('Saladero Mariano Cabal',20,5381),
  ('Salto Grande',20,5382),
  ('San Agustin',20,5383),
  ('San Antonio',20,5384),
  ('San Antonio De Obligado',20,5385),
  ('San Bernardo',20,5386),
  ('San Carlos Centro',20,5387),
  ('San Carlos Norte',20,5388),
  ('San Carlos Sud',20,5389),
  ('San Cristobal',20,5390),
  ('San Eduardo',20,5391),
  ('San Eugenio',20,5392),
  ('San Fabian',20,5393),
  ('San Francisco De Santa Fe',20,5394),
  ('San Genaro',20,5395),
  ('San Genaro Norte',20,5396),
  ('San Gregorio',20,5397),
  ('San Guillermo',20,5398),
  ('San Javier',20,5399),
  ('San Jeronimo Del Sauce',20,5400),
  ('San Jeronimo Norte',20,5401),
  ('San Jeronimo Sud',20,5402),
  ('San Jorge',20,5403),
  ('San Jose De La Esquina',20,5404),
  ('San Jose Del Rincon',20,5405),
  ('San Justo',20,5406),
  ('San Lorenzo',20,5407),
  ('San Mariano',20,5408),
  ('San Martín De Las Escobas',20,5409),
  ('San Martin Norte',20,5410),
  ('San Vicente',20,5411),
  ('Sancti Spiritu',20,5412),
  ('Sanford',20,5413),
  ('Santa Clara De Buena Vista',20,5414),
  ('Santa Clara De Saguier',20,5415),
  ('Santa Fe',20,5416),
  ('Santa Isabel',20,5417),
  ('Santa Margarita',20,5418),
  ('Santa Maria Centro',20,5419),
  ('Santa Maria Norte',20,5420),
  ('Santa Rosa',20,5421),
  ('Santa Teresa',20,5422),
  ('Santo Domingo',20,5423),
  ('Santo Tome',20,5424),
  ('Santurce',20,5425),
  ('Sargento Cabral',20,5426),
  ('Sarmiento',20,5427),
  ('Sastre',20,5428),
  ('Sauce Viejo',20,5429),
  ('Serodino',20,5430),
  ('Silva',20,5431),
  ('Soldini',20,5432),
  ('Soledad',20,5433),
  ('Soutomayor',20,5434),
  ('Suardi',20,5435),
  ('Sunchales',20,5436),
  ('Susana',20,5437),
  ('Tacuarendi',20,5438),
  ('Tacural',20,5439),
  ('Tacurales',20,5440),
  ('Tartagal',20,5441),
  ('Teodelina',20,5442),
  ('Theobald',20,5443),
  ('Timbues - Jesus Maria',20,5444),
  ('Toba',20,5445),
  ('Tortugas',20,5446),
  ('Tostado',20,5447),
  ('Totoras',20,5448),
  ('Traill',20,5449),
  ('Venado Tuerto',20,5450),
  ('Vera',20,5451),
  ('Vera Y Pintado',20,5452),
  ('Videla',20,5453),
  ('Vila',20,5454),
  ('Villa Amelia',20,5455),
  ('Villa Ana',20,5456),
  ('Villa Cañas',20,5457),
  ('Villa Constitucion',20,5458),
  ('Villa Eloisa',20,5459),
  ('Villa Goberanador Galvez',20,5460),
  ('Villa Guillermina',20,5461),
  ('Villa Minetti',20,5462),
  ('Villa Mugueta',20,5463),
  ('Villa Ocampo',20,5464),
  ('Villa San Jose',20,5465),
  ('Villa Saralegui',20,5466),
  ('Villa Trinidad',20,5467),
  ('Villada',20,5468),
  ('Virginia',20,5469),
  ('Wheelwright',20,5470),
  ('Zaballa',20,5471),
  ('Zenon Pereyra',20,5472),
  ('Añatuya',21,5473),
  ('Arraga',21,5474),
  ('Bandera',21,5475),
  ('Bandera Bajada',21,5476),
  ('Beltran',21,5477),
  ('Bobadal',21,5478),
  ('Brea Pozo',21,5479),
  ('Campo Gallo',21,5480),
  ('Chilca Juliana',21,5481),
  ('Choya',21,5482),
  ('Clodomira',21,5483),
  ('Colonia Alpina',21,5484),
  ('Colonia Dora',21,5485),
  ('El Charco',21,5486),
  ('El Mojon',21,5487),
  ('El Simbolar',21,5488),
  ('Fernandez',21,5489),
  ('Fortin Inca',21,5490),
  ('Frias',21,5491),
  ('Garza',21,5492),
  ('Gramilla',21,5493),
  ('Guardia Escolta',21,5494),
  ('Herrera',21,5495),
  ('Icaño',21,5496),
  ('Ingeniero Forres',21,5497),
  ('Juan F. Ibarra',21,5498),
  ('La Banda',21,5499),
  ('La Cañada',21,5500),
  ('Laprida',21,5501),
  ('Lavalle',21,5502),
  ('Loreto',21,5503),
  ('Los Juries',21,5504),
  ('Los Nuñez',21,5505),
  ('Los Pirpintos',21,5506),
  ('Los Quirogas',21,5507),
  ('Los Telares',21,5508),
  ('Lugones',21,5509),
  ('Malbrán',21,5510),
  ('Matara',21,5511),
  ('Medellin',21,5512),
  ('Monte Quemado',21,5513),
  ('Nueva Esperanza',21,5514),
  ('Nueva Francia',21,5515),
  ('Palo Negro',21,5516),
  ('Pampa De Los Guanacos',21,5517),
  ('Pinto',21,5518),
  ('Pozo Hondo',21,5519),
  ('Quimili',21,5520);
COMMIT;

#
# Data for the `localidad` table  (LIMIT 2000,500)
#

INSERT INTO `localidad` (`nombre`, `idProvincia`, `id`) VALUES
  ('Real Sayana',21,5521),
  ('Sachayoi',21,5522),
  ('San Pedro De Guazaya',21,5523),
  ('Santiago Del Estero',21,5524),
  ('Selva',21,5525),
  ('Simbolar',21,5526),
  ('Sol De Julio',21,5527),
  ('Sumampa',21,5528),
  ('Suncho Corral',21,5529),
  ('Taboada',21,5530),
  ('Tapso',21,5531),
  ('Termas De Rio Hondo',21,5532),
  ('Tintina',21,5533),
  ('Tomas Young',21,5534),
  ('Vilelas',21,5535),
  ('Villa Atamisqui',21,5536),
  ('Villa La Punta',21,5537),
  ('Villa Ojo De Agua',21,5538),
  ('Villa Rio Hondo',21,5539),
  ('Villa Salavina',21,5540),
  ('Villa Union',21,5541),
  ('Vilmer',21,5542),
  ('Weisburd',21,5543),
  ('Río Grande',22,5544),
  ('Tolhuin',22,5545),
  ('Ushuaia',22,5546),
  ('7 De Abril',23,5547),
  ('Acheral',23,5548),
  ('Agua Dulce Y La Soledad',23,5549),
  ('Aguilares',23,5550),
  ('Alderetes',23,5551),
  ('Alpachiri Y El Molino',23,5552),
  ('Alto Verde Y Los Guchea',23,5553),
  ('Amaicha Del Valle',23,5554),
  ('Amberes',23,5555),
  ('Ancajuli',23,5556),
  ('Arcadia',23,5557),
  ('Atahona',23,5558),
  ('Banda Del Río Salí',23,5559),
  ('Bella Vista',23,5560),
  ('Buena Vista',23,5561),
  ('Burruyacú',23,5562),
  ('Capitán Cáceres',23,5563),
  ('Cevil Redondo',23,5564),
  ('Choromoro',23,5565),
  ('Ciudacita',23,5566),
  ('Colalao Del Valle',23,5567),
  ('Colombres',23,5568),
  ('Comuna De Yerba Buena',23,5569),
  ('Concepción',23,5570),
  ('Delfín Gallo',23,5571),
  ('El Bracho Y El Cevilar',23,5572),
  ('El Cadillal',23,5573),
  ('El Cercado',23,5574),
  ('El Chañar',23,5575),
  ('El Manantial',23,5576),
  ('El Mojón',23,5577),
  ('El Mollar',23,5578),
  ('El Naranjito',23,5579),
  ('El Naranjo Y El Sunchal',23,5580),
  ('El Polear',23,5581),
  ('El Puestito',23,5582),
  ('El Sacrificio',23,5583),
  ('El Timbo',23,5584),
  ('Escaba',23,5585),
  ('Esquina Y Mancopa',23,5586),
  ('Estación Aráoz Y Tacanas',23,5587),
  ('Famaillá',23,5588),
  ('Gastona Y Belicha',23,5589),
  ('Gobernador Garmendia',23,5590),
  ('Gobernador Piedrabuena',23,5591),
  ('Graneros',23,5592),
  ('Huasa Pampa',23,5593),
  ('Juan Bautista Alberdi',23,5594),
  ('La Cocha',23,5595),
  ('La Esperanza',23,5596),
  ('La Florida Y Luisiana',23,5597),
  ('La Ramada Y La Cruz',23,5598),
  ('La Trinidad',23,5599),
  ('Lamadrid',23,5600),
  ('Las Cejas',23,5601),
  ('Las Talas',23,5602),
  ('Las Talitas',23,5603),
  ('León Rouges Y Santa Rosa',23,5604),
  ('Los Bulacio Y Los Villagra',23,5605),
  ('Los Gómez',23,5606),
  ('Los Nogales',23,5607),
  ('Los Pereyra',23,5608),
  ('Los Pérez',23,5609),
  ('Los Puestos',23,5610),
  ('Los Ralos',23,5611),
  ('Los Sarmientos Y La Tipa',23,5612),
  ('Los Sosa',23,5613),
  ('Lules',23,5614),
  ('Manuel García Fernández',23,5615),
  ('Manuela Pedraza',23,5616),
  ('Medina',23,5617),
  ('Monte Bello',23,5618),
  ('Monteagudo',23,5619),
  ('Monteros',23,5620),
  ('Pampa Mayo',23,5621),
  ('Quilmes Y Los Sueldos',23,5622),
  ('Raco',23,5623),
  ('Ranchillos Y San Miguel',23,5624),
  ('Río Chico Y Nueva Trinidad',23,5625),
  ('Río Colorado',23,5626),
  ('Río Seco',23,5627),
  ('Rumi Punco',23,5628),
  ('San Andrés',23,5629),
  ('San Felipe Y Santa Bárbara',23,5630),
  ('San Ignacio',23,5631),
  ('San Javier',23,5632),
  ('San José De La Cocha',23,5633),
  ('San Miguel De Tucumán',23,5634),
  ('San Pablo Y Villa Nougués',23,5635),
  ('San Pedro De Colalao',23,5636),
  ('San Pedro Y San Antonio',23,5637),
  ('Santa Ana',23,5638),
  ('Santa Cruz Y La Tuna',23,5639),
  ('Santa Lucía',23,5640),
  ('Santa Rosa De Leales Y Laguna Blanca',23,5641),
  ('Sargento Moya',23,5642),
  ('Simoca',23,5643),
  ('Soldado Maldonado',23,5644),
  ('Taco Ralo',23,5645),
  ('Tafí Del Valle',23,5646),
  ('Tafí Viejo',23,5647),
  ('Tapia',23,5648),
  ('Teniente Berdina',23,5649),
  ('Trancas',23,5650),
  ('Villa Belgrano',23,5651),
  ('Villa Benjamín Aráoz Y El Tajamar',23,5652),
  ('Villa Chicligasta',23,5653),
  ('Villa De Leales',23,5654),
  ('Villa Padre Monti',23,5655),
  ('Villa Quinteros',23,5656),
  ('Yanima',23,5657),
  ('Yerba Buena',23,5658);
COMMIT;

#
# Data for the `domicilio` table  (LIMIT 0,500)
#

INSERT INTO `domicilio` (`id`, `altura`, `nombreCalle`, `depto`, `codPostal`, `barrio`, `idLocalidad`) VALUES
  (1,1236,'24 de Septiembre','102',5000,'General Paz',3619);
COMMIT;

#
# Data for the `tipodocumento` table  (LIMIT 0,500)
#

INSERT INTO `tipodocumento` (`id`, `nombre`) VALUES
  (1,'DNI');
COMMIT;

#
# Data for the `persona` table  (LIMIT 0,500)
#

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `idDomicilio`, `telefono`, `celular`, `dni`, `idTipoDni`, `mail`, `PER_TYPE`) VALUES
  (1,'Gabriel Leandro','Waisman',1,'03514520207','0351152303066','33360897',1,'l_waisman@hotmail.com','1');
COMMIT;

#
# Data for the `viajante` table  (LIMIT 0,500)
#

INSERT INTO `viajante` (`idPersona`, `comisionPorVenta`, `idDetalleCartera`) VALUES
  (1,70,NULL);
COMMIT;

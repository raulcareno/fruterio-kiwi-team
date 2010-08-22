# SQL Manager 2007 for MySQL 4.3.4.1
# ---------------------------------------
# Host     : localhost
# Port     : 3307
# Database : seee


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `seee`;

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
AUTO_INCREMENT=10 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
AUTO_INCREMENT=3521 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
# Structure for the `tipodni` table : 
#

CREATE TABLE `tipodni` (
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
  PRIMARY KEY (`id`),
  KEY `idDomicilio` (`idDomicilio`),
  KEY `idTipoDni` (`idTipoDni`),
  CONSTRAINT `FK_persona_idDomicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `FK_persona_idTipoDni` FOREIGN KEY (`idTipoDni`) REFERENCES `tipodni` (`id`),
  CONSTRAINT `persona_fk` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `persona_fk1` FOREIGN KEY (`idTipoDni`) REFERENCES `tipodni` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `viajante` table : 
#

CREATE TABLE `viajante` (
  `idPersona` INTEGER(11) NOT NULL,
  `comisionPorVenta` INTEGER(11) NOT NULL DEFAULT '0',
  `idDetalleCartera` INTEGER(11) NOT NULL,
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



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
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
  CONSTRAINT `localidad_fk` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=3521 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
# Structure for the `barrio` table : 
#

CREATE TABLE `barrio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idLocalidad` INTEGER(11) NOT NULL,
  `idViajante` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idLocalidad` (`idLocalidad`),
  KEY `idViajante` (`idViajante`),
  CONSTRAINT `barrio_fk` FOREIGN KEY (`idLocalidad`) REFERENCES `localidad` (`id`),
  CONSTRAINT `barrio_fk1` FOREIGN KEY (`idViajante`) REFERENCES `viajante` (`idPersona`)
)ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

#
# Structure for the `domicilio` table : 
#

CREATE TABLE `domicilio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `altura` INTEGER(11) DEFAULT NULL,
  `nombreCalle` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `nroDpto` INTEGER(11) DEFAULT NULL,
  `codPostal` INTEGER(11) DEFAULT NULL,
  `idBarrio` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idBarrio` (`idBarrio`),
  CONSTRAINT `domicilio_fk` FOREIGN KEY (`idBarrio`) REFERENCES `barrio` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
  `idDomicilio` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCondicionIVA` (`idCondicionIVA`),
  KEY `idCreditoCliente` (`idCreditoCliente`),
  KEY `idDomicilio` (`idDomicilio`),
  CONSTRAINT `empresacliente_fk` FOREIGN KEY (`idCondicionIVA`) REFERENCES `condicioniva` (`id`),
  CONSTRAINT `empresacliente_fk1` FOREIGN KEY (`idCreditoCliente`) REFERENCES `creditocliente` (`id`),
  CONSTRAINT `empresacliente_fk2` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=5 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
  CONSTRAINT `detallecartera_fk1` FOREIGN KEY (`idEmpresaCliente`) REFERENCES `empresacliente` (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
  CONSTRAINT `viajante_fk` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`id`),
  CONSTRAINT `viajante_fk1` FOREIGN KEY (`idDetalleCartera`) REFERENCES `detallecartera` (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
# Data for the `modelo` table  (LIMIT 0,500)
#

INSERT INTO `modelo` (`id`, `nombre`, `nroSerie`) VALUES 
  (1,'Modelo1',1234),
  (2,'Modelo2',NULL),
  (3,'Modelo3',NULL);
COMMIT;

#
# Data for the `color` table  (LIMIT 0,500)
#

INSERT INTO `color` (`id`, `nombre`) VALUES 
  (1,'Rojo'),
  (2,'Verder'),
  (3,'Azul');
COMMIT;

#
# Data for the `tamano` table  (LIMIT 0,500)
#

INSERT INTO `tamano` (`id`, `nombre`) VALUES 
  (1,'Chico'),
  (2,'Mediano'),
  (3,'Grande');
COMMIT;

#
# Data for the `marca` table  (LIMIT 0,500)
#

INSERT INTO `marca` (`nombre`, `id`) VALUES 
  ('Marca1',1),
  ('Marca2',2),
  ('Marca3',3);
COMMIT;

#
# Data for the `productoterminado` table  (LIMIT 0,500)
#

INSERT INTO `productoterminado` (`id`, `nroProducto`, `precioSugerido`, `nombre`, `nivelReaprovisionamiento`, `stockMaximo`, `fechaIngreso`, `idModelo`, `idColor`, `stockActual`, `idTamano`, `precioVenta`, `idMarca`, `idUbicacion`, `idMuestrario`) VALUES 
  (1,'123',50.00,'Producto1',10,50,'2010-06-12',1,1,40,1,NULL,2,NULL,NULL),
  (2,'4321',50.00,'Nombre2',10,50,'2010-06-12',2,2,40,2,NULL,2,NULL,NULL),
  (3,'888',12.00,'Nombre3',5,555,'2010-06-12',1,2,55,2,NULL,2,NULL,NULL),
  (4,'888',12.00,'asd',5,555,'2010-06-12',1,2,55,2,NULL,2,NULL,NULL),
  (5,'55555',44.00,'qweqw',44,44444,'2010-06-12',1,1,444,1,NULL,1,NULL,NULL),
  (6,'1111111',5.00,'asdasdasd',55,555,'2010-06-12',1,1,666,1,NULL,3,NULL,NULL),
  (7,'2214',5.00,'fwewewer',55,55,'2010-06-12',1,1,55,1,NULL,2,NULL,NULL),
  (8,'123123123',2.00,'ad',33,44,'2010-06-12',1,1,66,1,NULL,1,NULL,NULL),
  (9,'5132',3.00,'sa',123,12,'2010-06-12',2,1,4,1,NULL,1,NULL,NULL),
  (10,'4443',23.00,'asdqw',123,123,'2010-06-12',2,1,321,1,NULL,1,NULL,NULL),
  (11,'12315',213.00,'qwet',123,12312,'2010-06-12',1,2,123,1,NULL,1,NULL,NULL),
  (12,'8571239',55.00,'Productonuevo',55,55,'2010-06-12',1,2,55,1,NULL,1,NULL,NULL),
  (13,'1267',55.00,'propro',55,55,'2010-06-12',1,1,55,1,NULL,1,NULL,NULL);
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
  ('Avellaneda',5,1408),
  ('Cabalango',5,1422),
  ('Candelaria Sud',5,1432),
  ('Capilla De Los Remedios',5,1433),
  ('Capilla De Siton',5,1434),
  ('Capilla Del Carmen',5,1435),
  ('Capilla Del Monte',5,1436),
  ('Chalacea',5,1444),
  ('Colazo',5,1457),
  ('Colonia Las Cuatro Esquinas',5,1466),
  ('Colonia Las Pichanas',5,1467),
  ('Colonia Videla',5,1474),
  ('Conlara',5,1478),
  ('Cuesta Blanca',5,1490),
  ('Huanchilla',5,1529),
  ('Isla Verde',5,1535),
  ('La Batea',5,1542),
  ('La Calera',5,1543),
  ('La Carlota',5,1544),
  ('La Carolina (El Potosí)',5,1545),
  ('La Cautiva',5,1546),
  ('La Cesira',5,1547),
  ('La Cruz',5,1548),
  ('La Cumbre',5,1549),
  ('La Cumbrecita',5,1550),
  ('La Falda',5,1551),
  ('La Francia',5,1552),
  ('La Granja',5,1553),
  ('La Higuera',5,1554),
  ('La Laguna',5,1555),
  ('La Paisanita',5,1556),
  ('La Palestina',5,1557),
  ('La Pampa',5,1558),
  ('La Paquita',5,1559),
  ('La Para',5,1560),
  ('La Paz',5,1561),
  ('La Playa',5,1562),
  ('La Playosa',5,1563),
  ('La Población',5,1564),
  ('La Posta',5,1565),
  ('La Puerta',5,1566),
  ('La Quinta',5,1567),
  ('La Rancherita',5,1568),
  ('La Rinconada',5,1569),
  ('La Serranita',5,1570),
  ('La Tordilla',5,1571),
  ('Laborde',5,1572),
  ('Laboulaye',5,1573),
  ('Laguna Larga',5,1574),
  ('Las Acequias',5,1575),
  ('Las Albahacas',5,1576),
  ('Las Arrias',5,1577),
  ('Las Bajadas',5,1578),
  ('Las Caleras',5,1579),
  ('Las Calles',5,1580),
  ('Las Cañadas',5,1581),
  ('Las Gramillas',5,1582),
  ('Las Higueras',5,1583),
  ('Las Isletillas',5,1584),
  ('Las Junturas',5,1585),
  ('Las Palmas',5,1586),
  ('Las Peñas',5,1587),
  ('Las Peñas Sud',5,1588),
  ('Las Perdices',5,1589),
  ('Las Playas',5,1590),
  ('Las Rabonas',5,1591),
  ('Las Saladas',5,1592),
  ('Las Tapias',5,1593),
  ('Las Varas',5,1594),
  ('Las Varillas',5,1595),
  ('Las Vertientes',5,1596),
  ('Los Talares',5,1613),
  ('Lucio Victorio Mansilla',5,1617),
  ('Malagueño',5,1621),
  ('Mendiolaza',5,1633),
  ('Mina Clavero',5,1635),
  ('Nicolás Bruzzone',5,1645),
  ('Olaeta',5,1649),
  ('Olivares De San Nicolás',5,1651),
  ('Pilar',5,1663),
  ('Plaza De Mercedes',5,1666),
  ('Plaza Luxardo',5,1667),
  ('Rosario Del Saladillo',5,1690),
  ('Saladillo',5,1694),
  ('San Jose De La Dormida',5,1713),
  ('San Jose De Las Salinas',5,1714),
  ('Santa Rosa De Calamuchita',5,1726),
  ('Saturnino María Laspiur',5,1730),
  ('Serrezuela',5,1736),
  ('Simbolar',5,1738),
  ('Tala Cañada',5,1741),
  ('Tala Huasi',5,1742),
  ('Talaini',5,1743),
  ('Tuclame',5,1754),
  ('Villa Allende',5,1761),
  ('Villa Amancay',5,1762),
  ('Villa Ascasubi',5,1763),
  ('Villa Cañada Del Sauce',5,1764),
  ('Villa Candelaria Norte',5,1765),
  ('Villa Carlos Paz',5,1766),
  ('Villa Cerro Azul',5,1767),
  ('Villa Ciudad De America',5,1768),
  ('Villa Ciudad Parque Los Reartes',5,1769),
  ('Villa Concepcion Del Tio',5,1770),
  ('Villa Cura Brochero',5,1771),
  ('Villa De Las Rosas',5,1772),
  ('Villa De María',5,1773),
  ('Villa De Pocho',5,1774),
  ('Villa De Soto',5,1775),
  ('Villa Del Dique',5,1776),
  ('Villa Del Prado',5,1777),
  ('Villa Del Rosario',5,1778),
  ('Villa Del Totoral',5,1779),
  ('Villa Dolores',5,1780),
  ('Villa El Chacay',5,1781),
  ('Villa Elisa',5,1782),
  ('Villa Flor Serrana',5,1783),
  ('Villa Fontana',5,1784),
  ('Villa General Belgrano',5,1785),
  ('Villa Giardino',5,1786),
  ('Villa Gutiérrez',5,1787),
  ('Villa Huidobro',5,1788),
  ('Villa Icho Cruz',5,1789),
  ('Villa La Bolsa',5,1790),
  ('Villa Los Aromos',5,1791),
  ('Villa Los Patos',5,1792),
  ('Villa Maria',5,1793),
  ('Villa Nueva',5,1794),
  ('Villa Parque Santa Ana',5,1795),
  ('Villa Parque Siquiman',5,1796),
  ('Villa Quillinzo',5,1797),
  ('Villa Rossi',5,1798),
  ('Villa Rumipal',5,1799),
  ('Villa San Esteban',5,1800),
  ('Villa San Isidro',5,1801),
  ('Villa Santa Cruz Del Lago',5,1802),
  ('Villa Sarmiento (General Roca)',5,1803),
  ('Villa Sarmiento (San Alberto)',5,1804),
  ('Villa Tulumba',5,1805),
  ('Villa Valeria',5,1806),
  ('Villa Yacanto',5,1807),
  ('Wenceslao Escalante',5,1809),
  ('Avellaneda',1,1814),
  ('Bahia Blanca',1,1817),
  ('Cañuelas',1,1826),
  ('Exaltacion De La Cruz',1,1846),
  ('Florencio Varela',1,1848),
  ('General Lamadrid',1,1855),
  ('General Las Heras',1,1856),
  ('General Lavalle',1,1857),
  ('La Matanza',1,1873),
  ('La Plata',1,1874),
  ('Lanus',1,1875),
  ('Laprida',1,1876),
  ('Las Flores',1,1877),
  ('Municipio De La Costa',1,1894),
  ('Municipio De Villa Gesell',1,1897),
  ('Olavarria',1,1901),
  ('Pila',1,1906),
  ('Pilar',1,1907),
  ('Saladillo',1,1918),
  ('San Nicolas',1,1927),
  ('Trenque Lauquen',1,1936),
  ('Villarino',1,1942),
  ('La Carolina ',18,1949),
  ('La Punta ',18,1950),
  ('La Toma ',18,1951),
  ('Santa Rosa del Conlara',18,1961),
  ('Villa Elena',18,1962),
  ('Villa la Quebrada',18,1963),
  ('Villa Larca',18,1964),
  ('Villa Mercedes',18,1965),
  ('Coronel Felipe Varela',11,1970),
  ('General Lamadrid',11,1975),
  ('La Rioja',11,1979),
  ('San Blas De Los Sauces',11,1981),
  ('Andalgalá',2,1986),
  ('Fiambalá',2,1993),
  ('Huillapima (Capayan)',2,1996),
  ('Icaño (La Paz)',2,1997),
  ('La Puerta',2,1998),
  ('Las Juntas',2,1999),
  ('Los Varela',2,2002),
  ('Pozo De La Piedra',2,2006),
  ('Villa Vil',2,2019),
  ('Abdon Castro Tolay (Barrancas)',9,2020),
  ('Abralaite',9,2022),
  ('Caspalá',9,2030),
  ('Cieneguillas',9,2032),
  ('El Aguilar',9,2035),
  ('El Talar',9,2040),
  ('La Esperanza',9,2045),
  ('La Mendieta',9,2046),
  ('La Quiaca',9,2047),
  ('Palma Sola',9,2052),
  ('Palpalá',9,2053),
  ('Pampa Blanca',9,2054),
  ('Pampichuela',9,2055),
  ('Santa Clara',9,2070),
  ('Yala',9,2078),
  ('Campo Largo',3,2084),
  ('Capitan Solari',3,2085),
  ('Colonia Popular',3,2092),
  ('Corzuela',3,2096),
  ('Cote Lai',3,2097),
  ('General Capdevila',3,2103),
  ('Isla Del Cerrito',3,2108),
  ('La Clotilde',3,2110),
  ('La Eduviges',3,2111),
  ('La Escondida',3,2112),
  ('La Leonesa',3,2113),
  ('La Tigra',3,2114),
  ('La Verde',3,2115),
  ('Laguna Blanca',3,2116),
  ('Laguna Limpia',3,2117),
  ('Lapachito',3,2118),
  ('Las Breñas',3,2119),
  ('Las Garcitas',3,2120),
  ('Las Palmas',3,2121),
  ('Presidente De La Plaza',3,2133),
  ('Puerto Vilelas',3,2137),
  ('Villa Angela',3,2146),
  ('Villa Berthet',3,2147),
  ('Villa Rio Bermejito',3,2148),
  ('Cerro Centinela',4,2157),
  ('Cholila',4,2158),
  ('Colán Conhué',4,2159),
  ('Dolavon',4,2165),
  ('Lago Blanco',4,2177),
  ('Lago Puelo',4,2178),
  ('Lagunita Salada',4,2179),
  ('Las Plumas',4,2180),
  ('Bella Vista',6,2196),
  ('Bonpland',6,2198),
  ('Cruz De Los Milagros',6,2207),
  ('La Cruz',6,2224),
  ('Lavalle',6,2225),
  ('Paso De La Patria',6,2236),
  ('Saladas',6,2243),
  ('Villa Olivari',6,2258),
  ('Alarcón',7,2261),
  ('Colonia Avellaneda',7,2305),
  ('Colonia La Argentina',7,2316),
  ('Cuchilla Redonda',7,2335),
  ('Distrito Tala',7,2345),
  ('El Solar',7,2356),
  ('Estación Lazo',7,2361),
  ('Estancia Sola',7,2367),
  ('General Galarza',7,2377),
  ('Gobernador Mansilla',7,2381),
  ('Islas Del Ibicuy',7,2396),
  ('La Clarita',7,2400),
  ('La Criolla',7,2401),
  ('La Esmeralda',7,2402),
  ('La Florida',7,2403),
  ('La Fraternidad Y Santa Juana',7,2404),
  ('La Hierra',7,2405),
  ('La Ollita',7,2406),
  ('La Paz',7,2407),
  ('La Picada',7,2408),
  ('La Providencia',7,2409),
  ('La Verbena',7,2410),
  ('Laguna Benítez',7,2411),
  ('Larroque',7,2412),
  ('Las Cuevas',7,2413),
  ('Las Garzas (Pueblo Bellocq)',7,2414),
  ('Las Guachas',7,2415),
  ('Las Mercedes',7,2416),
  ('Las Moscas',7,2417),
  ('Las Mulitas',7,2418),
  ('Las Toscas',7,2419),
  ('Laurencena',7,2420),
  ('Mulas Grandes',7,2439),
  ('Paraje Las Tunas',7,2446),
  ('Paso De La Arena',7,2449),
  ('Paso De La Laguna',7,2450),
  ('Paso De Las Piedras',7,2451),
  ('Piedras Blancas',7,2457),
  ('Primer Distrito Cuchilla',7,2458),
  ('Rosario Del Tala',7,2477),
  ('S.J. De La Frontera',7,2478),
  ('Villa Clara',7,2515),
  ('Villa Del Rosario',7,2516),
  ('Villa Dominguez',7,2517),
  ('Villa Elisa',7,2518),
  ('Villa Fontana',7,2519),
  ('Villa Gobernador Etchevehere',7,2520),
  ('Villa Mantero',7,2521),
  ('Villa Paranacito',7,2522),
  ('Villa Urquiza',7,2523),
  ('Villaguay',7,2524),
  ('Estanislao Del Campo',8,2534),
  ('General Lucio Victorio Mansilla',8,2539),
  ('Laguna Blanca',8,2545),
  ('Laguna Naick Neck',8,2546),
  ('Laguna Yema',8,2547),
  ('Las Lomitas',8,2548),
  ('Mayor Vicente Villafañe',8,2550),
  ('Mision San Francisco De Laishi',8,2551),
  ('San Hilario',8,2560),
  ('Tres Lagunas',8,2563),
  ('Villa Dos Trece',8,2564),
  ('Villa Escolar',8,2565),
  ('Villa General Guemes',8,2566),
  ('Algarrobo Del Aguila',10,2571),
  ('Bernardo Larroude',10,2577),
  ('Coronel Hilario Lagos',10,2588),
  ('Doblas',10,2590),
  ('Dorila',10,2591),
  ('La Adela',10,2604),
  ('La Humada',10,2605),
  ('La Maruja',10,2606),
  ('La Reforma',10,2607),
  ('Villa Mirasol',10,2644),
  ('La Paz',12,2650),
  ('Las Heras',12,2651),
  ('Lavalle',12,2652),
  ('Malargue',12,2655),
  ('Bompland',13,2672),
  ('Candelaria',13,2677),
  ('Colonia Polana',13,2685),
  ('Concepción De La Sierra',13,2689),
  ('Chos Malal',14,2750),
  ('El Cholar',14,2754),
  ('Las Coloradas',14,2760),
  ('Las Lajas',14,2761),
  ('Las Ovejas',14,2762),
  ('Piedra Del Aguila',14,2772),
  ('Plaza Huincul',14,2774),
  ('Quili Malal',14,2777),
  ('Taquimilan',14,2785),
  ('Tricao Malal',14,2786),
  ('Villa Curi Leuvu',14,2788),
  ('Villa Del Nahueve',14,2789),
  ('Villa El Chocon',14,2790),
  ('Villa La Angostura',14,2791),
  ('Villa Manzano Amargo',14,2792),
  ('Villa Pehuenia',14,2793),
  ('Villa Traful',14,2794),
  ('Zapala',14,2796),
  ('Arroyo De La Ventana',15,2801),
  ('Colán Conhue',15,2815),
  ('Laguna Blanca',15,2835),
  ('Lamarque',15,2836),
  ('Peñas Blancas',15,2849),
  ('Villa Llanquín',15,2868),
  ('Villa Mascardi',15,2869),
  ('Villa Regina',15,2870),
  ('El Tala',16,2891),
  ('Isla De Cañas',16,2900),
  ('La Caldera',16,2902),
  ('La Candelaria',16,2903),
  ('La Merced',16,2904),
  ('La Poma',16,2905),
  ('La Viña',16,2906),
  ('Las Lajitas',16,2907),
  ('Rio De Las Piedras',16,2914),
  ('Rosario De La Frontera',16,2917),
  ('San Ramón De La Nueva Orán',16,2923),
  ('Seclantas',16,2926),
  ('Tolar Gande',16,2928),
  ('Villa San Lorenzo',16,2931),
  ('El Calafate',19,2955),
  ('Las Heras',19,2961),
  ('Tres Lagos',19,2970),
  ('Aron Castellanos',20,2988),
  ('Avellaneda',20,2997),
  ('Bella Italia',20,3000),
  ('Castelar',20,3031),
  ('Castellanos',20,3032),
  ('Chañar Ladeado',20,3040),
  ('Classon',20,3044),
  ('Clucellas',20,3045),
  ('Dos Rosas Y La Legua',20,3073),
  ('Empalme Villa Constitucion',20,3083),
  ('Estacion Clucellas',20,3086),
  ('Fidela',20,3093),
  ('General Lagos',20,3111),
  ('La Brava',20,3137),
  ('La Cabral',20,3138),
  ('La Camila',20,3139),
  ('La Chispa',20,3140),
  ('La Clara',20,3141),
  ('La Criolla',20,3142),
  ('La Gallareta',20,3143),
  ('La Lucila',20,3144),
  ('La Pelada',20,3145),
  ('La Penca Y Caraguata',20,3146),
  ('La Rubia',20,3147),
  ('La Sarita',20,3148),
  ('La Vanguardia',20,3149),
  ('Labordeboy',20,3150),
  ('Laguna Paiva',20,3151),
  ('Landeta',20,3152),
  ('Lanteri',20,3153),
  ('Larrechea',20,3154),
  ('Las Avispas',20,3155),
  ('Las Bandurrias',20,3156),
  ('Las Garzas',20,3157),
  ('Las Palmeras',20,3158),
  ('Las Parejas',20,3159),
  ('Las Petacas',20,3160),
  ('Las Rosas',20,3161),
  ('Las Toscas',20,3162),
  ('Las Tunas',20,3163),
  ('Lazzarino',20,3164),
  ('Llambi Campbell',20,3166),
  ('Los Laureles',20,3172),
  ('Luis Palacios',20,3176),
  ('Malabrigo',20,3179),
  ('Marcelino Escalada',20,3180),
  ('Palacios',20,3205),
  ('Pilar',20,3212),
  ('Rafaela',20,3228),
  ('Saladero Mariano Cabal',20,3242),
  ('San Jose De La Esquina',20,3265),
  ('San Martín De Las Escobas',20,3270),
  ('Santa Clara De Buena Vista',20,3275),
  ('Santa Clara De Saguier',20,3276),
  ('Videla',20,3314),
  ('Vila',20,3315),
  ('Villa Amelia',20,3316),
  ('Villa Ana',20,3317),
  ('Villa Cañas',20,3318),
  ('Villa Constitucion',20,3319),
  ('Villa Eloisa',20,3320),
  ('Villa Goberanador Galvez',20,3321),
  ('Villa Guillermina',20,3322),
  ('Villa Minetti',20,3323),
  ('Villa Mugueta',20,3324),
  ('Villa Ocampo',20,3325),
  ('Villa San Jose',20,3326),
  ('Villa Saralegui',20,3327),
  ('Villa Trinidad',20,3328),
  ('Villada',20,3329),
  ('Zaballa',20,3332),
  ('El Simbolar',21,3349),
  ('Gramilla',21,3354),
  ('La Banda',21,3360),
  ('La Cañada',21,3361),
  ('Laprida',21,3362),
  ('Lavalle',21,3363),
  ('Los Telares',21,3369),
  ('Simbolar',21,3387),
  ('Vilelas',21,3396),
  ('Villa Atamisqui',21,3397),
  ('Villa La Punta',21,3398),
  ('Villa Ojo De Agua',21,3399),
  ('Villa Rio Hondo',21,3400),
  ('Villa Salavina',21,3401),
  ('Villa Union',21,3402),
  ('Agua Dulce Y La Soledad',23,3410),
  ('Aguilares',23,3411),
  ('Bella Vista',23,3421),
  ('Colalao Del Valle',23,3428),
  ('El Bracho Y El Cevilar',23,3433),
  ('El Cadillal',23,3434),
  ('El Mollar',23,3439),
  ('Famaillá',23,3449),
  ('La Cocha',23,3456),
  ('La Esperanza',23,3457),
  ('La Florida Y Luisiana',23,3458),
  ('La Ramada Y La Cruz',23,3459),
  ('La Trinidad',23,3460),
  ('Lamadrid',23,3461),
  ('Las Cejas',23,3462),
  ('Las Talas',23,3463),
  ('Las Talitas',23,3464),
  ('Los Bulacio Y Los Villagra',23,3466),
  ('Los Sarmientos Y La Tipa',23,3473),
  ('Manuela Pedraza',23,3477),
  ('San José De La Cocha',23,3494),
  ('San Pablo Y Villa Nougués',23,3496),
  ('San Pedro De Colalao',23,3497),
  ('Santa Cruz Y La Tuna',23,3500),
  ('Santa Rosa De Leales Y Laguna Blanca',23,3502),
  ('Villa Belgrano',23,3512),
  ('Villa Benjamín Aráoz Y El Tajamar',23,3513),
  ('Villa Chicligasta',23,3514),
  ('Villa De Leales',23,3515),
  ('Villa Padre Monti',23,3516),
  ('Villa Quinteros',23,3517),
  ('Andalgalá',2,3518),
  ('Candelaria',13,3519),
  ('Lagunita Salada',4,3520);
COMMIT;

#
# Data for the `domicilio` table  (LIMIT 0,500)
#

INSERT INTO `domicilio` (`id`, `altura`, `nombreCalle`, `nroDpto`, `codPostal`, `idBarrio`) VALUES 
  (1,123,'calle',12,5000,1),
  (2,123,'ca',NULL,5000,2),
  (3,123,'calle13',NULL,5000,3),
  (4,45,'fjkdsl',NULL,49548,4);
COMMIT;

#
# Data for the `tipodni` table  (LIMIT 0,500)
#

INSERT INTO `tipodni` (`id`, `nombre`) VALUES 
  (1,'LOLO');
COMMIT;

#
# Data for the `condicioniva` table  (LIMIT 0,500)
#

INSERT INTO `condicioniva` (`id`, `nombre`, `descripcion`) VALUES 
  (1,'Monotributista',NULL),
  (2,'Responsable Inscripto',NULL),
  (3,'Exento',NULL),
  (4,'IVA No responsable',NULL),
  (5,'R.I Agente de Retención',NULL),
  (6,'Sujeto No Categorizado',NULL),
  (7,'Exento',NULL),
  (8,'Exento',NULL),
  (9,'Responsable Inscripto',NULL);
COMMIT;

#
# Data for the `empresacliente` table  (LIMIT 0,500)
#

INSERT INTO `empresacliente` (`id`, `razonSocial`, `cuit`, `idCondicionIVA`, `telefono`, `fax`, `mail`, `celular`, `idCreditoCliente`, `idDomicilio`) VALUES 
  (1,'razon','123',4,'123','123','mail','123',NULL,1),
  (2,'ra','123',3,'1234','1234','mail','1234',NULL,2),
  (3,'asd','123',3,'123','123','maimil','123',NULL,3),
  (4,'vjdksl','dfjslka',2,'fdjslk','fjdksl','fjdksl','fjdksl',NULL,4);
COMMIT;

#
# Data for the `barrio` table  (LIMIT 0,500)
#

INSERT INTO `barrio` (`id`, `nombre`, `idLocalidad`, `idViajante`) VALUES 
  (1,'Barrio',1433,NULL),
  (2,'ba',1986,NULL),
  (3,'barrio8',2677,NULL),
  (4,'jfkdls',2179,NULL);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
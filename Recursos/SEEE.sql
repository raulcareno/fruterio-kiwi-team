SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `SEEE`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `seee`;

CREATE TABLE `accesorio` (
  `id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idTipoaccesorio` INTEGER(11) NOT NULL,
  `idProducto` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `barrio` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(255) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idLocalidad` INTEGER(11) NOT NULL,
  `idViajante` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cargo` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `precioPorHora` FLOAT(9,2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cheque` (
  `id` INTEGER(11) NOT NULL,
  `banco` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nro` INTEGER(11) NOT NULL,
  `emisor` VARCHAR(100) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `fechaEmision` DATE NOT NULL,
  `fechaCobro` DATE DEFAULT NULL,
  `cobrador` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cobrocheque` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  `idCheque` INTEGER(11) NOT NULL,
  `idEstadoDetalleCobroPedido` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cobroefectivo` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cobronotacredito` (
  `idDetalleCobroPedido` INTEGER(11) NOT NULL,
  `idCreditoCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `cobropedido` (
  `id` INTEGER(11) NOT NULL,
  `idEstadoCobroPedido` INTEGER(11) NOT NULL,
  `fechaCobro` DATE NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `color` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `compra` (
  `id` INTEGER(11) NOT NULL,
  `fechaRealLlegada` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `condicioniva` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `creditocliente` (
  `id` INTEGER(11) NOT NULL,
  `monto` FLOAT(9,2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallecartera` (
  `id` INTEGER(11) NOT NULL,
  `fechaDesde` DATE NOT NULL,
  `fechaHasta` DATE DEFAULT NULL,
  `idEstadoCartera` INTEGER(11) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallecobropedido` (
  `id` INTEGER(11) NOT NULL,
  `varlor` DECIMAL(20,2) NOT NULL,
  `fecha` DATE NOT NULL,
  `idCobroPedido` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallecompra` (
  `id` INTEGER(11) NOT NULL,
  `idCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallecompramateriaprima` (
  `idDetalleCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompraMateriaPrima` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallecompraproductoimportado` (
  `idDetalleCompra` INTEGER(11) NOT NULL,
  `idDetalleOrdenCompraProductoImportado` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detalledevolucionproductosterminados` (
  `id` INTEGER(11) NOT NULL,
  `idDevolucionProductosTerminados` INTEGER(11) NOT NULL,
  `idDetalleVenta` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallefactura` (
  `idDetallePedidoProductosTerminados` INTEGER(11) DEFAULT NULL,
  `idFactura` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallehojaruta` (
  `id` INTEGER(11) NOT NULL,
  `idHojaRuta` INTEGER(11) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  `idDomicilioVisitar` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallemateriaprima` (
  `id` INTEGER(11) NOT NULL,
  `cantidadMateriaPrima` INTEGER(11) NOT NULL DEFAULT '1',
  `idMateriaPrima` INTEGER(11) NOT NULL,
  `idLote` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallenotificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  `idNotificacionReaprovisionamiento` INTEGER(11) NOT NULL,
  `idProductoImportado` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detalleordencompra` (
  `id` INTEGER(11) NOT NULL,
  `precio` DECIMAL(20,2) NOT NULL DEFAULT '0.00',
  `idEstadoDetalleOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detalleordencompramateriaprima` (
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  `idMateriaPrima` INTEGER(11) NOT NULL,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detalleordencompraproductoimportado` (
  `idDetalleOrdenCompra` INTEGER(11) NOT NULL,
  `idProductoImportado` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detallepedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL,
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '1',
  `precioPorUnidad` DECIMAL(20,2) NOT NULL,
  `idEstadoDetallePedidoProductoTerminado` INTEGER(11) NOT NULL,
  `motivoDevolucion` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `motivoNoEntregado` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaDevolucion` INTEGER(11) DEFAULT NULL,
  `idPedidoProductosTerminados` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `detalleventa` (
  `id` INTEGER(11) NOT NULL,
  `idProducto` INTEGER(11) NOT NULL,
  `cantidadProducto` INTEGER(11) NOT NULL DEFAULT '1',
  `precioUnidad` FLOAT(9,2) NOT NULL DEFAULT '0',
  `idEstadoDetalleVenta` INTEGER(11) NOT NULL,
  `motivoDevolucion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaDevolucion` DATE DEFAULT NULL,
  `idVenta` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `devolucionproductosterminados` (
  `fecha` DATE NOT NULL,
  `idViajante` INTEGER(11) NOT NULL,
  `idCliente` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `divisa` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(200) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tasaCambio` FLOAT(9,2) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `domicilio` (
  `id` INTEGER(11) NOT NULL,
  `altura` INTEGER(11) DEFAULT NULL,
  `nombreCalle` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `nroDpto` INTEGER(11) DEFAULT NULL,
  `codPostal` INTEGER(11) DEFAULT NULL,
  `idBarrio` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `empleado` (
  `cuil` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `fechaIngreso` DATE NOT NULL,
  `fechaBaja` DATE DEFAULT NULL,
  `motivoBaja` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idPersona` INTEGER(11) NOT NULL,
  `idCargo` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `empresacliente` (
  `id` INTEGER(11) NOT NULL,
  `razonSocial` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `cuit` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idCondicionIVA` INTEGER(11) NOT NULL,
  `telefono` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fax` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `mail` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  `celular` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idCreditoCliente` INTEGER(11) NOT NULL,
  `idDomicilio` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `empresaclientexpersona` (
  `id` INTEGER(11) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  `idPersona` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `empresatransporte` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idDomicilio` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadocartera` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadocobrocheque` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadocobropedido` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadodetalleordencompra` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadodetallepedidoproductoterminado` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadodetalleventa` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadonotificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadoordencompra` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadopedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `estadoventa` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `factura` (
  `id` INTEGER(11) NOT NULL,
  `idTipoFactura` INTEGER(11) NOT NULL,
  `idPedidoProductosTerminados` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `hojaruta` (
  `id` INTEGER(11) NOT NULL,
  `idPosicionViajante` INTEGER(11) NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `importacion` (
  `id` INTEGER(11) NOT NULL,
  `fecha` DATE NOT NULL,
  `lugarOrigen` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idCompra` INTEGER(11) NOT NULL,
  `pagoAduana` DECIMAL(20,2) DEFAULT NULL,
  `fechaEmbarque` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `localidad` (
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idProvincia` INTEGER(11) NOT NULL,
  `id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `lote` (
  `id` INTEGER(11) NOT NULL,
  `nroLote` INTEGER(11) NOT NULL DEFAULT '0',
  `cantidadProducida` INTEGER(11) NOT NULL DEFAULT '0',
  `idProducto` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `marca` (
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `materiaprima` (
  `id` INTEGER(11) NOT NULL,
  `codigo` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE latin1_swedish_ci DEFAULT NULL,
  `stockActual` INTEGER(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `modelo` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nroSerie` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `muestrario` (
  `id` INTEGER(11) NOT NULL,
  `fechaDesde` DATE NOT NULL,
  `fechaHasta` DATE NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `notificacionreaprovisionamiento` (
  `id` INTEGER(11) NOT NULL,
  `idEmpleado` INTEGER(11) NOT NULL,
  `idEstadoNotificacionReaprovisionamiento` INTEGER(11) NOT NULL,
  `fechaIngresoDeposito` DATE NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `ordencompra` (
  `id` INTEGER(11) NOT NULL,
  `idEmpresaTransporteInterior` INTEGER(11) DEFAULT NULL,
  `idEmpresaTransporteExterior` INTEGER(11) DEFAULT NULL,
  `idProveedor` INTEGER(11) DEFAULT NULL,
  `fechaPedido` DATE NOT NULL,
  `fechaEstimadaLlegada` DATE DEFAULT NULL,
  `idEstadoOrdenCompra` INTEGER(11) NOT NULL,
  `otrosGastos` DECIMAL(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `ordencompraximportacion` (
  `id` INTEGER(11) NOT NULL,
  `idImportacion` INTEGER(11) NOT NULL,
  `idOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `otrosgastos` (
  `idPago` INTEGER(11) NOT NULL,
  `descripcion` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `pago` (
  `id` INTEGER(11) NOT NULL,
  `monto` FLOAT(9,3) NOT NULL DEFAULT '0.000',
  `fechaPago` DATE NOT NULL,
  `nroPago` INTEGER(11) NOT NULL,
  `idDivisa` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `pagoempleado` (
  `idEmpleado` INTEGER(11) NOT NULL,
  `idPago` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `pagoproveedor` (
  `idPago` INTEGER(11) NOT NULL,
  `idOrdenCompra` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `pedidoproductosterminados` (
  `id` INTEGER(11) NOT NULL,
  `fechaPedido` DATE NOT NULL,
  `idEstadoPedidoProductosTerminados` INTEGER(11) NOT NULL,
  `fechaCancelacion` DATE DEFAULT NULL,
  `motivoEstado` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `fechaEstimadaEntrega` DATE DEFAULT NULL,
  `fechaEntregaViajante` DATE DEFAULT NULL,
  `idViajante` INTEGER(11) NOT NULL,
  `idEmpleado` INTEGER(11) NOT NULL,
  `descuento` DECIMAL(20,2) DEFAULT NULL,
  `domicilioEnvio` VARCHAR(100) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `persona` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `apellido` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `idDomicilio` INTEGER(11) DEFAULT NULL,
  `telefono` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `celular` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `dni` VARCHAR(20) COLLATE latin1_swedish_ci DEFAULT NULL,
  `idTipoDni` INTEGER(11) DEFAULT NULL,
  `mail` VARCHAR(30) COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `productofabricado` (
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `costoProduccion` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `productoimportado` (
  `idProductoTerminado` INTEGER(11) NOT NULL,
  `precioCompra` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `productosdefectuosos` (
  `id` INTEGER(11) NOT NULL,
  `cantidad` INTEGER(11) NOT NULL DEFAULT '0',
  `idTipoDefecto` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `productosdefectuososxcompra` (
  `id` INTEGER(11) NOT NULL,
  `idCompra` INTEGER(11) NOT NULL,
  `idProductosDefectuosos` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `productoterminado` (
  `id` INTEGER(11) NOT NULL,
  `nroProducto` INTEGER(11) NOT NULL,
  `precioEstimado` FLOAT(9,2) DEFAULT NULL,
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
  `idUbicacion` INTEGER(11) NOT NULL,
  `idMuestrario` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

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
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `provincia` (
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `id` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `rentabilidadcliente` (
  `id` INTEGER(11) NOT NULL,
  `coeficiente` DECIMAL(20,2) NOT NULL,
  `idEmpresaCliente` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `tamano` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `tipoaccesorio` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `tipodefecto` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `tipodni` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `tipofactura` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `ubicacion` (
  `id` INTEGER(11) NOT NULL,
  `nombre` VARCHAR(20) COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `venta` (
  `id` INTEGER(11) NOT NULL,
  `fechaVenta` DATE NOT NULL,
  `nroFactura` INTEGER(11) NOT NULL,
  `idCobroPedido` INTEGER(11) NOT NULL,
  `idPedidoProductosTerminados` INTEGER(11) NOT NULL,
  `idEstadoVenta` INTEGER(11) NOT NULL,
  `fechaMaximaDevolucion` DATE DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';

CREATE TABLE `viajante` (
  `idPersona` INTEGER(11) NOT NULL,
  `comisionPorVenta` INTEGER(11) NOT NULL DEFAULT '0',
  `idDetalleCartera` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB
ROW_FORMAT=FIXED AUTO_INCREMENT=1 CHARACTER SET 'latin1' COLLATE 'latin1_swedish_ci';


-- SQL Manager for PostgreSQL 4.7.0.2
-- ---------------------------------------
-- Host      : localhost
-- Database  : ce
-- Version   : PostgreSQL 8.4.4, compiled by Visual C++ build 1400, 32-bit



SET search_path = public, pg_catalog;
DROP TABLE IF EXISTS public."DetalleCompraMateriaPrima";
DROP TABLE IF EXISTS public."DetalleCompraProductoImportado";
DROP TABLE IF EXISTS public."DetalleCompra";
DROP SEQUENCE IF EXISTS public."DetalleCompra_id_seq";
DROP TABLE IF EXISTS public."ProductoFabricado";
DROP TABLE IF EXISTS public."DetalleOrdenCompraMateriaPrima";
DROP TABLE IF EXISTS public."DetalleOrdenCompraProductoImportado";
DROP TABLE IF EXISTS public."DetalleNotificacionReaprovisionamiento";
DROP SEQUENCE IF EXISTS public."DetalleNotificacionReaprovisionamiento_id_seq";
DROP TABLE IF EXISTS public."NotificacionReaprovisionamiento";
DROP SEQUENCE IF EXISTS public."NotificacionReaprovisionamiento_id_seq";
DROP TABLE IF EXISTS public."EstadoNotificacionReaprovisionamiento";
DROP SEQUENCE IF EXISTS public."EstadoNotificacionReaprovisionamiento_id_seq";
DROP TABLE IF EXISTS public."ProductoImportado";
DROP TABLE IF EXISTS public."DetalleOrdenCompra";
DROP SEQUENCE IF EXISTS public."DetalleOrdenCompra_id_seq";
DROP TABLE IF EXISTS public."EstadoDetalleOrdenCompra";
DROP SEQUENCE IF EXISTS public."EstadoDetalleOrdenCompra_id_seq";
DROP SEQUENCE IF EXISTS public."DetalleFactura_id_seq";
DROP TABLE IF EXISTS public."OrdenCompraXImportacion";
DROP SEQUENCE IF EXISTS public."OrdenCompraXImportacion_id_seq";
DROP TABLE IF EXISTS public."Importacion";
DROP SEQUENCE IF EXISTS public."Importacion_id_seq";
DROP TABLE IF EXISTS public."ProductosDefectuososXCompra";
DROP SEQUENCE IF EXISTS public."ProductosDefectuososXCompra_id_seq";
DROP TABLE IF EXISTS public."Compra";
DROP SEQUENCE IF EXISTS public."Compra_id_seq";
DROP TABLE IF EXISTS public."ProductosDefectuosos";
DROP SEQUENCE IF EXISTS public."ProductosDefectuosos_id_seq";
DROP TABLE IF EXISTS public."TipoDefecto";
DROP SEQUENCE IF EXISTS public."TipoDefecto_id_seq";
DROP TABLE IF EXISTS public."DetalleHojaRuta";
DROP SEQUENCE IF EXISTS public."DetalleHojaRuta_id_seq";
DROP TABLE IF EXISTS public."HojaRuta";
DROP SEQUENCE IF EXISTS public."HojaRuta_id_seq";
DROP TABLE IF EXISTS public."RentabilidadCliente";
DROP SEQUENCE IF EXISTS public."RentabilidadCliente_id_seq";
DROP TABLE IF EXISTS public."PagoProveedor";
DROP TABLE IF EXISTS public."OrdenCompra";
DROP SEQUENCE IF EXISTS public."OrdenCompra_id_seq";
DROP TABLE IF EXISTS public."EstadoOrdenCompra";
DROP SEQUENCE IF EXISTS public."EstadoOrdenCompra_id_seq";
DROP TABLE IF EXISTS public."EmpresaTransporte";
DROP SEQUENCE IF EXISTS public."EmpresaTransporte_id_seq";
DROP SEQUENCE IF EXISTS public.proveedor_id_seq;
DROP TABLE IF EXISTS public."Proveedor";
DROP TABLE IF EXISTS public."Venta";
DROP SEQUENCE IF EXISTS public."Venta_id_seq";
DROP TABLE IF EXISTS public."EstadoVenta";
DROP SEQUENCE IF EXISTS public."EstadoVenta_id_seq";
DROP TABLE IF EXISTS public."Factura";
DROP SEQUENCE IF EXISTS public."Factura_id_seq";
DROP TABLE IF EXISTS public."TipoFactura";
DROP SEQUENCE IF EXISTS public."TipoFactura_id_seq";
DROP TABLE IF EXISTS public."DetalleFactura";
DROP TABLE IF EXISTS public."PedidoProductosTerminados";
DROP SEQUENCE IF EXISTS public."PedidoProductosTerminados_id_seq";
DROP TABLE IF EXISTS public."EstadoPedidoProductosTerminados";
DROP SEQUENCE IF EXISTS public."EstadoPedidoProductosTerminados_id_seq";
DROP TABLE IF EXISTS public."DetallePedidoProductosTerminados";
DROP SEQUENCE IF EXISTS public."DetallePedidoProductosTerminados_id_seq";
DROP TABLE IF EXISTS public."EstadoDetallePedidoProductoTerminado";
DROP SEQUENCE IF EXISTS public."EstadoDetallePedidoCliente_id_seq";
DROP TABLE IF EXISTS public."CobroPedido";
DROP SEQUENCE IF EXISTS public."CobroPedido_id_seq";
DROP TABLE IF EXISTS public."EstadoCobroPedido";
DROP SEQUENCE IF EXISTS public."EstadoCobroPedido_id_seq";
DROP TABLE IF EXISTS public."CobroNotaCredito";
DROP TABLE IF EXISTS public."CobroEfectivo";
DROP TABLE IF EXISTS public."CobreCheque";
DROP TABLE IF EXISTS public."DetalleCobroPedido";
DROP SEQUENCE IF EXISTS public."DetalleCobroPedido_id_seq";
DROP TABLE IF EXISTS public."EstadoCobroCheque";
DROP SEQUENCE IF EXISTS public."EstadoCobroCheque_id_seq";
DROP TABLE IF EXISTS public."Cheque";
DROP SEQUENCE IF EXISTS public."Cheque_id_seq";
DROP TABLE IF EXISTS public."OtrosGastos";
DROP SEQUENCE IF EXISTS public."PagoEmpleado_idPago_seq";
DROP TABLE IF EXISTS public."PagoEmpleado";
DROP TABLE IF EXISTS public."Tamano";
DROP SEQUENCE IF EXISTS public."Tamano_id_seq";
DROP TABLE IF EXISTS public."Divisa";
DROP SEQUENCE IF EXISTS public."Divisa_id_seq";
DROP TABLE IF EXISTS public."Pago";
DROP SEQUENCE IF EXISTS public."Pago_id_seq";
DROP TABLE IF EXISTS public."Empleado";
DROP TABLE IF EXISTS public."Cargo";
DROP SEQUENCE IF EXISTS public."Cargo_id_seq";
DROP TABLE IF EXISTS public."DetalleCartera";
DROP SEQUENCE IF EXISTS public."DetalleCartera_id_seq";
DROP TABLE IF EXISTS public."EstadoCartera";
DROP SEQUENCE IF EXISTS public."EstadoCartera_id_seq";
DROP TABLE IF EXISTS public."CondicionIVA";
DROP SEQUENCE IF EXISTS public."CondicionIVA_id_seq";
DROP TABLE IF EXISTS public."EmpresaClienteXPersona";
DROP SEQUENCE IF EXISTS public."EmpresaClienteXPersona_id_seq";
DROP TABLE IF EXISTS public."EmpresaCliente";
DROP TABLE IF EXISTS public."CreditoCliente";
DROP SEQUENCE IF EXISTS public."CreditoCliente_id_seq";
DROP TABLE IF EXISTS public."Viajante";
DROP TABLE IF EXISTS public."Persona";
DROP SEQUENCE IF EXISTS public."Persona_id_seq";
DROP TABLE IF EXISTS public."TipoDni";
DROP SEQUENCE IF EXISTS public."TipoDni_id_seq";
DROP SEQUENCE IF EXISTS public."DevolucionProductosTerminados_id_seq";
DROP SEQUENCE IF EXISTS public."Localidad_id_seq";
DROP SEQUENCE IF EXISTS public."Provincia_id_seq";
DROP TABLE IF EXISTS public."Domicilio";
DROP SEQUENCE IF EXISTS public."Domicilio_id_seq";
DROP TABLE IF EXISTS public."Barrio";
DROP SEQUENCE IF EXISTS public."Barrio_id_seq";
DROP TABLE IF EXISTS public."Localidad";
DROP TABLE IF EXISTS public."Provincia";
DROP TABLE IF EXISTS public."DetalleDevolucionProductosTerminados";
DROP SEQUENCE IF EXISTS public."DetalleDevolucionProductosTerminados_id_seq";
DROP TABLE IF EXISTS public."DevolucionProductosTerminados";
DROP TABLE IF EXISTS public."DetalleVenta";
DROP SEQUENCE IF EXISTS public."DetalleVenta_id_seq";
DROP TABLE IF EXISTS public."EstadoDetalleVenta";
DROP SEQUENCE IF EXISTS public."EstadoDetalleVenta_id_seq";
DROP TABLE IF EXISTS public."Muestrario";
DROP SEQUENCE IF EXISTS public."Muestrario_id_seq";
DROP TABLE IF EXISTS public."Accesorio";
DROP SEQUENCE IF EXISTS public."Accesorio_id_seq";
DROP TABLE IF EXISTS public."TipoAccesorio";
DROP SEQUENCE IF EXISTS public."TipoAccesorio_id_seq";
DROP TABLE IF EXISTS public."DetalleMateriaPrima";
DROP SEQUENCE IF EXISTS public."DetalleMateriaPrima_id_seq";
DROP TABLE IF EXISTS public."Lote";
DROP SEQUENCE IF EXISTS public."Lote_id_seq";
DROP TABLE IF EXISTS public."ProductoTerminado";
DROP SEQUENCE IF EXISTS public."ProductoTerminado_id_seq";
DROP TABLE IF EXISTS public."MateriaPrima";
DROP SEQUENCE IF EXISTS public."MateriaPrima_id_seq";
DROP TABLE IF EXISTS public."Ubicacion";
DROP SEQUENCE IF EXISTS public."Ubicacion_id_seq";
DROP TABLE IF EXISTS public."Color";
DROP SEQUENCE IF EXISTS public."Color_id_seq";
DROP TABLE IF EXISTS public."Modelo";
DROP SEQUENCE IF EXISTS public."Modelo_id_seq";
DROP SEQUENCE IF EXISTS public."Marca_id_seq";
DROP TABLE IF EXISTS public."Marca";
SET check_function_bodies = false;
--
-- Structure for table Marca (OID = 16398) : 
--
CREATE TABLE public."Marca" (
    nombre character varying(20) NOT NULL,
    id integer DEFAULT nextval('"Marca_id_seq"'::regclass) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Marca_id_seq (OID = 16410) : 
--
CREATE SEQUENCE public."Marca_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence Modelo_id_seq (OID = 16435) : 
--
CREATE SEQUENCE public."Modelo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Modelo (OID = 16437) : 
--
CREATE TABLE public."Modelo" (
    id integer DEFAULT nextval('"Modelo_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    "nroSerie" integer
) WITHOUT OIDS;
--
-- Definition for sequence Color_id_seq (OID = 16450) : 
--
CREATE SEQUENCE public."Color_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Color (OID = 16452) : 
--
CREATE TABLE public."Color" (
    id integer DEFAULT nextval('"Color_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Ubicacion_id_seq (OID = 16463) : 
--
CREATE SEQUENCE public."Ubicacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Ubicacion (OID = 16465) : 
--
CREATE TABLE public."Ubicacion" (
    id integer DEFAULT nextval('"Ubicacion_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence MateriaPrima_id_seq (OID = 16476) : 
--
CREATE SEQUENCE public."MateriaPrima_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table MateriaPrima (OID = 16478) : 
--
CREATE TABLE public."MateriaPrima" (
    id integer DEFAULT nextval('"MateriaPrima_id_seq"'::regclass) NOT NULL,
    codigo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200),
    "stockActual" integer DEFAULT 0 NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence ProductoTerminado_id_seq (OID = 16493) : 
--
CREATE SEQUENCE public."ProductoTerminado_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table ProductoTerminado (OID = 16495) : 
--
CREATE TABLE public."ProductoTerminado" (
    id integer DEFAULT nextval('"ProductoTerminado_id_seq"'::regclass) NOT NULL,
    "nroProducto" integer NOT NULL,
    "precioEstimado" numeric,
    nombre character varying(20) NOT NULL,
    "nivelReaprovisionamiento" integer DEFAULT 0 NOT NULL,
    "stockMaximo" integer DEFAULT 0 NOT NULL,
    "fechaIngreso" date NOT NULL,
    "idModelo" integer NOT NULL,
    "idColor" integer NOT NULL,
    "stockActual" integer DEFAULT 0 NOT NULL,
    "idTamano" integer NOT NULL,
    "precioVenta" numeric,
    "idMarca" integer NOT NULL,
    "idUbicacion" integer NOT NULL,
    "idMuestrario" integer
) WITHOUT OIDS;
--
-- Definition for sequence Lote_id_seq (OID = 16563) : 
--
CREATE SEQUENCE public."Lote_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Lote (OID = 16565) : 
--
CREATE TABLE public."Lote" (
    id integer DEFAULT nextval('"Lote_id_seq"'::regclass) NOT NULL,
    "nroLote" integer DEFAULT 0 NOT NULL,
    "cantidadProducida" integer DEFAULT 0 NOT NULL,
    "idProducto" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence DetalleMateriaPrima_id_seq (OID = 16580) : 
--
CREATE SEQUENCE public."DetalleMateriaPrima_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleMateriaPrima (OID = 16582) : 
--
CREATE TABLE public."DetalleMateriaPrima" (
    id integer DEFAULT nextval('"DetalleMateriaPrima_id_seq"'::regclass) NOT NULL,
    "cantidadMateriaPrima" integer DEFAULT 1 NOT NULL,
    "idMateriaPrima" integer NOT NULL,
    "idLote" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence TipoAccesorio_id_seq (OID = 16599) : 
--
CREATE SEQUENCE public."TipoAccesorio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table TipoAccesorio (OID = 16601) : 
--
CREATE TABLE public."TipoAccesorio" (
    id integer DEFAULT nextval('"TipoAccesorio_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Accesorio_id_seq (OID = 16612) : 
--
CREATE SEQUENCE public."Accesorio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Accesorio (OID = 16614) : 
--
CREATE TABLE public."Accesorio" (
    id integer DEFAULT nextval('"Accesorio_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    "idTipoaccesorio" integer NOT NULL,
    "idProducto" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Muestrario_id_seq (OID = 16635) : 
--
CREATE SEQUENCE public."Muestrario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Muestrario (OID = 16637) : 
--
CREATE TABLE public."Muestrario" (
    id integer DEFAULT nextval('"Muestrario_id_seq"'::regclass) NOT NULL,
    "fechaDesde" date NOT NULL,
    "fechaHasta" date NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence EstadoDetalleVenta_id_seq (OID = 16654) : 
--
CREATE SEQUENCE public."EstadoDetalleVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoDetalleVenta (OID = 16656) : 
--
CREATE TABLE public."EstadoDetalleVenta" (
    id integer DEFAULT nextval('"EstadoDetalleVenta_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence DetalleVenta_id_seq (OID = 16667) : 
--
CREATE SEQUENCE public."DetalleVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleVenta (OID = 16669) : 
--
CREATE TABLE public."DetalleVenta" (
    id integer DEFAULT nextval('"DetalleVenta_id_seq"'::regclass) NOT NULL,
    "idProducto" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 1 NOT NULL,
    "precioUnidad" numeric DEFAULT 0 NOT NULL,
    "idEstadoDetalleVenta" integer NOT NULL,
    "motivoDevolucion" character varying(200),
    "fechaDevolucion" date,
    "idVenta" integer NOT NULL
) WITHOUT OIDS;
--
-- Structure for table DevolucionProductosTerminados (OID = 16690) : 
--
CREATE TABLE public."DevolucionProductosTerminados" (
    fecha date NOT NULL,
    "idViajante" integer NOT NULL,
    "idCliente" integer NOT NULL,
    id integer DEFAULT nextval('"DevolucionProductosTerminados_id_seq"'::regclass) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence DetalleDevolucionProductosTerminados_id_seq (OID = 16695) : 
--
CREATE SEQUENCE public."DetalleDevolucionProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleDevolucionProductosTerminados (OID = 16697) : 
--
CREATE TABLE public."DetalleDevolucionProductosTerminados" (
    id integer DEFAULT nextval('"DetalleDevolucionProductosTerminados_id_seq"'::regclass) NOT NULL,
    "idDevolucionProductosTerminados" integer NOT NULL,
    "idDetalleVenta" integer NOT NULL
) WITHOUT OIDS;
--
-- Structure for table Provincia (OID = 16713) : 
--
CREATE TABLE public."Provincia" (
    nombre character varying(20) NOT NULL,
    id integer DEFAULT nextval('"Provincia_id_seq"'::regclass) NOT NULL
) WITHOUT OIDS;
--
-- Structure for table Localidad (OID = 16723) : 
--
CREATE TABLE public."Localidad" (
    nombre character varying(20),
    "idProvincia" integer NOT NULL,
    id integer DEFAULT nextval('"Localidad_id_seq"'::regclass) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Barrio_id_seq (OID = 16736) : 
--
CREATE SEQUENCE public."Barrio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Barrio (OID = 16738) : 
--
CREATE TABLE public."Barrio" (
    id integer DEFAULT nextval('"Barrio_id_seq"'::regclass) NOT NULL,
    nombre character varying NOT NULL,
    "idLocalidad" integer NOT NULL,
    "idViajante" integer
) WITHOUT OIDS;
--
-- Definition for sequence Domicilio_id_seq (OID = 16752) : 
--
CREATE SEQUENCE public."Domicilio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Domicilio (OID = 16754) : 
--
CREATE TABLE public."Domicilio" (
    id integer DEFAULT nextval('"Domicilio_id_seq"'::regclass) NOT NULL,
    altura integer,
    "nombreCalle" character varying(20),
    "nroDpto" integer,
    "codPostal" integer,
    "idBarrio" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Provincia_id_seq (OID = 16768) : 
--
CREATE SEQUENCE public."Provincia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence Localidad_id_seq (OID = 16785) : 
--
CREATE SEQUENCE public."Localidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence DevolucionProductosTerminados_id_seq (OID = 16802) : 
--
CREATE SEQUENCE public."DevolucionProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence TipoDni_id_seq (OID = 16815) : 
--
CREATE SEQUENCE public."TipoDni_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table TipoDni (OID = 16817) : 
--
CREATE TABLE public."TipoDni" (
    id integer DEFAULT nextval('"TipoDni_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Persona_id_seq (OID = 16828) : 
--
CREATE SEQUENCE public."Persona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Persona (OID = 16830) : 
--
CREATE TABLE public."Persona" (
    id integer DEFAULT nextval('"Persona_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    "idDomicilio" integer,
    telefono character varying(20),
    celular character varying(20),
    dni character varying(20),
    "idTipoDni" integer,
    mail character varying(30)
) WITHOUT OIDS;
--
-- Structure for table Viajante (OID = 16849) : 
--
CREATE TABLE public."Viajante" (
    "idPersona" integer NOT NULL,
    "comisionPorVenta" integer DEFAULT 0 NOT NULL,
    "idDetalleCartera" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence CreditoCliente_id_seq (OID = 16865) : 
--
CREATE SEQUENCE public."CreditoCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table CreditoCliente (OID = 16867) : 
--
CREATE TABLE public."CreditoCliente" (
    id integer DEFAULT nextval('"CreditoCliente_id_seq"'::regclass) NOT NULL,
    monto numeric DEFAULT 0 NOT NULL
) WITHOUT OIDS;
--
-- Structure for table EmpresaCliente (OID = 16874) : 
--
CREATE TABLE public."EmpresaCliente" (
    id integer NOT NULL,
    "razonSocial" character varying(20) NOT NULL,
    cuit character varying(20) NOT NULL,
    "idCondicionIVA" integer NOT NULL,
    telefono character varying(20),
    fax character varying(20),
    mail character varying(30),
    celular character varying(20),
    "idCreditoCliente" integer NOT NULL,
    "idDomicilio" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence EmpresaClienteXPersona_id_seq (OID = 16892) : 
--
CREATE SEQUENCE public."EmpresaClienteXPersona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EmpresaClienteXPersona (OID = 16894) : 
--
CREATE TABLE public."EmpresaClienteXPersona" (
    id integer DEFAULT nextval('"EmpresaClienteXPersona_id_seq"'::regclass) NOT NULL,
    "idEmpresaCliente" integer NOT NULL,
    "idPersona" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence CondicionIVA_id_seq (OID = 16910) : 
--
CREATE SEQUENCE public."CondicionIVA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table CondicionIVA (OID = 16912) : 
--
CREATE TABLE public."CondicionIVA" (
    id integer DEFAULT nextval('"CondicionIVA_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200)
) WITHOUT OIDS;
--
-- Definition for sequence EstadoCartera_id_seq (OID = 16928) : 
--
CREATE SEQUENCE public."EstadoCartera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoCartera (OID = 16930) : 
--
CREATE TABLE public."EstadoCartera" (
    id integer DEFAULT nextval('"EstadoCartera_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence DetalleCartera_id_seq (OID = 16941) : 
--
CREATE SEQUENCE public."DetalleCartera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleCartera (OID = 16943) : 
--
CREATE TABLE public."DetalleCartera" (
    id integer DEFAULT nextval('"DetalleCartera_id_seq"'::regclass) NOT NULL,
    "fechaDesde" date NOT NULL,
    "fechaHasta" date,
    "idEstadoCartera" integer NOT NULL,
    "idEmpresaCliente" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Cargo_id_seq (OID = 16964) : 
--
CREATE SEQUENCE public."Cargo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Cargo (OID = 16966) : 
--
CREATE TABLE public."Cargo" (
    id integer DEFAULT nextval('"Cargo_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200),
    "precioPorHora" numeric DEFAULT 0 NOT NULL
) WITHOUT OIDS;
--
-- Structure for table Empleado (OID = 16979) : 
--
CREATE TABLE public."Empleado" (
    cuil character varying(20) NOT NULL,
    "fechaIngreso" date NOT NULL,
    "fechaBaja" date,
    "motivoBaja" character varying(200),
    "idPersona" integer NOT NULL,
    "idCargo" integer NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Pago_id_seq (OID = 17007) : 
--
CREATE SEQUENCE public."Pago_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Pago (OID = 17009) : 
--
CREATE TABLE public."Pago" (
    id integer DEFAULT nextval('"Pago_id_seq"'::regclass) NOT NULL,
    monto numeric DEFAULT 0 NOT NULL,
    "fechaPago" date NOT NULL,
    "nroPago" integer NOT NULL,
    "idDivisa" integer
) WITHOUT OIDS;
--
-- Definition for sequence Divisa_id_seq (OID = 17018) : 
--
CREATE SEQUENCE public."Divisa_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Divisa (OID = 17020) : 
--
CREATE TABLE public."Divisa" (
    id integer DEFAULT nextval('"Divisa_id_seq"'::regclass) NOT NULL,
    nombre character varying(200) NOT NULL,
    "tasaCambio" numeric NOT NULL
) WITHOUT OIDS;
--
-- Definition for sequence Tamano_id_seq (OID = 17102) : 
--
CREATE SEQUENCE public."Tamano_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Tamano (OID = 17104) : 
--
CREATE TABLE public."Tamano" (
    id integer DEFAULT nextval('"Tamano_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."Tamano" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Tamano" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Structure for table PagoEmpleado (OID = 17117) : 
--
CREATE TABLE public."PagoEmpleado" (
    "idEmpleado" integer NOT NULL,
    "idPago" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."PagoEmpleado" ALTER COLUMN "idEmpleado" SET STATISTICS 0;
--
-- Definition for sequence PagoEmpleado_idPago_seq (OID = 17122) : 
--
CREATE SEQUENCE public."PagoEmpleado_idPago_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table OtrosGastos (OID = 17142) : 
--
CREATE TABLE public."OtrosGastos" (
    "idPago" integer NOT NULL,
    descripcion character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."OtrosGastos" ALTER COLUMN "idPago" SET STATISTICS 0;
ALTER TABLE ONLY public."OtrosGastos" ALTER COLUMN descripcion SET STATISTICS 0;
--
-- Definition for sequence Cheque_id_seq (OID = 17152) : 
--
CREATE SEQUENCE public."Cheque_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Cheque (OID = 17154) : 
--
CREATE TABLE public."Cheque" (
    id integer DEFAULT nextval('"Cheque_id_seq"'::regclass) NOT NULL,
    banco character varying(20) NOT NULL,
    nro integer NOT NULL,
    emisor character varying(100) NOT NULL,
    "fechaEmision" date NOT NULL,
    "fechaCobro" date,
    cobrador character varying(100)
) WITH OIDS;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN banco SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN nro SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN emisor SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN "fechaEmision" SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN "fechaCobro" SET STATISTICS 0;
ALTER TABLE ONLY public."Cheque" ALTER COLUMN cobrador SET STATISTICS 0;
--
-- Definition for sequence EstadoCobroCheque_id_seq (OID = 17162) : 
--
CREATE SEQUENCE public."EstadoCobroCheque_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoCobroCheque (OID = 17164) : 
--
CREATE TABLE public."EstadoCobroCheque" (
    id integer DEFAULT nextval('"EstadoCobroCheque_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoCobroCheque" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoCobroCheque" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence DetalleCobroPedido_id_seq (OID = 17172) : 
--
CREATE SEQUENCE public."DetalleCobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleCobroPedido (OID = 17174) : 
--
CREATE TABLE public."DetalleCobroPedido" (
    id integer DEFAULT nextval('"DetalleCobroPedido_id_seq"'::regclass) NOT NULL,
    varlor numeric(20,2) NOT NULL,
    fecha date NOT NULL,
    "idCobroPedido" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleCobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCobroPedido" ALTER COLUMN varlor SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCobroPedido" ALTER COLUMN fecha SET STATISTICS 0;
--
-- Structure for table CobreCheque (OID = 17180) : 
--
CREATE TABLE public."CobreCheque" (
    "idDetalleCobroPedido" integer NOT NULL,
    "idCheque" integer NOT NULL,
    "idEstadoDetalleCobroPedido" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."CobreCheque" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."CobreCheque" ALTER COLUMN "idCheque" SET STATISTICS 0;
ALTER TABLE ONLY public."CobreCheque" ALTER COLUMN "idEstadoDetalleCobroPedido" SET STATISTICS 0;
--
-- Structure for table CobroEfectivo (OID = 17200) : 
--
CREATE TABLE public."CobroEfectivo" (
    "idDetalleCobroPedido" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."CobroEfectivo" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;
--
-- Structure for table CobroNotaCredito (OID = 17210) : 
--
CREATE TABLE public."CobroNotaCredito" (
    "idDetalleCobroPedido" integer NOT NULL,
    "idCreditoCliente" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."CobroNotaCredito" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."CobroNotaCredito" ALTER COLUMN "idCreditoCliente" SET STATISTICS 0;
--
-- Definition for sequence EstadoCobroPedido_id_seq (OID = 17225) : 
--
CREATE SEQUENCE public."EstadoCobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoCobroPedido (OID = 17227) : 
--
CREATE TABLE public."EstadoCobroPedido" (
    id integer DEFAULT nextval('"EstadoCobroPedido_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoCobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoCobroPedido" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence CobroPedido_id_seq (OID = 17235) : 
--
CREATE SEQUENCE public."CobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table CobroPedido (OID = 17237) : 
--
CREATE TABLE public."CobroPedido" (
    id integer DEFAULT nextval('"CobroPedido_id_seq"'::regclass) NOT NULL,
    "idEstadoCobroPedido" integer NOT NULL,
    "fechaCobro" date NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."CobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."CobroPedido" ALTER COLUMN "idEstadoCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."CobroPedido" ALTER COLUMN "fechaCobro" SET STATISTICS 0;
--
-- Definition for sequence EstadoDetallePedidoCliente_id_seq (OID = 17253) : 
--
CREATE SEQUENCE public."EstadoDetallePedidoCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoDetallePedidoProductoTerminado (OID = 17255) : 
--
CREATE TABLE public."EstadoDetallePedidoProductoTerminado" (
    id integer DEFAULT nextval('"EstadoDetallePedidoCliente_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoDetallePedidoProductoTerminado" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoDetallePedidoProductoTerminado" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence DetallePedidoProductosTerminados_id_seq (OID = 17263) : 
--
CREATE SEQUENCE public."DetallePedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetallePedidoProductosTerminados (OID = 17265) : 
--
CREATE TABLE public."DetallePedidoProductosTerminados" (
    id integer DEFAULT nextval('"DetallePedidoProductosTerminados_id_seq"'::regclass) NOT NULL,
    "idProductoTerminado" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 1 NOT NULL,
    "precioPorUnidad" numeric(20,2) NOT NULL,
    "idEstadoDetallePedidoProductoTerminado" integer NOT NULL,
    "motivoDevolucion" character varying(100),
    "motivoNoEntregado" character varying(100),
    "fechaDevolucion" integer,
    "idPedidoProductosTerminados" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "cantidadProducto" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "precioPorUnidad" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "idEstadoDetallePedidoProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "motivoDevolucion" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "motivoNoEntregado" SET STATISTICS 0;
ALTER TABLE ONLY public."DetallePedidoProductosTerminados" ALTER COLUMN "fechaDevolucion" SET STATISTICS 0;
--
-- Definition for sequence EstadoPedidoProductosTerminados_id_seq (OID = 17282) : 
--
CREATE SEQUENCE public."EstadoPedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoPedidoProductosTerminados (OID = 17284) : 
--
CREATE TABLE public."EstadoPedidoProductosTerminados" (
    id integer DEFAULT nextval('"EstadoPedidoProductosTerminados_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoPedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoPedidoProductosTerminados" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence PedidoProductosTerminados_id_seq (OID = 17292) : 
--
CREATE SEQUENCE public."PedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table PedidoProductosTerminados (OID = 17294) : 
--
CREATE TABLE public."PedidoProductosTerminados" (
    id integer DEFAULT nextval('"PedidoProductosTerminados_id_seq"'::regclass) NOT NULL,
    "fechaPedido" date NOT NULL,
    "idEstadoPedidoProductosTerminados" integer NOT NULL,
    "fechaCancelacion" date,
    "motivoEstado" character varying(20),
    "fechaEstimadaEntrega" date,
    "fechaEntregaViajante" date,
    "idViajante" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    descuento numeric(20,2),
    "domicilioEnvio" character varying(100),
    "idEmpresaCliente" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "fechaPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "idEstadoPedidoProductosTerminados" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "fechaCancelacion" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "motivoEstado" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "fechaEstimadaEntrega" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "fechaEntregaViajante" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "idViajante" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "idEmpleado" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN descuento SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "domicilioEnvio" SET STATISTICS 0;
ALTER TABLE ONLY public."PedidoProductosTerminados" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;
--
-- Structure for table DetalleFactura (OID = 17325) : 
--
CREATE TABLE public."DetalleFactura" (
    "idDetallePedidoProductosTerminados" integer,
    "idFactura" integer NOT NULL,
    id integer DEFAULT nextval('"DetalleFactura_id_seq"'::regclass) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleFactura" ALTER COLUMN "idDetallePedidoProductosTerminados" SET STATISTICS 0;
--
-- Definition for sequence TipoFactura_id_seq (OID = 17335) : 
--
CREATE SEQUENCE public."TipoFactura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table TipoFactura (OID = 17337) : 
--
CREATE TABLE public."TipoFactura" (
    id integer DEFAULT nextval('"TipoFactura_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."TipoFactura" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."TipoFactura" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence Factura_id_seq (OID = 17345) : 
--
CREATE SEQUENCE public."Factura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Factura (OID = 17347) : 
--
CREATE TABLE public."Factura" (
    id integer DEFAULT nextval('"Factura_id_seq"'::regclass) NOT NULL,
    "idTipoFactura" integer NOT NULL,
    "idPedidoProductosTerminados" integer
) WITH OIDS;
ALTER TABLE ONLY public."Factura" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Factura" ALTER COLUMN "idTipoFactura" SET STATISTICS 0;
ALTER TABLE ONLY public."Factura" ALTER COLUMN "idPedidoProductosTerminados" SET STATISTICS 0;
--
-- Definition for sequence EstadoVenta_id_seq (OID = 17369) : 
--
CREATE SEQUENCE public."EstadoVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoVenta (OID = 17371) : 
--
CREATE TABLE public."EstadoVenta" (
    id integer DEFAULT nextval('"EstadoVenta_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoVenta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoVenta" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence Venta_id_seq (OID = 17379) : 
--
CREATE SEQUENCE public."Venta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Venta (OID = 17381) : 
--
CREATE TABLE public."Venta" (
    id integer DEFAULT nextval('"Venta_id_seq"'::regclass) NOT NULL,
    "fechaVenta" date NOT NULL,
    "nroFactura" integer NOT NULL,
    "idCobroPedido" integer NOT NULL,
    "idPedidoProductosTerminados" integer NOT NULL,
    "idEstadoVenta" integer NOT NULL,
    "fechaMaximaDevolucion" date
) WITH OIDS;
ALTER TABLE ONLY public."Venta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "fechaVenta" SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "nroFactura" SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "idCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "idPedidoProductosTerminados" SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "idEstadoVenta" SET STATISTICS 0;
ALTER TABLE ONLY public."Venta" ALTER COLUMN "fechaMaximaDevolucion" SET STATISTICS 0;
--
-- Structure for table Proveedor (OID = 17448) : 
--
CREATE TABLE public."Proveedor" (
    id integer DEFAULT nextval(('"public"."proveedor_id_seq"'::text)::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    "razonSocial" character varying(20),
    mail character varying(30),
    "telefonoFijo" character varying(20),
    "telefonoCelular" character varying(20),
    "idDomicilioa" integer,
    pais character varying(20),
    "fechaAlta" date NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN nombre SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "razonSocial" SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN mail SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "telefonoFijo" SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "telefonoCelular" SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "idDomicilioa" SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN pais SET STATISTICS 0;
ALTER TABLE ONLY public."Proveedor" ALTER COLUMN "fechaAlta" SET STATISTICS 0;
--
-- Definition for sequence proveedor_id_seq (OID = 17458) : 
--
CREATE SEQUENCE public.proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence EmpresaTransporte_id_seq (OID = 17467) : 
--
CREATE SEQUENCE public."EmpresaTransporte_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EmpresaTransporte (OID = 17469) : 
--
CREATE TABLE public."EmpresaTransporte" (
    id integer DEFAULT nextval('"EmpresaTransporte_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    "idDomicilio" integer
) WITH OIDS;
ALTER TABLE ONLY public."EmpresaTransporte" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EmpresaTransporte" ALTER COLUMN nombre SET STATISTICS 0;
ALTER TABLE ONLY public."EmpresaTransporte" ALTER COLUMN "idDomicilio" SET STATISTICS 0;
--
-- Definition for sequence EstadoOrdenCompra_id_seq (OID = 17480) : 
--
CREATE SEQUENCE public."EstadoOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoOrdenCompra (OID = 17482) : 
--
CREATE TABLE public."EstadoOrdenCompra" (
    id integer DEFAULT nextval('"EstadoOrdenCompra_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoOrdenCompra" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence OrdenCompra_id_seq (OID = 17490) : 
--
CREATE SEQUENCE public."OrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table OrdenCompra (OID = 17492) : 
--
CREATE TABLE public."OrdenCompra" (
    id integer DEFAULT nextval('"OrdenCompra_id_seq"'::regclass) NOT NULL,
    "idEmpresaTransporteInterior" integer,
    "idEmpresaTransporteExterior" integer,
    "idProveedor" integer,
    "fechaPedido" date NOT NULL,
    "fechaEstimadaLlegada" date,
    "idEstadoOrdenCompra" integer NOT NULL,
    "otrosGastos" numeric(20,2)
) WITH OIDS;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "idEmpresaTransporteInterior" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "idEmpresaTransporteExterior" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "idProveedor" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "fechaPedido" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "fechaEstimadaLlegada" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "idEstadoOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompra" ALTER COLUMN "otrosGastos" SET STATISTICS 0;
--
-- Structure for table PagoProveedor (OID = 17518) : 
--
CREATE TABLE public."PagoProveedor" (
    "idPago" integer NOT NULL,
    "idOrdenCompra" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."PagoProveedor" ALTER COLUMN "idPago" SET STATISTICS 0;
ALTER TABLE ONLY public."PagoProveedor" ALTER COLUMN "idOrdenCompra" SET STATISTICS 0;
--
-- Definition for sequence RentabilidadCliente_id_seq (OID = 17533) : 
--
CREATE SEQUENCE public."RentabilidadCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table RentabilidadCliente (OID = 17535) : 
--
CREATE TABLE public."RentabilidadCliente" (
    id integer DEFAULT nextval('"RentabilidadCliente_id_seq"'::regclass) NOT NULL,
    coeficiente numeric(20,2) NOT NULL,
    "idEmpresaCliente" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."RentabilidadCliente" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."RentabilidadCliente" ALTER COLUMN coeficiente SET STATISTICS 0;
ALTER TABLE ONLY public."RentabilidadCliente" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;
--
-- Definition for sequence HojaRuta_id_seq (OID = 17547) : 
--
CREATE SEQUENCE public."HojaRuta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table HojaRuta (OID = 17549) : 
--
CREATE TABLE public."HojaRuta" (
    id integer DEFAULT nextval('"HojaRuta_id_seq"'::regclass) NOT NULL,
    "idPosicionViajante" integer NOT NULL,
    fecha date NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."HojaRuta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."HojaRuta" ALTER COLUMN "idPosicionViajante" SET STATISTICS 0;
ALTER TABLE ONLY public."HojaRuta" ALTER COLUMN fecha SET STATISTICS 0;
--
-- Definition for sequence DetalleHojaRuta_id_seq (OID = 17560) : 
--
CREATE SEQUENCE public."DetalleHojaRuta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleHojaRuta (OID = 17562) : 
--
CREATE TABLE public."DetalleHojaRuta" (
    id integer DEFAULT nextval('"DetalleHojaRuta_id_seq"'::regclass) NOT NULL,
    "idHojaRuta" integer NOT NULL,
    "idEmpresaCliente" integer NOT NULL,
    "idDomicilioVisitar" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleHojaRuta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleHojaRuta" ALTER COLUMN "idHojaRuta" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleHojaRuta" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleHojaRuta" ALTER COLUMN "idDomicilioVisitar" SET STATISTICS 0;
--
-- Definition for sequence TipoDefecto_id_seq (OID = 17583) : 
--
CREATE SEQUENCE public."TipoDefecto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table TipoDefecto (OID = 17585) : 
--
CREATE TABLE public."TipoDefecto" (
    id integer DEFAULT nextval('"TipoDefecto_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."TipoDefecto" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."TipoDefecto" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence ProductosDefectuosos_id_seq (OID = 17593) : 
--
CREATE SEQUENCE public."ProductosDefectuosos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table ProductosDefectuosos (OID = 17595) : 
--
CREATE TABLE public."ProductosDefectuosos" (
    id integer DEFAULT nextval('"ProductosDefectuosos_id_seq"'::regclass) NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL,
    "idTipoDefecto" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."ProductosDefectuosos" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."ProductosDefectuosos" ALTER COLUMN cantidad SET STATISTICS 0;
ALTER TABLE ONLY public."ProductosDefectuosos" ALTER COLUMN "idTipoDefecto" SET STATISTICS 0;
--
-- Definition for sequence Compra_id_seq (OID = 17607) : 
--
CREATE SEQUENCE public."Compra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Compra (OID = 17609) : 
--
CREATE TABLE public."Compra" (
    id integer DEFAULT nextval('"Compra_id_seq"'::regclass) NOT NULL,
    "fechaRealLlegada" date
) WITH OIDS;
ALTER TABLE ONLY public."Compra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Compra" ALTER COLUMN "fechaRealLlegada" SET STATISTICS 0;
--
-- Definition for sequence ProductosDefectuososXCompra_id_seq (OID = 17615) : 
--
CREATE SEQUENCE public."ProductosDefectuososXCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table ProductosDefectuososXCompra (OID = 17617) : 
--
CREATE TABLE public."ProductosDefectuososXCompra" (
    id integer DEFAULT nextval('"ProductosDefectuososXCompra_id_seq"'::regclass) NOT NULL,
    "idCompra" integer NOT NULL,
    "idProductosDefectuosos" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."ProductosDefectuososXCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."ProductosDefectuososXCompra" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."ProductosDefectuososXCompra" ALTER COLUMN "idProductosDefectuosos" SET STATISTICS 0;
--
-- Definition for sequence Importacion_id_seq (OID = 17633) : 
--
CREATE SEQUENCE public."Importacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table Importacion (OID = 17635) : 
--
CREATE TABLE public."Importacion" (
    id integer DEFAULT nextval('"Importacion_id_seq"'::regclass) NOT NULL,
    fecha date NOT NULL,
    "lugarOrigen" character varying(20) NOT NULL,
    "idCompra" integer NOT NULL,
    "pagoAduana" numeric(20,2),
    "fechaEmbarque" date
) WITH OIDS;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN fecha SET STATISTICS 0;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN "lugarOrigen" SET STATISTICS 0;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN "pagoAduana" SET STATISTICS 0;
ALTER TABLE ONLY public."Importacion" ALTER COLUMN "fechaEmbarque" SET STATISTICS 0;
--
-- Definition for sequence OrdenCompraXImportacion_id_seq (OID = 17646) : 
--
CREATE SEQUENCE public."OrdenCompraXImportacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table OrdenCompraXImportacion (OID = 17648) : 
--
CREATE TABLE public."OrdenCompraXImportacion" (
    id integer DEFAULT nextval('"OrdenCompraXImportacion_id_seq"'::regclass) NOT NULL,
    "idImportacion" integer NOT NULL,
    "idOrdenCompra" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."OrdenCompraXImportacion" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompraXImportacion" ALTER COLUMN "idImportacion" SET STATISTICS 0;
ALTER TABLE ONLY public."OrdenCompraXImportacion" ALTER COLUMN "idOrdenCompra" SET STATISTICS 0;
--
-- Definition for sequence DetalleFactura_id_seq (OID = 17722) : 
--
CREATE SEQUENCE public."DetalleFactura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence EstadoDetalleOrdenCompra_id_seq (OID = 17900) : 
--
CREATE SEQUENCE public."EstadoDetalleOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoDetalleOrdenCompra (OID = 17902) : 
--
CREATE TABLE public."EstadoDetalleOrdenCompra" (
    id integer DEFAULT nextval('"EstadoDetalleOrdenCompra_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoDetalleOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoDetalleOrdenCompra" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence DetalleOrdenCompra_id_seq (OID = 17910) : 
--
CREATE SEQUENCE public."DetalleOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleOrdenCompra (OID = 17912) : 
--
CREATE TABLE public."DetalleOrdenCompra" (
    id integer DEFAULT nextval('"DetalleOrdenCompra_id_seq"'::regclass) NOT NULL,
    precio numeric(20,2) DEFAULT 0 NOT NULL,
    "idEstadoDetalleOrdenCompra" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompra" ALTER COLUMN precio SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompra" ALTER COLUMN "idEstadoDetalleOrdenCompra" SET STATISTICS 0;
--
-- Structure for table ProductoImportado (OID = 17925) : 
--
CREATE TABLE public."ProductoImportado" (
    "idProductoTerminado" integer NOT NULL,
    "precioCompra" numeric(20,2) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."ProductoImportado" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY public."ProductoImportado" ALTER COLUMN "precioCompra" SET STATISTICS 0;
--
-- Definition for sequence EstadoNotificacionReaprovisionamiento_id_seq (OID = 17935) : 
--
CREATE SEQUENCE public."EstadoNotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table EstadoNotificacionReaprovisionamiento (OID = 17937) : 
--
CREATE TABLE public."EstadoNotificacionReaprovisionamiento" (
    id integer DEFAULT nextval('"EstadoNotificacionReaprovisionamiento_id_seq"'::regclass) NOT NULL,
    nombre character varying(20) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."EstadoNotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."EstadoNotificacionReaprovisionamiento" ALTER COLUMN nombre SET STATISTICS 0;
--
-- Definition for sequence NotificacionReaprovisionamiento_id_seq (OID = 17945) : 
--
CREATE SEQUENCE public."NotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table NotificacionReaprovisionamiento (OID = 17947) : 
--
CREATE TABLE public."NotificacionReaprovisionamiento" (
    id integer DEFAULT nextval('"NotificacionReaprovisionamiento_id_seq"'::regclass) NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idEstadoNotificacionReaprovisionamiento" integer NOT NULL,
    "fechaIngresoDeposito" date NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."NotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."NotificacionReaprovisionamiento" ALTER COLUMN "idEmpleado" SET STATISTICS 0;
ALTER TABLE ONLY public."NotificacionReaprovisionamiento" ALTER COLUMN "idEstadoNotificacionReaprovisionamiento" SET STATISTICS 0;
ALTER TABLE ONLY public."NotificacionReaprovisionamiento" ALTER COLUMN "fechaIngresoDeposito" SET STATISTICS 0;
--
-- Definition for sequence DetalleNotificacionReaprovisionamiento_id_seq (OID = 17963) : 
--
CREATE SEQUENCE public."DetalleNotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleNotificacionReaprovisionamiento (OID = 17965) : 
--
CREATE TABLE public."DetalleNotificacionReaprovisionamiento" (
    id integer DEFAULT nextval('"DetalleNotificacionReaprovisionamiento_id_seq"'::regclass) NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL,
    "idNotificacionReaprovisionamiento" integer NOT NULL,
    "idProductoImportado" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleNotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleNotificacionReaprovisionamiento" ALTER COLUMN cantidad SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleNotificacionReaprovisionamiento" ALTER COLUMN "idNotificacionReaprovisionamiento" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleNotificacionReaprovisionamiento" ALTER COLUMN "idProductoImportado" SET STATISTICS 0;
--
-- Structure for table DetalleOrdenCompraProductoImportado (OID = 17982) : 
--
CREATE TABLE public."DetalleOrdenCompraProductoImportado" (
    "idDetalleOrdenCompra" integer NOT NULL,
    "idProductoImportado" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 0 NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleOrdenCompraProductoImportado" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompraProductoImportado" ALTER COLUMN "idProductoImportado" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompraProductoImportado" ALTER COLUMN "cantidadProducto" SET STATISTICS 0;
--
-- Structure for table DetalleOrdenCompraMateriaPrima (OID = 18003) : 
--
CREATE TABLE public."DetalleOrdenCompraMateriaPrima" (
    "idDetalleOrdenCompra" integer NOT NULL,
    "idMateriaPrima" integer NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleOrdenCompraMateriaPrima" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompraMateriaPrima" ALTER COLUMN "idMateriaPrima" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleOrdenCompraMateriaPrima" ALTER COLUMN cantidad SET STATISTICS 0;
--
-- Structure for table ProductoFabricado (OID = 18019) : 
--
CREATE TABLE public."ProductoFabricado" (
    "idProductoTerminado" integer NOT NULL,
    "costoProduccion" numeric(20,2) NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."ProductoFabricado" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY public."ProductoFabricado" ALTER COLUMN "costoProduccion" SET STATISTICS 0;
--
-- Definition for sequence DetalleCompra_id_seq (OID = 18029) : 
--
CREATE SEQUENCE public."DetalleCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table DetalleCompra (OID = 18031) : 
--
CREATE TABLE public."DetalleCompra" (
    id integer DEFAULT nextval('"DetalleCompra_id_seq"'::regclass) NOT NULL,
    "idCompra" integer NOT NULL,
    "idDetalleOrdenCompra" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCompra" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCompra" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;
--
-- Structure for table DetalleCompraProductoImportado (OID = 18047) : 
--
CREATE TABLE public."DetalleCompraProductoImportado" (
    "idDetalleCompra" integer NOT NULL,
    "idDetalleOrdenCompraProductoImportado" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleCompraProductoImportado" ALTER COLUMN "idDetalleCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCompraProductoImportado" ALTER COLUMN "idDetalleOrdenCompraProductoImportado" SET STATISTICS 0;
--
-- Structure for table DetalleCompraMateriaPrima (OID = 18062) : 
--
CREATE TABLE public."DetalleCompraMateriaPrima" (
    "idDetalleCompra" integer NOT NULL,
    "idDetalleOrdenCompraMateriaPrima" integer NOT NULL
) WITH OIDS;
ALTER TABLE ONLY public."DetalleCompraMateriaPrima" ALTER COLUMN "idDetalleCompra" SET STATISTICS 0;
ALTER TABLE ONLY public."DetalleCompraMateriaPrima" ALTER COLUMN "idDetalleOrdenCompraMateriaPrima" SET STATISTICS 0;
--
-- Definition for index Marca_pkey (OID = 16420) : 
--
ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_pkey" PRIMARY KEY (id);
--
-- Definition for index Modelo_pkey (OID = 16444) : 
--
ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_pkey" PRIMARY KEY (id);
--
-- Definition for index Modelo_nroSerie_key (OID = 16448) : 
--
ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nroSerie_key" UNIQUE ("nroSerie");
--
-- Definition for index Color_pkey (OID = 16459) : 
--
ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_pkey" PRIMARY KEY (id);
--
-- Definition for index Ubicacion_pkey (OID = 16472) : 
--
ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY (id);
--
-- Definition for index MateriaPrima_pkey (OID = 16486) : 
--
ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_pkey" PRIMARY KEY (id);
--
-- Definition for index MateriaPrima_codigo_key (OID = 16488) : 
--
ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_codigo_key" UNIQUE (codigo);
--
-- Definition for index ProductoTerminado_pkey (OID = 16499) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_pkey" PRIMARY KEY (id);
--
-- Definition for index ProductoTerminado_nroProducto_key (OID = 16501) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nroProducto_key" UNIQUE ("nroProducto");
--
-- Definition for index ProductoTerminado_idColor_fkey (OID = 16538) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idColor_fkey" FOREIGN KEY ("idColor") REFERENCES "Color"(id);
--
-- Definition for index ProductoTerminado_idModelo_fkey (OID = 16543) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idModelo_fkey" FOREIGN KEY ("idModelo") REFERENCES "Modelo"(id);
--
-- Definition for index ProductoTerminado_idMarca_fkey (OID = 16553) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMarca_fkey" FOREIGN KEY ("idMarca") REFERENCES "Marca"(id);
--
-- Definition for index ProductoTerminado_idUbicacion_fkey (OID = 16558) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idUbicacion_fkey" FOREIGN KEY ("idUbicacion") REFERENCES "Ubicacion"(id);
--
-- Definition for index Lote_pkey (OID = 16571) : 
--
ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_pkey" PRIMARY KEY (id);
--
-- Definition for index Lote_nroLote_key (OID = 16573) : 
--
ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_nroLote_key" UNIQUE ("nroLote");
--
-- Definition for index Lote_idProducto_fkey (OID = 16575) : 
--
ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index DetalleMateriaPrima_pkey (OID = 16587) : 
--
ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleMateriaPrima_idLote_fkey (OID = 16589) : 
--
ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idLote_fkey" FOREIGN KEY ("idLote") REFERENCES "Lote"(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index DetalleMateriaPrima_idMateriaPrima_fkey (OID = 16594) : 
--
ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idMateriaPrima_fkey" FOREIGN KEY ("idMateriaPrima") REFERENCES "MateriaPrima"(id);
--
-- Definition for index TipoAccesorio_pkey (OID = 16608) : 
--
ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_pkey" PRIMARY KEY (id);
--
-- Definition for index Accesorio_pkey (OID = 16621) : 
--
ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_pkey" PRIMARY KEY (id);
--
-- Definition for index Accesorio_idTipoaccesorio_fkey (OID = 16625) : 
--
ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idTipoaccesorio_fkey" FOREIGN KEY ("idTipoaccesorio") REFERENCES "TipoAccesorio"(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index Accesorio_idProducto_fkey (OID = 16630) : 
--
ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index Muestrario_pkey (OID = 16641) : 
--
ALTER TABLE ONLY "Muestrario"
    ADD CONSTRAINT "Muestrario_pkey" PRIMARY KEY (id);
--
-- Definition for index ProductoTerminado_idMuestrario_fkey (OID = 16649) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMuestrario_fkey" FOREIGN KEY ("idMuestrario") REFERENCES "Muestrario"(id) ON DELETE SET NULL;
--
-- Definition for index EstadoDetalleVenta_pkey (OID = 16663) : 
--
ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleVenta_pkey (OID = 16678) : 
--
ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleVenta_idProducto_fkey (OID = 16680) : 
--
ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index DetalleVenta_idEstadoDetalleVenta_fkey (OID = 16685) : 
--
ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idEstadoDetalleVenta_fkey" FOREIGN KEY ("idEstadoDetalleVenta") REFERENCES "EstadoDetalleVenta"(id);
--
-- Definition for index DetalleDevolucionProductosTerminados_pkey (OID = 16701) : 
--
ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_pkey" PRIMARY KEY (id);
--
-- Definition for index Barrio_pkey (OID = 16745) : 
--
ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_pkey" PRIMARY KEY (id);
--
-- Definition for index Domicilio_pkey (OID = 16761) : 
--
ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_pkey" PRIMARY KEY (id);
--
-- Definition for index Domicilio_idBarrio_fkey (OID = 16763) : 
--
ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_idBarrio_fkey" FOREIGN KEY ("idBarrio") REFERENCES "Barrio"(id);
--
-- Definition for index Provincia_pkey (OID = 16778) : 
--
ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_pkey" PRIMARY KEY (id);
--
-- Definition for index Localidad_idProvincia_fkey (OID = 16780) : 
--
ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_idProvincia_fkey" FOREIGN KEY ("idProvincia") REFERENCES "Provincia"(id);
--
-- Definition for index Localidad_pkey (OID = 16795) : 
--
ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_pkey" PRIMARY KEY (id);
--
-- Definition for index Barrio_idLocalidad_fkey (OID = 16797) : 
--
ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idLocalidad_fkey" FOREIGN KEY ("idLocalidad") REFERENCES "Localidad"(id);
--
-- Definition for index DevolucionProductosTerminados_pkey (OID = 16808) : 
--
ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey (OID = 16810) : 
--
ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey" FOREIGN KEY ("idDevolucionProductosTerminados") REFERENCES "DevolucionProductosTerminados"(id);
--
-- Definition for index TipoDni_pkey (OID = 16824) : 
--
ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_pkey" PRIMARY KEY (id);
--
-- Definition for index Persona_pkey (OID = 16837) : 
--
ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY (id);
--
-- Definition for index Persona_idTipoDni_fkey (OID = 16839) : 
--
ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idTipoDni_fkey" FOREIGN KEY ("idTipoDni") REFERENCES "TipoDni"(id);
--
-- Definition for index Persona_idDomicilio_fkey (OID = 16844) : 
--
ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);
--
-- Definition for index Viajante_pkey (OID = 16853) : 
--
ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_pkey" PRIMARY KEY ("idPersona");
--
-- Definition for index Viajante_idPersona_fkey (OID = 16855) : 
--
ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);
--
-- Definition for index Barrio_idViajante_fkey (OID = 16860) : 
--
ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");
--
-- Definition for index CreditoCliente_pkey (OID = 16872) : 
--
ALTER TABLE ONLY "CreditoCliente"
    ADD CONSTRAINT "CreditoCliente_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaCliente_pkey (OID = 16880) : 
--
ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaCliente_idDomicilio_fkey (OID = 16882) : 
--
ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);
--
-- Definition for index EmpresaCliente_idCreditoCliente_fkey (OID = 16887) : 
--
ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCreditoCliente_fkey" FOREIGN KEY ("idCreditoCliente") REFERENCES "CreditoCliente"(id);
--
-- Definition for index EmpresaClienteXPersona_pkey (OID = 16898) : 
--
ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaClienteXPersona_idPersona_fkey (OID = 16900) : 
--
ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);
--
-- Definition for index EmpresaClienteXPersona_idEmpresaCliente_fkey (OID = 16905) : 
--
ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index CondicionIVA_pkey (OID = 16919) : 
--
ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaCliente_idCondicionIVA_fkey (OID = 16923) : 
--
ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCondicionIVA_fkey" FOREIGN KEY ("idCondicionIVA") REFERENCES "CondicionIVA"(id);
--
-- Definition for index EstadoCartera_pkey (OID = 16937) : 
--
ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleCartera_pkey (OID = 16947) : 
--
ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleCartera_idEmpresaCliente_fkey (OID = 16949) : 
--
ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index DetalleCartera_idEstadoCartera_fkey (OID = 16954) : 
--
ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEstadoCartera_fkey" FOREIGN KEY ("idEstadoCartera") REFERENCES "EstadoCartera"(id);
--
-- Definition for index Viajante_idDetalleCartera_fkey (OID = 16959) : 
--
ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idDetalleCartera_fkey" FOREIGN KEY ("idDetalleCartera") REFERENCES "DetalleCartera"(id);
--
-- Definition for index Cargo_pkey (OID = 16974) : 
--
ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY (id);
--
-- Definition for index Empleado_pkey (OID = 16985) : 
--
ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY ("idPersona");
--
-- Definition for index Empleado_idPersona_fkey (OID = 16987) : 
--
ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);
--
-- Definition for index Empleado_idCargo_fkey (OID = 16992) : 
--
ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idCargo_fkey" FOREIGN KEY ("idCargo") REFERENCES "Cargo"(id);
--
-- Definition for index DevolucionProductosTerminados_idCliente_fkey (OID = 16997) : 
--
ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index DevolucionProductosTerminados_idViajante_fkey (OID = 17002) : 
--
ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");
--
-- Definition for index Pago_pkey (OID = 17014) : 
--
ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_pkey" PRIMARY KEY (id);
--
-- Definition for index Pago_nroPago_key (OID = 17016) : 
--
ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_nroPago_key" UNIQUE ("nroPago");
--
-- Definition for index Divisa_pkey (OID = 17027) : 
--
ALTER TABLE ONLY "Divisa"
    ADD CONSTRAINT "Divisa_pkey" PRIMARY KEY (id);
--
-- Definition for index Pago_idDivisa_fkey (OID = 17031) : 
--
ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_idDivisa_fkey" FOREIGN KEY ("idDivisa") REFERENCES "Divisa"(id);
--
-- Definition for index Tamano_pkey (OID = 17108) : 
--
ALTER TABLE ONLY "Tamano"
    ADD CONSTRAINT "Tamano_pkey" PRIMARY KEY (id);
--
-- Definition for index Tamano_nombre_key (OID = 17110) : 
--
ALTER TABLE ONLY "Tamano"
    ADD CONSTRAINT "Tamano_nombre_key" UNIQUE (nombre);
--
-- Definition for index ProductoTerminado_fk (OID = 17112) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_fk" FOREIGN KEY ("idTamano") REFERENCES "Tamano"(id);
--
-- Definition for index PagoEmpleado_idEmpleado_key (OID = 17120) : 
--
ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_idEmpleado_key" UNIQUE ("idEmpleado");
--
-- Definition for index PagoEmpleado_pkey (OID = 17129) : 
--
ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_pkey" PRIMARY KEY ("idPago");
--
-- Definition for index PagoEmpleado_fk (OID = 17132) : 
--
ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);
--
-- Definition for index PagoEmpleado_fk1 (OID = 17137) : 
--
ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_fk1" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");
--
-- Definition for index OtrosGastos_pkey (OID = 17145) : 
--
ALTER TABLE ONLY "OtrosGastos"
    ADD CONSTRAINT "OtrosGastos_pkey" PRIMARY KEY ("idPago");
--
-- Definition for index OtrosGastos_fk (OID = 17147) : 
--
ALTER TABLE ONLY "OtrosGastos"
    ADD CONSTRAINT "OtrosGastos_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);
--
-- Definition for index Cheque_pkey (OID = 17158) : 
--
ALTER TABLE ONLY "Cheque"
    ADD CONSTRAINT "Cheque_pkey" PRIMARY KEY (id);
--
-- Definition for index Cheque_nro_key (OID = 17160) : 
--
ALTER TABLE ONLY "Cheque"
    ADD CONSTRAINT "Cheque_nro_key" UNIQUE (nro);
--
-- Definition for index EstadoCobroCheque_pkey (OID = 17168) : 
--
ALTER TABLE ONLY "EstadoCobroCheque"
    ADD CONSTRAINT "EstadoCobroCheque_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoCobroCheque_nombre_key (OID = 17170) : 
--
ALTER TABLE ONLY "EstadoCobroCheque"
    ADD CONSTRAINT "EstadoCobroCheque_nombre_key" UNIQUE (nombre);
--
-- Definition for index DetalleCobroPedido_pkey (OID = 17178) : 
--
ALTER TABLE ONLY "DetalleCobroPedido"
    ADD CONSTRAINT "DetalleCobroPedido_pkey" PRIMARY KEY (id);
--
-- Definition for index CobreCheque_pkey (OID = 17183) : 
--
ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_pkey" PRIMARY KEY ("idDetalleCobroPedido");
--
-- Definition for index CobreCheque_fk (OID = 17185) : 
--
ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);
--
-- Definition for index CobreCheque_fk1 (OID = 17190) : 
--
ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk1" FOREIGN KEY ("idCheque") REFERENCES "Cheque"(id);
--
-- Definition for index CobreCheque_fk2 (OID = 17195) : 
--
ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk2" FOREIGN KEY ("idEstadoDetalleCobroPedido") REFERENCES "EstadoCobroCheque"(id);
--
-- Definition for index CobroEfectivo_pkey (OID = 17203) : 
--
ALTER TABLE ONLY "CobroEfectivo"
    ADD CONSTRAINT "CobroEfectivo_pkey" PRIMARY KEY ("idDetalleCobroPedido");
--
-- Definition for index CobroEfectivo_fk (OID = 17205) : 
--
ALTER TABLE ONLY "CobroEfectivo"
    ADD CONSTRAINT "CobroEfectivo_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);
--
-- Definition for index CobroNotaCredito_pkey (OID = 17213) : 
--
ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_pkey" PRIMARY KEY ("idDetalleCobroPedido");
--
-- Definition for index CobroNotaCredito_fk (OID = 17215) : 
--
ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);
--
-- Definition for index CobroNotaCredito_fk1 (OID = 17220) : 
--
ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_fk1" FOREIGN KEY ("idCreditoCliente") REFERENCES "CreditoCliente"(id);
--
-- Definition for index EstadoCobroPedido_pkey (OID = 17231) : 
--
ALTER TABLE ONLY "EstadoCobroPedido"
    ADD CONSTRAINT "EstadoCobroPedido_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoCobroPedido_nombre_key (OID = 17233) : 
--
ALTER TABLE ONLY "EstadoCobroPedido"
    ADD CONSTRAINT "EstadoCobroPedido_nombre_key" UNIQUE (nombre);
--
-- Definition for index CobroPedido_pkey (OID = 17241) : 
--
ALTER TABLE ONLY "CobroPedido"
    ADD CONSTRAINT "CobroPedido_pkey" PRIMARY KEY (id);
--
-- Definition for index CobroPedido_fk (OID = 17243) : 
--
ALTER TABLE ONLY "CobroPedido"
    ADD CONSTRAINT "CobroPedido_fk" FOREIGN KEY ("idEstadoCobroPedido") REFERENCES "EstadoCobroPedido"(id);
--
-- Definition for index DetalleCobroPedido_fk (OID = 17248) : 
--
ALTER TABLE ONLY "DetalleCobroPedido"
    ADD CONSTRAINT "DetalleCobroPedido_fk" FOREIGN KEY ("idCobroPedido") REFERENCES "CobroPedido"(id);
--
-- Definition for index EstadoDetallePedidoCliente_pkey (OID = 17259) : 
--
ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado"
    ADD CONSTRAINT "EstadoDetallePedidoCliente_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoDetallePedidoCliente_nombre_key (OID = 17261) : 
--
ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado"
    ADD CONSTRAINT "EstadoDetallePedidoCliente_nombre_key" UNIQUE (nombre);
--
-- Definition for index DetallePedidoProductosTerminados_pkey (OID = 17270) : 
--
ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_pkey" PRIMARY KEY (id);
--
-- Definition for index DetallePedidoProductosTerminados_fk (OID = 17272) : 
--
ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index DetallePedidoProductosTerminados_fk1 (OID = 17277) : 
--
ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk1" FOREIGN KEY ("idEstadoDetallePedidoProductoTerminado") REFERENCES "EstadoDetallePedidoProductoTerminado"(id);
--
-- Definition for index EstadoPedidoProductosTerminados_pkey (OID = 17288) : 
--
ALTER TABLE ONLY "EstadoPedidoProductosTerminados"
    ADD CONSTRAINT "EstadoPedidoProductosTerminados_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoPedidoProductosTerminados_nombre_key (OID = 17290) : 
--
ALTER TABLE ONLY "EstadoPedidoProductosTerminados"
    ADD CONSTRAINT "EstadoPedidoProductosTerminados_nombre_key" UNIQUE (nombre);
--
-- Definition for index PedidoProductosTerminados_pkey (OID = 17298) : 
--
ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_pkey" PRIMARY KEY (id);
--
-- Definition for index PedidoProductosTerminados_fk (OID = 17300) : 
--
ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk" FOREIGN KEY ("idEstadoPedidoProductosTerminados") REFERENCES "EstadoPedidoProductosTerminados"(id);
--
-- Definition for index PedidoProductosTerminados_fk1 (OID = 17305) : 
--
ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk1" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");
--
-- Definition for index PedidoProductosTerminados_fk2 (OID = 17310) : 
--
ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk2" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");
--
-- Definition for index PedidoProductosTerminados_fk3 (OID = 17315) : 
--
ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk3" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index DetallePedidoProductosTerminados_fk2 (OID = 17320) : 
--
ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk2" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);
--
-- Definition for index DetalleFactura_fk (OID = 17330) : 
--
ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_fk" FOREIGN KEY ("idDetallePedidoProductosTerminados") REFERENCES "DetallePedidoProductosTerminados"(id);
--
-- Definition for index TipoFactura_pkey (OID = 17341) : 
--
ALTER TABLE ONLY "TipoFactura"
    ADD CONSTRAINT "TipoFactura_pkey" PRIMARY KEY (id);
--
-- Definition for index TipoFactura_nombre_key (OID = 17343) : 
--
ALTER TABLE ONLY "TipoFactura"
    ADD CONSTRAINT "TipoFactura_nombre_key" UNIQUE (nombre);
--
-- Definition for index Factura_pkey (OID = 17351) : 
--
ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_pkey" PRIMARY KEY (id);
--
-- Definition for index Factura_fk (OID = 17353) : 
--
ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_fk" FOREIGN KEY ("idTipoFactura") REFERENCES "TipoFactura"(id);
--
-- Definition for index Factura_fk1 (OID = 17358) : 
--
ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_fk1" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);
--
-- Definition for index DetalleFactura_fk1 (OID = 17364) : 
--
ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_fk1" FOREIGN KEY ("idFactura") REFERENCES "Factura"(id);
--
-- Definition for index EstadoVenta_pkey (OID = 17375) : 
--
ALTER TABLE ONLY "EstadoVenta"
    ADD CONSTRAINT "EstadoVenta_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoVenta_nombre_key (OID = 17377) : 
--
ALTER TABLE ONLY "EstadoVenta"
    ADD CONSTRAINT "EstadoVenta_nombre_key" UNIQUE (nombre);
--
-- Definition for index Venta_pkey (OID = 17385) : 
--
ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_pkey" PRIMARY KEY (id);
--
-- Definition for index Venta_nroFactura_key (OID = 17387) : 
--
ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_nroFactura_key" UNIQUE ("nroFactura");
--
-- Definition for index Venta_fk (OID = 17389) : 
--
ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk" FOREIGN KEY ("idCobroPedido") REFERENCES "CobroPedido"(id);
--
-- Definition for index Venta_fk1 (OID = 17394) : 
--
ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk1" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);
--
-- Definition for index Venta_fk2 (OID = 17399) : 
--
ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk2" FOREIGN KEY ("idEstadoVenta") REFERENCES "EstadoVenta"(id);
--
-- Definition for index DetalleVenta_fk (OID = 17404) : 
--
ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_fk" FOREIGN KEY ("idVenta") REFERENCES "Venta"(id);
--
-- Definition for index Proveedor_fk (OID = 17453) : 
--
ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT "Proveedor_fk" FOREIGN KEY ("idDomicilioa") REFERENCES "Domicilio"(id);
--
-- Definition for index Proveedor_pkey (OID = 17460) : 
--
ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT "Proveedor_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaTransporte_pkey (OID = 17473) : 
--
ALTER TABLE ONLY "EmpresaTransporte"
    ADD CONSTRAINT "EmpresaTransporte_pkey" PRIMARY KEY (id);
--
-- Definition for index EmpresaTransporte_fk (OID = 17475) : 
--
ALTER TABLE ONLY "EmpresaTransporte"
    ADD CONSTRAINT "EmpresaTransporte_fk" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);
--
-- Definition for index EstadoOrdenCompra_pkey (OID = 17486) : 
--
ALTER TABLE ONLY "EstadoOrdenCompra"
    ADD CONSTRAINT "EstadoOrdenCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoOrdenCompra_nombre_key (OID = 17488) : 
--
ALTER TABLE ONLY "EstadoOrdenCompra"
    ADD CONSTRAINT "EstadoOrdenCompra_nombre_key" UNIQUE (nombre);
--
-- Definition for index OrdenCompra_pkey (OID = 17496) : 
--
ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index OrdenCompra_fk (OID = 17498) : 
--
ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk" FOREIGN KEY ("idEmpresaTransporteInterior") REFERENCES "EmpresaTransporte"(id);
--
-- Definition for index OrdenCompra_fk1 (OID = 17503) : 
--
ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk1" FOREIGN KEY ("idEmpresaTransporteExterior") REFERENCES "EmpresaTransporte"(id);
--
-- Definition for index OrdenCompra_fk2 (OID = 17508) : 
--
ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk2" FOREIGN KEY ("idProveedor") REFERENCES "Proveedor"(id);
--
-- Definition for index OrdenCompra_fk3 (OID = 17513) : 
--
ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk3" FOREIGN KEY ("idEstadoOrdenCompra") REFERENCES "EstadoOrdenCompra"(id);
--
-- Definition for index PagoProveedor_pkey (OID = 17521) : 
--
ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_pkey" PRIMARY KEY ("idPago");
--
-- Definition for index PagoProveedor_fk (OID = 17523) : 
--
ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);
--
-- Definition for index PagoProveedor_fk1 (OID = 17528) : 
--
ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_fk1" FOREIGN KEY ("idOrdenCompra") REFERENCES "OrdenCompra"(id);
--
-- Definition for index RentabilidadCliente_pkey (OID = 17539) : 
--
ALTER TABLE ONLY "RentabilidadCliente"
    ADD CONSTRAINT "RentabilidadCliente_pkey" PRIMARY KEY (id);
--
-- Definition for index RentabilidadCliente_fk (OID = 17542) : 
--
ALTER TABLE ONLY "RentabilidadCliente"
    ADD CONSTRAINT "RentabilidadCliente_fk" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index HojaRuta_pkey (OID = 17553) : 
--
ALTER TABLE ONLY "HojaRuta"
    ADD CONSTRAINT "HojaRuta_pkey" PRIMARY KEY (id);
--
-- Definition for index HojaRuta_fk (OID = 17555) : 
--
ALTER TABLE ONLY "HojaRuta"
    ADD CONSTRAINT "HojaRuta_fk" FOREIGN KEY ("idPosicionViajante") REFERENCES "Domicilio"(id);
--
-- Definition for index DetalleHojaRuta_pkey (OID = 17566) : 
--
ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleHojaRuta_fk (OID = 17568) : 
--
ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk" FOREIGN KEY ("idHojaRuta") REFERENCES "HojaRuta"(id);
--
-- Definition for index DetalleHojaRuta_fk1 (OID = 17573) : 
--
ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk1" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);
--
-- Definition for index DetalleHojaRuta_fk2 (OID = 17578) : 
--
ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk2" FOREIGN KEY ("idDomicilioVisitar") REFERENCES "Domicilio"(id);
--
-- Definition for index TipoDefecto_pkey (OID = 17589) : 
--
ALTER TABLE ONLY "TipoDefecto"
    ADD CONSTRAINT "TipoDefecto_pkey" PRIMARY KEY (id);
--
-- Definition for index TipoDefecto_nombre_key (OID = 17591) : 
--
ALTER TABLE ONLY "TipoDefecto"
    ADD CONSTRAINT "TipoDefecto_nombre_key" UNIQUE (nombre);
--
-- Definition for index ProductosDefectuosos_pkey (OID = 17600) : 
--
ALTER TABLE ONLY "ProductosDefectuosos"
    ADD CONSTRAINT "ProductosDefectuosos_pkey" PRIMARY KEY (id);
--
-- Definition for index ProductosDefectuosos_fk (OID = 17602) : 
--
ALTER TABLE ONLY "ProductosDefectuosos"
    ADD CONSTRAINT "ProductosDefectuosos_fk" FOREIGN KEY ("idTipoDefecto") REFERENCES "TipoDefecto"(id);
--
-- Definition for index Compra_pkey (OID = 17613) : 
--
ALTER TABLE ONLY "Compra"
    ADD CONSTRAINT "Compra_pkey" PRIMARY KEY (id);
--
-- Definition for index ProductosDefectuososXCompra_pkey (OID = 17621) : 
--
ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index ProductosDefectuososXCompra_fk (OID = 17623) : 
--
ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);
--
-- Definition for index ProductosDefectuososXCompra_fk1 (OID = 17628) : 
--
ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_fk1" FOREIGN KEY ("idProductosDefectuosos") REFERENCES "ProductosDefectuosos"(id);
--
-- Definition for index Importacion_pkey (OID = 17639) : 
--
ALTER TABLE ONLY "Importacion"
    ADD CONSTRAINT "Importacion_pkey" PRIMARY KEY (id);
--
-- Definition for index Importacion_fk (OID = 17641) : 
--
ALTER TABLE ONLY "Importacion"
    ADD CONSTRAINT "Importacion_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);
--
-- Definition for index OrdenCompraXImportacion_pkey (OID = 17652) : 
--
ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_pkey" PRIMARY KEY (id);
--
-- Definition for index OrdenCompraXImportacion_fk (OID = 17654) : 
--
ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_fk" FOREIGN KEY ("idImportacion") REFERENCES "Importacion"(id);
--
-- Definition for index OrdenCompraXImportacion_fk1 (OID = 17659) : 
--
ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_fk1" FOREIGN KEY ("idOrdenCompra") REFERENCES "OrdenCompra"(id);
--
-- Definition for index Accesorio_nombre_key (OID = 17664) : 
--
ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_nombre_key" UNIQUE (nombre);
--
-- Definition for index Cargo_nombre_key (OID = 17680) : 
--
ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_nombre_key" UNIQUE (nombre);
--
-- Definition for index Color_nombre_key (OID = 17698) : 
--
ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_nombre_key" UNIQUE (nombre);
--
-- Definition for index CondicionIVA_nombre_key (OID = 17705) : 
--
ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_nombre_key" UNIQUE (nombre);
--
-- Definition for index DetalleFactura_pkey (OID = 17728) : 
--
ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleDevolucionProductosTerminados_idDetalleVenta_fkey (OID = 17735) : 
--
ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_idDetalleVenta_fkey" FOREIGN KEY ("idDetalleVenta") REFERENCES "DetalleVenta"(id);
--
-- Definition for index Divisa_nombre_key (OID = 17747) : 
--
ALTER TABLE ONLY "Divisa"
    ADD CONSTRAINT "Divisa_nombre_key" UNIQUE (nombre);
--
-- Definition for index EstadoCartera_nombre_key (OID = 17772) : 
--
ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_nombre_key" UNIQUE (nombre);
--
-- Definition for index EstadoDetalleVenta_nombre_key (OID = 17779) : 
--
ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_nombre_key" UNIQUE (nombre);
--
-- Definition for index Marca_nombre_key (OID = 17790) : 
--
ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_nombre_key" UNIQUE (nombre);
--
-- Definition for index MateriaPrima_nombre_key (OID = 17797) : 
--
ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_nombre_key" UNIQUE (nombre);
--
-- Definition for index Modelo_nombre_key (OID = 17814) : 
--
ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nombre_key" UNIQUE (nombre);
--
-- Definition for index ProductoTerminado_nombre_key (OID = 17861) : 
--
ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nombre_key" UNIQUE (nombre);
--
-- Definition for index Provincia_nombre_key (OID = 17872) : 
--
ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_nombre_key" UNIQUE (nombre);
--
-- Definition for index TipoAccesorio_nombre_key (OID = 17879) : 
--
ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_nombre_key" UNIQUE (nombre);
--
-- Definition for index TipoDni_nombre_key (OID = 17886) : 
--
ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_nombre_key" UNIQUE (nombre);
--
-- Definition for index Ubicacion_nombre_key (OID = 17893) : 
--
ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_nombre_key" UNIQUE (nombre);
--
-- Definition for index EstadoDetalleOrdenCompra_pkey (OID = 17906) : 
--
ALTER TABLE ONLY "EstadoDetalleOrdenCompra"
    ADD CONSTRAINT "EstadoDetalleOrdenCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoDetalleOrdenCompra_nombre_key (OID = 17908) : 
--
ALTER TABLE ONLY "EstadoDetalleOrdenCompra"
    ADD CONSTRAINT "EstadoDetalleOrdenCompra_nombre_key" UNIQUE (nombre);
--
-- Definition for index DetalleOrdenCompra_pkey (OID = 17917) : 
--
ALTER TABLE ONLY "DetalleOrdenCompra"
    ADD CONSTRAINT "DetalleOrdenCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleOrdenCompra_fk (OID = 17919) : 
--
ALTER TABLE ONLY "DetalleOrdenCompra"
    ADD CONSTRAINT "DetalleOrdenCompra_fk" FOREIGN KEY ("idEstadoDetalleOrdenCompra") REFERENCES "EstadoDetalleOrdenCompra"(id);
--
-- Definition for index ProductoImportado_pkey (OID = 17928) : 
--
ALTER TABLE ONLY "ProductoImportado"
    ADD CONSTRAINT "ProductoImportado_pkey" PRIMARY KEY ("idProductoTerminado");
--
-- Definition for index ProductoImportado_fk (OID = 17930) : 
--
ALTER TABLE ONLY "ProductoImportado"
    ADD CONSTRAINT "ProductoImportado_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index EstadoNotificacionReaprovisionamiento_pkey (OID = 17941) : 
--
ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento"
    ADD CONSTRAINT "EstadoNotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);
--
-- Definition for index EstadoNotificacionReaprovisionamiento_nombre_key (OID = 17943) : 
--
ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento"
    ADD CONSTRAINT "EstadoNotificacionReaprovisionamiento_nombre_key" UNIQUE (nombre);
--
-- Definition for index NotificacionReaprovisionamiento_pkey (OID = 17951) : 
--
ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);
--
-- Definition for index NotificacionReaprovisionamiento_fk (OID = 17953) : 
--
ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_fk" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");
--
-- Definition for index NotificacionReaprovisionamiento_fk1 (OID = 17958) : 
--
ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_fk1" FOREIGN KEY ("idEstadoNotificacionReaprovisionamiento") REFERENCES "EstadoNotificacionReaprovisionamiento"(id);
--
-- Definition for index DetalleNotificacionReaprovisionamiento_pkey (OID = 17970) : 
--
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleNotificacionReaprovisionamiento_fk (OID = 17972) : 
--
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_fk" FOREIGN KEY ("idNotificacionReaprovisionamiento") REFERENCES "NotificacionReaprovisionamiento"(id);
--
-- Definition for index DetalleNotificacionReaprovisionamiento_fk1 (OID = 17977) : 
--
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_fk1" FOREIGN KEY ("idProductoImportado") REFERENCES "ProductoImportado"("idProductoTerminado");
--
-- Definition for index DetalleOrdenCompraProductoImportado_pkey (OID = 17986) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_pkey" PRIMARY KEY ("idDetalleOrdenCompra");
--
-- Definition for index DetalleOrdenCompraProductoImportado_fk (OID = 17993) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_fk" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);
--
-- Definition for index DetalleOrdenCompraProductoImportado_fk1 (OID = 17998) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_fk1" FOREIGN KEY ("idProductoImportado") REFERENCES "ProductoImportado"("idProductoTerminado");
--
-- Definition for index DetalleOrdenCompraMateriaPrima_pkey (OID = 18007) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_pkey" PRIMARY KEY ("idDetalleOrdenCompra");
--
-- Definition for index DetalleOrdenCompraMateriaPrima_fk (OID = 18009) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_fk" FOREIGN KEY ("idMateriaPrima") REFERENCES "MateriaPrima"(id);
--
-- Definition for index DetalleOrdenCompraMateriaPrima_fk1 (OID = 18014) : 
--
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_fk1" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);
--
-- Definition for index ProductoFabricado_pkey (OID = 18022) : 
--
ALTER TABLE ONLY "ProductoFabricado"
    ADD CONSTRAINT "ProductoFabricado_pkey" PRIMARY KEY ("idProductoTerminado");
--
-- Definition for index ProductoFabricado_fk (OID = 18024) : 
--
ALTER TABLE ONLY "ProductoFabricado"
    ADD CONSTRAINT "ProductoFabricado_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);
--
-- Definition for index DetalleCompra_pkey (OID = 18035) : 
--
ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_pkey" PRIMARY KEY (id);
--
-- Definition for index DetalleCompra_fk (OID = 18037) : 
--
ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);
--
-- Definition for index DetalleCompra_fk1 (OID = 18042) : 
--
ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_fk1" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);
--
-- Definition for index DetalleCompraProductoImportado_pkey (OID = 18050) : 
--
ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_pkey" PRIMARY KEY ("idDetalleCompra");
--
-- Definition for index DetalleCompraProductoImportado_fk (OID = 18052) : 
--
ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_fk" FOREIGN KEY ("idDetalleCompra") REFERENCES "DetalleCompra"(id);
--
-- Definition for index DetalleCompraProductoImportado_fk1 (OID = 18057) : 
--
ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_fk1" FOREIGN KEY ("idDetalleOrdenCompraProductoImportado") REFERENCES "DetalleOrdenCompraProductoImportado"("idDetalleOrdenCompra");
--
-- Definition for index DetalleCompraMateriaPrima_pkey (OID = 18065) : 
--
ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_pkey" PRIMARY KEY ("idDetalleCompra");
--
-- Definition for index DetalleCompraMateriaPrima_fk (OID = 18067) : 
--
ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_fk" FOREIGN KEY ("idDetalleCompra") REFERENCES "DetalleCompra"(id);
--
-- Definition for index DetalleCompraMateriaPrima_fk1 (OID = 18072) : 
--
ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_fk1" FOREIGN KEY ("idDetalleOrdenCompraMateriaPrima") REFERENCES "DetalleOrdenCompraMateriaPrima"("idDetalleOrdenCompra");
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';

--
-- PostgreSQL database dump
--

-- Started on 2010-06-04 21:39:10

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 414 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1622 (class 1259 OID 16614)
-- Dependencies: 3
-- Name: Accesorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Accesorio" (
    id integer NOT NULL,
    nombre text NOT NULL,
    "idTipoaccesorio" integer NOT NULL,
    "idProducto" integer NOT NULL
);


ALTER TABLE public."Accesorio" OWNER TO postgres;

--
-- TOC entry 1621 (class 1259 OID 16612)
-- Dependencies: 3 1622
-- Name: Accesorio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Accesorio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Accesorio_id_seq" OWNER TO postgres;

--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 1621
-- Name: Accesorio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Accesorio_id_seq" OWNED BY "Accesorio".id;


--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 1621
-- Name: Accesorio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Accesorio_id_seq"', 1, false);


--
-- TOC entry 1635 (class 1259 OID 16738)
-- Dependencies: 3
-- Name: Barrio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Barrio" (
    id integer NOT NULL,
    nombre text,
    "idLocalidad" integer NOT NULL,
    "idViajante" integer
);


ALTER TABLE public."Barrio" OWNER TO postgres;

--
-- TOC entry 1634 (class 1259 OID 16736)
-- Dependencies: 3 1635
-- Name: Barrio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Barrio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Barrio_id_seq" OWNER TO postgres;

--
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 1634
-- Name: Barrio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Barrio_id_seq" OWNED BY "Barrio".id;


--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 1634
-- Name: Barrio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Barrio_id_seq"', 1, false);


--
-- TOC entry 1658 (class 1259 OID 16966)
-- Dependencies: 1976 3
-- Name: Cargo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cargo" (
    id integer NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    "precioPorHora" double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public."Cargo" OWNER TO postgres;

--
-- TOC entry 1657 (class 1259 OID 16964)
-- Dependencies: 3 1658
-- Name: Cargo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cargo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Cargo_id_seq" OWNER TO postgres;

--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 1657
-- Name: Cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cargo_id_seq" OWNED BY "Cargo".id;


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 1657
-- Name: Cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Cargo_id_seq"', 1, false);


--
-- TOC entry 1608 (class 1259 OID 16452)
-- Dependencies: 3
-- Name: Color; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Color" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."Color" OWNER TO postgres;

--
-- TOC entry 1607 (class 1259 OID 16450)
-- Dependencies: 3 1608
-- Name: Color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Color_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Color_id_seq" OWNER TO postgres;

--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 1607
-- Name: Color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Color_id_seq" OWNED BY "Color".id;


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 1607
-- Name: Color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Color_id_seq"', 1, false);


--
-- TOC entry 1652 (class 1259 OID 16912)
-- Dependencies: 3
-- Name: CondicionIVA; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CondicionIVA" (
    id integer NOT NULL,
    nombre text NOT NULL,
    descripcion text
);


ALTER TABLE public."CondicionIVA" OWNER TO postgres;

--
-- TOC entry 1651 (class 1259 OID 16910)
-- Dependencies: 1652 3
-- Name: CondicionIVA_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CondicionIVA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."CondicionIVA_id_seq" OWNER TO postgres;

--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 1651
-- Name: CondicionIVA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CondicionIVA_id_seq" OWNED BY "CondicionIVA".id;


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 1651
-- Name: CondicionIVA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CondicionIVA_id_seq"', 1, false);


--
-- TOC entry 1647 (class 1259 OID 16867)
-- Dependencies: 1970 3
-- Name: CreditoCliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CreditoCliente" (
    id integer NOT NULL,
    monto double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public."CreditoCliente" OWNER TO postgres;

--
-- TOC entry 1646 (class 1259 OID 16865)
-- Dependencies: 3 1647
-- Name: CreditoCliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CreditoCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."CreditoCliente_id_seq" OWNER TO postgres;

--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 1646
-- Name: CreditoCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CreditoCliente_id_seq" OWNED BY "CreditoCliente".id;


--
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 1646
-- Name: CreditoCliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CreditoCliente_id_seq"', 1, false);


--
-- TOC entry 1656 (class 1259 OID 16943)
-- Dependencies: 3
-- Name: DetalleCartera; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleCartera" (
    id integer NOT NULL,
    "fechaDesde" date NOT NULL,
    "fechaHasta" date,
    "idEstadoCartera" integer NOT NULL,
    "idEmpresaCliente" integer NOT NULL
);


ALTER TABLE public."DetalleCartera" OWNER TO postgres;

--
-- TOC entry 1655 (class 1259 OID 16941)
-- Dependencies: 1656 3
-- Name: DetalleCartera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleCartera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleCartera_id_seq" OWNER TO postgres;

--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 1655
-- Name: DetalleCartera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleCartera_id_seq" OWNED BY "DetalleCartera".id;


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 1655
-- Name: DetalleCartera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleCartera_id_seq"', 1, false);


--
-- TOC entry 1631 (class 1259 OID 16697)
-- Dependencies: 3
-- Name: DetalleDevolucionProductosTerminados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleDevolucionProductosTerminados" (
    id integer NOT NULL,
    "idDevolucionProductosTerminados" integer NOT NULL,
    "idDetalleVenta" integer NOT NULL
);


ALTER TABLE public."DetalleDevolucionProductosTerminados" OWNER TO postgres;

--
-- TOC entry 1630 (class 1259 OID 16695)
-- Dependencies: 3 1631
-- Name: DetalleDevolucionProductosTerminados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleDevolucionProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleDevolucionProductosTerminados_id_seq" OWNER TO postgres;

--
-- TOC entry 2161 (class 0 OID 0)
-- Dependencies: 1630
-- Name: DetalleDevolucionProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleDevolucionProductosTerminados_id_seq" OWNED BY "DetalleDevolucionProductosTerminados".id;


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 1630
-- Name: DetalleDevolucionProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleDevolucionProductosTerminados_id_seq"', 1, false);


--
-- TOC entry 1618 (class 1259 OID 16582)
-- Dependencies: 1952 3
-- Name: DetalleMateriaPrima; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleMateriaPrima" (
    id integer NOT NULL,
    "cantidadMateriaPrima" integer DEFAULT 1 NOT NULL,
    "idMateriaPrima" integer NOT NULL,
    "idLote" integer NOT NULL
);


ALTER TABLE public."DetalleMateriaPrima" OWNER TO postgres;

--
-- TOC entry 1617 (class 1259 OID 16580)
-- Dependencies: 3 1618
-- Name: DetalleMateriaPrima_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleMateriaPrima_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleMateriaPrima_id_seq" OWNER TO postgres;

--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 1617
-- Name: DetalleMateriaPrima_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleMateriaPrima_id_seq" OWNED BY "DetalleMateriaPrima".id;


--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 1617
-- Name: DetalleMateriaPrima_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleMateriaPrima_id_seq"', 1, false);


--
-- TOC entry 1628 (class 1259 OID 16669)
-- Dependencies: 1958 1959 3
-- Name: DetalleVenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleVenta" (
    id integer NOT NULL,
    "idProducto" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 1 NOT NULL,
    "precioUnidad" integer DEFAULT 0 NOT NULL,
    "idEstadoDetalleVenta" integer NOT NULL,
    "motivoDevolucion" text,
    "fechaDevolucion" date
);


ALTER TABLE public."DetalleVenta" OWNER TO postgres;

--
-- TOC entry 1627 (class 1259 OID 16667)
-- Dependencies: 1628 3
-- Name: DetalleVenta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleVenta_id_seq" OWNER TO postgres;

--
-- TOC entry 2165 (class 0 OID 0)
-- Dependencies: 1627
-- Name: DetalleVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleVenta_id_seq" OWNED BY "DetalleVenta".id;


--
-- TOC entry 2166 (class 0 OID 0)
-- Dependencies: 1627
-- Name: DetalleVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleVenta_id_seq"', 1, false);


--
-- TOC entry 1629 (class 1259 OID 16690)
-- Dependencies: 3
-- Name: DevolucionProductosTerminados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DevolucionProductosTerminados" (
    fecha date NOT NULL,
    "idViajante" integer NOT NULL,
    "idCliente" integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."DevolucionProductosTerminados" OWNER TO postgres;

--
-- TOC entry 1640 (class 1259 OID 16802)
-- Dependencies: 1629 3
-- Name: DevolucionProductosTerminados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DevolucionProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DevolucionProductosTerminados_id_seq" OWNER TO postgres;

--
-- TOC entry 2167 (class 0 OID 0)
-- Dependencies: 1640
-- Name: DevolucionProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DevolucionProductosTerminados_id_seq" OWNED BY "DevolucionProductosTerminados".id;


--
-- TOC entry 2168 (class 0 OID 0)
-- Dependencies: 1640
-- Name: DevolucionProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DevolucionProductosTerminados_id_seq"', 1, false);


--
-- TOC entry 1637 (class 1259 OID 16754)
-- Dependencies: 3
-- Name: Domicilio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Domicilio" (
    id integer NOT NULL,
    altura integer,
    "nombreCalle" text,
    "nroDpto" integer,
    "codPostal" integer,
    "idBarrio" integer NOT NULL
);


ALTER TABLE public."Domicilio" OWNER TO postgres;

--
-- TOC entry 1636 (class 1259 OID 16752)
-- Dependencies: 1637 3
-- Name: Domicilio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Domicilio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Domicilio_id_seq" OWNER TO postgres;

--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 1636
-- Name: Domicilio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Domicilio_id_seq" OWNED BY "Domicilio".id;


--
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 1636
-- Name: Domicilio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Domicilio_id_seq"', 1, false);


--
-- TOC entry 1659 (class 1259 OID 16979)
-- Dependencies: 3
-- Name: Empleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Empleado" (
    cuil text NOT NULL,
    "fechaIngreso" date NOT NULL,
    "fechaBaja" date,
    "motivoBaja" text,
    "idPersona" integer NOT NULL,
    "idCargo" integer NOT NULL
);


ALTER TABLE public."Empleado" OWNER TO postgres;

--
-- TOC entry 1648 (class 1259 OID 16874)
-- Dependencies: 3
-- Name: EmpresaCliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EmpresaCliente" (
    id integer NOT NULL,
    "razonSocial" text NOT NULL,
    cuit text NOT NULL,
    "idCondicionIVA" integer NOT NULL,
    telefono text,
    fax text,
    mail text,
    celular text,
    "idCreditoCliente" integer NOT NULL,
    "idDomicilio" integer NOT NULL
);


ALTER TABLE public."EmpresaCliente" OWNER TO postgres;

--
-- TOC entry 1650 (class 1259 OID 16894)
-- Dependencies: 3
-- Name: EmpresaClienteXPersona; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EmpresaClienteXPersona" (
    id integer NOT NULL,
    "idEmpresaCliente" integer NOT NULL,
    "idPersona" integer NOT NULL
);


ALTER TABLE public."EmpresaClienteXPersona" OWNER TO postgres;

--
-- TOC entry 1649 (class 1259 OID 16892)
-- Dependencies: 3 1650
-- Name: EmpresaClienteXPersona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EmpresaClienteXPersona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EmpresaClienteXPersona_id_seq" OWNER TO postgres;

--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 1649
-- Name: EmpresaClienteXPersona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EmpresaClienteXPersona_id_seq" OWNED BY "EmpresaClienteXPersona".id;


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 1649
-- Name: EmpresaClienteXPersona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EmpresaClienteXPersona_id_seq"', 1, false);


--
-- TOC entry 1654 (class 1259 OID 16930)
-- Dependencies: 3
-- Name: EstadoCartera; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoCartera" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."EstadoCartera" OWNER TO postgres;

--
-- TOC entry 1653 (class 1259 OID 16928)
-- Dependencies: 1654 3
-- Name: EstadoCartera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoCartera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoCartera_id_seq" OWNER TO postgres;

--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 1653
-- Name: EstadoCartera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoCartera_id_seq" OWNED BY "EstadoCartera".id;


--
-- TOC entry 2174 (class 0 OID 0)
-- Dependencies: 1653
-- Name: EstadoCartera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoCartera_id_seq"', 1, false);


--
-- TOC entry 1626 (class 1259 OID 16656)
-- Dependencies: 3
-- Name: EstadoDetalleVenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoDetalleVenta" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."EstadoDetalleVenta" OWNER TO postgres;

--
-- TOC entry 1625 (class 1259 OID 16654)
-- Dependencies: 1626 3
-- Name: EstadoDetalleVenta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoDetalleVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoDetalleVenta_id_seq" OWNER TO postgres;

--
-- TOC entry 2175 (class 0 OID 0)
-- Dependencies: 1625
-- Name: EstadoDetalleVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoDetalleVenta_id_seq" OWNED BY "EstadoDetalleVenta".id;


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 1625
-- Name: EstadoDetalleVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoDetalleVenta_id_seq"', 1, false);


--
-- TOC entry 1633 (class 1259 OID 16723)
-- Dependencies: 3
-- Name: Localidad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Localidad" (
    nombre text,
    "idProvincia" integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Localidad" OWNER TO postgres;

--
-- TOC entry 1639 (class 1259 OID 16785)
-- Dependencies: 1633 3
-- Name: Localidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Localidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Localidad_id_seq" OWNER TO postgres;

--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 1639
-- Name: Localidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Localidad_id_seq" OWNED BY "Localidad".id;


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 1639
-- Name: Localidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Localidad_id_seq"', 1, false);


--
-- TOC entry 1616 (class 1259 OID 16565)
-- Dependencies: 1949 1950 3
-- Name: Lote; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Lote" (
    id integer NOT NULL,
    "nroLote" integer DEFAULT 0 NOT NULL,
    "cantidadProducida" integer DEFAULT 0 NOT NULL,
    "idProducto" integer NOT NULL
);


ALTER TABLE public."Lote" OWNER TO postgres;

--
-- TOC entry 1615 (class 1259 OID 16563)
-- Dependencies: 1616 3
-- Name: Lote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Lote_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Lote_id_seq" OWNER TO postgres;

--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 1615
-- Name: Lote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Lote_id_seq" OWNED BY "Lote".id;


--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 1615
-- Name: Lote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Lote_id_seq"', 1, false);


--
-- TOC entry 1601 (class 1259 OID 16398)
-- Dependencies: 3
-- Name: Marca; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Marca" (
    nombre text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Marca" OWNER TO postgres;

--
-- TOC entry 1602 (class 1259 OID 16410)
-- Dependencies: 1601 3
-- Name: Marca_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Marca_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Marca_id_seq" OWNER TO postgres;

--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 1602
-- Name: Marca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Marca_id_seq" OWNED BY "Marca".id;


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 1602
-- Name: Marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Marca_id_seq"', 1, false);


--
-- TOC entry 1612 (class 1259 OID 16478)
-- Dependencies: 1943 3
-- Name: MateriaPrima; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "MateriaPrima" (
    id integer NOT NULL,
    codigo integer NOT NULL,
    nombre text NOT NULL,
    descripcion text,
    "stockActual" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."MateriaPrima" OWNER TO postgres;

--
-- TOC entry 1611 (class 1259 OID 16476)
-- Dependencies: 3 1612
-- Name: MateriaPrima_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "MateriaPrima_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."MateriaPrima_id_seq" OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 1611
-- Name: MateriaPrima_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "MateriaPrima_id_seq" OWNED BY "MateriaPrima".id;


--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 1611
-- Name: MateriaPrima_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"MateriaPrima_id_seq"', 1, false);


--
-- TOC entry 1606 (class 1259 OID 16437)
-- Dependencies: 3
-- Name: Modelo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Modelo" (
    id integer NOT NULL,
    nombre text NOT NULL,
    "nroSerie" integer
);


ALTER TABLE public."Modelo" OWNER TO postgres;

--
-- TOC entry 1605 (class 1259 OID 16435)
-- Dependencies: 1606 3
-- Name: Modelo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Modelo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Modelo_id_seq" OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 1605
-- Name: Modelo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Modelo_id_seq" OWNED BY "Modelo".id;


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 1605
-- Name: Modelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Modelo_id_seq"', 1, false);


--
-- TOC entry 1624 (class 1259 OID 16637)
-- Dependencies: 3
-- Name: Muestrario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Muestrario" (
    id integer NOT NULL,
    "fechaDesde" date NOT NULL,
    "fechaHasta" date NOT NULL
);


ALTER TABLE public."Muestrario" OWNER TO postgres;

--
-- TOC entry 1623 (class 1259 OID 16635)
-- Dependencies: 1624 3
-- Name: Muestrario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Muestrario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Muestrario_id_seq" OWNER TO postgres;

--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 1623
-- Name: Muestrario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Muestrario_id_seq" OWNED BY "Muestrario".id;


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 1623
-- Name: Muestrario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Muestrario_id_seq"', 1, false);


--
-- TOC entry 1644 (class 1259 OID 16830)
-- Dependencies: 3
-- Name: Persona; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Persona" (
    id integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    "idDomicilio" integer,
    telefono text,
    celular text,
    dni text,
    "idTipoDni" integer,
    mail text
);


ALTER TABLE public."Persona" OWNER TO postgres;

--
-- TOC entry 1643 (class 1259 OID 16828)
-- Dependencies: 1644 3
-- Name: Persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Persona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Persona_id_seq" OWNER TO postgres;

--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 1643
-- Name: Persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Persona_id_seq" OWNED BY "Persona".id;


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 1643
-- Name: Persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Persona_id_seq"', 1, false);


--
-- TOC entry 1614 (class 1259 OID 16495)
-- Dependencies: 1945 1946 1947 3
-- Name: ProductoTerminado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductoTerminado" (
    id integer NOT NULL,
    "nroProducto" integer NOT NULL,
    "precioEstimado" double precision,
    nombre text NOT NULL,
    "nivelReaprovisionamiento" integer DEFAULT 0 NOT NULL,
    "stockMaximo" integer DEFAULT 0 NOT NULL,
    "fechaIngreso" date NOT NULL,
    "idModelo" integer NOT NULL,
    "idColor" integer NOT NULL,
    "stockActual" integer DEFAULT 0 NOT NULL,
    "idTamaño" integer NOT NULL,
    "precioVenta" double precision,
    "idMarca" integer NOT NULL,
    "idUbicacion" integer NOT NULL,
    "idMuestrario" integer
);


ALTER TABLE public."ProductoTerminado" OWNER TO postgres;

--
-- TOC entry 1613 (class 1259 OID 16493)
-- Dependencies: 1614 3
-- Name: ProductoTerminado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "ProductoTerminado_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."ProductoTerminado_id_seq" OWNER TO postgres;

--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 1613
-- Name: ProductoTerminado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ProductoTerminado_id_seq" OWNED BY "ProductoTerminado".id;


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 1613
-- Name: ProductoTerminado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"ProductoTerminado_id_seq"', 1, false);


--
-- TOC entry 1632 (class 1259 OID 16713)
-- Dependencies: 3
-- Name: Provincia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Provincia" (
    nombre text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Provincia" OWNER TO postgres;

--
-- TOC entry 1638 (class 1259 OID 16768)
-- Dependencies: 1632 3
-- Name: Provincia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Provincia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Provincia_id_seq" OWNER TO postgres;

--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 1638
-- Name: Provincia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Provincia_id_seq" OWNED BY "Provincia".id;


--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 1638
-- Name: Provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Provincia_id_seq"', 1, false);


--
-- TOC entry 1604 (class 1259 OID 16424)
-- Dependencies: 3
-- Name: Tamaño; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tamaño" (
    id integer NOT NULL,
    nombre text
);


ALTER TABLE public."Tamaño" OWNER TO postgres;

--
-- TOC entry 1603 (class 1259 OID 16422)
-- Dependencies: 1604 3
-- Name: Tamaño_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tamaño_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Tamaño_id_seq" OWNER TO postgres;

--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 1603
-- Name: Tamaño_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tamaño_id_seq" OWNED BY "Tamaño".id;


--
-- TOC entry 2196 (class 0 OID 0)
-- Dependencies: 1603
-- Name: Tamaño_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tamaño_id_seq"', 1, false);


--
-- TOC entry 1620 (class 1259 OID 16601)
-- Dependencies: 3
-- Name: TipoAccesorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoAccesorio" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."TipoAccesorio" OWNER TO postgres;

--
-- TOC entry 1619 (class 1259 OID 16599)
-- Dependencies: 1620 3
-- Name: TipoAccesorio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "TipoAccesorio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."TipoAccesorio_id_seq" OWNER TO postgres;

--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 1619
-- Name: TipoAccesorio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoAccesorio_id_seq" OWNED BY "TipoAccesorio".id;


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 1619
-- Name: TipoAccesorio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoAccesorio_id_seq"', 1, false);


--
-- TOC entry 1642 (class 1259 OID 16817)
-- Dependencies: 3
-- Name: TipoDni; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoDni" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."TipoDni" OWNER TO postgres;

--
-- TOC entry 1641 (class 1259 OID 16815)
-- Dependencies: 1642 3
-- Name: TipoDni_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "TipoDni_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."TipoDni_id_seq" OWNER TO postgres;

--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 1641
-- Name: TipoDni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoDni_id_seq" OWNED BY "TipoDni".id;


--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 1641
-- Name: TipoDni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoDni_id_seq"', 1, false);


--
-- TOC entry 1610 (class 1259 OID 16465)
-- Dependencies: 3
-- Name: Ubicacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Ubicacion" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."Ubicacion" OWNER TO postgres;

--
-- TOC entry 1609 (class 1259 OID 16463)
-- Dependencies: 3 1610
-- Name: Ubicacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Ubicacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Ubicacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 1609
-- Name: Ubicacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ubicacion_id_seq" OWNED BY "Ubicacion".id;


--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 1609
-- Name: Ubicacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ubicacion_id_seq"', 1, false);


--
-- TOC entry 1645 (class 1259 OID 16849)
-- Dependencies: 1968 3
-- Name: Viajante; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Viajante" (
    "idPersona" integer NOT NULL,
    "comisionPorVenta" integer DEFAULT 0 NOT NULL,
    "idDetalleCartera" integer NOT NULL
);


ALTER TABLE public."Viajante" OWNER TO postgres;

--
-- TOC entry 1954 (class 2604 OID 16617)
-- Dependencies: 1622 1621 1622
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Accesorio" ALTER COLUMN id SET DEFAULT nextval('"Accesorio_id_seq"'::regclass);


--
-- TOC entry 1964 (class 2604 OID 16741)
-- Dependencies: 1634 1635 1635
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Barrio" ALTER COLUMN id SET DEFAULT nextval('"Barrio_id_seq"'::regclass);


--
-- TOC entry 1975 (class 2604 OID 16969)
-- Dependencies: 1658 1657 1658
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Cargo" ALTER COLUMN id SET DEFAULT nextval('"Cargo_id_seq"'::regclass);


--
-- TOC entry 1940 (class 2604 OID 16455)
-- Dependencies: 1608 1607 1608
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Color" ALTER COLUMN id SET DEFAULT nextval('"Color_id_seq"'::regclass);


--
-- TOC entry 1972 (class 2604 OID 16915)
-- Dependencies: 1651 1652 1652
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "CondicionIVA" ALTER COLUMN id SET DEFAULT nextval('"CondicionIVA_id_seq"'::regclass);


--
-- TOC entry 1969 (class 2604 OID 16870)
-- Dependencies: 1646 1647 1647
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "CreditoCliente" ALTER COLUMN id SET DEFAULT nextval('"CreditoCliente_id_seq"'::regclass);


--
-- TOC entry 1974 (class 2604 OID 16946)
-- Dependencies: 1655 1656 1656
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleCartera" ALTER COLUMN id SET DEFAULT nextval('"DetalleCartera_id_seq"'::regclass);


--
-- TOC entry 1961 (class 2604 OID 16700)
-- Dependencies: 1630 1631 1631
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleDevolucionProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"DetalleDevolucionProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 1951 (class 2604 OID 16585)
-- Dependencies: 1617 1618 1618
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleMateriaPrima" ALTER COLUMN id SET DEFAULT nextval('"DetalleMateriaPrima_id_seq"'::regclass);


--
-- TOC entry 1957 (class 2604 OID 16672)
-- Dependencies: 1627 1628 1628
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleVenta" ALTER COLUMN id SET DEFAULT nextval('"DetalleVenta_id_seq"'::regclass);


--
-- TOC entry 1960 (class 2604 OID 16804)
-- Dependencies: 1640 1629
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DevolucionProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"DevolucionProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 1965 (class 2604 OID 16757)
-- Dependencies: 1637 1636 1637
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Domicilio" ALTER COLUMN id SET DEFAULT nextval('"Domicilio_id_seq"'::regclass);


--
-- TOC entry 1971 (class 2604 OID 16897)
-- Dependencies: 1649 1650 1650
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EmpresaClienteXPersona" ALTER COLUMN id SET DEFAULT nextval('"EmpresaClienteXPersona_id_seq"'::regclass);


--
-- TOC entry 1973 (class 2604 OID 16933)
-- Dependencies: 1654 1653 1654
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoCartera" ALTER COLUMN id SET DEFAULT nextval('"EstadoCartera_id_seq"'::regclass);


--
-- TOC entry 1956 (class 2604 OID 16659)
-- Dependencies: 1625 1626 1626
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoDetalleVenta" ALTER COLUMN id SET DEFAULT nextval('"EstadoDetalleVenta_id_seq"'::regclass);


--
-- TOC entry 1963 (class 2604 OID 16787)
-- Dependencies: 1639 1633
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Localidad" ALTER COLUMN id SET DEFAULT nextval('"Localidad_id_seq"'::regclass);


--
-- TOC entry 1948 (class 2604 OID 16568)
-- Dependencies: 1615 1616 1616
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Lote" ALTER COLUMN id SET DEFAULT nextval('"Lote_id_seq"'::regclass);


--
-- TOC entry 1937 (class 2604 OID 16412)
-- Dependencies: 1602 1601
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Marca" ALTER COLUMN id SET DEFAULT nextval('"Marca_id_seq"'::regclass);


--
-- TOC entry 1942 (class 2604 OID 16481)
-- Dependencies: 1612 1611 1612
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "MateriaPrima" ALTER COLUMN id SET DEFAULT nextval('"MateriaPrima_id_seq"'::regclass);


--
-- TOC entry 1939 (class 2604 OID 16440)
-- Dependencies: 1605 1606 1606
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Modelo" ALTER COLUMN id SET DEFAULT nextval('"Modelo_id_seq"'::regclass);


--
-- TOC entry 1955 (class 2604 OID 16640)
-- Dependencies: 1624 1623 1624
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Muestrario" ALTER COLUMN id SET DEFAULT nextval('"Muestrario_id_seq"'::regclass);


--
-- TOC entry 1967 (class 2604 OID 16833)
-- Dependencies: 1643 1644 1644
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Persona" ALTER COLUMN id SET DEFAULT nextval('"Persona_id_seq"'::regclass);


--
-- TOC entry 1944 (class 2604 OID 16498)
-- Dependencies: 1613 1614 1614
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "ProductoTerminado" ALTER COLUMN id SET DEFAULT nextval('"ProductoTerminado_id_seq"'::regclass);


--
-- TOC entry 1962 (class 2604 OID 16770)
-- Dependencies: 1638 1632
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Provincia" ALTER COLUMN id SET DEFAULT nextval('"Provincia_id_seq"'::regclass);


--
-- TOC entry 1938 (class 2604 OID 16427)
-- Dependencies: 1603 1604 1604
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Tamaño" ALTER COLUMN id SET DEFAULT nextval('"Tamaño_id_seq"'::regclass);


--
-- TOC entry 1953 (class 2604 OID 16604)
-- Dependencies: 1619 1620 1620
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoAccesorio" ALTER COLUMN id SET DEFAULT nextval('"TipoAccesorio_id_seq"'::regclass);


--
-- TOC entry 1966 (class 2604 OID 16820)
-- Dependencies: 1641 1642 1642
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoDni" ALTER COLUMN id SET DEFAULT nextval('"TipoDni_id_seq"'::regclass);


--
-- TOC entry 1941 (class 2604 OID 16468)
-- Dependencies: 1609 1610 1610
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Ubicacion" ALTER COLUMN id SET DEFAULT nextval('"Ubicacion_id_seq"'::regclass);


--
-- TOC entry 2121 (class 0 OID 16614)
-- Dependencies: 1622
-- Data for Name: Accesorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Accesorio" (id, nombre, "idTipoaccesorio", "idProducto") FROM stdin;
\.


--
-- TOC entry 2129 (class 0 OID 16738)
-- Dependencies: 1635
-- Data for Name: Barrio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Barrio" (id, nombre, "idLocalidad", "idViajante") FROM stdin;
\.


--
-- TOC entry 2140 (class 0 OID 16966)
-- Dependencies: 1658
-- Data for Name: Cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cargo" (id, nombre, descripcion, "precioPorHora") FROM stdin;
\.


--
-- TOC entry 2114 (class 0 OID 16452)
-- Dependencies: 1608
-- Data for Name: Color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Color" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2137 (class 0 OID 16912)
-- Dependencies: 1652
-- Data for Name: CondicionIVA; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CondicionIVA" (id, nombre, descripcion) FROM stdin;
\.


--
-- TOC entry 2134 (class 0 OID 16867)
-- Dependencies: 1647
-- Data for Name: CreditoCliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CreditoCliente" (id, monto) FROM stdin;
\.


--
-- TOC entry 2139 (class 0 OID 16943)
-- Dependencies: 1656
-- Data for Name: DetalleCartera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCartera" (id, "fechaDesde", "fechaHasta", "idEstadoCartera", "idEmpresaCliente") FROM stdin;
\.


--
-- TOC entry 2126 (class 0 OID 16697)
-- Dependencies: 1631
-- Data for Name: DetalleDevolucionProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleDevolucionProductosTerminados" (id, "idDevolucionProductosTerminados", "idDetalleVenta") FROM stdin;
\.


--
-- TOC entry 2119 (class 0 OID 16582)
-- Dependencies: 1618
-- Data for Name: DetalleMateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleMateriaPrima" (id, "cantidadMateriaPrima", "idMateriaPrima", "idLote") FROM stdin;
\.


--
-- TOC entry 2124 (class 0 OID 16669)
-- Dependencies: 1628
-- Data for Name: DetalleVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleVenta" (id, "idProducto", "cantidadProducto", "precioUnidad", "idEstadoDetalleVenta", "motivoDevolucion", "fechaDevolucion") FROM stdin;
\.


--
-- TOC entry 2125 (class 0 OID 16690)
-- Dependencies: 1629
-- Data for Name: DevolucionProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DevolucionProductosTerminados" (fecha, "idViajante", "idCliente", id) FROM stdin;
\.


--
-- TOC entry 2130 (class 0 OID 16754)
-- Dependencies: 1637
-- Data for Name: Domicilio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Domicilio" (id, altura, "nombreCalle", "nroDpto", "codPostal", "idBarrio") FROM stdin;
\.


--
-- TOC entry 2141 (class 0 OID 16979)
-- Dependencies: 1659
-- Data for Name: Empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Empleado" (cuil, "fechaIngreso", "fechaBaja", "motivoBaja", "idPersona", "idCargo") FROM stdin;
\.


--
-- TOC entry 2135 (class 0 OID 16874)
-- Dependencies: 1648
-- Data for Name: EmpresaCliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EmpresaCliente" (id, "razonSocial", cuit, "idCondicionIVA", telefono, fax, mail, celular, "idCreditoCliente", "idDomicilio") FROM stdin;
\.


--
-- TOC entry 2136 (class 0 OID 16894)
-- Dependencies: 1650
-- Data for Name: EmpresaClienteXPersona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EmpresaClienteXPersona" (id, "idEmpresaCliente", "idPersona") FROM stdin;
\.


--
-- TOC entry 2138 (class 0 OID 16930)
-- Dependencies: 1654
-- Data for Name: EstadoCartera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoCartera" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2123 (class 0 OID 16656)
-- Dependencies: 1626
-- Data for Name: EstadoDetalleVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoDetalleVenta" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2128 (class 0 OID 16723)
-- Dependencies: 1633
-- Data for Name: Localidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Localidad" (nombre, "idProvincia", id) FROM stdin;
\.


--
-- TOC entry 2118 (class 0 OID 16565)
-- Dependencies: 1616
-- Data for Name: Lote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Lote" (id, "nroLote", "cantidadProducida", "idProducto") FROM stdin;
\.


--
-- TOC entry 2111 (class 0 OID 16398)
-- Dependencies: 1601
-- Data for Name: Marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Marca" (nombre, id) FROM stdin;
\.


--
-- TOC entry 2116 (class 0 OID 16478)
-- Dependencies: 1612
-- Data for Name: MateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "MateriaPrima" (id, codigo, nombre, descripcion, "stockActual") FROM stdin;
\.


--
-- TOC entry 2113 (class 0 OID 16437)
-- Dependencies: 1606
-- Data for Name: Modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Modelo" (id, nombre, "nroSerie") FROM stdin;
\.


--
-- TOC entry 2122 (class 0 OID 16637)
-- Dependencies: 1624
-- Data for Name: Muestrario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Muestrario" (id, "fechaDesde", "fechaHasta") FROM stdin;
\.


--
-- TOC entry 2132 (class 0 OID 16830)
-- Dependencies: 1644
-- Data for Name: Persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Persona" (id, nombre, apellido, "idDomicilio", telefono, celular, dni, "idTipoDni", mail) FROM stdin;
\.


--
-- TOC entry 2117 (class 0 OID 16495)
-- Dependencies: 1614
-- Data for Name: ProductoTerminado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductoTerminado" (id, "nroProducto", "precioEstimado", nombre, "nivelReaprovisionamiento", "stockMaximo", "fechaIngreso", "idModelo", "idColor", "stockActual", "idTamaño", "precioVenta", "idMarca", "idUbicacion", "idMuestrario") FROM stdin;
\.


--
-- TOC entry 2127 (class 0 OID 16713)
-- Dependencies: 1632
-- Data for Name: Provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Provincia" (nombre, id) FROM stdin;
\.


--
-- TOC entry 2112 (class 0 OID 16424)
-- Dependencies: 1604
-- Data for Name: Tamaño; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tamaño" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2120 (class 0 OID 16601)
-- Dependencies: 1620
-- Data for Name: TipoAccesorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoAccesorio" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2131 (class 0 OID 16817)
-- Dependencies: 1642
-- Data for Name: TipoDni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoDni" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2115 (class 0 OID 16465)
-- Dependencies: 1610
-- Data for Name: Ubicacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ubicacion" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2133 (class 0 OID 16849)
-- Dependencies: 1645
-- Data for Name: Viajante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Viajante" ("idPersona", "comisionPorVenta", "idDetalleCartera") FROM stdin;
\.


--
-- TOC entry 2022 (class 2606 OID 16624)
-- Dependencies: 1622 1622
-- Name: Accesorio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2024 (class 2606 OID 16622)
-- Dependencies: 1622 1622
-- Name: Accesorio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2044 (class 2606 OID 16746)
-- Dependencies: 1635 1635
-- Name: Barrio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2072 (class 2606 OID 16977)
-- Dependencies: 1658 1658
-- Name: Cargo_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2074 (class 2606 OID 16975)
-- Dependencies: 1658 1658
-- Name: Cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY (id);


--
-- TOC entry 1992 (class 2606 OID 16462)
-- Dependencies: 1608 1608
-- Name: Color_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_nombre_key" UNIQUE (nombre);


--
-- TOC entry 1994 (class 2606 OID 16460)
-- Dependencies: 1608 1608
-- Name: Color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_pkey" PRIMARY KEY (id);


--
-- TOC entry 2062 (class 2606 OID 16922)
-- Dependencies: 1652 1652
-- Name: CondicionIVA_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2064 (class 2606 OID 16920)
-- Dependencies: 1652 1652
-- Name: CondicionIVA_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_pkey" PRIMARY KEY (id);


--
-- TOC entry 2056 (class 2606 OID 16873)
-- Dependencies: 1647 1647
-- Name: CreditoCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CreditoCliente"
    ADD CONSTRAINT "CreditoCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2070 (class 2606 OID 16948)
-- Dependencies: 1656 1656
-- Name: DetalleCartera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2036 (class 2606 OID 16702)
-- Dependencies: 1631 1631
-- Name: DetalleDevolucionProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2016 (class 2606 OID 16588)
-- Dependencies: 1618 1618
-- Name: DetalleMateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_pkey" PRIMARY KEY (id);


--
-- TOC entry 2032 (class 2606 OID 16679)
-- Dependencies: 1628 1628
-- Name: DetalleVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2034 (class 2606 OID 16809)
-- Dependencies: 1629 1629
-- Name: DevolucionProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 16762)
-- Dependencies: 1637 1637
-- Name: Domicilio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2076 (class 2606 OID 16986)
-- Dependencies: 1659 1659
-- Name: Empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY ("idPersona");


--
-- TOC entry 2060 (class 2606 OID 16899)
-- Dependencies: 1650 1650
-- Name: EmpresaClienteXPersona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2058 (class 2606 OID 16881)
-- Dependencies: 1648 1648
-- Name: EmpresaCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2066 (class 2606 OID 16940)
-- Dependencies: 1654 1654
-- Name: EstadoCartera_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2068 (class 2606 OID 16938)
-- Dependencies: 1654 1654
-- Name: EstadoCartera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2028 (class 2606 OID 16666)
-- Dependencies: 1626 1626
-- Name: EstadoDetalleVenta_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2030 (class 2606 OID 16664)
-- Dependencies: 1626 1626
-- Name: EstadoDetalleVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2042 (class 2606 OID 16796)
-- Dependencies: 1633 1633
-- Name: Localidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_pkey" PRIMARY KEY (id);


--
-- TOC entry 2012 (class 2606 OID 16574)
-- Dependencies: 1616 1616
-- Name: Lote_nroLote_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_nroLote_key" UNIQUE ("nroLote");


--
-- TOC entry 2014 (class 2606 OID 16572)
-- Dependencies: 1616 1616
-- Name: Lote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_pkey" PRIMARY KEY (id);


--
-- TOC entry 1978 (class 2606 OID 16407)
-- Dependencies: 1601 1601
-- Name: Marca_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_nombre_key" UNIQUE (nombre);


--
-- TOC entry 1980 (class 2606 OID 16421)
-- Dependencies: 1601 1601
-- Name: Marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_pkey" PRIMARY KEY (id);


--
-- TOC entry 2000 (class 2606 OID 16489)
-- Dependencies: 1612 1612
-- Name: MateriaPrima_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_codigo_key" UNIQUE (codigo);


--
-- TOC entry 2002 (class 2606 OID 16491)
-- Dependencies: 1612 1612
-- Name: MateriaPrima_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2004 (class 2606 OID 16487)
-- Dependencies: 1612 1612
-- Name: MateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_pkey" PRIMARY KEY (id);


--
-- TOC entry 1986 (class 2606 OID 16447)
-- Dependencies: 1606 1606
-- Name: Modelo_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nombre_key" UNIQUE (nombre);


--
-- TOC entry 1988 (class 2606 OID 16449)
-- Dependencies: 1606 1606
-- Name: Modelo_nroSerie_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nroSerie_key" UNIQUE ("nroSerie");


--
-- TOC entry 1990 (class 2606 OID 16445)
-- Dependencies: 1606 1606
-- Name: Modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2026 (class 2606 OID 16642)
-- Dependencies: 1624 1624
-- Name: Muestrario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Muestrario"
    ADD CONSTRAINT "Muestrario_pkey" PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 16838)
-- Dependencies: 1644 1644
-- Name: Persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2006 (class 2606 OID 16507)
-- Dependencies: 1614 1614
-- Name: ProductoTerminado_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2008 (class 2606 OID 16502)
-- Dependencies: 1614 1614
-- Name: ProductoTerminado_nroProducto_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nroProducto_key" UNIQUE ("nroProducto");


--
-- TOC entry 2010 (class 2606 OID 16500)
-- Dependencies: 1614 1614
-- Name: ProductoTerminado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_pkey" PRIMARY KEY (id);


--
-- TOC entry 2038 (class 2606 OID 16722)
-- Dependencies: 1632 1632
-- Name: Provincia_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2040 (class 2606 OID 16779)
-- Dependencies: 1632 1632
-- Name: Provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_pkey" PRIMARY KEY (id);


--
-- TOC entry 1982 (class 2606 OID 16434)
-- Dependencies: 1604 1604
-- Name: Tamaño_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tamaño"
    ADD CONSTRAINT "Tamaño_nombre_key" UNIQUE (nombre);


--
-- TOC entry 1984 (class 2606 OID 16432)
-- Dependencies: 1604 1604
-- Name: Tamaño_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tamaño"
    ADD CONSTRAINT "Tamaño_pkey" PRIMARY KEY (id);


--
-- TOC entry 2018 (class 2606 OID 16611)
-- Dependencies: 1620 1620
-- Name: TipoAccesorio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2020 (class 2606 OID 16609)
-- Dependencies: 1620 1620
-- Name: TipoAccesorio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2048 (class 2606 OID 16827)
-- Dependencies: 1642 1642
-- Name: TipoDni_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2050 (class 2606 OID 16825)
-- Dependencies: 1642 1642
-- Name: TipoDni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_pkey" PRIMARY KEY (id);


--
-- TOC entry 1996 (class 2606 OID 16475)
-- Dependencies: 1610 1610
-- Name: Ubicacion_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_nombre_key" UNIQUE (nombre);


--
-- TOC entry 1998 (class 2606 OID 16473)
-- Dependencies: 1610 1610
-- Name: Ubicacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2054 (class 2606 OID 16854)
-- Dependencies: 1645 1645
-- Name: Viajante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_pkey" PRIMARY KEY ("idPersona");


--
-- TOC entry 2087 (class 2606 OID 16630)
-- Dependencies: 1622 2009 1614
-- Name: Accesorio_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2086 (class 2606 OID 16625)
-- Dependencies: 1620 1622 2019
-- Name: Accesorio_idTipoaccesorio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idTipoaccesorio_fkey" FOREIGN KEY ("idTipoaccesorio") REFERENCES "TipoAccesorio"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2095 (class 2606 OID 16797)
-- Dependencies: 1633 1635 2041
-- Name: Barrio_idLocalidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idLocalidad_fkey" FOREIGN KEY ("idLocalidad") REFERENCES "Localidad"(id);


--
-- TOC entry 2096 (class 2606 OID 16860)
-- Dependencies: 2053 1635 1645
-- Name: Barrio_idViajante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");


--
-- TOC entry 2107 (class 2606 OID 16949)
-- Dependencies: 2057 1648 1656
-- Name: DetalleCartera_idEmpresaCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2108 (class 2606 OID 16954)
-- Dependencies: 1654 2067 1656
-- Name: DetalleCartera_idEstadoCartera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEstadoCartera_fkey" FOREIGN KEY ("idEstadoCartera") REFERENCES "EstadoCartera"(id);


--
-- TOC entry 2093 (class 2606 OID 16810)
-- Dependencies: 1631 1629 2033
-- Name: DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey" FOREIGN KEY ("idDevolucionProductosTerminados") REFERENCES "DevolucionProductosTerminados"(id);


--
-- TOC entry 2092 (class 2606 OID 16703)
-- Dependencies: 2031 1631 1628
-- Name: DetalleDevolucionProductosTerminados_idDetalleVenta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_idDetalleVenta_fkey" FOREIGN KEY ("idDetalleVenta") REFERENCES "DetalleVenta"(id);


--
-- TOC entry 2084 (class 2606 OID 16589)
-- Dependencies: 1618 2013 1616
-- Name: DetalleMateriaPrima_idLote_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idLote_fkey" FOREIGN KEY ("idLote") REFERENCES "Lote"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2085 (class 2606 OID 16594)
-- Dependencies: 1612 1618 2003
-- Name: DetalleMateriaPrima_idMateriaPrima_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idMateriaPrima_fkey" FOREIGN KEY ("idMateriaPrima") REFERENCES "MateriaPrima"(id);


--
-- TOC entry 2089 (class 2606 OID 16685)
-- Dependencies: 2029 1628 1626
-- Name: DetalleVenta_idEstadoDetalleVenta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idEstadoDetalleVenta_fkey" FOREIGN KEY ("idEstadoDetalleVenta") REFERENCES "EstadoDetalleVenta"(id);


--
-- TOC entry 2088 (class 2606 OID 16680)
-- Dependencies: 2009 1614 1628
-- Name: DetalleVenta_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2090 (class 2606 OID 16997)
-- Dependencies: 1648 1629 2057
-- Name: DevolucionProductosTerminados_idCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2091 (class 2606 OID 17002)
-- Dependencies: 1645 1629 2053
-- Name: DevolucionProductosTerminados_idViajante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");


--
-- TOC entry 2097 (class 2606 OID 16763)
-- Dependencies: 2043 1635 1637
-- Name: Domicilio_idBarrio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_idBarrio_fkey" FOREIGN KEY ("idBarrio") REFERENCES "Barrio"(id);


--
-- TOC entry 2110 (class 2606 OID 16992)
-- Dependencies: 2073 1658 1659
-- Name: Empleado_idCargo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idCargo_fkey" FOREIGN KEY ("idCargo") REFERENCES "Cargo"(id);


--
-- TOC entry 2109 (class 2606 OID 16987)
-- Dependencies: 1659 2051 1644
-- Name: Empleado_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2106 (class 2606 OID 16905)
-- Dependencies: 2057 1648 1650
-- Name: EmpresaClienteXPersona_idEmpresaCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2105 (class 2606 OID 16900)
-- Dependencies: 1650 2051 1644
-- Name: EmpresaClienteXPersona_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2104 (class 2606 OID 16923)
-- Dependencies: 1652 1648 2063
-- Name: EmpresaCliente_idCondicionIVA_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCondicionIVA_fkey" FOREIGN KEY ("idCondicionIVA") REFERENCES "CondicionIVA"(id);


--
-- TOC entry 2103 (class 2606 OID 16887)
-- Dependencies: 1647 2055 1648
-- Name: EmpresaCliente_idCreditoCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCreditoCliente_fkey" FOREIGN KEY ("idCreditoCliente") REFERENCES "CreditoCliente"(id);


--
-- TOC entry 2102 (class 2606 OID 16882)
-- Dependencies: 2045 1637 1648
-- Name: EmpresaCliente_idDomicilio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);


--
-- TOC entry 2094 (class 2606 OID 16780)
-- Dependencies: 2039 1632 1633
-- Name: Localidad_idProvincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_idProvincia_fkey" FOREIGN KEY ("idProvincia") REFERENCES "Provincia"(id);


--
-- TOC entry 2083 (class 2606 OID 16575)
-- Dependencies: 1614 1616 2009
-- Name: Lote_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2099 (class 2606 OID 16844)
-- Dependencies: 2045 1644 1637
-- Name: Persona_idDomicilio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);


--
-- TOC entry 2098 (class 2606 OID 16839)
-- Dependencies: 1642 1644 2049
-- Name: Persona_idTipoDni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idTipoDni_fkey" FOREIGN KEY ("idTipoDni") REFERENCES "TipoDni"(id);


--
-- TOC entry 2077 (class 2606 OID 16538)
-- Dependencies: 1608 1993 1614
-- Name: ProductoTerminado_idColor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idColor_fkey" FOREIGN KEY ("idColor") REFERENCES "Color"(id);


--
-- TOC entry 2080 (class 2606 OID 16553)
-- Dependencies: 1614 1979 1601
-- Name: ProductoTerminado_idMarca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMarca_fkey" FOREIGN KEY ("idMarca") REFERENCES "Marca"(id);


--
-- TOC entry 2078 (class 2606 OID 16543)
-- Dependencies: 1614 1606 1989
-- Name: ProductoTerminado_idModelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idModelo_fkey" FOREIGN KEY ("idModelo") REFERENCES "Modelo"(id);


--
-- TOC entry 2082 (class 2606 OID 16649)
-- Dependencies: 1624 2025 1614
-- Name: ProductoTerminado_idMuestrario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMuestrario_fkey" FOREIGN KEY ("idMuestrario") REFERENCES "Muestrario"(id) ON DELETE SET NULL;


--
-- TOC entry 2079 (class 2606 OID 16548)
-- Dependencies: 1614 1604 1983
-- Name: ProductoTerminado_idTamaño_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idTamaño_fkey" FOREIGN KEY ("idTamaño") REFERENCES "Tamaño"(id);


--
-- TOC entry 2081 (class 2606 OID 16558)
-- Dependencies: 1997 1614 1610
-- Name: ProductoTerminado_idUbicacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idUbicacion_fkey" FOREIGN KEY ("idUbicacion") REFERENCES "Ubicacion"(id);


--
-- TOC entry 2101 (class 2606 OID 16959)
-- Dependencies: 1645 2069 1656
-- Name: Viajante_idDetalleCartera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idDetalleCartera_fkey" FOREIGN KEY ("idDetalleCartera") REFERENCES "DetalleCartera"(id);


--
-- TOC entry 2100 (class 2606 OID 16855)
-- Dependencies: 1645 1644 2051
-- Name: Viajante_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2010-06-04 21:39:11

--
-- PostgreSQL database dump complete
--


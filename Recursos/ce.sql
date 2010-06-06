--
-- PostgreSQL database dump
--

-- Started on 2010-06-06 00:37:45

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1734 (class 1259 OID 16614)
-- Dependencies: 3
-- Name: Accesorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Accesorio" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    "idTipoaccesorio" integer NOT NULL,
    "idProducto" integer NOT NULL
);


ALTER TABLE public."Accesorio" OWNER TO postgres;

--
-- TOC entry 1733 (class 1259 OID 16612)
-- Dependencies: 3 1734
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
-- TOC entry 2620 (class 0 OID 0)
-- Dependencies: 1733
-- Name: Accesorio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Accesorio_id_seq" OWNED BY "Accesorio".id;


--
-- TOC entry 2621 (class 0 OID 0)
-- Dependencies: 1733
-- Name: Accesorio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Accesorio_id_seq"', 1, false);


--
-- TOC entry 1747 (class 1259 OID 16738)
-- Dependencies: 3
-- Name: Barrio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Barrio" (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    "idLocalidad" integer NOT NULL,
    "idViajante" integer
);


ALTER TABLE public."Barrio" OWNER TO postgres;

--
-- TOC entry 1746 (class 1259 OID 16736)
-- Dependencies: 3 1747
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
-- TOC entry 2622 (class 0 OID 0)
-- Dependencies: 1746
-- Name: Barrio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Barrio_id_seq" OWNED BY "Barrio".id;


--
-- TOC entry 2623 (class 0 OID 0)
-- Dependencies: 1746
-- Name: Barrio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Barrio_id_seq"', 1, false);


--
-- TOC entry 1770 (class 1259 OID 16966)
-- Dependencies: 2172 3
-- Name: Cargo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cargo" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200),
    "precioPorHora" numeric DEFAULT 0 NOT NULL
);


ALTER TABLE public."Cargo" OWNER TO postgres;

--
-- TOC entry 1769 (class 1259 OID 16964)
-- Dependencies: 1770 3
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
-- TOC entry 2624 (class 0 OID 0)
-- Dependencies: 1769
-- Name: Cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cargo_id_seq" OWNED BY "Cargo".id;


--
-- TOC entry 2625 (class 0 OID 0)
-- Dependencies: 1769
-- Name: Cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Cargo_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1782 (class 1259 OID 17154)
-- Dependencies: 3
-- Name: Cheque; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Cheque" (
    id integer NOT NULL,
    banco character varying(20) NOT NULL,
    nro integer NOT NULL,
    emisor character varying(100) NOT NULL,
    "fechaEmision" date NOT NULL,
    "fechaCobro" date,
    cobrador character varying(100)
);
ALTER TABLE ONLY "Cheque" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN banco SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN nro SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN emisor SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN "fechaEmision" SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN "fechaCobro" SET STATISTICS 0;
ALTER TABLE ONLY "Cheque" ALTER COLUMN cobrador SET STATISTICS 0;


ALTER TABLE public."Cheque" OWNER TO postgres;

--
-- TOC entry 1781 (class 1259 OID 17152)
-- Dependencies: 1782 3
-- Name: Cheque_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cheque_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Cheque_id_seq" OWNER TO postgres;

--
-- TOC entry 2626 (class 0 OID 0)
-- Dependencies: 1781
-- Name: Cheque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cheque_id_seq" OWNED BY "Cheque".id;


--
-- TOC entry 2627 (class 0 OID 0)
-- Dependencies: 1781
-- Name: Cheque_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Cheque_id_seq"', 1, false);


--
-- TOC entry 1787 (class 1259 OID 17180)
-- Dependencies: 3
-- Name: CobreCheque; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CobreCheque" (
    "idDetalleCobroPedido" integer NOT NULL,
    "idCheque" integer NOT NULL,
    "idEstadoDetalleCobroPedido" integer NOT NULL
);
ALTER TABLE ONLY "CobreCheque" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY "CobreCheque" ALTER COLUMN "idCheque" SET STATISTICS 0;
ALTER TABLE ONLY "CobreCheque" ALTER COLUMN "idEstadoDetalleCobroPedido" SET STATISTICS 0;


ALTER TABLE public."CobreCheque" OWNER TO postgres;

--
-- TOC entry 1788 (class 1259 OID 17200)
-- Dependencies: 3
-- Name: CobroEfectivo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CobroEfectivo" (
    "idDetalleCobroPedido" integer NOT NULL
);
ALTER TABLE ONLY "CobroEfectivo" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;


ALTER TABLE public."CobroEfectivo" OWNER TO postgres;

--
-- TOC entry 1789 (class 1259 OID 17210)
-- Dependencies: 3
-- Name: CobroNotaCredito; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CobroNotaCredito" (
    "idDetalleCobroPedido" integer NOT NULL,
    "idCreditoCliente" integer NOT NULL
);
ALTER TABLE ONLY "CobroNotaCredito" ALTER COLUMN "idDetalleCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY "CobroNotaCredito" ALTER COLUMN "idCreditoCliente" SET STATISTICS 0;


ALTER TABLE public."CobroNotaCredito" OWNER TO postgres;

--
-- TOC entry 1793 (class 1259 OID 17237)
-- Dependencies: 3
-- Name: CobroPedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CobroPedido" (
    id integer NOT NULL,
    "idEstadoCobroPedido" integer NOT NULL,
    "fechaCobro" date NOT NULL
);
ALTER TABLE ONLY "CobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "CobroPedido" ALTER COLUMN "idEstadoCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY "CobroPedido" ALTER COLUMN "fechaCobro" SET STATISTICS 0;


ALTER TABLE public."CobroPedido" OWNER TO postgres;

--
-- TOC entry 1792 (class 1259 OID 17235)
-- Dependencies: 1793 3
-- Name: CobroPedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."CobroPedido_id_seq" OWNER TO postgres;

--
-- TOC entry 2628 (class 0 OID 0)
-- Dependencies: 1792
-- Name: CobroPedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CobroPedido_id_seq" OWNED BY "CobroPedido".id;


--
-- TOC entry 2629 (class 0 OID 0)
-- Dependencies: 1792
-- Name: CobroPedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CobroPedido_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1720 (class 1259 OID 16452)
-- Dependencies: 3
-- Name: Color; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Color" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."Color" OWNER TO postgres;

--
-- TOC entry 1719 (class 1259 OID 16450)
-- Dependencies: 1720 3
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
-- TOC entry 2630 (class 0 OID 0)
-- Dependencies: 1719
-- Name: Color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Color_id_seq" OWNED BY "Color".id;


--
-- TOC entry 2631 (class 0 OID 0)
-- Dependencies: 1719
-- Name: Color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Color_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1831 (class 1259 OID 17609)
-- Dependencies: 3
-- Name: Compra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Compra" (
    id integer NOT NULL,
    "fechaRealLlegada" date
);
ALTER TABLE ONLY "Compra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Compra" ALTER COLUMN "fechaRealLlegada" SET STATISTICS 0;


ALTER TABLE public."Compra" OWNER TO postgres;

--
-- TOC entry 1830 (class 1259 OID 17607)
-- Dependencies: 1831 3
-- Name: Compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Compra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Compra_id_seq" OWNER TO postgres;

--
-- TOC entry 2632 (class 0 OID 0)
-- Dependencies: 1830
-- Name: Compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Compra_id_seq" OWNED BY "Compra".id;


--
-- TOC entry 2633 (class 0 OID 0)
-- Dependencies: 1830
-- Name: Compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Compra_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1764 (class 1259 OID 16912)
-- Dependencies: 3
-- Name: CondicionIVA; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CondicionIVA" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200)
);


ALTER TABLE public."CondicionIVA" OWNER TO postgres;

--
-- TOC entry 1763 (class 1259 OID 16910)
-- Dependencies: 3 1764
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
-- TOC entry 2634 (class 0 OID 0)
-- Dependencies: 1763
-- Name: CondicionIVA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CondicionIVA_id_seq" OWNED BY "CondicionIVA".id;


--
-- TOC entry 2635 (class 0 OID 0)
-- Dependencies: 1763
-- Name: CondicionIVA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CondicionIVA_id_seq"', 1, false);


--
-- TOC entry 1759 (class 1259 OID 16867)
-- Dependencies: 2166 3
-- Name: CreditoCliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "CreditoCliente" (
    id integer NOT NULL,
    monto numeric DEFAULT 0 NOT NULL
);


ALTER TABLE public."CreditoCliente" OWNER TO postgres;

--
-- TOC entry 1758 (class 1259 OID 16865)
-- Dependencies: 1759 3
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
-- TOC entry 2636 (class 0 OID 0)
-- Dependencies: 1758
-- Name: CreditoCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CreditoCliente_id_seq" OWNED BY "CreditoCliente".id;


--
-- TOC entry 2637 (class 0 OID 0)
-- Dependencies: 1758
-- Name: CreditoCliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CreditoCliente_id_seq"', 1, false);


--
-- TOC entry 1768 (class 1259 OID 16943)
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
-- TOC entry 1767 (class 1259 OID 16941)
-- Dependencies: 3 1768
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
-- TOC entry 2638 (class 0 OID 0)
-- Dependencies: 1767
-- Name: DetalleCartera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleCartera_id_seq" OWNED BY "DetalleCartera".id;


--
-- TOC entry 2639 (class 0 OID 0)
-- Dependencies: 1767
-- Name: DetalleCartera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleCartera_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1786 (class 1259 OID 17174)
-- Dependencies: 3
-- Name: DetalleCobroPedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleCobroPedido" (
    id integer NOT NULL,
    varlor numeric(20,2) NOT NULL,
    fecha date NOT NULL,
    "idCobroPedido" integer NOT NULL
);
ALTER TABLE ONLY "DetalleCobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCobroPedido" ALTER COLUMN varlor SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCobroPedido" ALTER COLUMN fecha SET STATISTICS 0;


ALTER TABLE public."DetalleCobroPedido" OWNER TO postgres;

--
-- TOC entry 1785 (class 1259 OID 17172)
-- Dependencies: 3 1786
-- Name: DetalleCobroPedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleCobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleCobroPedido_id_seq" OWNER TO postgres;

--
-- TOC entry 2640 (class 0 OID 0)
-- Dependencies: 1785
-- Name: DetalleCobroPedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleCobroPedido_id_seq" OWNED BY "DetalleCobroPedido".id;


--
-- TOC entry 2641 (class 0 OID 0)
-- Dependencies: 1785
-- Name: DetalleCobroPedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleCobroPedido_id_seq"', 1, false);


--
-- TOC entry 1854 (class 1259 OID 18031)
-- Dependencies: 3
-- Name: DetalleCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleCompra" (
    id integer NOT NULL,
    "idCompra" integer NOT NULL,
    "idDetalleOrdenCompra" integer NOT NULL
);
ALTER TABLE ONLY "DetalleCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCompra" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCompra" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;


ALTER TABLE public."DetalleCompra" OWNER TO postgres;

--
-- TOC entry 1856 (class 1259 OID 18062)
-- Dependencies: 3
-- Name: DetalleCompraMateriaPrima; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleCompraMateriaPrima" (
    "idDetalleCompra" integer NOT NULL,
    "idDetalleOrdenCompraMateriaPrima" integer NOT NULL
);
ALTER TABLE ONLY "DetalleCompraMateriaPrima" ALTER COLUMN "idDetalleCompra" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCompraMateriaPrima" ALTER COLUMN "idDetalleOrdenCompraMateriaPrima" SET STATISTICS 0;


ALTER TABLE public."DetalleCompraMateriaPrima" OWNER TO postgres;

--
-- TOC entry 1855 (class 1259 OID 18047)
-- Dependencies: 3
-- Name: DetalleCompraProductoImportado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleCompraProductoImportado" (
    "idDetalleCompra" integer NOT NULL,
    "idDetalleOrdenCompraProductoImportado" integer NOT NULL
);
ALTER TABLE ONLY "DetalleCompraProductoImportado" ALTER COLUMN "idDetalleCompra" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleCompraProductoImportado" ALTER COLUMN "idDetalleOrdenCompraProductoImportado" SET STATISTICS 0;


ALTER TABLE public."DetalleCompraProductoImportado" OWNER TO postgres;

--
-- TOC entry 1853 (class 1259 OID 18029)
-- Dependencies: 1854 3
-- Name: DetalleCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2642 (class 0 OID 0)
-- Dependencies: 1853
-- Name: DetalleCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleCompra_id_seq" OWNED BY "DetalleCompra".id;


--
-- TOC entry 2643 (class 0 OID 0)
-- Dependencies: 1853
-- Name: DetalleCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleCompra_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1743 (class 1259 OID 16697)
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
-- TOC entry 1742 (class 1259 OID 16695)
-- Dependencies: 3 1743
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
-- TOC entry 2644 (class 0 OID 0)
-- Dependencies: 1742
-- Name: DetalleDevolucionProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleDevolucionProductosTerminados_id_seq" OWNED BY "DetalleDevolucionProductosTerminados".id;


--
-- TOC entry 2645 (class 0 OID 0)
-- Dependencies: 1742
-- Name: DetalleDevolucionProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleDevolucionProductosTerminados_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1802 (class 1259 OID 17325)
-- Dependencies: 3
-- Name: DetalleFactura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleFactura" (
    "idDetallePedidoProductosTerminados" integer,
    "idFactura" integer NOT NULL,
    id integer NOT NULL
);
ALTER TABLE ONLY "DetalleFactura" ALTER COLUMN "idDetallePedidoProductosTerminados" SET STATISTICS 0;


ALTER TABLE public."DetalleFactura" OWNER TO postgres;

--
-- TOC entry 1838 (class 1259 OID 17722)
-- Dependencies: 1802 3
-- Name: DetalleFactura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleFactura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleFactura_id_seq" OWNER TO postgres;

--
-- TOC entry 2646 (class 0 OID 0)
-- Dependencies: 1838
-- Name: DetalleFactura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleFactura_id_seq" OWNED BY "DetalleFactura".id;


--
-- TOC entry 2647 (class 0 OID 0)
-- Dependencies: 1838
-- Name: DetalleFactura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleFactura_id_seq"', 1, false);


--
-- TOC entry 1825 (class 1259 OID 17562)
-- Dependencies: 3
-- Name: DetalleHojaRuta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleHojaRuta" (
    id integer NOT NULL,
    "idHojaRuta" integer NOT NULL,
    "idEmpresaCliente" integer NOT NULL,
    "idDomicilioVisitar" integer NOT NULL
);
ALTER TABLE ONLY "DetalleHojaRuta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetalleHojaRuta" ALTER COLUMN "idHojaRuta" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleHojaRuta" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleHojaRuta" ALTER COLUMN "idDomicilioVisitar" SET STATISTICS 0;


ALTER TABLE public."DetalleHojaRuta" OWNER TO postgres;

--
-- TOC entry 1824 (class 1259 OID 17560)
-- Dependencies: 1825 3
-- Name: DetalleHojaRuta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleHojaRuta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleHojaRuta_id_seq" OWNER TO postgres;

--
-- TOC entry 2648 (class 0 OID 0)
-- Dependencies: 1824
-- Name: DetalleHojaRuta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleHojaRuta_id_seq" OWNED BY "DetalleHojaRuta".id;


--
-- TOC entry 2649 (class 0 OID 0)
-- Dependencies: 1824
-- Name: DetalleHojaRuta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleHojaRuta_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1730 (class 1259 OID 16582)
-- Dependencies: 2148 3
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
-- TOC entry 1729 (class 1259 OID 16580)
-- Dependencies: 3 1730
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
-- TOC entry 2650 (class 0 OID 0)
-- Dependencies: 1729
-- Name: DetalleMateriaPrima_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleMateriaPrima_id_seq" OWNED BY "DetalleMateriaPrima".id;


--
-- TOC entry 2651 (class 0 OID 0)
-- Dependencies: 1729
-- Name: DetalleMateriaPrima_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleMateriaPrima_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1849 (class 1259 OID 17965)
-- Dependencies: 2212 3
-- Name: DetalleNotificacionReaprovisionamiento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleNotificacionReaprovisionamiento" (
    id integer NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL,
    "idNotificacionReaprovisionamiento" integer NOT NULL,
    "idProductoImportado" integer NOT NULL
);
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento" ALTER COLUMN cantidad SET STATISTICS 0;
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento" ALTER COLUMN "idNotificacionReaprovisionamiento" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento" ALTER COLUMN "idProductoImportado" SET STATISTICS 0;


ALTER TABLE public."DetalleNotificacionReaprovisionamiento" OWNER TO postgres;

--
-- TOC entry 1848 (class 1259 OID 17963)
-- Dependencies: 1849 3
-- Name: DetalleNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleNotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleNotificacionReaprovisionamiento_id_seq" OWNER TO postgres;

--
-- TOC entry 2652 (class 0 OID 0)
-- Dependencies: 1848
-- Name: DetalleNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleNotificacionReaprovisionamiento_id_seq" OWNED BY "DetalleNotificacionReaprovisionamiento".id;


--
-- TOC entry 2653 (class 0 OID 0)
-- Dependencies: 1848
-- Name: DetalleNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleNotificacionReaprovisionamiento_id_seq"', 1, false);


--
-- TOC entry 1842 (class 1259 OID 17912)
-- Dependencies: 2208 3
-- Name: DetalleOrdenCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleOrdenCompra" (
    id integer NOT NULL,
    precio numeric(20,2) DEFAULT 0 NOT NULL,
    "idEstadoDetalleOrdenCompra" integer NOT NULL
);
ALTER TABLE ONLY "DetalleOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompra" ALTER COLUMN precio SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompra" ALTER COLUMN "idEstadoDetalleOrdenCompra" SET STATISTICS 0;


ALTER TABLE public."DetalleOrdenCompra" OWNER TO postgres;

--
-- TOC entry 1851 (class 1259 OID 18003)
-- Dependencies: 2214 3
-- Name: DetalleOrdenCompraMateriaPrima; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleOrdenCompraMateriaPrima" (
    "idDetalleOrdenCompra" integer NOT NULL,
    "idMateriaPrima" integer NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL
);
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima" ALTER COLUMN "idMateriaPrima" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima" ALTER COLUMN cantidad SET STATISTICS 0;


ALTER TABLE public."DetalleOrdenCompraMateriaPrima" OWNER TO postgres;

--
-- TOC entry 1850 (class 1259 OID 17982)
-- Dependencies: 2213 3
-- Name: DetalleOrdenCompraProductoImportado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleOrdenCompraProductoImportado" (
    "idDetalleOrdenCompra" integer NOT NULL,
    "idProductoImportado" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 0 NOT NULL
);
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado" ALTER COLUMN "idDetalleOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado" ALTER COLUMN "idProductoImportado" SET STATISTICS 0;
ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado" ALTER COLUMN "cantidadProducto" SET STATISTICS 0;


ALTER TABLE public."DetalleOrdenCompraProductoImportado" OWNER TO postgres;

--
-- TOC entry 1841 (class 1259 OID 17910)
-- Dependencies: 3 1842
-- Name: DetalleOrdenCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetalleOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetalleOrdenCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2654 (class 0 OID 0)
-- Dependencies: 1841
-- Name: DetalleOrdenCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleOrdenCompra_id_seq" OWNED BY "DetalleOrdenCompra".id;


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 1841
-- Name: DetalleOrdenCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleOrdenCompra_id_seq"', 1, false);


--
-- TOC entry 1797 (class 1259 OID 17265)
-- Dependencies: 2184 3
-- Name: DetallePedidoProductosTerminados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetallePedidoProductosTerminados" (
    id integer NOT NULL,
    "idProductoTerminado" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 1 NOT NULL,
    "precioPorUnidad" numeric(20,2) NOT NULL,
    "idEstadoDetallePedidoProductoTerminado" integer NOT NULL,
    "motivoDevolucion" character varying(100),
    "motivoNoEntregado" character varying(100),
    "fechaDevolucion" integer,
    "idPedidoProductosTerminados" integer NOT NULL
);
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "cantidadProducto" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "precioPorUnidad" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "idEstadoDetallePedidoProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "motivoDevolucion" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "motivoNoEntregado" SET STATISTICS 0;
ALTER TABLE ONLY "DetallePedidoProductosTerminados" ALTER COLUMN "fechaDevolucion" SET STATISTICS 0;


ALTER TABLE public."DetallePedidoProductosTerminados" OWNER TO postgres;

--
-- TOC entry 1796 (class 1259 OID 17263)
-- Dependencies: 3 1797
-- Name: DetallePedidoProductosTerminados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DetallePedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."DetallePedidoProductosTerminados_id_seq" OWNER TO postgres;

--
-- TOC entry 2656 (class 0 OID 0)
-- Dependencies: 1796
-- Name: DetallePedidoProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetallePedidoProductosTerminados_id_seq" OWNED BY "DetallePedidoProductosTerminados".id;


--
-- TOC entry 2657 (class 0 OID 0)
-- Dependencies: 1796
-- Name: DetallePedidoProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetallePedidoProductosTerminados_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1740 (class 1259 OID 16669)
-- Dependencies: 2154 2155 3
-- Name: DetalleVenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "DetalleVenta" (
    id integer NOT NULL,
    "idProducto" integer NOT NULL,
    "cantidadProducto" integer DEFAULT 1 NOT NULL,
    "precioUnidad" numeric DEFAULT 0 NOT NULL,
    "idEstadoDetalleVenta" integer NOT NULL,
    "motivoDevolucion" character varying(200),
    "fechaDevolucion" date,
    "idVenta" integer NOT NULL
);


ALTER TABLE public."DetalleVenta" OWNER TO postgres;

--
-- TOC entry 1739 (class 1259 OID 16667)
-- Dependencies: 1740 3
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
-- TOC entry 2658 (class 0 OID 0)
-- Dependencies: 1739
-- Name: DetalleVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DetalleVenta_id_seq" OWNED BY "DetalleVenta".id;


--
-- TOC entry 2659 (class 0 OID 0)
-- Dependencies: 1739
-- Name: DetalleVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DetalleVenta_id_seq"', 1, false);


--
-- TOC entry 1741 (class 1259 OID 16690)
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
-- TOC entry 1752 (class 1259 OID 16802)
-- Dependencies: 1741 3
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
-- TOC entry 2660 (class 0 OID 0)
-- Dependencies: 1752
-- Name: DevolucionProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DevolucionProductosTerminados_id_seq" OWNED BY "DevolucionProductosTerminados".id;


--
-- TOC entry 2661 (class 0 OID 0)
-- Dependencies: 1752
-- Name: DevolucionProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DevolucionProductosTerminados_id_seq"', 1, false);


--
-- TOC entry 1775 (class 1259 OID 17020)
-- Dependencies: 3
-- Name: Divisa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Divisa" (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    "tasaCambio" numeric NOT NULL
);


ALTER TABLE public."Divisa" OWNER TO postgres;

--
-- TOC entry 1774 (class 1259 OID 17018)
-- Dependencies: 3 1775
-- Name: Divisa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Divisa_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Divisa_id_seq" OWNER TO postgres;

--
-- TOC entry 2662 (class 0 OID 0)
-- Dependencies: 1774
-- Name: Divisa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Divisa_id_seq" OWNED BY "Divisa".id;


--
-- TOC entry 2663 (class 0 OID 0)
-- Dependencies: 1774
-- Name: Divisa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Divisa_id_seq"', 1, false);


--
-- TOC entry 1749 (class 1259 OID 16754)
-- Dependencies: 3
-- Name: Domicilio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Domicilio" (
    id integer NOT NULL,
    altura integer,
    "nombreCalle" character varying(20),
    "nroDpto" integer,
    "codPostal" integer,
    "idBarrio" integer NOT NULL
);


ALTER TABLE public."Domicilio" OWNER TO postgres;

--
-- TOC entry 1748 (class 1259 OID 16752)
-- Dependencies: 1749 3
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
-- TOC entry 2664 (class 0 OID 0)
-- Dependencies: 1748
-- Name: Domicilio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Domicilio_id_seq" OWNED BY "Domicilio".id;


--
-- TOC entry 2665 (class 0 OID 0)
-- Dependencies: 1748
-- Name: Domicilio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Domicilio_id_seq"', 1, false);


--
-- TOC entry 1771 (class 1259 OID 16979)
-- Dependencies: 3
-- Name: Empleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Empleado" (
    cuil character varying(20) NOT NULL,
    "fechaIngreso" date NOT NULL,
    "fechaBaja" date,
    "motivoBaja" character varying(200),
    "idPersona" integer NOT NULL,
    "idCargo" integer NOT NULL
);


ALTER TABLE public."Empleado" OWNER TO postgres;

--
-- TOC entry 1760 (class 1259 OID 16874)
-- Dependencies: 3
-- Name: EmpresaCliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EmpresaCliente" (
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
);


ALTER TABLE public."EmpresaCliente" OWNER TO postgres;

--
-- TOC entry 1762 (class 1259 OID 16894)
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
-- TOC entry 1761 (class 1259 OID 16892)
-- Dependencies: 1762 3
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
-- TOC entry 2666 (class 0 OID 0)
-- Dependencies: 1761
-- Name: EmpresaClienteXPersona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EmpresaClienteXPersona_id_seq" OWNED BY "EmpresaClienteXPersona".id;


--
-- TOC entry 2667 (class 0 OID 0)
-- Dependencies: 1761
-- Name: EmpresaClienteXPersona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EmpresaClienteXPersona_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1814 (class 1259 OID 17469)
-- Dependencies: 3
-- Name: EmpresaTransporte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EmpresaTransporte" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    "idDomicilio" integer
);
ALTER TABLE ONLY "EmpresaTransporte" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EmpresaTransporte" ALTER COLUMN nombre SET STATISTICS 0;
ALTER TABLE ONLY "EmpresaTransporte" ALTER COLUMN "idDomicilio" SET STATISTICS 0;


ALTER TABLE public."EmpresaTransporte" OWNER TO postgres;

--
-- TOC entry 1813 (class 1259 OID 17467)
-- Dependencies: 1814 3
-- Name: EmpresaTransporte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EmpresaTransporte_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EmpresaTransporte_id_seq" OWNER TO postgres;

--
-- TOC entry 2668 (class 0 OID 0)
-- Dependencies: 1813
-- Name: EmpresaTransporte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EmpresaTransporte_id_seq" OWNED BY "EmpresaTransporte".id;


--
-- TOC entry 2669 (class 0 OID 0)
-- Dependencies: 1813
-- Name: EmpresaTransporte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EmpresaTransporte_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1766 (class 1259 OID 16930)
-- Dependencies: 3
-- Name: EstadoCartera; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoCartera" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."EstadoCartera" OWNER TO postgres;

--
-- TOC entry 1765 (class 1259 OID 16928)
-- Dependencies: 3 1766
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
-- TOC entry 2670 (class 0 OID 0)
-- Dependencies: 1765
-- Name: EstadoCartera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoCartera_id_seq" OWNED BY "EstadoCartera".id;


--
-- TOC entry 2671 (class 0 OID 0)
-- Dependencies: 1765
-- Name: EstadoCartera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoCartera_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1784 (class 1259 OID 17164)
-- Dependencies: 3
-- Name: EstadoCobroCheque; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoCobroCheque" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoCobroCheque" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoCobroCheque" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoCobroCheque" OWNER TO postgres;

--
-- TOC entry 1783 (class 1259 OID 17162)
-- Dependencies: 3 1784
-- Name: EstadoCobroCheque_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoCobroCheque_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoCobroCheque_id_seq" OWNER TO postgres;

--
-- TOC entry 2672 (class 0 OID 0)
-- Dependencies: 1783
-- Name: EstadoCobroCheque_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoCobroCheque_id_seq" OWNED BY "EstadoCobroCheque".id;


--
-- TOC entry 2673 (class 0 OID 0)
-- Dependencies: 1783
-- Name: EstadoCobroCheque_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoCobroCheque_id_seq"', 1, false);


--
-- TOC entry 1791 (class 1259 OID 17227)
-- Dependencies: 3
-- Name: EstadoCobroPedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoCobroPedido" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoCobroPedido" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoCobroPedido" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoCobroPedido" OWNER TO postgres;

--
-- TOC entry 1790 (class 1259 OID 17225)
-- Dependencies: 1791 3
-- Name: EstadoCobroPedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoCobroPedido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoCobroPedido_id_seq" OWNER TO postgres;

--
-- TOC entry 2674 (class 0 OID 0)
-- Dependencies: 1790
-- Name: EstadoCobroPedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoCobroPedido_id_seq" OWNED BY "EstadoCobroPedido".id;


--
-- TOC entry 2675 (class 0 OID 0)
-- Dependencies: 1790
-- Name: EstadoCobroPedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoCobroPedido_id_seq"', 1, false);


--
-- TOC entry 1840 (class 1259 OID 17902)
-- Dependencies: 3
-- Name: EstadoDetalleOrdenCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoDetalleOrdenCompra" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoDetalleOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoDetalleOrdenCompra" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoDetalleOrdenCompra" OWNER TO postgres;

--
-- TOC entry 1839 (class 1259 OID 17900)
-- Dependencies: 1840 3
-- Name: EstadoDetalleOrdenCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoDetalleOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoDetalleOrdenCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2676 (class 0 OID 0)
-- Dependencies: 1839
-- Name: EstadoDetalleOrdenCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoDetalleOrdenCompra_id_seq" OWNED BY "EstadoDetalleOrdenCompra".id;


--
-- TOC entry 2677 (class 0 OID 0)
-- Dependencies: 1839
-- Name: EstadoDetalleOrdenCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoDetalleOrdenCompra_id_seq"', 1, false);


--
-- TOC entry 1795 (class 1259 OID 17255)
-- Dependencies: 3
-- Name: EstadoDetallePedidoProductoTerminado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoDetallePedidoProductoTerminado" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoDetallePedidoProductoTerminado" OWNER TO postgres;

--
-- TOC entry 1794 (class 1259 OID 17253)
-- Dependencies: 1795 3
-- Name: EstadoDetallePedidoCliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoDetallePedidoCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoDetallePedidoCliente_id_seq" OWNER TO postgres;

--
-- TOC entry 2678 (class 0 OID 0)
-- Dependencies: 1794
-- Name: EstadoDetallePedidoCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoDetallePedidoCliente_id_seq" OWNED BY "EstadoDetallePedidoProductoTerminado".id;


--
-- TOC entry 2679 (class 0 OID 0)
-- Dependencies: 1794
-- Name: EstadoDetallePedidoCliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoDetallePedidoCliente_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1738 (class 1259 OID 16656)
-- Dependencies: 3
-- Name: EstadoDetalleVenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoDetalleVenta" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."EstadoDetalleVenta" OWNER TO postgres;

--
-- TOC entry 1737 (class 1259 OID 16654)
-- Dependencies: 3 1738
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
-- TOC entry 2680 (class 0 OID 0)
-- Dependencies: 1737
-- Name: EstadoDetalleVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoDetalleVenta_id_seq" OWNED BY "EstadoDetalleVenta".id;


--
-- TOC entry 2681 (class 0 OID 0)
-- Dependencies: 1737
-- Name: EstadoDetalleVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoDetalleVenta_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1845 (class 1259 OID 17937)
-- Dependencies: 3
-- Name: EstadoNotificacionReaprovisionamiento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoNotificacionReaprovisionamiento" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoNotificacionReaprovisionamiento" OWNER TO postgres;

--
-- TOC entry 1844 (class 1259 OID 17935)
-- Dependencies: 1845 3
-- Name: EstadoNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoNotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoNotificacionReaprovisionamiento_id_seq" OWNER TO postgres;

--
-- TOC entry 2682 (class 0 OID 0)
-- Dependencies: 1844
-- Name: EstadoNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoNotificacionReaprovisionamiento_id_seq" OWNED BY "EstadoNotificacionReaprovisionamiento".id;


--
-- TOC entry 2683 (class 0 OID 0)
-- Dependencies: 1844
-- Name: EstadoNotificacionReaprovisionamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoNotificacionReaprovisionamiento_id_seq"', 1, false);


--
-- TOC entry 1816 (class 1259 OID 17482)
-- Dependencies: 3
-- Name: EstadoOrdenCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoOrdenCompra" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoOrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoOrdenCompra" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoOrdenCompra" OWNER TO postgres;

--
-- TOC entry 1815 (class 1259 OID 17480)
-- Dependencies: 3 1816
-- Name: EstadoOrdenCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoOrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoOrdenCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2684 (class 0 OID 0)
-- Dependencies: 1815
-- Name: EstadoOrdenCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoOrdenCompra_id_seq" OWNED BY "EstadoOrdenCompra".id;


--
-- TOC entry 2685 (class 0 OID 0)
-- Dependencies: 1815
-- Name: EstadoOrdenCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoOrdenCompra_id_seq"', 1, false);


--
-- TOC entry 1799 (class 1259 OID 17284)
-- Dependencies: 3
-- Name: EstadoPedidoProductosTerminados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoPedidoProductosTerminados" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoPedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoPedidoProductosTerminados" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoPedidoProductosTerminados" OWNER TO postgres;

--
-- TOC entry 1798 (class 1259 OID 17282)
-- Dependencies: 3 1799
-- Name: EstadoPedidoProductosTerminados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoPedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoPedidoProductosTerminados_id_seq" OWNER TO postgres;

--
-- TOC entry 2686 (class 0 OID 0)
-- Dependencies: 1798
-- Name: EstadoPedidoProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoPedidoProductosTerminados_id_seq" OWNED BY "EstadoPedidoProductosTerminados".id;


--
-- TOC entry 2687 (class 0 OID 0)
-- Dependencies: 1798
-- Name: EstadoPedidoProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoPedidoProductosTerminados_id_seq"', 1, false);


--
-- TOC entry 1808 (class 1259 OID 17371)
-- Dependencies: 3
-- Name: EstadoVenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "EstadoVenta" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "EstadoVenta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "EstadoVenta" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."EstadoVenta" OWNER TO postgres;

--
-- TOC entry 1807 (class 1259 OID 17369)
-- Dependencies: 1808 3
-- Name: EstadoVenta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "EstadoVenta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."EstadoVenta_id_seq" OWNER TO postgres;

--
-- TOC entry 2688 (class 0 OID 0)
-- Dependencies: 1807
-- Name: EstadoVenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "EstadoVenta_id_seq" OWNED BY "EstadoVenta".id;


--
-- TOC entry 2689 (class 0 OID 0)
-- Dependencies: 1807
-- Name: EstadoVenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"EstadoVenta_id_seq"', 1, false);


--
-- TOC entry 1806 (class 1259 OID 17347)
-- Dependencies: 3
-- Name: Factura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Factura" (
    id integer NOT NULL,
    "idTipoFactura" integer NOT NULL,
    "idPedidoProductosTerminados" integer
);
ALTER TABLE ONLY "Factura" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Factura" ALTER COLUMN "idTipoFactura" SET STATISTICS 0;
ALTER TABLE ONLY "Factura" ALTER COLUMN "idPedidoProductosTerminados" SET STATISTICS 0;


ALTER TABLE public."Factura" OWNER TO postgres;

--
-- TOC entry 1805 (class 1259 OID 17345)
-- Dependencies: 3 1806
-- Name: Factura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Factura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Factura_id_seq" OWNER TO postgres;

--
-- TOC entry 2690 (class 0 OID 0)
-- Dependencies: 1805
-- Name: Factura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Factura_id_seq" OWNED BY "Factura".id;


--
-- TOC entry 2691 (class 0 OID 0)
-- Dependencies: 1805
-- Name: Factura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Factura_id_seq"', 1, false);


--
-- TOC entry 1823 (class 1259 OID 17549)
-- Dependencies: 3
-- Name: HojaRuta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "HojaRuta" (
    id integer NOT NULL,
    "idPosicionViajante" integer NOT NULL,
    fecha date NOT NULL
);
ALTER TABLE ONLY "HojaRuta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "HojaRuta" ALTER COLUMN "idPosicionViajante" SET STATISTICS 0;
ALTER TABLE ONLY "HojaRuta" ALTER COLUMN fecha SET STATISTICS 0;


ALTER TABLE public."HojaRuta" OWNER TO postgres;

--
-- TOC entry 1822 (class 1259 OID 17547)
-- Dependencies: 1823 3
-- Name: HojaRuta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "HojaRuta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."HojaRuta_id_seq" OWNER TO postgres;

--
-- TOC entry 2692 (class 0 OID 0)
-- Dependencies: 1822
-- Name: HojaRuta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "HojaRuta_id_seq" OWNED BY "HojaRuta".id;


--
-- TOC entry 2693 (class 0 OID 0)
-- Dependencies: 1822
-- Name: HojaRuta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"HojaRuta_id_seq"', 1, false);


--
-- TOC entry 1835 (class 1259 OID 17635)
-- Dependencies: 3
-- Name: Importacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Importacion" (
    id integer NOT NULL,
    fecha date NOT NULL,
    "lugarOrigen" character varying(20) NOT NULL,
    "idCompra" integer NOT NULL,
    "pagoAduana" numeric(20,2),
    "fechaEmbarque" date
);
ALTER TABLE ONLY "Importacion" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Importacion" ALTER COLUMN fecha SET STATISTICS 0;
ALTER TABLE ONLY "Importacion" ALTER COLUMN "lugarOrigen" SET STATISTICS 0;
ALTER TABLE ONLY "Importacion" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY "Importacion" ALTER COLUMN "pagoAduana" SET STATISTICS 0;
ALTER TABLE ONLY "Importacion" ALTER COLUMN "fechaEmbarque" SET STATISTICS 0;


ALTER TABLE public."Importacion" OWNER TO postgres;

--
-- TOC entry 1834 (class 1259 OID 17633)
-- Dependencies: 3 1835
-- Name: Importacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Importacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Importacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2694 (class 0 OID 0)
-- Dependencies: 1834
-- Name: Importacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Importacion_id_seq" OWNED BY "Importacion".id;


--
-- TOC entry 2695 (class 0 OID 0)
-- Dependencies: 1834
-- Name: Importacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Importacion_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1745 (class 1259 OID 16723)
-- Dependencies: 3
-- Name: Localidad; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Localidad" (
    nombre character varying(20),
    "idProvincia" integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Localidad" OWNER TO postgres;

--
-- TOC entry 1751 (class 1259 OID 16785)
-- Dependencies: 1745 3
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
-- TOC entry 2696 (class 0 OID 0)
-- Dependencies: 1751
-- Name: Localidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Localidad_id_seq" OWNED BY "Localidad".id;


--
-- TOC entry 2697 (class 0 OID 0)
-- Dependencies: 1751
-- Name: Localidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Localidad_id_seq"', 1, false);


--
-- TOC entry 1728 (class 1259 OID 16565)
-- Dependencies: 2145 2146 3
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
-- TOC entry 1727 (class 1259 OID 16563)
-- Dependencies: 1728 3
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
-- TOC entry 2698 (class 0 OID 0)
-- Dependencies: 1727
-- Name: Lote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Lote_id_seq" OWNED BY "Lote".id;


--
-- TOC entry 2699 (class 0 OID 0)
-- Dependencies: 1727
-- Name: Lote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Lote_id_seq"', 1, false);


--
-- TOC entry 1715 (class 1259 OID 16398)
-- Dependencies: 3
-- Name: Marca; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Marca" (
    nombre character varying(20) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Marca" OWNER TO postgres;

--
-- TOC entry 1716 (class 1259 OID 16410)
-- Dependencies: 3 1715
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
-- TOC entry 2700 (class 0 OID 0)
-- Dependencies: 1716
-- Name: Marca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Marca_id_seq" OWNED BY "Marca".id;


--
-- TOC entry 2701 (class 0 OID 0)
-- Dependencies: 1716
-- Name: Marca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Marca_id_seq"', 1, false);


--
-- TOC entry 1724 (class 1259 OID 16478)
-- Dependencies: 2139 3
-- Name: MateriaPrima; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "MateriaPrima" (
    id integer NOT NULL,
    codigo integer NOT NULL,
    nombre character varying(20) NOT NULL,
    descripcion character varying(200),
    "stockActual" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."MateriaPrima" OWNER TO postgres;

--
-- TOC entry 1723 (class 1259 OID 16476)
-- Dependencies: 1724 3
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
-- TOC entry 2702 (class 0 OID 0)
-- Dependencies: 1723
-- Name: MateriaPrima_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "MateriaPrima_id_seq" OWNED BY "MateriaPrima".id;


--
-- TOC entry 2703 (class 0 OID 0)
-- Dependencies: 1723
-- Name: MateriaPrima_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"MateriaPrima_id_seq"', 1, false);


--
-- TOC entry 1718 (class 1259 OID 16437)
-- Dependencies: 3
-- Name: Modelo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Modelo" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    "nroSerie" integer
);


ALTER TABLE public."Modelo" OWNER TO postgres;

--
-- TOC entry 1717 (class 1259 OID 16435)
-- Dependencies: 1718 3
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
-- TOC entry 2704 (class 0 OID 0)
-- Dependencies: 1717
-- Name: Modelo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Modelo_id_seq" OWNED BY "Modelo".id;


--
-- TOC entry 2705 (class 0 OID 0)
-- Dependencies: 1717
-- Name: Modelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Modelo_id_seq"', 1, false);


--
-- TOC entry 1736 (class 1259 OID 16637)
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
-- TOC entry 1735 (class 1259 OID 16635)
-- Dependencies: 1736 3
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
-- TOC entry 2706 (class 0 OID 0)
-- Dependencies: 1735
-- Name: Muestrario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Muestrario_id_seq" OWNED BY "Muestrario".id;


--
-- TOC entry 2707 (class 0 OID 0)
-- Dependencies: 1735
-- Name: Muestrario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Muestrario_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1847 (class 1259 OID 17947)
-- Dependencies: 3
-- Name: NotificacionReaprovisionamiento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "NotificacionReaprovisionamiento" (
    id integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idEstadoNotificacionReaprovisionamiento" integer NOT NULL,
    "fechaIngresoDeposito" date NOT NULL
);
ALTER TABLE ONLY "NotificacionReaprovisionamiento" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "NotificacionReaprovisionamiento" ALTER COLUMN "idEmpleado" SET STATISTICS 0;
ALTER TABLE ONLY "NotificacionReaprovisionamiento" ALTER COLUMN "idEstadoNotificacionReaprovisionamiento" SET STATISTICS 0;
ALTER TABLE ONLY "NotificacionReaprovisionamiento" ALTER COLUMN "fechaIngresoDeposito" SET STATISTICS 0;


ALTER TABLE public."NotificacionReaprovisionamiento" OWNER TO postgres;

--
-- TOC entry 1846 (class 1259 OID 17945)
-- Dependencies: 1847 3
-- Name: NotificacionReaprovisionamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "NotificacionReaprovisionamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."NotificacionReaprovisionamiento_id_seq" OWNER TO postgres;

--
-- TOC entry 2708 (class 0 OID 0)
-- Dependencies: 1846
-- Name: NotificacionReaprovisionamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "NotificacionReaprovisionamiento_id_seq" OWNED BY "NotificacionReaprovisionamiento".id;


--
-- TOC entry 2709 (class 0 OID 0)
-- Dependencies: 1846
-- Name: NotificacionReaprovisionamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"NotificacionReaprovisionamiento_id_seq"', 1, false);


--
-- TOC entry 1818 (class 1259 OID 17492)
-- Dependencies: 3
-- Name: OrdenCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "OrdenCompra" (
    id integer NOT NULL,
    "idEmpresaTransporteInterior" integer,
    "idEmpresaTransporteExterior" integer,
    "idProveedor" integer,
    "fechaPedido" date NOT NULL,
    "fechaEstimadaLlegada" date,
    "idEstadoOrdenCompra" integer NOT NULL,
    "otrosGastos" numeric(20,2)
);
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "idEmpresaTransporteInterior" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "idEmpresaTransporteExterior" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "idProveedor" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "fechaPedido" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "fechaEstimadaLlegada" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "idEstadoOrdenCompra" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompra" ALTER COLUMN "otrosGastos" SET STATISTICS 0;


ALTER TABLE public."OrdenCompra" OWNER TO postgres;

--
-- TOC entry 1837 (class 1259 OID 17648)
-- Dependencies: 3
-- Name: OrdenCompraXImportacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "OrdenCompraXImportacion" (
    id integer NOT NULL,
    "idImportacion" integer NOT NULL,
    "idOrdenCompra" integer NOT NULL
);
ALTER TABLE ONLY "OrdenCompraXImportacion" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompraXImportacion" ALTER COLUMN "idImportacion" SET STATISTICS 0;
ALTER TABLE ONLY "OrdenCompraXImportacion" ALTER COLUMN "idOrdenCompra" SET STATISTICS 0;


ALTER TABLE public."OrdenCompraXImportacion" OWNER TO postgres;

--
-- TOC entry 1836 (class 1259 OID 17646)
-- Dependencies: 1837 3
-- Name: OrdenCompraXImportacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "OrdenCompraXImportacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."OrdenCompraXImportacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2710 (class 0 OID 0)
-- Dependencies: 1836
-- Name: OrdenCompraXImportacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "OrdenCompraXImportacion_id_seq" OWNED BY "OrdenCompraXImportacion".id;


--
-- TOC entry 2711 (class 0 OID 0)
-- Dependencies: 1836
-- Name: OrdenCompraXImportacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"OrdenCompraXImportacion_id_seq"', 1, false);


--
-- TOC entry 1817 (class 1259 OID 17490)
-- Dependencies: 1818 3
-- Name: OrdenCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "OrdenCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."OrdenCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2712 (class 0 OID 0)
-- Dependencies: 1817
-- Name: OrdenCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "OrdenCompra_id_seq" OWNED BY "OrdenCompra".id;


--
-- TOC entry 2713 (class 0 OID 0)
-- Dependencies: 1817
-- Name: OrdenCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"OrdenCompra_id_seq"', 1, false);


--
-- TOC entry 1780 (class 1259 OID 17142)
-- Dependencies: 3
-- Name: OtrosGastos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "OtrosGastos" (
    "idPago" integer NOT NULL,
    descripcion character varying(20) NOT NULL
);
ALTER TABLE ONLY "OtrosGastos" ALTER COLUMN "idPago" SET STATISTICS 0;
ALTER TABLE ONLY "OtrosGastos" ALTER COLUMN descripcion SET STATISTICS 0;


ALTER TABLE public."OtrosGastos" OWNER TO postgres;

SET default_with_oids = false;

--
-- TOC entry 1773 (class 1259 OID 17009)
-- Dependencies: 2174 3
-- Name: Pago; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pago" (
    id integer NOT NULL,
    monto numeric DEFAULT 0 NOT NULL,
    "fechaPago" date NOT NULL,
    "nroPago" integer NOT NULL,
    "idDivisa" integer
);


ALTER TABLE public."Pago" OWNER TO postgres;

SET default_with_oids = true;

--
-- TOC entry 1778 (class 1259 OID 17117)
-- Dependencies: 3
-- Name: PagoEmpleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "PagoEmpleado" (
    "idEmpleado" integer NOT NULL,
    "idPago" integer NOT NULL
);
ALTER TABLE ONLY "PagoEmpleado" ALTER COLUMN "idEmpleado" SET STATISTICS 0;


ALTER TABLE public."PagoEmpleado" OWNER TO postgres;

--
-- TOC entry 1779 (class 1259 OID 17122)
-- Dependencies: 3 1778
-- Name: PagoEmpleado_idPago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "PagoEmpleado_idPago_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."PagoEmpleado_idPago_seq" OWNER TO postgres;

--
-- TOC entry 2714 (class 0 OID 0)
-- Dependencies: 1779
-- Name: PagoEmpleado_idPago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PagoEmpleado_idPago_seq" OWNED BY "PagoEmpleado"."idPago";


--
-- TOC entry 2715 (class 0 OID 0)
-- Dependencies: 1779
-- Name: PagoEmpleado_idPago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PagoEmpleado_idPago_seq"', 1, false);


--
-- TOC entry 1819 (class 1259 OID 17518)
-- Dependencies: 3
-- Name: PagoProveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "PagoProveedor" (
    "idPago" integer NOT NULL,
    "idOrdenCompra" integer NOT NULL
);
ALTER TABLE ONLY "PagoProveedor" ALTER COLUMN "idPago" SET STATISTICS 0;
ALTER TABLE ONLY "PagoProveedor" ALTER COLUMN "idOrdenCompra" SET STATISTICS 0;


ALTER TABLE public."PagoProveedor" OWNER TO postgres;

--
-- TOC entry 1772 (class 1259 OID 17007)
-- Dependencies: 3 1773
-- Name: Pago_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pago_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Pago_id_seq" OWNER TO postgres;

--
-- TOC entry 2716 (class 0 OID 0)
-- Dependencies: 1772
-- Name: Pago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pago_id_seq" OWNED BY "Pago".id;


--
-- TOC entry 2717 (class 0 OID 0)
-- Dependencies: 1772
-- Name: Pago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pago_id_seq"', 1, false);


--
-- TOC entry 1801 (class 1259 OID 17294)
-- Dependencies: 3
-- Name: PedidoProductosTerminados; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "PedidoProductosTerminados" (
    id integer NOT NULL,
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
);
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "fechaPedido" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "idEstadoPedidoProductosTerminados" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "fechaCancelacion" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "motivoEstado" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "fechaEstimadaEntrega" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "fechaEntregaViajante" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "idViajante" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "idEmpleado" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN descuento SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "domicilioEnvio" SET STATISTICS 0;
ALTER TABLE ONLY "PedidoProductosTerminados" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;


ALTER TABLE public."PedidoProductosTerminados" OWNER TO postgres;

--
-- TOC entry 1800 (class 1259 OID 17292)
-- Dependencies: 1801 3
-- Name: PedidoProductosTerminados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "PedidoProductosTerminados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."PedidoProductosTerminados_id_seq" OWNER TO postgres;

--
-- TOC entry 2718 (class 0 OID 0)
-- Dependencies: 1800
-- Name: PedidoProductosTerminados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PedidoProductosTerminados_id_seq" OWNED BY "PedidoProductosTerminados".id;


--
-- TOC entry 2719 (class 0 OID 0)
-- Dependencies: 1800
-- Name: PedidoProductosTerminados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PedidoProductosTerminados_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1756 (class 1259 OID 16830)
-- Dependencies: 3
-- Name: Persona; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Persona" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido character varying(20) NOT NULL,
    "idDomicilio" integer,
    telefono character varying(20),
    celular character varying(20),
    dni character varying(20),
    "idTipoDni" integer,
    mail character varying(30)
);


ALTER TABLE public."Persona" OWNER TO postgres;

--
-- TOC entry 1755 (class 1259 OID 16828)
-- Dependencies: 3 1756
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
-- TOC entry 2720 (class 0 OID 0)
-- Dependencies: 1755
-- Name: Persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Persona_id_seq" OWNED BY "Persona".id;


--
-- TOC entry 2721 (class 0 OID 0)
-- Dependencies: 1755
-- Name: Persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Persona_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1852 (class 1259 OID 18019)
-- Dependencies: 3
-- Name: ProductoFabricado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductoFabricado" (
    "idProductoTerminado" integer NOT NULL,
    "costoProduccion" numeric(20,2) NOT NULL
);
ALTER TABLE ONLY "ProductoFabricado" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY "ProductoFabricado" ALTER COLUMN "costoProduccion" SET STATISTICS 0;


ALTER TABLE public."ProductoFabricado" OWNER TO postgres;

--
-- TOC entry 1843 (class 1259 OID 17925)
-- Dependencies: 3
-- Name: ProductoImportado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductoImportado" (
    "idProductoTerminado" integer NOT NULL,
    "precioCompra" numeric(20,2) NOT NULL
);
ALTER TABLE ONLY "ProductoImportado" ALTER COLUMN "idProductoTerminado" SET STATISTICS 0;
ALTER TABLE ONLY "ProductoImportado" ALTER COLUMN "precioCompra" SET STATISTICS 0;


ALTER TABLE public."ProductoImportado" OWNER TO postgres;

SET default_with_oids = false;

--
-- TOC entry 1726 (class 1259 OID 16495)
-- Dependencies: 2141 2142 2143 3
-- Name: ProductoTerminado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductoTerminado" (
    id integer NOT NULL,
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
);


ALTER TABLE public."ProductoTerminado" OWNER TO postgres;

--
-- TOC entry 1725 (class 1259 OID 16493)
-- Dependencies: 1726 3
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
-- TOC entry 2722 (class 0 OID 0)
-- Dependencies: 1725
-- Name: ProductoTerminado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ProductoTerminado_id_seq" OWNED BY "ProductoTerminado".id;


--
-- TOC entry 2723 (class 0 OID 0)
-- Dependencies: 1725
-- Name: ProductoTerminado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"ProductoTerminado_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1829 (class 1259 OID 17595)
-- Dependencies: 2201 3
-- Name: ProductosDefectuosos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductosDefectuosos" (
    id integer NOT NULL,
    cantidad integer DEFAULT 0 NOT NULL,
    "idTipoDefecto" integer NOT NULL
);
ALTER TABLE ONLY "ProductosDefectuosos" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "ProductosDefectuosos" ALTER COLUMN cantidad SET STATISTICS 0;
ALTER TABLE ONLY "ProductosDefectuosos" ALTER COLUMN "idTipoDefecto" SET STATISTICS 0;


ALTER TABLE public."ProductosDefectuosos" OWNER TO postgres;

--
-- TOC entry 1833 (class 1259 OID 17617)
-- Dependencies: 3
-- Name: ProductosDefectuososXCompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "ProductosDefectuososXCompra" (
    id integer NOT NULL,
    "idCompra" integer NOT NULL,
    "idProductosDefectuosos" integer NOT NULL
);
ALTER TABLE ONLY "ProductosDefectuososXCompra" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "ProductosDefectuososXCompra" ALTER COLUMN "idCompra" SET STATISTICS 0;
ALTER TABLE ONLY "ProductosDefectuososXCompra" ALTER COLUMN "idProductosDefectuosos" SET STATISTICS 0;


ALTER TABLE public."ProductosDefectuososXCompra" OWNER TO postgres;

--
-- TOC entry 1832 (class 1259 OID 17615)
-- Dependencies: 1833 3
-- Name: ProductosDefectuososXCompra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "ProductosDefectuososXCompra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."ProductosDefectuososXCompra_id_seq" OWNER TO postgres;

--
-- TOC entry 2724 (class 0 OID 0)
-- Dependencies: 1832
-- Name: ProductosDefectuososXCompra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ProductosDefectuososXCompra_id_seq" OWNED BY "ProductosDefectuososXCompra".id;


--
-- TOC entry 2725 (class 0 OID 0)
-- Dependencies: 1832
-- Name: ProductosDefectuososXCompra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"ProductosDefectuososXCompra_id_seq"', 1, false);


--
-- TOC entry 1828 (class 1259 OID 17593)
-- Dependencies: 1829 3
-- Name: ProductosDefectuosos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "ProductosDefectuosos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."ProductosDefectuosos_id_seq" OWNER TO postgres;

--
-- TOC entry 2726 (class 0 OID 0)
-- Dependencies: 1828
-- Name: ProductosDefectuosos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "ProductosDefectuosos_id_seq" OWNED BY "ProductosDefectuosos".id;


--
-- TOC entry 2727 (class 0 OID 0)
-- Dependencies: 1828
-- Name: ProductosDefectuosos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"ProductosDefectuosos_id_seq"', 1, false);


--
-- TOC entry 1811 (class 1259 OID 17448)
-- Dependencies: 2192 3
-- Name: Proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Proveedor" (
    id integer DEFAULT nextval(('"public"."proveedor_id_seq"'::text)::regclass) NOT NULL,
    nombre character varying(20) NOT NULL,
    "razonSocial" character varying(20),
    mail character varying(30),
    "telefonoFijo" character varying(20),
    "telefonoCelular" character varying(20),
    "idDomicilioa" integer,
    pais character varying(20),
    "fechaAlta" date NOT NULL
);
ALTER TABLE ONLY "Proveedor" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN nombre SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN "razonSocial" SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN mail SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN "telefonoFijo" SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN "telefonoCelular" SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN "idDomicilioa" SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN pais SET STATISTICS 0;
ALTER TABLE ONLY "Proveedor" ALTER COLUMN "fechaAlta" SET STATISTICS 0;


ALTER TABLE public."Proveedor" OWNER TO postgres;

SET default_with_oids = false;

--
-- TOC entry 1744 (class 1259 OID 16713)
-- Dependencies: 3
-- Name: Provincia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Provincia" (
    nombre character varying(20) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public."Provincia" OWNER TO postgres;

--
-- TOC entry 1750 (class 1259 OID 16768)
-- Dependencies: 1744 3
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
-- TOC entry 2728 (class 0 OID 0)
-- Dependencies: 1750
-- Name: Provincia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Provincia_id_seq" OWNED BY "Provincia".id;


--
-- TOC entry 2729 (class 0 OID 0)
-- Dependencies: 1750
-- Name: Provincia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Provincia_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1821 (class 1259 OID 17535)
-- Dependencies: 3
-- Name: RentabilidadCliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "RentabilidadCliente" (
    id integer NOT NULL,
    coeficiente numeric(20,2) NOT NULL,
    "idEmpresaCliente" integer NOT NULL
);
ALTER TABLE ONLY "RentabilidadCliente" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "RentabilidadCliente" ALTER COLUMN coeficiente SET STATISTICS 0;
ALTER TABLE ONLY "RentabilidadCliente" ALTER COLUMN "idEmpresaCliente" SET STATISTICS 0;


ALTER TABLE public."RentabilidadCliente" OWNER TO postgres;

--
-- TOC entry 1820 (class 1259 OID 17533)
-- Dependencies: 1821 3
-- Name: RentabilidadCliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "RentabilidadCliente_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."RentabilidadCliente_id_seq" OWNER TO postgres;

--
-- TOC entry 2730 (class 0 OID 0)
-- Dependencies: 1820
-- Name: RentabilidadCliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "RentabilidadCliente_id_seq" OWNED BY "RentabilidadCliente".id;


--
-- TOC entry 2731 (class 0 OID 0)
-- Dependencies: 1820
-- Name: RentabilidadCliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"RentabilidadCliente_id_seq"', 1, false);


--
-- TOC entry 1777 (class 1259 OID 17104)
-- Dependencies: 3
-- Name: Tamano; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Tamano" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "Tamano" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Tamano" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."Tamano" OWNER TO postgres;

--
-- TOC entry 1776 (class 1259 OID 17102)
-- Dependencies: 3 1777
-- Name: Tamano_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tamano_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Tamano_id_seq" OWNER TO postgres;

--
-- TOC entry 2732 (class 0 OID 0)
-- Dependencies: 1776
-- Name: Tamano_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tamano_id_seq" OWNED BY "Tamano".id;


--
-- TOC entry 2733 (class 0 OID 0)
-- Dependencies: 1776
-- Name: Tamano_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tamano_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1732 (class 1259 OID 16601)
-- Dependencies: 3
-- Name: TipoAccesorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoAccesorio" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."TipoAccesorio" OWNER TO postgres;

--
-- TOC entry 1731 (class 1259 OID 16599)
-- Dependencies: 1732 3
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
-- TOC entry 2734 (class 0 OID 0)
-- Dependencies: 1731
-- Name: TipoAccesorio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoAccesorio_id_seq" OWNED BY "TipoAccesorio".id;


--
-- TOC entry 2735 (class 0 OID 0)
-- Dependencies: 1731
-- Name: TipoAccesorio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoAccesorio_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1827 (class 1259 OID 17585)
-- Dependencies: 3
-- Name: TipoDefecto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoDefecto" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "TipoDefecto" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "TipoDefecto" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."TipoDefecto" OWNER TO postgres;

--
-- TOC entry 1826 (class 1259 OID 17583)
-- Dependencies: 1827 3
-- Name: TipoDefecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "TipoDefecto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."TipoDefecto_id_seq" OWNER TO postgres;

--
-- TOC entry 2736 (class 0 OID 0)
-- Dependencies: 1826
-- Name: TipoDefecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoDefecto_id_seq" OWNED BY "TipoDefecto".id;


--
-- TOC entry 2737 (class 0 OID 0)
-- Dependencies: 1826
-- Name: TipoDefecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoDefecto_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1754 (class 1259 OID 16817)
-- Dependencies: 3
-- Name: TipoDni; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoDni" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."TipoDni" OWNER TO postgres;

--
-- TOC entry 1753 (class 1259 OID 16815)
-- Dependencies: 3 1754
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
-- TOC entry 2738 (class 0 OID 0)
-- Dependencies: 1753
-- Name: TipoDni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoDni_id_seq" OWNED BY "TipoDni".id;


--
-- TOC entry 2739 (class 0 OID 0)
-- Dependencies: 1753
-- Name: TipoDni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoDni_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1804 (class 1259 OID 17337)
-- Dependencies: 3
-- Name: TipoFactura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "TipoFactura" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);
ALTER TABLE ONLY "TipoFactura" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "TipoFactura" ALTER COLUMN nombre SET STATISTICS 0;


ALTER TABLE public."TipoFactura" OWNER TO postgres;

--
-- TOC entry 1803 (class 1259 OID 17335)
-- Dependencies: 1804 3
-- Name: TipoFactura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "TipoFactura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."TipoFactura_id_seq" OWNER TO postgres;

--
-- TOC entry 2740 (class 0 OID 0)
-- Dependencies: 1803
-- Name: TipoFactura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TipoFactura_id_seq" OWNED BY "TipoFactura".id;


--
-- TOC entry 2741 (class 0 OID 0)
-- Dependencies: 1803
-- Name: TipoFactura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TipoFactura_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1722 (class 1259 OID 16465)
-- Dependencies: 3
-- Name: Ubicacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Ubicacion" (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public."Ubicacion" OWNER TO postgres;

--
-- TOC entry 1721 (class 1259 OID 16463)
-- Dependencies: 1722 3
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
-- TOC entry 2742 (class 0 OID 0)
-- Dependencies: 1721
-- Name: Ubicacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ubicacion_id_seq" OWNED BY "Ubicacion".id;


--
-- TOC entry 2743 (class 0 OID 0)
-- Dependencies: 1721
-- Name: Ubicacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ubicacion_id_seq"', 1, false);


SET default_with_oids = true;

--
-- TOC entry 1810 (class 1259 OID 17381)
-- Dependencies: 3
-- Name: Venta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Venta" (
    id integer NOT NULL,
    "fechaVenta" date NOT NULL,
    "nroFactura" integer NOT NULL,
    "idCobroPedido" integer NOT NULL,
    "idPedidoProductosTerminados" integer NOT NULL,
    "idEstadoVenta" integer NOT NULL,
    "fechaMaximaDevolucion" date
);
ALTER TABLE ONLY "Venta" ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "fechaVenta" SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "nroFactura" SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "idCobroPedido" SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "idPedidoProductosTerminados" SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "idEstadoVenta" SET STATISTICS 0;
ALTER TABLE ONLY "Venta" ALTER COLUMN "fechaMaximaDevolucion" SET STATISTICS 0;


ALTER TABLE public."Venta" OWNER TO postgres;

--
-- TOC entry 1809 (class 1259 OID 17379)
-- Dependencies: 1810 3
-- Name: Venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Venta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public."Venta_id_seq" OWNER TO postgres;

--
-- TOC entry 2744 (class 0 OID 0)
-- Dependencies: 1809
-- Name: Venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Venta_id_seq" OWNED BY "Venta".id;


--
-- TOC entry 2745 (class 0 OID 0)
-- Dependencies: 1809
-- Name: Venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Venta_id_seq"', 1, false);


SET default_with_oids = false;

--
-- TOC entry 1757 (class 1259 OID 16849)
-- Dependencies: 2164 3
-- Name: Viajante; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Viajante" (
    "idPersona" integer NOT NULL,
    "comisionPorVenta" integer DEFAULT 0 NOT NULL,
    "idDetalleCartera" integer NOT NULL
);


ALTER TABLE public."Viajante" OWNER TO postgres;

--
-- TOC entry 1812 (class 1259 OID 17458)
-- Dependencies: 3
-- Name: proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 2147483647
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.proveedor_id_seq OWNER TO postgres;

--
-- TOC entry 2746 (class 0 OID 0)
-- Dependencies: 1812
-- Name: proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proveedor_id_seq', 1, false);


--
-- TOC entry 2150 (class 2604 OID 16617)
-- Dependencies: 1733 1734 1734
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Accesorio" ALTER COLUMN id SET DEFAULT nextval('"Accesorio_id_seq"'::regclass);


--
-- TOC entry 2160 (class 2604 OID 16741)
-- Dependencies: 1746 1747 1747
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Barrio" ALTER COLUMN id SET DEFAULT nextval('"Barrio_id_seq"'::regclass);


--
-- TOC entry 2171 (class 2604 OID 16969)
-- Dependencies: 1769 1770 1770
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Cargo" ALTER COLUMN id SET DEFAULT nextval('"Cargo_id_seq"'::regclass);


--
-- TOC entry 2177 (class 2604 OID 17157)
-- Dependencies: 1781 1782 1782
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Cheque" ALTER COLUMN id SET DEFAULT nextval('"Cheque_id_seq"'::regclass);


--
-- TOC entry 2181 (class 2604 OID 17240)
-- Dependencies: 1793 1792 1793
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "CobroPedido" ALTER COLUMN id SET DEFAULT nextval('"CobroPedido_id_seq"'::regclass);


--
-- TOC entry 2136 (class 2604 OID 16455)
-- Dependencies: 1719 1720 1720
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Color" ALTER COLUMN id SET DEFAULT nextval('"Color_id_seq"'::regclass);


--
-- TOC entry 2202 (class 2604 OID 17612)
-- Dependencies: 1831 1830 1831
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Compra" ALTER COLUMN id SET DEFAULT nextval('"Compra_id_seq"'::regclass);


--
-- TOC entry 2168 (class 2604 OID 16915)
-- Dependencies: 1763 1764 1764
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "CondicionIVA" ALTER COLUMN id SET DEFAULT nextval('"CondicionIVA_id_seq"'::regclass);


--
-- TOC entry 2165 (class 2604 OID 16870)
-- Dependencies: 1759 1758 1759
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "CreditoCliente" ALTER COLUMN id SET DEFAULT nextval('"CreditoCliente_id_seq"'::regclass);


--
-- TOC entry 2170 (class 2604 OID 16946)
-- Dependencies: 1768 1767 1768
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleCartera" ALTER COLUMN id SET DEFAULT nextval('"DetalleCartera_id_seq"'::regclass);


--
-- TOC entry 2179 (class 2604 OID 17177)
-- Dependencies: 1785 1786 1786
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleCobroPedido" ALTER COLUMN id SET DEFAULT nextval('"DetalleCobroPedido_id_seq"'::regclass);


--
-- TOC entry 2215 (class 2604 OID 18034)
-- Dependencies: 1853 1854 1854
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleCompra" ALTER COLUMN id SET DEFAULT nextval('"DetalleCompra_id_seq"'::regclass);


--
-- TOC entry 2157 (class 2604 OID 16700)
-- Dependencies: 1742 1743 1743
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleDevolucionProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"DetalleDevolucionProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 2187 (class 2604 OID 17724)
-- Dependencies: 1838 1802
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleFactura" ALTER COLUMN id SET DEFAULT nextval('"DetalleFactura_id_seq"'::regclass);


--
-- TOC entry 2198 (class 2604 OID 17565)
-- Dependencies: 1824 1825 1825
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleHojaRuta" ALTER COLUMN id SET DEFAULT nextval('"DetalleHojaRuta_id_seq"'::regclass);


--
-- TOC entry 2147 (class 2604 OID 16585)
-- Dependencies: 1730 1729 1730
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleMateriaPrima" ALTER COLUMN id SET DEFAULT nextval('"DetalleMateriaPrima_id_seq"'::regclass);


--
-- TOC entry 2211 (class 2604 OID 17968)
-- Dependencies: 1848 1849 1849
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleNotificacionReaprovisionamiento" ALTER COLUMN id SET DEFAULT nextval('"DetalleNotificacionReaprovisionamiento_id_seq"'::regclass);


--
-- TOC entry 2207 (class 2604 OID 17915)
-- Dependencies: 1841 1842 1842
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleOrdenCompra" ALTER COLUMN id SET DEFAULT nextval('"DetalleOrdenCompra_id_seq"'::regclass);


--
-- TOC entry 2183 (class 2604 OID 17268)
-- Dependencies: 1796 1797 1797
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetallePedidoProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"DetallePedidoProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 2153 (class 2604 OID 16672)
-- Dependencies: 1739 1740 1740
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DetalleVenta" ALTER COLUMN id SET DEFAULT nextval('"DetalleVenta_id_seq"'::regclass);


--
-- TOC entry 2156 (class 2604 OID 16804)
-- Dependencies: 1752 1741
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "DevolucionProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"DevolucionProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 2175 (class 2604 OID 17023)
-- Dependencies: 1775 1774 1775
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Divisa" ALTER COLUMN id SET DEFAULT nextval('"Divisa_id_seq"'::regclass);


--
-- TOC entry 2161 (class 2604 OID 16757)
-- Dependencies: 1749 1748 1749
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Domicilio" ALTER COLUMN id SET DEFAULT nextval('"Domicilio_id_seq"'::regclass);


--
-- TOC entry 2167 (class 2604 OID 16897)
-- Dependencies: 1762 1761 1762
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EmpresaClienteXPersona" ALTER COLUMN id SET DEFAULT nextval('"EmpresaClienteXPersona_id_seq"'::regclass);


--
-- TOC entry 2193 (class 2604 OID 17472)
-- Dependencies: 1813 1814 1814
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EmpresaTransporte" ALTER COLUMN id SET DEFAULT nextval('"EmpresaTransporte_id_seq"'::regclass);


--
-- TOC entry 2169 (class 2604 OID 16933)
-- Dependencies: 1766 1765 1766
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoCartera" ALTER COLUMN id SET DEFAULT nextval('"EstadoCartera_id_seq"'::regclass);


--
-- TOC entry 2178 (class 2604 OID 17167)
-- Dependencies: 1783 1784 1784
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoCobroCheque" ALTER COLUMN id SET DEFAULT nextval('"EstadoCobroCheque_id_seq"'::regclass);


--
-- TOC entry 2180 (class 2604 OID 17230)
-- Dependencies: 1790 1791 1791
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoCobroPedido" ALTER COLUMN id SET DEFAULT nextval('"EstadoCobroPedido_id_seq"'::regclass);


--
-- TOC entry 2206 (class 2604 OID 17905)
-- Dependencies: 1839 1840 1840
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoDetalleOrdenCompra" ALTER COLUMN id SET DEFAULT nextval('"EstadoDetalleOrdenCompra_id_seq"'::regclass);


--
-- TOC entry 2182 (class 2604 OID 17258)
-- Dependencies: 1795 1794 1795
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoDetallePedidoProductoTerminado" ALTER COLUMN id SET DEFAULT nextval('"EstadoDetallePedidoCliente_id_seq"'::regclass);


--
-- TOC entry 2152 (class 2604 OID 16659)
-- Dependencies: 1737 1738 1738
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoDetalleVenta" ALTER COLUMN id SET DEFAULT nextval('"EstadoDetalleVenta_id_seq"'::regclass);


--
-- TOC entry 2209 (class 2604 OID 17940)
-- Dependencies: 1845 1844 1845
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoNotificacionReaprovisionamiento" ALTER COLUMN id SET DEFAULT nextval('"EstadoNotificacionReaprovisionamiento_id_seq"'::regclass);


--
-- TOC entry 2194 (class 2604 OID 17485)
-- Dependencies: 1816 1815 1816
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoOrdenCompra" ALTER COLUMN id SET DEFAULT nextval('"EstadoOrdenCompra_id_seq"'::regclass);


--
-- TOC entry 2185 (class 2604 OID 17287)
-- Dependencies: 1799 1798 1799
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoPedidoProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"EstadoPedidoProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 2190 (class 2604 OID 17374)
-- Dependencies: 1808 1807 1808
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "EstadoVenta" ALTER COLUMN id SET DEFAULT nextval('"EstadoVenta_id_seq"'::regclass);


--
-- TOC entry 2189 (class 2604 OID 17350)
-- Dependencies: 1806 1805 1806
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Factura" ALTER COLUMN id SET DEFAULT nextval('"Factura_id_seq"'::regclass);


--
-- TOC entry 2197 (class 2604 OID 17552)
-- Dependencies: 1823 1822 1823
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "HojaRuta" ALTER COLUMN id SET DEFAULT nextval('"HojaRuta_id_seq"'::regclass);


--
-- TOC entry 2204 (class 2604 OID 17638)
-- Dependencies: 1835 1834 1835
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Importacion" ALTER COLUMN id SET DEFAULT nextval('"Importacion_id_seq"'::regclass);


--
-- TOC entry 2159 (class 2604 OID 16787)
-- Dependencies: 1751 1745
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Localidad" ALTER COLUMN id SET DEFAULT nextval('"Localidad_id_seq"'::regclass);


--
-- TOC entry 2144 (class 2604 OID 16568)
-- Dependencies: 1727 1728 1728
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Lote" ALTER COLUMN id SET DEFAULT nextval('"Lote_id_seq"'::regclass);


--
-- TOC entry 2134 (class 2604 OID 16412)
-- Dependencies: 1716 1715
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Marca" ALTER COLUMN id SET DEFAULT nextval('"Marca_id_seq"'::regclass);


--
-- TOC entry 2138 (class 2604 OID 16481)
-- Dependencies: 1723 1724 1724
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "MateriaPrima" ALTER COLUMN id SET DEFAULT nextval('"MateriaPrima_id_seq"'::regclass);


--
-- TOC entry 2135 (class 2604 OID 16440)
-- Dependencies: 1718 1717 1718
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Modelo" ALTER COLUMN id SET DEFAULT nextval('"Modelo_id_seq"'::regclass);


--
-- TOC entry 2151 (class 2604 OID 16640)
-- Dependencies: 1736 1735 1736
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Muestrario" ALTER COLUMN id SET DEFAULT nextval('"Muestrario_id_seq"'::regclass);


--
-- TOC entry 2210 (class 2604 OID 17950)
-- Dependencies: 1846 1847 1847
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "NotificacionReaprovisionamiento" ALTER COLUMN id SET DEFAULT nextval('"NotificacionReaprovisionamiento_id_seq"'::regclass);


--
-- TOC entry 2195 (class 2604 OID 17495)
-- Dependencies: 1818 1817 1818
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "OrdenCompra" ALTER COLUMN id SET DEFAULT nextval('"OrdenCompra_id_seq"'::regclass);


--
-- TOC entry 2205 (class 2604 OID 17651)
-- Dependencies: 1836 1837 1837
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "OrdenCompraXImportacion" ALTER COLUMN id SET DEFAULT nextval('"OrdenCompraXImportacion_id_seq"'::regclass);


--
-- TOC entry 2173 (class 2604 OID 17012)
-- Dependencies: 1773 1772 1773
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Pago" ALTER COLUMN id SET DEFAULT nextval('"Pago_id_seq"'::regclass);


--
-- TOC entry 2186 (class 2604 OID 17297)
-- Dependencies: 1800 1801 1801
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "PedidoProductosTerminados" ALTER COLUMN id SET DEFAULT nextval('"PedidoProductosTerminados_id_seq"'::regclass);


--
-- TOC entry 2163 (class 2604 OID 16833)
-- Dependencies: 1755 1756 1756
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Persona" ALTER COLUMN id SET DEFAULT nextval('"Persona_id_seq"'::regclass);


--
-- TOC entry 2140 (class 2604 OID 16498)
-- Dependencies: 1726 1725 1726
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "ProductoTerminado" ALTER COLUMN id SET DEFAULT nextval('"ProductoTerminado_id_seq"'::regclass);


--
-- TOC entry 2200 (class 2604 OID 17598)
-- Dependencies: 1829 1828 1829
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "ProductosDefectuosos" ALTER COLUMN id SET DEFAULT nextval('"ProductosDefectuosos_id_seq"'::regclass);


--
-- TOC entry 2203 (class 2604 OID 17620)
-- Dependencies: 1833 1832 1833
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "ProductosDefectuososXCompra" ALTER COLUMN id SET DEFAULT nextval('"ProductosDefectuososXCompra_id_seq"'::regclass);


--
-- TOC entry 2158 (class 2604 OID 16770)
-- Dependencies: 1750 1744
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Provincia" ALTER COLUMN id SET DEFAULT nextval('"Provincia_id_seq"'::regclass);


--
-- TOC entry 2196 (class 2604 OID 17538)
-- Dependencies: 1820 1821 1821
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "RentabilidadCliente" ALTER COLUMN id SET DEFAULT nextval('"RentabilidadCliente_id_seq"'::regclass);


--
-- TOC entry 2176 (class 2604 OID 17107)
-- Dependencies: 1777 1776 1777
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Tamano" ALTER COLUMN id SET DEFAULT nextval('"Tamano_id_seq"'::regclass);


--
-- TOC entry 2149 (class 2604 OID 16604)
-- Dependencies: 1731 1732 1732
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoAccesorio" ALTER COLUMN id SET DEFAULT nextval('"TipoAccesorio_id_seq"'::regclass);


--
-- TOC entry 2199 (class 2604 OID 17588)
-- Dependencies: 1827 1826 1827
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoDefecto" ALTER COLUMN id SET DEFAULT nextval('"TipoDefecto_id_seq"'::regclass);


--
-- TOC entry 2162 (class 2604 OID 16820)
-- Dependencies: 1753 1754 1754
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoDni" ALTER COLUMN id SET DEFAULT nextval('"TipoDni_id_seq"'::regclass);


--
-- TOC entry 2188 (class 2604 OID 17340)
-- Dependencies: 1803 1804 1804
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "TipoFactura" ALTER COLUMN id SET DEFAULT nextval('"TipoFactura_id_seq"'::regclass);


--
-- TOC entry 2137 (class 2604 OID 16468)
-- Dependencies: 1721 1722 1722
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Ubicacion" ALTER COLUMN id SET DEFAULT nextval('"Ubicacion_id_seq"'::regclass);


--
-- TOC entry 2191 (class 2604 OID 17384)
-- Dependencies: 1810 1809 1810
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE "Venta" ALTER COLUMN id SET DEFAULT nextval('"Venta_id_seq"'::regclass);


--
-- TOC entry 2546 (class 0 OID 16614)
-- Dependencies: 1734
-- Data for Name: Accesorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Accesorio" (id, nombre, "idTipoaccesorio", "idProducto") FROM stdin;
\.


--
-- TOC entry 2554 (class 0 OID 16738)
-- Dependencies: 1747
-- Data for Name: Barrio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Barrio" (id, nombre, "idLocalidad", "idViajante") FROM stdin;
\.


--
-- TOC entry 2565 (class 0 OID 16966)
-- Dependencies: 1770
-- Data for Name: Cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cargo" (id, nombre, descripcion, "precioPorHora") FROM stdin;
\.


--
-- TOC entry 2572 (class 0 OID 17154)
-- Dependencies: 1782
-- Data for Name: Cheque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Cheque" (id, banco, nro, emisor, "fechaEmision", "fechaCobro", cobrador) FROM stdin;
\.


--
-- TOC entry 2575 (class 0 OID 17180)
-- Dependencies: 1787
-- Data for Name: CobreCheque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CobreCheque" ("idDetalleCobroPedido", "idCheque", "idEstadoDetalleCobroPedido") FROM stdin;
\.


--
-- TOC entry 2576 (class 0 OID 17200)
-- Dependencies: 1788
-- Data for Name: CobroEfectivo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CobroEfectivo" ("idDetalleCobroPedido") FROM stdin;
\.


--
-- TOC entry 2577 (class 0 OID 17210)
-- Dependencies: 1789
-- Data for Name: CobroNotaCredito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CobroNotaCredito" ("idDetalleCobroPedido", "idCreditoCliente") FROM stdin;
\.


--
-- TOC entry 2579 (class 0 OID 17237)
-- Dependencies: 1793
-- Data for Name: CobroPedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CobroPedido" (id, "idEstadoCobroPedido", "fechaCobro") FROM stdin;
\.


--
-- TOC entry 2539 (class 0 OID 16452)
-- Dependencies: 1720
-- Data for Name: Color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Color" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2599 (class 0 OID 17609)
-- Dependencies: 1831
-- Data for Name: Compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Compra" (id, "fechaRealLlegada") FROM stdin;
\.


--
-- TOC entry 2562 (class 0 OID 16912)
-- Dependencies: 1764
-- Data for Name: CondicionIVA; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CondicionIVA" (id, nombre, descripcion) FROM stdin;
\.


--
-- TOC entry 2559 (class 0 OID 16867)
-- Dependencies: 1759
-- Data for Name: CreditoCliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "CreditoCliente" (id, monto) FROM stdin;
\.


--
-- TOC entry 2564 (class 0 OID 16943)
-- Dependencies: 1768
-- Data for Name: DetalleCartera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCartera" (id, "fechaDesde", "fechaHasta", "idEstadoCartera", "idEmpresaCliente") FROM stdin;
\.


--
-- TOC entry 2574 (class 0 OID 17174)
-- Dependencies: 1786
-- Data for Name: DetalleCobroPedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCobroPedido" (id, varlor, fecha, "idCobroPedido") FROM stdin;
\.


--
-- TOC entry 2612 (class 0 OID 18031)
-- Dependencies: 1854
-- Data for Name: DetalleCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCompra" (id, "idCompra", "idDetalleOrdenCompra") FROM stdin;
\.


--
-- TOC entry 2614 (class 0 OID 18062)
-- Dependencies: 1856
-- Data for Name: DetalleCompraMateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCompraMateriaPrima" ("idDetalleCompra", "idDetalleOrdenCompraMateriaPrima") FROM stdin;
\.


--
-- TOC entry 2613 (class 0 OID 18047)
-- Dependencies: 1855
-- Data for Name: DetalleCompraProductoImportado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleCompraProductoImportado" ("idDetalleCompra", "idDetalleOrdenCompraProductoImportado") FROM stdin;
\.


--
-- TOC entry 2551 (class 0 OID 16697)
-- Dependencies: 1743
-- Data for Name: DetalleDevolucionProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleDevolucionProductosTerminados" (id, "idDevolucionProductosTerminados", "idDetalleVenta") FROM stdin;
\.


--
-- TOC entry 2584 (class 0 OID 17325)
-- Dependencies: 1802
-- Data for Name: DetalleFactura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleFactura" ("idDetallePedidoProductosTerminados", "idFactura", id) FROM stdin;
\.


--
-- TOC entry 2596 (class 0 OID 17562)
-- Dependencies: 1825
-- Data for Name: DetalleHojaRuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleHojaRuta" (id, "idHojaRuta", "idEmpresaCliente", "idDomicilioVisitar") FROM stdin;
\.


--
-- TOC entry 2544 (class 0 OID 16582)
-- Dependencies: 1730
-- Data for Name: DetalleMateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleMateriaPrima" (id, "cantidadMateriaPrima", "idMateriaPrima", "idLote") FROM stdin;
\.


--
-- TOC entry 2608 (class 0 OID 17965)
-- Dependencies: 1849
-- Data for Name: DetalleNotificacionReaprovisionamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleNotificacionReaprovisionamiento" (id, cantidad, "idNotificacionReaprovisionamiento", "idProductoImportado") FROM stdin;
\.


--
-- TOC entry 2604 (class 0 OID 17912)
-- Dependencies: 1842
-- Data for Name: DetalleOrdenCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleOrdenCompra" (id, precio, "idEstadoDetalleOrdenCompra") FROM stdin;
\.


--
-- TOC entry 2610 (class 0 OID 18003)
-- Dependencies: 1851
-- Data for Name: DetalleOrdenCompraMateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleOrdenCompraMateriaPrima" ("idDetalleOrdenCompra", "idMateriaPrima", cantidad) FROM stdin;
\.


--
-- TOC entry 2609 (class 0 OID 17982)
-- Dependencies: 1850
-- Data for Name: DetalleOrdenCompraProductoImportado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleOrdenCompraProductoImportado" ("idDetalleOrdenCompra", "idProductoImportado", "cantidadProducto") FROM stdin;
\.


--
-- TOC entry 2581 (class 0 OID 17265)
-- Dependencies: 1797
-- Data for Name: DetallePedidoProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetallePedidoProductosTerminados" (id, "idProductoTerminado", "cantidadProducto", "precioPorUnidad", "idEstadoDetallePedidoProductoTerminado", "motivoDevolucion", "motivoNoEntregado", "fechaDevolucion", "idPedidoProductosTerminados") FROM stdin;
\.


--
-- TOC entry 2549 (class 0 OID 16669)
-- Dependencies: 1740
-- Data for Name: DetalleVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DetalleVenta" (id, "idProducto", "cantidadProducto", "precioUnidad", "idEstadoDetalleVenta", "motivoDevolucion", "fechaDevolucion", "idVenta") FROM stdin;
\.


--
-- TOC entry 2550 (class 0 OID 16690)
-- Dependencies: 1741
-- Data for Name: DevolucionProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DevolucionProductosTerminados" (fecha, "idViajante", "idCliente", id) FROM stdin;
\.


--
-- TOC entry 2568 (class 0 OID 17020)
-- Dependencies: 1775
-- Data for Name: Divisa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Divisa" (id, nombre, "tasaCambio") FROM stdin;
\.


--
-- TOC entry 2555 (class 0 OID 16754)
-- Dependencies: 1749
-- Data for Name: Domicilio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Domicilio" (id, altura, "nombreCalle", "nroDpto", "codPostal", "idBarrio") FROM stdin;
\.


--
-- TOC entry 2566 (class 0 OID 16979)
-- Dependencies: 1771
-- Data for Name: Empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Empleado" (cuil, "fechaIngreso", "fechaBaja", "motivoBaja", "idPersona", "idCargo") FROM stdin;
\.


--
-- TOC entry 2560 (class 0 OID 16874)
-- Dependencies: 1760
-- Data for Name: EmpresaCliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EmpresaCliente" (id, "razonSocial", cuit, "idCondicionIVA", telefono, fax, mail, celular, "idCreditoCliente", "idDomicilio") FROM stdin;
\.


--
-- TOC entry 2561 (class 0 OID 16894)
-- Dependencies: 1762
-- Data for Name: EmpresaClienteXPersona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EmpresaClienteXPersona" (id, "idEmpresaCliente", "idPersona") FROM stdin;
\.


--
-- TOC entry 2590 (class 0 OID 17469)
-- Dependencies: 1814
-- Data for Name: EmpresaTransporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EmpresaTransporte" (id, nombre, "idDomicilio") FROM stdin;
\.


--
-- TOC entry 2563 (class 0 OID 16930)
-- Dependencies: 1766
-- Data for Name: EstadoCartera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoCartera" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2573 (class 0 OID 17164)
-- Dependencies: 1784
-- Data for Name: EstadoCobroCheque; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoCobroCheque" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2578 (class 0 OID 17227)
-- Dependencies: 1791
-- Data for Name: EstadoCobroPedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoCobroPedido" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2603 (class 0 OID 17902)
-- Dependencies: 1840
-- Data for Name: EstadoDetalleOrdenCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoDetalleOrdenCompra" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2580 (class 0 OID 17255)
-- Dependencies: 1795
-- Data for Name: EstadoDetallePedidoProductoTerminado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoDetallePedidoProductoTerminado" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2548 (class 0 OID 16656)
-- Dependencies: 1738
-- Data for Name: EstadoDetalleVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoDetalleVenta" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2606 (class 0 OID 17937)
-- Dependencies: 1845
-- Data for Name: EstadoNotificacionReaprovisionamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoNotificacionReaprovisionamiento" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2591 (class 0 OID 17482)
-- Dependencies: 1816
-- Data for Name: EstadoOrdenCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoOrdenCompra" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2582 (class 0 OID 17284)
-- Dependencies: 1799
-- Data for Name: EstadoPedidoProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoPedidoProductosTerminados" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2587 (class 0 OID 17371)
-- Dependencies: 1808
-- Data for Name: EstadoVenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EstadoVenta" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2586 (class 0 OID 17347)
-- Dependencies: 1806
-- Data for Name: Factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Factura" (id, "idTipoFactura", "idPedidoProductosTerminados") FROM stdin;
\.


--
-- TOC entry 2595 (class 0 OID 17549)
-- Dependencies: 1823
-- Data for Name: HojaRuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "HojaRuta" (id, "idPosicionViajante", fecha) FROM stdin;
\.


--
-- TOC entry 2601 (class 0 OID 17635)
-- Dependencies: 1835
-- Data for Name: Importacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Importacion" (id, fecha, "lugarOrigen", "idCompra", "pagoAduana", "fechaEmbarque") FROM stdin;
\.


--
-- TOC entry 2553 (class 0 OID 16723)
-- Dependencies: 1745
-- Data for Name: Localidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Localidad" (nombre, "idProvincia", id) FROM stdin;
\.


--
-- TOC entry 2543 (class 0 OID 16565)
-- Dependencies: 1728
-- Data for Name: Lote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Lote" (id, "nroLote", "cantidadProducida", "idProducto") FROM stdin;
\.


--
-- TOC entry 2537 (class 0 OID 16398)
-- Dependencies: 1715
-- Data for Name: Marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Marca" (nombre, id) FROM stdin;
\.


--
-- TOC entry 2541 (class 0 OID 16478)
-- Dependencies: 1724
-- Data for Name: MateriaPrima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "MateriaPrima" (id, codigo, nombre, descripcion, "stockActual") FROM stdin;
\.


--
-- TOC entry 2538 (class 0 OID 16437)
-- Dependencies: 1718
-- Data for Name: Modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Modelo" (id, nombre, "nroSerie") FROM stdin;
\.


--
-- TOC entry 2547 (class 0 OID 16637)
-- Dependencies: 1736
-- Data for Name: Muestrario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Muestrario" (id, "fechaDesde", "fechaHasta") FROM stdin;
\.


--
-- TOC entry 2607 (class 0 OID 17947)
-- Dependencies: 1847
-- Data for Name: NotificacionReaprovisionamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "NotificacionReaprovisionamiento" (id, "idEmpleado", "idEstadoNotificacionReaprovisionamiento", "fechaIngresoDeposito") FROM stdin;
\.


--
-- TOC entry 2592 (class 0 OID 17492)
-- Dependencies: 1818
-- Data for Name: OrdenCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "OrdenCompra" (id, "idEmpresaTransporteInterior", "idEmpresaTransporteExterior", "idProveedor", "fechaPedido", "fechaEstimadaLlegada", "idEstadoOrdenCompra", "otrosGastos") FROM stdin;
\.


--
-- TOC entry 2602 (class 0 OID 17648)
-- Dependencies: 1837
-- Data for Name: OrdenCompraXImportacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "OrdenCompraXImportacion" (id, "idImportacion", "idOrdenCompra") FROM stdin;
\.


--
-- TOC entry 2571 (class 0 OID 17142)
-- Dependencies: 1780
-- Data for Name: OtrosGastos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "OtrosGastos" ("idPago", descripcion) FROM stdin;
\.


--
-- TOC entry 2567 (class 0 OID 17009)
-- Dependencies: 1773
-- Data for Name: Pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pago" (id, monto, "fechaPago", "nroPago", "idDivisa") FROM stdin;
\.


--
-- TOC entry 2570 (class 0 OID 17117)
-- Dependencies: 1778
-- Data for Name: PagoEmpleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "PagoEmpleado" ("idEmpleado", "idPago") FROM stdin;
\.


--
-- TOC entry 2593 (class 0 OID 17518)
-- Dependencies: 1819
-- Data for Name: PagoProveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "PagoProveedor" ("idPago", "idOrdenCompra") FROM stdin;
\.


--
-- TOC entry 2583 (class 0 OID 17294)
-- Dependencies: 1801
-- Data for Name: PedidoProductosTerminados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "PedidoProductosTerminados" (id, "fechaPedido", "idEstadoPedidoProductosTerminados", "fechaCancelacion", "motivoEstado", "fechaEstimadaEntrega", "fechaEntregaViajante", "idViajante", "idEmpleado", descuento, "domicilioEnvio", "idEmpresaCliente") FROM stdin;
\.


--
-- TOC entry 2557 (class 0 OID 16830)
-- Dependencies: 1756
-- Data for Name: Persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Persona" (id, nombre, apellido, "idDomicilio", telefono, celular, dni, "idTipoDni", mail) FROM stdin;
\.


--
-- TOC entry 2611 (class 0 OID 18019)
-- Dependencies: 1852
-- Data for Name: ProductoFabricado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductoFabricado" ("idProductoTerminado", "costoProduccion") FROM stdin;
\.


--
-- TOC entry 2605 (class 0 OID 17925)
-- Dependencies: 1843
-- Data for Name: ProductoImportado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductoImportado" ("idProductoTerminado", "precioCompra") FROM stdin;
\.


--
-- TOC entry 2542 (class 0 OID 16495)
-- Dependencies: 1726
-- Data for Name: ProductoTerminado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductoTerminado" (id, "nroProducto", "precioEstimado", nombre, "nivelReaprovisionamiento", "stockMaximo", "fechaIngreso", "idModelo", "idColor", "stockActual", "idTamano", "precioVenta", "idMarca", "idUbicacion", "idMuestrario") FROM stdin;
\.


--
-- TOC entry 2598 (class 0 OID 17595)
-- Dependencies: 1829
-- Data for Name: ProductosDefectuosos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductosDefectuosos" (id, cantidad, "idTipoDefecto") FROM stdin;
\.


--
-- TOC entry 2600 (class 0 OID 17617)
-- Dependencies: 1833
-- Data for Name: ProductosDefectuososXCompra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "ProductosDefectuososXCompra" (id, "idCompra", "idProductosDefectuosos") FROM stdin;
\.


--
-- TOC entry 2589 (class 0 OID 17448)
-- Dependencies: 1811
-- Data for Name: Proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Proveedor" (id, nombre, "razonSocial", mail, "telefonoFijo", "telefonoCelular", "idDomicilioa", pais, "fechaAlta") FROM stdin;
\.


--
-- TOC entry 2552 (class 0 OID 16713)
-- Dependencies: 1744
-- Data for Name: Provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Provincia" (nombre, id) FROM stdin;
\.


--
-- TOC entry 2594 (class 0 OID 17535)
-- Dependencies: 1821
-- Data for Name: RentabilidadCliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "RentabilidadCliente" (id, coeficiente, "idEmpresaCliente") FROM stdin;
\.


--
-- TOC entry 2569 (class 0 OID 17104)
-- Dependencies: 1777
-- Data for Name: Tamano; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tamano" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2545 (class 0 OID 16601)
-- Dependencies: 1732
-- Data for Name: TipoAccesorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoAccesorio" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2597 (class 0 OID 17585)
-- Dependencies: 1827
-- Data for Name: TipoDefecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoDefecto" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2556 (class 0 OID 16817)
-- Dependencies: 1754
-- Data for Name: TipoDni; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoDni" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2585 (class 0 OID 17337)
-- Dependencies: 1804
-- Data for Name: TipoFactura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "TipoFactura" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2540 (class 0 OID 16465)
-- Dependencies: 1722
-- Data for Name: Ubicacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ubicacion" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2588 (class 0 OID 17381)
-- Dependencies: 1810
-- Data for Name: Venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Venta" (id, "fechaVenta", "nroFactura", "idCobroPedido", "idPedidoProductosTerminados", "idEstadoVenta", "fechaMaximaDevolucion") FROM stdin;
\.


--
-- TOC entry 2558 (class 0 OID 16849)
-- Dependencies: 1757
-- Data for Name: Viajante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Viajante" ("idPersona", "comisionPorVenta", "idDetalleCartera") FROM stdin;
\.


--
-- TOC entry 2257 (class 2606 OID 17665)
-- Dependencies: 1734 1734
-- Name: Accesorio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2259 (class 2606 OID 16622)
-- Dependencies: 1734 1734
-- Name: Accesorio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2279 (class 2606 OID 16746)
-- Dependencies: 1747 1747
-- Name: Barrio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2307 (class 2606 OID 17681)
-- Dependencies: 1770 1770
-- Name: Cargo_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2309 (class 2606 OID 16975)
-- Dependencies: 1770 1770
-- Name: Cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cargo"
    ADD CONSTRAINT "Cargo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2331 (class 2606 OID 17161)
-- Dependencies: 1782 1782
-- Name: Cheque_nro_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cheque"
    ADD CONSTRAINT "Cheque_nro_key" UNIQUE (nro);


--
-- TOC entry 2333 (class 2606 OID 17159)
-- Dependencies: 1782 1782
-- Name: Cheque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Cheque"
    ADD CONSTRAINT "Cheque_pkey" PRIMARY KEY (id);


--
-- TOC entry 2341 (class 2606 OID 17184)
-- Dependencies: 1787 1787
-- Name: CobreCheque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_pkey" PRIMARY KEY ("idDetalleCobroPedido");


--
-- TOC entry 2343 (class 2606 OID 17204)
-- Dependencies: 1788 1788
-- Name: CobroEfectivo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CobroEfectivo"
    ADD CONSTRAINT "CobroEfectivo_pkey" PRIMARY KEY ("idDetalleCobroPedido");


--
-- TOC entry 2345 (class 2606 OID 17214)
-- Dependencies: 1789 1789
-- Name: CobroNotaCredito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_pkey" PRIMARY KEY ("idDetalleCobroPedido");


--
-- TOC entry 2351 (class 2606 OID 17242)
-- Dependencies: 1793 1793
-- Name: CobroPedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CobroPedido"
    ADD CONSTRAINT "CobroPedido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2227 (class 2606 OID 17699)
-- Dependencies: 1720 1720
-- Name: Color_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2229 (class 2606 OID 16460)
-- Dependencies: 1720 1720
-- Name: Color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Color"
    ADD CONSTRAINT "Color_pkey" PRIMARY KEY (id);


--
-- TOC entry 2405 (class 2606 OID 17614)
-- Dependencies: 1831 1831
-- Name: Compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Compra"
    ADD CONSTRAINT "Compra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2297 (class 2606 OID 17706)
-- Dependencies: 1764 1764
-- Name: CondicionIVA_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2299 (class 2606 OID 16920)
-- Dependencies: 1764 1764
-- Name: CondicionIVA_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CondicionIVA"
    ADD CONSTRAINT "CondicionIVA_pkey" PRIMARY KEY (id);


--
-- TOC entry 2291 (class 2606 OID 16873)
-- Dependencies: 1759 1759
-- Name: CreditoCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "CreditoCliente"
    ADD CONSTRAINT "CreditoCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2305 (class 2606 OID 16948)
-- Dependencies: 1768 1768
-- Name: DetalleCartera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2339 (class 2606 OID 17179)
-- Dependencies: 1786 1786
-- Name: DetalleCobroPedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCobroPedido"
    ADD CONSTRAINT "DetalleCobroPedido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2439 (class 2606 OID 18066)
-- Dependencies: 1856 1856
-- Name: DetalleCompraMateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_pkey" PRIMARY KEY ("idDetalleCompra");


--
-- TOC entry 2437 (class 2606 OID 18051)
-- Dependencies: 1855 1855
-- Name: DetalleCompraProductoImportado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_pkey" PRIMARY KEY ("idDetalleCompra");


--
-- TOC entry 2435 (class 2606 OID 18036)
-- Dependencies: 1854 1854
-- Name: DetalleCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2271 (class 2606 OID 16702)
-- Dependencies: 1743 1743
-- Name: DetalleDevolucionProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2365 (class 2606 OID 17729)
-- Dependencies: 1802 1802
-- Name: DetalleFactura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2397 (class 2606 OID 17567)
-- Dependencies: 1825 1825
-- Name: DetalleHojaRuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2251 (class 2606 OID 16588)
-- Dependencies: 1730 1730
-- Name: DetalleMateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_pkey" PRIMARY KEY (id);


--
-- TOC entry 2427 (class 2606 OID 17971)
-- Dependencies: 1849 1849
-- Name: DetalleNotificacionReaprovisionamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);


--
-- TOC entry 2431 (class 2606 OID 18008)
-- Dependencies: 1851 1851
-- Name: DetalleOrdenCompraMateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_pkey" PRIMARY KEY ("idDetalleOrdenCompra");


--
-- TOC entry 2429 (class 2606 OID 17987)
-- Dependencies: 1850 1850
-- Name: DetalleOrdenCompraProductoImportado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_pkey" PRIMARY KEY ("idDetalleOrdenCompra");


--
-- TOC entry 2417 (class 2606 OID 17918)
-- Dependencies: 1842 1842
-- Name: DetalleOrdenCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleOrdenCompra"
    ADD CONSTRAINT "DetalleOrdenCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2357 (class 2606 OID 17271)
-- Dependencies: 1797 1797
-- Name: DetallePedidoProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2267 (class 2606 OID 16679)
-- Dependencies: 1740 1740
-- Name: DetalleVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2269 (class 2606 OID 16809)
-- Dependencies: 1741 1741
-- Name: DevolucionProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2317 (class 2606 OID 17748)
-- Dependencies: 1775 1775
-- Name: Divisa_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Divisa"
    ADD CONSTRAINT "Divisa_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2319 (class 2606 OID 17028)
-- Dependencies: 1775 1775
-- Name: Divisa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Divisa"
    ADD CONSTRAINT "Divisa_pkey" PRIMARY KEY (id);


--
-- TOC entry 2281 (class 2606 OID 16762)
-- Dependencies: 1749 1749
-- Name: Domicilio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2311 (class 2606 OID 16986)
-- Dependencies: 1771 1771
-- Name: Empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY ("idPersona");


--
-- TOC entry 2295 (class 2606 OID 16899)
-- Dependencies: 1762 1762
-- Name: EmpresaClienteXPersona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2293 (class 2606 OID 16881)
-- Dependencies: 1760 1760
-- Name: EmpresaCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2383 (class 2606 OID 17474)
-- Dependencies: 1814 1814
-- Name: EmpresaTransporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EmpresaTransporte"
    ADD CONSTRAINT "EmpresaTransporte_pkey" PRIMARY KEY (id);


--
-- TOC entry 2301 (class 2606 OID 17773)
-- Dependencies: 1766 1766
-- Name: EstadoCartera_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2303 (class 2606 OID 16938)
-- Dependencies: 1766 1766
-- Name: EstadoCartera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCartera"
    ADD CONSTRAINT "EstadoCartera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2335 (class 2606 OID 17171)
-- Dependencies: 1784 1784
-- Name: EstadoCobroCheque_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCobroCheque"
    ADD CONSTRAINT "EstadoCobroCheque_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2337 (class 2606 OID 17169)
-- Dependencies: 1784 1784
-- Name: EstadoCobroCheque_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCobroCheque"
    ADD CONSTRAINT "EstadoCobroCheque_pkey" PRIMARY KEY (id);


--
-- TOC entry 2347 (class 2606 OID 17234)
-- Dependencies: 1791 1791
-- Name: EstadoCobroPedido_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCobroPedido"
    ADD CONSTRAINT "EstadoCobroPedido_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2349 (class 2606 OID 17232)
-- Dependencies: 1791 1791
-- Name: EstadoCobroPedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoCobroPedido"
    ADD CONSTRAINT "EstadoCobroPedido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2413 (class 2606 OID 17909)
-- Dependencies: 1840 1840
-- Name: EstadoDetalleOrdenCompra_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleOrdenCompra"
    ADD CONSTRAINT "EstadoDetalleOrdenCompra_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2415 (class 2606 OID 17907)
-- Dependencies: 1840 1840
-- Name: EstadoDetalleOrdenCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleOrdenCompra"
    ADD CONSTRAINT "EstadoDetalleOrdenCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2353 (class 2606 OID 17262)
-- Dependencies: 1795 1795
-- Name: EstadoDetallePedidoCliente_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado"
    ADD CONSTRAINT "EstadoDetallePedidoCliente_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2355 (class 2606 OID 17260)
-- Dependencies: 1795 1795
-- Name: EstadoDetallePedidoCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetallePedidoProductoTerminado"
    ADD CONSTRAINT "EstadoDetallePedidoCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2263 (class 2606 OID 17780)
-- Dependencies: 1738 1738
-- Name: EstadoDetalleVenta_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2265 (class 2606 OID 16664)
-- Dependencies: 1738 1738
-- Name: EstadoDetalleVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoDetalleVenta"
    ADD CONSTRAINT "EstadoDetalleVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2421 (class 2606 OID 17944)
-- Dependencies: 1845 1845
-- Name: EstadoNotificacionReaprovisionamiento_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento"
    ADD CONSTRAINT "EstadoNotificacionReaprovisionamiento_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2423 (class 2606 OID 17942)
-- Dependencies: 1845 1845
-- Name: EstadoNotificacionReaprovisionamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoNotificacionReaprovisionamiento"
    ADD CONSTRAINT "EstadoNotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);


--
-- TOC entry 2385 (class 2606 OID 17489)
-- Dependencies: 1816 1816
-- Name: EstadoOrdenCompra_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoOrdenCompra"
    ADD CONSTRAINT "EstadoOrdenCompra_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2387 (class 2606 OID 17487)
-- Dependencies: 1816 1816
-- Name: EstadoOrdenCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoOrdenCompra"
    ADD CONSTRAINT "EstadoOrdenCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2359 (class 2606 OID 17291)
-- Dependencies: 1799 1799
-- Name: EstadoPedidoProductosTerminados_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoPedidoProductosTerminados"
    ADD CONSTRAINT "EstadoPedidoProductosTerminados_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2361 (class 2606 OID 17289)
-- Dependencies: 1799 1799
-- Name: EstadoPedidoProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoPedidoProductosTerminados"
    ADD CONSTRAINT "EstadoPedidoProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2373 (class 2606 OID 17378)
-- Dependencies: 1808 1808
-- Name: EstadoVenta_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoVenta"
    ADD CONSTRAINT "EstadoVenta_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2375 (class 2606 OID 17376)
-- Dependencies: 1808 1808
-- Name: EstadoVenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "EstadoVenta"
    ADD CONSTRAINT "EstadoVenta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2371 (class 2606 OID 17352)
-- Dependencies: 1806 1806
-- Name: Factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2395 (class 2606 OID 17554)
-- Dependencies: 1823 1823
-- Name: HojaRuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "HojaRuta"
    ADD CONSTRAINT "HojaRuta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2409 (class 2606 OID 17640)
-- Dependencies: 1835 1835
-- Name: Importacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Importacion"
    ADD CONSTRAINT "Importacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2277 (class 2606 OID 16796)
-- Dependencies: 1745 1745
-- Name: Localidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_pkey" PRIMARY KEY (id);


--
-- TOC entry 2247 (class 2606 OID 16574)
-- Dependencies: 1728 1728
-- Name: Lote_nroLote_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_nroLote_key" UNIQUE ("nroLote");


--
-- TOC entry 2249 (class 2606 OID 16572)
-- Dependencies: 1728 1728
-- Name: Lote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_pkey" PRIMARY KEY (id);


--
-- TOC entry 2217 (class 2606 OID 17791)
-- Dependencies: 1715 1715
-- Name: Marca_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2219 (class 2606 OID 16421)
-- Dependencies: 1715 1715
-- Name: Marca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Marca"
    ADD CONSTRAINT "Marca_pkey" PRIMARY KEY (id);


--
-- TOC entry 2235 (class 2606 OID 16489)
-- Dependencies: 1724 1724
-- Name: MateriaPrima_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_codigo_key" UNIQUE (codigo);


--
-- TOC entry 2237 (class 2606 OID 17798)
-- Dependencies: 1724 1724
-- Name: MateriaPrima_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2239 (class 2606 OID 16487)
-- Dependencies: 1724 1724
-- Name: MateriaPrima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "MateriaPrima"
    ADD CONSTRAINT "MateriaPrima_pkey" PRIMARY KEY (id);


--
-- TOC entry 2221 (class 2606 OID 17815)
-- Dependencies: 1718 1718
-- Name: Modelo_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2223 (class 2606 OID 16449)
-- Dependencies: 1718 1718
-- Name: Modelo_nroSerie_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_nroSerie_key" UNIQUE ("nroSerie");


--
-- TOC entry 2225 (class 2606 OID 16445)
-- Dependencies: 1718 1718
-- Name: Modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Modelo"
    ADD CONSTRAINT "Modelo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2261 (class 2606 OID 16642)
-- Dependencies: 1736 1736
-- Name: Muestrario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Muestrario"
    ADD CONSTRAINT "Muestrario_pkey" PRIMARY KEY (id);


--
-- TOC entry 2425 (class 2606 OID 17952)
-- Dependencies: 1847 1847
-- Name: NotificacionReaprovisionamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_pkey" PRIMARY KEY (id);


--
-- TOC entry 2411 (class 2606 OID 17653)
-- Dependencies: 1837 1837
-- Name: OrdenCompraXImportacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2389 (class 2606 OID 17497)
-- Dependencies: 1818 1818
-- Name: OrdenCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2329 (class 2606 OID 17146)
-- Dependencies: 1780 1780
-- Name: OtrosGastos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "OtrosGastos"
    ADD CONSTRAINT "OtrosGastos_pkey" PRIMARY KEY ("idPago");


--
-- TOC entry 2325 (class 2606 OID 17121)
-- Dependencies: 1778 1778
-- Name: PagoEmpleado_idEmpleado_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_idEmpleado_key" UNIQUE ("idEmpleado");


--
-- TOC entry 2327 (class 2606 OID 17130)
-- Dependencies: 1778 1778
-- Name: PagoEmpleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_pkey" PRIMARY KEY ("idPago");


--
-- TOC entry 2391 (class 2606 OID 17522)
-- Dependencies: 1819 1819
-- Name: PagoProveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_pkey" PRIMARY KEY ("idPago");


--
-- TOC entry 2313 (class 2606 OID 17017)
-- Dependencies: 1773 1773
-- Name: Pago_nroPago_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_nroPago_key" UNIQUE ("nroPago");


--
-- TOC entry 2315 (class 2606 OID 17015)
-- Dependencies: 1773 1773
-- Name: Pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_pkey" PRIMARY KEY (id);


--
-- TOC entry 2363 (class 2606 OID 17299)
-- Dependencies: 1801 1801
-- Name: PedidoProductosTerminados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_pkey" PRIMARY KEY (id);


--
-- TOC entry 2287 (class 2606 OID 16838)
-- Dependencies: 1756 1756
-- Name: Persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2433 (class 2606 OID 18023)
-- Dependencies: 1852 1852
-- Name: ProductoFabricado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoFabricado"
    ADD CONSTRAINT "ProductoFabricado_pkey" PRIMARY KEY ("idProductoTerminado");


--
-- TOC entry 2419 (class 2606 OID 17929)
-- Dependencies: 1843 1843
-- Name: ProductoImportado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoImportado"
    ADD CONSTRAINT "ProductoImportado_pkey" PRIMARY KEY ("idProductoTerminado");


--
-- TOC entry 2241 (class 2606 OID 17862)
-- Dependencies: 1726 1726
-- Name: ProductoTerminado_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2243 (class 2606 OID 16502)
-- Dependencies: 1726 1726
-- Name: ProductoTerminado_nroProducto_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_nroProducto_key" UNIQUE ("nroProducto");


--
-- TOC entry 2245 (class 2606 OID 16500)
-- Dependencies: 1726 1726
-- Name: ProductoTerminado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_pkey" PRIMARY KEY (id);


--
-- TOC entry 2407 (class 2606 OID 17622)
-- Dependencies: 1833 1833
-- Name: ProductosDefectuososXCompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2403 (class 2606 OID 17601)
-- Dependencies: 1829 1829
-- Name: ProductosDefectuosos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "ProductosDefectuosos"
    ADD CONSTRAINT "ProductosDefectuosos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2381 (class 2606 OID 17461)
-- Dependencies: 1811 1811
-- Name: Proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT "Proveedor_pkey" PRIMARY KEY (id);


--
-- TOC entry 2273 (class 2606 OID 17873)
-- Dependencies: 1744 1744
-- Name: Provincia_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2275 (class 2606 OID 16779)
-- Dependencies: 1744 1744
-- Name: Provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Provincia"
    ADD CONSTRAINT "Provincia_pkey" PRIMARY KEY (id);


--
-- TOC entry 2393 (class 2606 OID 17540)
-- Dependencies: 1821 1821
-- Name: RentabilidadCliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "RentabilidadCliente"
    ADD CONSTRAINT "RentabilidadCliente_pkey" PRIMARY KEY (id);


--
-- TOC entry 2321 (class 2606 OID 17111)
-- Dependencies: 1777 1777
-- Name: Tamano_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tamano"
    ADD CONSTRAINT "Tamano_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2323 (class 2606 OID 17109)
-- Dependencies: 1777 1777
-- Name: Tamano_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Tamano"
    ADD CONSTRAINT "Tamano_pkey" PRIMARY KEY (id);


--
-- TOC entry 2253 (class 2606 OID 17880)
-- Dependencies: 1732 1732
-- Name: TipoAccesorio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2255 (class 2606 OID 16609)
-- Dependencies: 1732 1732
-- Name: TipoAccesorio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoAccesorio"
    ADD CONSTRAINT "TipoAccesorio_pkey" PRIMARY KEY (id);


--
-- TOC entry 2399 (class 2606 OID 17592)
-- Dependencies: 1827 1827
-- Name: TipoDefecto_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDefecto"
    ADD CONSTRAINT "TipoDefecto_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2401 (class 2606 OID 17590)
-- Dependencies: 1827 1827
-- Name: TipoDefecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDefecto"
    ADD CONSTRAINT "TipoDefecto_pkey" PRIMARY KEY (id);


--
-- TOC entry 2283 (class 2606 OID 17887)
-- Dependencies: 1754 1754
-- Name: TipoDni_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2285 (class 2606 OID 16825)
-- Dependencies: 1754 1754
-- Name: TipoDni_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoDni"
    ADD CONSTRAINT "TipoDni_pkey" PRIMARY KEY (id);


--
-- TOC entry 2367 (class 2606 OID 17344)
-- Dependencies: 1804 1804
-- Name: TipoFactura_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoFactura"
    ADD CONSTRAINT "TipoFactura_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2369 (class 2606 OID 17342)
-- Dependencies: 1804 1804
-- Name: TipoFactura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "TipoFactura"
    ADD CONSTRAINT "TipoFactura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2231 (class 2606 OID 17894)
-- Dependencies: 1722 1722
-- Name: Ubicacion_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_nombre_key" UNIQUE (nombre);


--
-- TOC entry 2233 (class 2606 OID 16473)
-- Dependencies: 1722 1722
-- Name: Ubicacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2377 (class 2606 OID 17388)
-- Dependencies: 1810 1810
-- Name: Venta_nroFactura_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_nroFactura_key" UNIQUE ("nroFactura");


--
-- TOC entry 2379 (class 2606 OID 17386)
-- Dependencies: 1810 1810
-- Name: Venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_pkey" PRIMARY KEY (id);


--
-- TOC entry 2289 (class 2606 OID 16854)
-- Dependencies: 1757 1757
-- Name: Viajante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_pkey" PRIMARY KEY ("idPersona");


--
-- TOC entry 2450 (class 2606 OID 16630)
-- Dependencies: 1734 2244 1726
-- Name: Accesorio_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2449 (class 2606 OID 16625)
-- Dependencies: 1732 1734 2254
-- Name: Accesorio_idTipoaccesorio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Accesorio"
    ADD CONSTRAINT "Accesorio_idTipoaccesorio_fkey" FOREIGN KEY ("idTipoaccesorio") REFERENCES "TipoAccesorio"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2459 (class 2606 OID 16797)
-- Dependencies: 1747 2276 1745
-- Name: Barrio_idLocalidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idLocalidad_fkey" FOREIGN KEY ("idLocalidad") REFERENCES "Localidad"(id);


--
-- TOC entry 2460 (class 2606 OID 16860)
-- Dependencies: 2288 1757 1747
-- Name: Barrio_idViajante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Barrio"
    ADD CONSTRAINT "Barrio_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");


--
-- TOC entry 2480 (class 2606 OID 17185)
-- Dependencies: 2338 1786 1787
-- Name: CobreCheque_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);


--
-- TOC entry 2481 (class 2606 OID 17190)
-- Dependencies: 1787 2332 1782
-- Name: CobreCheque_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk1" FOREIGN KEY ("idCheque") REFERENCES "Cheque"(id);


--
-- TOC entry 2482 (class 2606 OID 17195)
-- Dependencies: 1784 1787 2336
-- Name: CobreCheque_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobreCheque"
    ADD CONSTRAINT "CobreCheque_fk2" FOREIGN KEY ("idEstadoDetalleCobroPedido") REFERENCES "EstadoCobroCheque"(id);


--
-- TOC entry 2483 (class 2606 OID 17205)
-- Dependencies: 2338 1786 1788
-- Name: CobroEfectivo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobroEfectivo"
    ADD CONSTRAINT "CobroEfectivo_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);


--
-- TOC entry 2484 (class 2606 OID 17215)
-- Dependencies: 1786 2338 1789
-- Name: CobroNotaCredito_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_fk" FOREIGN KEY ("idDetalleCobroPedido") REFERENCES "DetalleCobroPedido"(id);


--
-- TOC entry 2485 (class 2606 OID 17220)
-- Dependencies: 2290 1759 1789
-- Name: CobroNotaCredito_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobroNotaCredito"
    ADD CONSTRAINT "CobroNotaCredito_fk1" FOREIGN KEY ("idCreditoCliente") REFERENCES "CreditoCliente"(id);


--
-- TOC entry 2486 (class 2606 OID 17243)
-- Dependencies: 1791 2348 1793
-- Name: CobroPedido_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CobroPedido"
    ADD CONSTRAINT "CobroPedido_fk" FOREIGN KEY ("idEstadoCobroPedido") REFERENCES "EstadoCobroPedido"(id);


--
-- TOC entry 2471 (class 2606 OID 16949)
-- Dependencies: 1768 1760 2292
-- Name: DetalleCartera_idEmpresaCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2472 (class 2606 OID 16954)
-- Dependencies: 2302 1766 1768
-- Name: DetalleCartera_idEstadoCartera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCartera"
    ADD CONSTRAINT "DetalleCartera_idEstadoCartera_fkey" FOREIGN KEY ("idEstadoCartera") REFERENCES "EstadoCartera"(id);


--
-- TOC entry 2479 (class 2606 OID 17248)
-- Dependencies: 1793 1786 2350
-- Name: DetalleCobroPedido_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCobroPedido"
    ADD CONSTRAINT "DetalleCobroPedido_fk" FOREIGN KEY ("idCobroPedido") REFERENCES "CobroPedido"(id);


--
-- TOC entry 2535 (class 2606 OID 18067)
-- Dependencies: 1856 2434 1854
-- Name: DetalleCompraMateriaPrima_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_fk" FOREIGN KEY ("idDetalleCompra") REFERENCES "DetalleCompra"(id);


--
-- TOC entry 2536 (class 2606 OID 18072)
-- Dependencies: 2430 1851 1856
-- Name: DetalleCompraMateriaPrima_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompraMateriaPrima"
    ADD CONSTRAINT "DetalleCompraMateriaPrima_fk1" FOREIGN KEY ("idDetalleOrdenCompraMateriaPrima") REFERENCES "DetalleOrdenCompraMateriaPrima"("idDetalleOrdenCompra");


--
-- TOC entry 2533 (class 2606 OID 18052)
-- Dependencies: 1855 1854 2434
-- Name: DetalleCompraProductoImportado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_fk" FOREIGN KEY ("idDetalleCompra") REFERENCES "DetalleCompra"(id);


--
-- TOC entry 2534 (class 2606 OID 18057)
-- Dependencies: 2428 1855 1850
-- Name: DetalleCompraProductoImportado_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompraProductoImportado"
    ADD CONSTRAINT "DetalleCompraProductoImportado_fk1" FOREIGN KEY ("idDetalleOrdenCompraProductoImportado") REFERENCES "DetalleOrdenCompraProductoImportado"("idDetalleOrdenCompra");


--
-- TOC entry 2531 (class 2606 OID 18037)
-- Dependencies: 1831 2404 1854
-- Name: DetalleCompra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);


--
-- TOC entry 2532 (class 2606 OID 18042)
-- Dependencies: 1842 2416 1854
-- Name: DetalleCompra_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleCompra"
    ADD CONSTRAINT "DetalleCompra_fk1" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);


--
-- TOC entry 2456 (class 2606 OID 16810)
-- Dependencies: 1743 2268 1741
-- Name: DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTer_idDevolucionProductosTermina_fkey" FOREIGN KEY ("idDevolucionProductosTerminados") REFERENCES "DevolucionProductosTerminados"(id);


--
-- TOC entry 2457 (class 2606 OID 17735)
-- Dependencies: 1740 2266 1743
-- Name: DetalleDevolucionProductosTerminados_idDetalleVenta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleDevolucionProductosTerminados"
    ADD CONSTRAINT "DetalleDevolucionProductosTerminados_idDetalleVenta_fkey" FOREIGN KEY ("idDetalleVenta") REFERENCES "DetalleVenta"(id);


--
-- TOC entry 2494 (class 2606 OID 17330)
-- Dependencies: 1802 1797 2356
-- Name: DetalleFactura_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_fk" FOREIGN KEY ("idDetallePedidoProductosTerminados") REFERENCES "DetallePedidoProductosTerminados"(id);


--
-- TOC entry 2495 (class 2606 OID 17364)
-- Dependencies: 2370 1806 1802
-- Name: DetalleFactura_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleFactura"
    ADD CONSTRAINT "DetalleFactura_fk1" FOREIGN KEY ("idFactura") REFERENCES "Factura"(id);


--
-- TOC entry 2511 (class 2606 OID 17568)
-- Dependencies: 1823 2394 1825
-- Name: DetalleHojaRuta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk" FOREIGN KEY ("idHojaRuta") REFERENCES "HojaRuta"(id);


--
-- TOC entry 2512 (class 2606 OID 17573)
-- Dependencies: 1825 2292 1760
-- Name: DetalleHojaRuta_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk1" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2513 (class 2606 OID 17578)
-- Dependencies: 1825 1749 2280
-- Name: DetalleHojaRuta_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleHojaRuta"
    ADD CONSTRAINT "DetalleHojaRuta_fk2" FOREIGN KEY ("idDomicilioVisitar") REFERENCES "Domicilio"(id);


--
-- TOC entry 2447 (class 2606 OID 16589)
-- Dependencies: 2248 1728 1730
-- Name: DetalleMateriaPrima_idLote_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idLote_fkey" FOREIGN KEY ("idLote") REFERENCES "Lote"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2448 (class 2606 OID 16594)
-- Dependencies: 1724 1730 2238
-- Name: DetalleMateriaPrima_idMateriaPrima_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleMateriaPrima"
    ADD CONSTRAINT "DetalleMateriaPrima_idMateriaPrima_fkey" FOREIGN KEY ("idMateriaPrima") REFERENCES "MateriaPrima"(id);


--
-- TOC entry 2524 (class 2606 OID 17972)
-- Dependencies: 1849 2424 1847
-- Name: DetalleNotificacionReaprovisionamiento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_fk" FOREIGN KEY ("idNotificacionReaprovisionamiento") REFERENCES "NotificacionReaprovisionamiento"(id);


--
-- TOC entry 2525 (class 2606 OID 17977)
-- Dependencies: 1849 1843 2418
-- Name: DetalleNotificacionReaprovisionamiento_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleNotificacionReaprovisionamiento"
    ADD CONSTRAINT "DetalleNotificacionReaprovisionamiento_fk1" FOREIGN KEY ("idProductoImportado") REFERENCES "ProductoImportado"("idProductoTerminado");


--
-- TOC entry 2528 (class 2606 OID 18009)
-- Dependencies: 2238 1724 1851
-- Name: DetalleOrdenCompraMateriaPrima_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_fk" FOREIGN KEY ("idMateriaPrima") REFERENCES "MateriaPrima"(id);


--
-- TOC entry 2529 (class 2606 OID 18014)
-- Dependencies: 2416 1851 1842
-- Name: DetalleOrdenCompraMateriaPrima_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleOrdenCompraMateriaPrima"
    ADD CONSTRAINT "DetalleOrdenCompraMateriaPrima_fk1" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);


--
-- TOC entry 2526 (class 2606 OID 17993)
-- Dependencies: 1850 2416 1842
-- Name: DetalleOrdenCompraProductoImportado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_fk" FOREIGN KEY ("idDetalleOrdenCompra") REFERENCES "DetalleOrdenCompra"(id);


--
-- TOC entry 2527 (class 2606 OID 17998)
-- Dependencies: 1843 2418 1850
-- Name: DetalleOrdenCompraProductoImportado_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleOrdenCompraProductoImportado"
    ADD CONSTRAINT "DetalleOrdenCompraProductoImportado_fk1" FOREIGN KEY ("idProductoImportado") REFERENCES "ProductoImportado"("idProductoTerminado");


--
-- TOC entry 2520 (class 2606 OID 17919)
-- Dependencies: 1842 1840 2414
-- Name: DetalleOrdenCompra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleOrdenCompra"
    ADD CONSTRAINT "DetalleOrdenCompra_fk" FOREIGN KEY ("idEstadoDetalleOrdenCompra") REFERENCES "EstadoDetalleOrdenCompra"(id);


--
-- TOC entry 2487 (class 2606 OID 17272)
-- Dependencies: 1797 2244 1726
-- Name: DetallePedidoProductosTerminados_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2488 (class 2606 OID 17277)
-- Dependencies: 2354 1797 1795
-- Name: DetallePedidoProductosTerminados_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk1" FOREIGN KEY ("idEstadoDetallePedidoProductoTerminado") REFERENCES "EstadoDetallePedidoProductoTerminado"(id);


--
-- TOC entry 2489 (class 2606 OID 17320)
-- Dependencies: 1801 1797 2362
-- Name: DetallePedidoProductosTerminados_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetallePedidoProductosTerminados"
    ADD CONSTRAINT "DetallePedidoProductosTerminados_fk2" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);


--
-- TOC entry 2453 (class 2606 OID 17404)
-- Dependencies: 1740 1810 2378
-- Name: DetalleVenta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_fk" FOREIGN KEY ("idVenta") REFERENCES "Venta"(id);


--
-- TOC entry 2452 (class 2606 OID 16685)
-- Dependencies: 1738 2264 1740
-- Name: DetalleVenta_idEstadoDetalleVenta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idEstadoDetalleVenta_fkey" FOREIGN KEY ("idEstadoDetalleVenta") REFERENCES "EstadoDetalleVenta"(id);


--
-- TOC entry 2451 (class 2606 OID 16680)
-- Dependencies: 2244 1726 1740
-- Name: DetalleVenta_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DetalleVenta"
    ADD CONSTRAINT "DetalleVenta_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2454 (class 2606 OID 16997)
-- Dependencies: 1741 2292 1760
-- Name: DevolucionProductosTerminados_idCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idCliente_fkey" FOREIGN KEY ("idCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2455 (class 2606 OID 17002)
-- Dependencies: 2288 1741 1757
-- Name: DevolucionProductosTerminados_idViajante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DevolucionProductosTerminados"
    ADD CONSTRAINT "DevolucionProductosTerminados_idViajante_fkey" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");


--
-- TOC entry 2461 (class 2606 OID 16763)
-- Dependencies: 1747 1749 2278
-- Name: Domicilio_idBarrio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Domicilio"
    ADD CONSTRAINT "Domicilio_idBarrio_fkey" FOREIGN KEY ("idBarrio") REFERENCES "Barrio"(id);


--
-- TOC entry 2474 (class 2606 OID 16992)
-- Dependencies: 1770 1771 2308
-- Name: Empleado_idCargo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idCargo_fkey" FOREIGN KEY ("idCargo") REFERENCES "Cargo"(id);


--
-- TOC entry 2473 (class 2606 OID 16987)
-- Dependencies: 2286 1771 1756
-- Name: Empleado_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Empleado"
    ADD CONSTRAINT "Empleado_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2470 (class 2606 OID 16905)
-- Dependencies: 2292 1762 1760
-- Name: EmpresaClienteXPersona_idEmpresaCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idEmpresaCliente_fkey" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2469 (class 2606 OID 16900)
-- Dependencies: 2286 1762 1756
-- Name: EmpresaClienteXPersona_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaClienteXPersona"
    ADD CONSTRAINT "EmpresaClienteXPersona_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2468 (class 2606 OID 16923)
-- Dependencies: 1764 1760 2298
-- Name: EmpresaCliente_idCondicionIVA_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCondicionIVA_fkey" FOREIGN KEY ("idCondicionIVA") REFERENCES "CondicionIVA"(id);


--
-- TOC entry 2467 (class 2606 OID 16887)
-- Dependencies: 2290 1759 1760
-- Name: EmpresaCliente_idCreditoCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idCreditoCliente_fkey" FOREIGN KEY ("idCreditoCliente") REFERENCES "CreditoCliente"(id);


--
-- TOC entry 2466 (class 2606 OID 16882)
-- Dependencies: 2280 1749 1760
-- Name: EmpresaCliente_idDomicilio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaCliente"
    ADD CONSTRAINT "EmpresaCliente_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);


--
-- TOC entry 2502 (class 2606 OID 17475)
-- Dependencies: 1749 2280 1814
-- Name: EmpresaTransporte_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EmpresaTransporte"
    ADD CONSTRAINT "EmpresaTransporte_fk" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);


--
-- TOC entry 2496 (class 2606 OID 17353)
-- Dependencies: 2368 1804 1806
-- Name: Factura_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_fk" FOREIGN KEY ("idTipoFactura") REFERENCES "TipoFactura"(id);


--
-- TOC entry 2497 (class 2606 OID 17358)
-- Dependencies: 1806 1801 2362
-- Name: Factura_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Factura"
    ADD CONSTRAINT "Factura_fk1" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);


--
-- TOC entry 2510 (class 2606 OID 17555)
-- Dependencies: 1749 2280 1823
-- Name: HojaRuta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "HojaRuta"
    ADD CONSTRAINT "HojaRuta_fk" FOREIGN KEY ("idPosicionViajante") REFERENCES "Domicilio"(id);


--
-- TOC entry 2517 (class 2606 OID 17641)
-- Dependencies: 1831 1835 2404
-- Name: Importacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Importacion"
    ADD CONSTRAINT "Importacion_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);


--
-- TOC entry 2458 (class 2606 OID 16780)
-- Dependencies: 1745 2274 1744
-- Name: Localidad_idProvincia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localidad"
    ADD CONSTRAINT "Localidad_idProvincia_fkey" FOREIGN KEY ("idProvincia") REFERENCES "Provincia"(id);


--
-- TOC entry 2446 (class 2606 OID 16575)
-- Dependencies: 1728 2244 1726
-- Name: Lote_idProducto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "Lote_idProducto_fkey" FOREIGN KEY ("idProducto") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2522 (class 2606 OID 17953)
-- Dependencies: 2310 1771 1847
-- Name: NotificacionReaprovisionamiento_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_fk" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");


--
-- TOC entry 2523 (class 2606 OID 17958)
-- Dependencies: 1845 1847 2422
-- Name: NotificacionReaprovisionamiento_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "NotificacionReaprovisionamiento"
    ADD CONSTRAINT "NotificacionReaprovisionamiento_fk1" FOREIGN KEY ("idEstadoNotificacionReaprovisionamiento") REFERENCES "EstadoNotificacionReaprovisionamiento"(id);


--
-- TOC entry 2518 (class 2606 OID 17654)
-- Dependencies: 2408 1837 1835
-- Name: OrdenCompraXImportacion_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_fk" FOREIGN KEY ("idImportacion") REFERENCES "Importacion"(id);


--
-- TOC entry 2519 (class 2606 OID 17659)
-- Dependencies: 1818 1837 2388
-- Name: OrdenCompraXImportacion_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompraXImportacion"
    ADD CONSTRAINT "OrdenCompraXImportacion_fk1" FOREIGN KEY ("idOrdenCompra") REFERENCES "OrdenCompra"(id);


--
-- TOC entry 2503 (class 2606 OID 17498)
-- Dependencies: 2382 1818 1814
-- Name: OrdenCompra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk" FOREIGN KEY ("idEmpresaTransporteInterior") REFERENCES "EmpresaTransporte"(id);


--
-- TOC entry 2504 (class 2606 OID 17503)
-- Dependencies: 1814 1818 2382
-- Name: OrdenCompra_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk1" FOREIGN KEY ("idEmpresaTransporteExterior") REFERENCES "EmpresaTransporte"(id);


--
-- TOC entry 2505 (class 2606 OID 17508)
-- Dependencies: 2380 1811 1818
-- Name: OrdenCompra_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk2" FOREIGN KEY ("idProveedor") REFERENCES "Proveedor"(id);


--
-- TOC entry 2506 (class 2606 OID 17513)
-- Dependencies: 1816 2386 1818
-- Name: OrdenCompra_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrdenCompra"
    ADD CONSTRAINT "OrdenCompra_fk3" FOREIGN KEY ("idEstadoOrdenCompra") REFERENCES "EstadoOrdenCompra"(id);


--
-- TOC entry 2478 (class 2606 OID 17147)
-- Dependencies: 1780 2314 1773
-- Name: OtrosGastos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OtrosGastos"
    ADD CONSTRAINT "OtrosGastos_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);


--
-- TOC entry 2476 (class 2606 OID 17132)
-- Dependencies: 2314 1778 1773
-- Name: PagoEmpleado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);


--
-- TOC entry 2477 (class 2606 OID 17137)
-- Dependencies: 1778 2310 1771
-- Name: PagoEmpleado_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PagoEmpleado"
    ADD CONSTRAINT "PagoEmpleado_fk1" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");


--
-- TOC entry 2507 (class 2606 OID 17523)
-- Dependencies: 1773 2314 1819
-- Name: PagoProveedor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_fk" FOREIGN KEY ("idPago") REFERENCES "Pago"(id);


--
-- TOC entry 2508 (class 2606 OID 17528)
-- Dependencies: 2388 1818 1819
-- Name: PagoProveedor_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PagoProveedor"
    ADD CONSTRAINT "PagoProveedor_fk1" FOREIGN KEY ("idOrdenCompra") REFERENCES "OrdenCompra"(id);


--
-- TOC entry 2475 (class 2606 OID 17031)
-- Dependencies: 2318 1775 1773
-- Name: Pago_idDivisa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pago"
    ADD CONSTRAINT "Pago_idDivisa_fkey" FOREIGN KEY ("idDivisa") REFERENCES "Divisa"(id);


--
-- TOC entry 2490 (class 2606 OID 17300)
-- Dependencies: 1801 2360 1799
-- Name: PedidoProductosTerminados_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk" FOREIGN KEY ("idEstadoPedidoProductosTerminados") REFERENCES "EstadoPedidoProductosTerminados"(id);


--
-- TOC entry 2491 (class 2606 OID 17305)
-- Dependencies: 2288 1757 1801
-- Name: PedidoProductosTerminados_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk1" FOREIGN KEY ("idViajante") REFERENCES "Viajante"("idPersona");


--
-- TOC entry 2492 (class 2606 OID 17310)
-- Dependencies: 1771 1801 2310
-- Name: PedidoProductosTerminados_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk2" FOREIGN KEY ("idEmpleado") REFERENCES "Empleado"("idPersona");


--
-- TOC entry 2493 (class 2606 OID 17315)
-- Dependencies: 2292 1760 1801
-- Name: PedidoProductosTerminados_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PedidoProductosTerminados"
    ADD CONSTRAINT "PedidoProductosTerminados_fk3" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2463 (class 2606 OID 16844)
-- Dependencies: 1749 2280 1756
-- Name: Persona_idDomicilio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idDomicilio_fkey" FOREIGN KEY ("idDomicilio") REFERENCES "Domicilio"(id);


--
-- TOC entry 2462 (class 2606 OID 16839)
-- Dependencies: 2284 1754 1756
-- Name: Persona_idTipoDni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Persona"
    ADD CONSTRAINT "Persona_idTipoDni_fkey" FOREIGN KEY ("idTipoDni") REFERENCES "TipoDni"(id);


--
-- TOC entry 2530 (class 2606 OID 18024)
-- Dependencies: 1726 2244 1852
-- Name: ProductoFabricado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoFabricado"
    ADD CONSTRAINT "ProductoFabricado_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2521 (class 2606 OID 17930)
-- Dependencies: 2244 1843 1726
-- Name: ProductoImportado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoImportado"
    ADD CONSTRAINT "ProductoImportado_fk" FOREIGN KEY ("idProductoTerminado") REFERENCES "ProductoTerminado"(id);


--
-- TOC entry 2445 (class 2606 OID 17112)
-- Dependencies: 1726 2322 1777
-- Name: ProductoTerminado_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_fk" FOREIGN KEY ("idTamano") REFERENCES "Tamano"(id);


--
-- TOC entry 2440 (class 2606 OID 16538)
-- Dependencies: 2228 1726 1720
-- Name: ProductoTerminado_idColor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idColor_fkey" FOREIGN KEY ("idColor") REFERENCES "Color"(id);


--
-- TOC entry 2442 (class 2606 OID 16553)
-- Dependencies: 2218 1715 1726
-- Name: ProductoTerminado_idMarca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMarca_fkey" FOREIGN KEY ("idMarca") REFERENCES "Marca"(id);


--
-- TOC entry 2441 (class 2606 OID 16543)
-- Dependencies: 1726 2224 1718
-- Name: ProductoTerminado_idModelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idModelo_fkey" FOREIGN KEY ("idModelo") REFERENCES "Modelo"(id);


--
-- TOC entry 2444 (class 2606 OID 16649)
-- Dependencies: 2260 1726 1736
-- Name: ProductoTerminado_idMuestrario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idMuestrario_fkey" FOREIGN KEY ("idMuestrario") REFERENCES "Muestrario"(id) ON DELETE SET NULL;


--
-- TOC entry 2443 (class 2606 OID 16558)
-- Dependencies: 1722 1726 2232
-- Name: ProductoTerminado_idUbicacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductoTerminado"
    ADD CONSTRAINT "ProductoTerminado_idUbicacion_fkey" FOREIGN KEY ("idUbicacion") REFERENCES "Ubicacion"(id);


--
-- TOC entry 2515 (class 2606 OID 17623)
-- Dependencies: 1833 1831 2404
-- Name: ProductosDefectuososXCompra_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_fk" FOREIGN KEY ("idCompra") REFERENCES "Compra"(id);


--
-- TOC entry 2516 (class 2606 OID 17628)
-- Dependencies: 1833 2402 1829
-- Name: ProductosDefectuososXCompra_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductosDefectuososXCompra"
    ADD CONSTRAINT "ProductosDefectuososXCompra_fk1" FOREIGN KEY ("idProductosDefectuosos") REFERENCES "ProductosDefectuosos"(id);


--
-- TOC entry 2514 (class 2606 OID 17602)
-- Dependencies: 1827 2400 1829
-- Name: ProductosDefectuosos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductosDefectuosos"
    ADD CONSTRAINT "ProductosDefectuosos_fk" FOREIGN KEY ("idTipoDefecto") REFERENCES "TipoDefecto"(id);


--
-- TOC entry 2501 (class 2606 OID 17453)
-- Dependencies: 1749 2280 1811
-- Name: Proveedor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Proveedor"
    ADD CONSTRAINT "Proveedor_fk" FOREIGN KEY ("idDomicilioa") REFERENCES "Domicilio"(id);


--
-- TOC entry 2509 (class 2606 OID 17542)
-- Dependencies: 2292 1760 1821
-- Name: RentabilidadCliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RentabilidadCliente"
    ADD CONSTRAINT "RentabilidadCliente_fk" FOREIGN KEY ("idEmpresaCliente") REFERENCES "EmpresaCliente"(id);


--
-- TOC entry 2498 (class 2606 OID 17389)
-- Dependencies: 1810 2350 1793
-- Name: Venta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk" FOREIGN KEY ("idCobroPedido") REFERENCES "CobroPedido"(id);


--
-- TOC entry 2499 (class 2606 OID 17394)
-- Dependencies: 1801 2362 1810
-- Name: Venta_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk1" FOREIGN KEY ("idPedidoProductosTerminados") REFERENCES "PedidoProductosTerminados"(id);


--
-- TOC entry 2500 (class 2606 OID 17399)
-- Dependencies: 2374 1810 1808
-- Name: Venta_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Venta"
    ADD CONSTRAINT "Venta_fk2" FOREIGN KEY ("idEstadoVenta") REFERENCES "EstadoVenta"(id);


--
-- TOC entry 2465 (class 2606 OID 16959)
-- Dependencies: 1768 1757 2304
-- Name: Viajante_idDetalleCartera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idDetalleCartera_fkey" FOREIGN KEY ("idDetalleCartera") REFERENCES "DetalleCartera"(id);


--
-- TOC entry 2464 (class 2606 OID 16855)
-- Dependencies: 1756 1757 2286
-- Name: Viajante_idPersona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Viajante"
    ADD CONSTRAINT "Viajante_idPersona_fkey" FOREIGN KEY ("idPersona") REFERENCES "Persona"(id);


--
-- TOC entry 2619 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2010-06-06 00:37:46

--
-- PostgreSQL database dump complete
--


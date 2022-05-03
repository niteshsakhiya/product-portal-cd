--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: provisioning; Type: SCHEMA; Schema: -; Owner: portal
--

CREATE SCHEMA provisioning;


ALTER SCHEMA provisioning OWNER TO portal;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: client_sequence; Type: TABLE; Schema: provisioning; Owner: portal
--

CREATE TABLE provisioning.client_sequence (
    sequence_id integer NOT NULL
);


ALTER TABLE provisioning.client_sequence OWNER TO portal;

--
-- Name: client_sequence_sequence_id_seq; Type: SEQUENCE; Schema: provisioning; Owner: portal
--

CREATE SEQUENCE provisioning.client_sequence_sequence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE provisioning.client_sequence_sequence_id_seq OWNER TO portal;

--
-- Name: client_sequence_sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: provisioning; Owner: portal
--

ALTER SEQUENCE provisioning.client_sequence_sequence_id_seq OWNED BY provisioning.client_sequence.sequence_id;


--
-- Name: identity_provider_sequence; Type: TABLE; Schema: provisioning; Owner: portal
--

CREATE TABLE provisioning.identity_provider_sequence (
    sequence_id integer NOT NULL
);


ALTER TABLE provisioning.identity_provider_sequence OWNER TO portal;

--
-- Name: identity_provider_sequence_sequence_id_seq; Type: SEQUENCE; Schema: provisioning; Owner: portal
--

CREATE SEQUENCE provisioning.identity_provider_sequence_sequence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE provisioning.identity_provider_sequence_sequence_id_seq OWNER TO portal;

--
-- Name: identity_provider_sequence_sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: provisioning; Owner: portal
--

ALTER SEQUENCE provisioning.identity_provider_sequence_sequence_id_seq OWNED BY provisioning.identity_provider_sequence.sequence_id;


--
-- Name: client_sequence sequence_id; Type: DEFAULT; Schema: provisioning; Owner: portal
--

ALTER TABLE ONLY provisioning.client_sequence ALTER COLUMN sequence_id SET DEFAULT nextval('provisioning.client_sequence_sequence_id_seq'::regclass);


--
-- Name: identity_provider_sequence sequence_id; Type: DEFAULT; Schema: provisioning; Owner: portal
--

ALTER TABLE ONLY provisioning.identity_provider_sequence ALTER COLUMN sequence_id SET DEFAULT nextval('provisioning.identity_provider_sequence_sequence_id_seq'::regclass);


--
-- Data for Name: client_sequence; Type: TABLE DATA; Schema: provisioning; Owner: portal
--

COPY provisioning.client_sequence (sequence_id) FROM stdin;
\.


--
-- Data for Name: identity_provider_sequence; Type: TABLE DATA; Schema: provisioning; Owner: portal
--

COPY provisioning.identity_provider_sequence (sequence_id) FROM stdin;
1
2
\.


--
-- Name: client_sequence_sequence_id_seq; Type: SEQUENCE SET; Schema: provisioning; Owner: portal
--

SELECT pg_catalog.setval('provisioning.client_sequence_sequence_id_seq', 1, false);


--
-- Name: identity_provider_sequence_sequence_id_seq; Type: SEQUENCE SET; Schema: provisioning; Owner: portal
--

SELECT pg_catalog.setval('provisioning.identity_provider_sequence_sequence_id_seq', 2, true);


--
-- Name: client_sequence client_sequence_pkey; Type: CONSTRAINT; Schema: provisioning; Owner: portal
--

ALTER TABLE ONLY provisioning.client_sequence
    ADD CONSTRAINT client_sequence_pkey PRIMARY KEY (sequence_id);


--
-- Name: identity_provider_sequence identity_provider_sequence_pkey; Type: CONSTRAINT; Schema: provisioning; Owner: portal
--

ALTER TABLE ONLY provisioning.identity_provider_sequence
    ADD CONSTRAINT identity_provider_sequence_pkey PRIMARY KEY (sequence_id);

--
-- Name: user_password_reset ; Type: Table; Schema: provisioning; Owner: portal
--

CREATE TABLE provisioning.user_password_resets (
    user_entity_id character varying(36) PRIMARY KEY,
    password_modified_at timestamptz DEFAULT now() NOT NULL,
    reset_count integer DEFAULT 0 NOT NULL
);

ALTER TABLE provisioning.user_password_resets OWNER TO portal;
--
-- PostgreSQL database dump complete
--


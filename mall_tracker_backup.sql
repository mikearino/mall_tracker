--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: malls; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.malls (
    id bigint NOT NULL,
    name character varying,
    has_food_court boolean,
    dangerous boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.malls OWNER TO "Guest";

--
-- Name: malls_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.malls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.malls_id_seq OWNER TO "Guest";

--
-- Name: malls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.malls_id_seq OWNED BY public.malls.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: stores; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.stores (
    id bigint NOT NULL,
    name character varying,
    floor integer,
    open time without time zone,
    close time without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    malls_id bigint
);


ALTER TABLE public.stores OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stores_id_seq OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;


--
-- Name: malls id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.malls ALTER COLUMN id SET DEFAULT nextval('public.malls_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-06 22:07:04.778008	2019-08-06 22:07:04.778008
\.


--
-- Data for Name: malls; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.malls (id, name, has_food_court, dangerous, created_at, updated_at) FROM stdin;
1	Shitty Mall	\N	\N	2019-08-06 23:16:53.965902	2019-08-06 23:16:53.965902
2	Test Mall	\N	\N	2019-08-06 23:17:54.282889	2019-08-06 23:17:54.282889
3	Great Mall Good Job	\N	\N	2019-08-06 23:18:44.974845	2019-08-06 23:18:44.974845
4	Another Bad Mall	\N	\N	2019-08-06 23:19:30.117113	2019-08-06 23:19:30.117113
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20190806220438
20190806220945
20190806221400
20190806221611
20190806221936
20190806222041
\.


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.stores (id, name, floor, open, close, created_at, updated_at, malls_id) FROM stdin;
\.


--
-- Name: malls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.malls_id_seq', 4, true);


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.stores_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: malls malls_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.malls
    ADD CONSTRAINT malls_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: index_stores_on_malls_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_stores_on_malls_id ON public.stores USING btree (malls_id);


--
-- PostgreSQL database dump complete
--


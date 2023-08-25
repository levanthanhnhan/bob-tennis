--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.1

-- Started on 2023-08-25 17:25:28

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

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 49153)
-- Name: billing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.billing (
    billing_id integer NOT NULL,
    order_code integer NOT NULL,
    member_id bigint NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    amount integer NOT NULL,
    description character varying NOT NULL,
    reference character varying NOT NULL,
    transaction_time character varying NOT NULL,
    payment_id character varying NOT NULL,
    status integer NOT NULL
);


ALTER TABLE public.billing OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 49152)
-- Name: billing_billing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.billing ALTER COLUMN billing_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.billing_billing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 41053)
-- Name: fund; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fund (
    member_id bigint NOT NULL,
    year bigint NOT NULL,
    quarter1 integer DEFAULT 0 NOT NULL,
    quarter2 integer DEFAULT 0 NOT NULL,
    quarter3 integer DEFAULT 0 NOT NULL,
    quarter4 integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.fund OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 41026)
-- Name: level; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.level (
    level_id bigint NOT NULL,
    level_name character varying NOT NULL
);


ALTER TABLE public.level OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 41019)
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    member_id bigint NOT NULL,
    member_name character varying NOT NULL,
    birthday timestamp without time zone NOT NULL,
    phone_number character varying NOT NULL,
    contact character varying NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    img_path character varying NOT NULL,
    level_id bigint NOT NULL,
    role_id bigint NOT NULL,
    sort_name character varying NOT NULL
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41065)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id bigint NOT NULL,
    role_name character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 49153)
-- Dependencies: 219
-- Data for Name: billing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.billing (billing_id, order_code, member_id, year, quarter, amount, description, reference, transaction_time, payment_id, status) FROM stdin;
33	53	11	2023	1	1000	TTUFKFUR BOB53	FT23237056000723	2023-08-25 17:17:59	4b81f5f3d550414aafe0aa6bd9e28395	0
34	54	11	2023	1	1000	TTMEEXUX BOB54	FT23237889063919	2023-08-25 17:20:30	ed5a5f23a8a844fea9b32a44fc115298	0
35	55	2	2023	1	1000	TTW9PDRF BOB55	FT23237828048908	2023-08-25 17:23:02	4d656b3ae9084d758e24f797cc1a460c	1
36	56	2	2023	2	1000	TTQA256Z BOB56			289ce690e3434ac5b7654b30a3c642b5	0
\.


--
-- TOC entry 3345 (class 0 OID 41053)
-- Dependencies: 216
-- Data for Name: fund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fund (member_id, year, quarter1, quarter2, quarter3, quarter4) FROM stdin;
4	2023	0	0	0	0
3	2023	0	0	0	0
1	2023	0	0	0	0
2	2023	1	0	0	0
\.


--
-- TOC entry 3344 (class 0 OID 41026)
-- Dependencies: 215
-- Data for Name: level; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.level (level_id, level_name) FROM stdin;
1	A+
2	A-
3	A
4	B+
5	B-
6	B
7	C+
8	C-
9	C
\.


--
-- TOC entry 3343 (class 0 OID 41019)
-- Dependencies: 214
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, member_name, birthday, phone_number, contact, is_active, is_admin, img_path, level_id, role_id, sort_name) FROM stdin;
1	Cậu Vàng	2000-12-25 03:00:00	+840977556672	https://www.messenger.com/t/100018877745667	t	t	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823162911?alt=media&token=9d42756b-b5b5-467b-ba86-86d338a8ca79	1	1	Nô
3	Phước Nguyễn	2000-08-14 17:00:00	+840914193993	https://www.messenger.com/t/100010022527675	t	t	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163310?alt=media&token=3e73d659-5fed-4090-961e-817bc414f837	3	3	Phước
4	Vũ Anh Tuấn	2023-12-30 17:00:00	0999000001	https://www.messenger.com/t/100069878856484	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163324?alt=media&token=a9415156-3c96-42ac-9368-9b496d7b4db0	3	4	Tuấn
5	Võ Quốc Khánh	2023-12-30 17:00:00	0999000002	https://www.messenger.com/t/100002571879333	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163335?alt=media&token=625a140b-1018-43ee-ad75-41209aab9b38	3	4	Khánh
6	Việt Trung	2023-12-30 17:00:00	0999000003	https://www.messenger.com/t/100004046809596	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163345?alt=media&token=d8f1a9fd-f6ff-4bdf-9945-1a64bc2aff82	3	4	Trung
7	Phước Vin	2023-12-30 17:00:00	0999000004	https://www.messenger.com/t/100001510801172	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163355?alt=media&token=a84923c5-67ee-41d0-93cc-9e3ef543b2cf	3	4	Lôm
8	Tôn Thất Trung Hậu	2023-12-30 17:00:00	0999000005	https://www.messenger.com/t/100004112677181	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F202382316343?alt=media&token=ca415457-57c8-4c4e-9b30-6ff79ebd8b8a	3	4	Hậu
9	Thế Vũ	2023-12-30 17:00:00	0999000006	https://www.messenger.com/t/100003096365507	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F202382316349?alt=media&token=0b527d01-0eea-4e33-8c9e-bcf9f6c5fc68	3	4	Vũ
10	Tâm Kha	2023-12-30 17:00:00	0999000007	https://www.messenger.com/t/100005447085363	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163420?alt=media&token=e1b9db2f-7f74-49e2-bcf2-3260835c5a4d	3	4	Kha
11	Nguyễn Minh Khoa	2023-12-30 17:00:00	0999000008	https://www.messenger.com/t/100012635927417	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163430?alt=media&token=f9799708-ec21-430c-b0a5-aae3efaccb97	3	4	Khoa
12	Hoàng Quý	2023-12-30 17:00:00	0999000009	https://www.messenger.com/t/100009591544992	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163439?alt=media&token=0cb7e654-4abe-4312-b53e-30a9d91bf74a	3	4	Bốp
13	Hồ Đăng Thắng	2023-12-30 17:00:00	0999000010	https://www.messenger.com/t/100000155464952	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163447?alt=media&token=e556e44a-51c0-4129-831f-311d0ae8d6b8	3	4	Thắng
14	Hao Huynh	2023-12-30 17:00:00	0999000011	https://www.messenger.com/t/100003936562578	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163455?alt=media&token=fe56aa41-9c7f-4bc3-b1ee-2fc3ff3d9958	3	4	Hảo
15	Đại Nhân	2023-12-30 17:00:00	0999000012	https://www.messenger.com/t/100001190668826	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F202382316353?alt=media&token=c85ffcc1-53b1-4949-83e2-0a97cd0a868d	3	4	Nhân
16	Bodoi Nguyen	2023-12-30 17:00:00	0999000013	https://www.messenger.com/t/100002825688623	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163511?alt=media&token=06947a80-4606-463f-9e93-4726908cc87f	3	4	Tâm
17	Ben Ben	2023-12-30 17:00:00	0999000014	https://www.messenger.com/t/100002984294283	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163521?alt=media&token=c96dca73-711e-43ff-b85b-1d3d063b61ad	3	4	Bò
18	Quang Bonsai	2023-12-30 17:00:00	0999000015	https://www.messenger.com/t/100039680979076	t	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163542?alt=media&token=7c8fc91e-e81b-4378-bac9-2787eb7ed65a	3	5	Quang
19	Anh Kiệt	2023-12-30 17:00:00	0999000016	https://www.messenger.com/t/1815370298	f	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023823163553?alt=media&token=530011bd-b229-4ce9-883c-dbc21ff4c148	3	4	Kiệt
20	Thảo Nguyễn	2023-12-30 17:00:00	0999000017	https://www.messenger.com/t/100007837391804	f	f	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F202382316363?alt=media&token=d6b2deea-42b5-43af-acc6-3694356654a0	3	4	Thảo
2	Nhân Lê	1992-03-07 17:00:00	+840906444231	https://www.messenger.com/t/100002847373326	t	t	https://firebasestorage.googleapis.com/v0/b/bobtennisclub.appspot.com/o/files%2F2023824866?alt=media&token=4cdc3468-9be6-4a34-9a29-04c1dec8a1c1	2	2	Tý
\.


--
-- TOC entry 3346 (class 0 OID 41065)
-- Dependencies: 217
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (role_id, role_name) FROM stdin;
1	Hội trưởng
2	Hội phó
3	Thủ quỹ
4	Hội viên
5	Hỗ trợ
\.


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 218
-- Name: billing_billing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.billing_billing_id_seq', 36, true);


--
-- TOC entry 3200 (class 2606 OID 49159)
-- Name: billing billing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.billing
    ADD CONSTRAINT billing_pkey PRIMARY KEY (billing_id);


--
-- TOC entry 3198 (class 2606 OID 41061)
-- Name: fund fund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fund
    ADD CONSTRAINT fund_pkey PRIMARY KEY (member_id, year);


--
-- TOC entry 3196 (class 2606 OID 41032)
-- Name: level level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (level_id);


--
-- TOC entry 3194 (class 2606 OID 41072)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


-- Completed on 2023-08-25 17:25:28

--
-- PostgreSQL database dump complete
--


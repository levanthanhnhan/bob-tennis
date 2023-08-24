--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.1

-- Started on 2023-08-18 17:25:07

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
-- TOC entry 217 (class 1259 OID 41053)
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
    level_id bigint,
    role_id bigint,
    sort_name character varying
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 41033)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    role_id bigint NOT NULL,
    role_name character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 3341 (class 0 OID 41053)
-- Dependencies: 217
-- Data for Name: fund; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fund (member_id, year, quarter1, quarter2, quarter3, quarter4) FROM stdin;
2	2023	1	1	0	0
3	2023	1	1	1	0
4	2023	1	0	0	0
1	2023	0	1	1	0
\.


--
-- TOC entry 3339 (class 0 OID 41026)
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
-- TOC entry 3338 (class 0 OID 41019)
-- Dependencies: 214
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, member_name, birthday, phone_number, contact, is_active, is_admin, img_path, level_id, role_id, sort_name) FROM stdin;
3	Phước Nguyễn	2000-08-15 00:00:00	0914193993	https://www.messenger.com/t/100010022527675	t	t	https://scontent.fdad3-5.fna.fbcdn.net/v/t1.6435-1/168430958_1508921176118619_3747828186819205940_n.jpg?stp=dst-jpg_p100x100&_nc_cat=106&ccb=1-7&_nc_sid=0222cc&_nc_ohc=APAQE8O9Q5wAX-B_Kqf&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-5.fna&oh=00_AfDFwpgbwbO5wqOaV6pZBZpvL0t2LBlBH3g6A0nZXJbwjg&oe=65027444	3	3	Phước
1	Cậu Vàng	2000-12-25 00:00:00	0977556672	https://www.messenger.com/t/100018877745667	t	t	https://scontent.xx.fbcdn.net/v/t39.30808-1/335493882_1266259197311443_2863652991445980344_n.jpg?stp=cp1_dst-jpg_p100x100&_nc_cat=102&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=1JdV0HqEzpAAX95CZ8G&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=00_AfDGm1rQWui13UZWJTxPQJegJ5_3RA60Wi54iHKok7ouGg&oe=64E525D1	1	1	Nô
15	Đại Nhân	2023-12-31 00:00:00	0999000012	https://www.messenger.com/t/100001190668826	t	f	https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-1/322405050_670397298204236_1429144218118614484_n.jpg?stp=dst-jpg_p100x100&_nc_cat=101&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=NifiLXz5g_EAX-iUU-5&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-4.fna&oh=00_AfAkNmEMcnColGt7u18sEuO1aN8jC4mdmG-DwuFCTLSCRQ&oe=64DF4E05\n	3	4	Nhân
4	Vũ Anh Tuấn	2023-12-31 00:00:00	0999000001	https://www.messenger.com/t/100069878856484	t	f	https://scontent-hkg4-1.xx.fbcdn.net/v/t39.30808-1/276107241_261759982829962_7330015129777379321_n.jpg?stp=c0.0.100.100a_dst-jpg_p100x100&_nc_cat=107&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=J2rX6gYnWGwAX--yuS0&_nc_oc=AQnzShVD8uNoBgOcm10cJ1u_e3X4kuj_AOexPmObRXwCo-Q8plJzYFM3MIqOWmZxpjI&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&oh=00_AfDWBlfV9ZN32vvWUWGJ5WZCwPUH5-veIVtHfhE6zNiA4Q&oe=64E05137	3	4	Tuấn
5	Võ Quốc Khánh	2023-12-31 00:00:00	0999000002	https://www.messenger.com/t/100002571879333	t	f	https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-1/333425426_235872075447981_2872639832491508441_n.jpg?stp=dst-jpg_p100x100&_nc_cat=110&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=23GKUIcHQCoAX-JzYUg&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfBoiIOSit47Y7TnGd4oB2WlBZnwMM7NPH4WChplHm3Cag&oe=64DFE643\n	3	4	Khánh
6	Việt Trung	2023-12-31 00:00:00	0999000003	https://www.messenger.com/t/100004046809596	t	f	https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-1/332129478_603725798432794_5708668077277513987_n.jpg?stp=dst-jpg_p100x100&_nc_cat=108&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=xHWiTlpHVygAX8S5r0u&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfBN9rxbFbR16EVxIIfVwd88QnZbguDy-iB2ucBUyvFD1g&oe=64DF89C9\n	3	4	Trung
7	Phước Vin	2023-12-31 00:00:00	0999000004	https://www.messenger.com/t/100001510801172	t	f	https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-1/354044812_6388148377912126_1980160016919873640_n.jpg?stp=c0.0.100.100a_cp1_dst-jpg_p100x100&_nc_cat=108&ccb=1-7&_nc_sid=0222cc&_nc_ohc=r-gASeKNPsAAX-VUh2q&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfBaBAjZF4KMofRV3hetcuDmT7u5YTnMLk1z1ZbnEF_K9A&oe=64E08960\n	3	4	Lôm
8	Tôn Thất Trung Hậu	2023-12-31 00:00:00	0999000005	https://www.messenger.com/t/100004112677181	t	f	https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-1/329337090_1240217456876138_1196819124526571183_n.jpg?stp=cp1_dst-jpg_p100x100&_nc_cat=100&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=LnP2Hm2xB_8AX-bkd5d&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-4.fna&oh=00_AfAlZrn9L-HHKtjyf6H8DIThU_lLP4p18ADKLPQcpkde1Q&oe=64E0ED3A\n	3	4	Hậu
10	Tâm Kha	2023-12-31 00:00:00	0999000007	https://www.messenger.com/t/100005447085363	t	f	https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-1/273884521_1803379713186914_7250981988915421606_n.jpg?stp=dst-jpg_p100x100&_nc_cat=108&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=6RUqo5VAcMEAX8Urnsn&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfDHjiZGnUpDa3qFK77_eqDTjdI7OyW_igIjKdGfs-H-PQ&oe=64DF80B8\n	3	4	Kha
9	Thế Vũ	2023-12-31 00:00:00	0999000006	https://www.messenger.com/t/100003096365507	t	f	https://scontent.fdad3-1.fna.fbcdn.net/v/t39.30808-1/277562163_4895820827197748_8248285516738856614_n.jpg?stp=dst-jpg_p100x100&_nc_cat=108&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=krP-IE-hJPsAX99Quju&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfC-ErAuS2C2eH6fdO0Vywa5lUCq9BpgynTlZzH6vKLGZQ&oe=64E01E09\n	3	4	Vũ
11	Nguyễn Minh Khoa	2023-12-31 00:00:00	0999000008	https://www.messenger.com/t/100012635927417	t	f	https://scontent.fdad3-5.fna.fbcdn.net/v/t39.30808-1/326197831_2388480734659504_8140629298475635125_n.jpg?stp=dst-jpg_p100x100&_nc_cat=109&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=CU3KCI01GvEAX-cSt8n&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-5.fna&oh=00_AfCdhFTS7zd67YaGQ1EKEfaDHjE8M5M5UxnRoVesnyta1g&oe=64E0BDC5\n	3	4	Khoa
12	Hoàng Quý	2023-12-31 00:00:00	0999000009	https://www.messenger.com/t/100009591544992	t	f	https://scontent-hkg4-2.xx.fbcdn.net/v/t1.6435-1/135124193_2735436893452669_1271173514656608253_n.jpg?stp=dst-jpg_p100x100&_nc_cat=111&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=3Ioa7xtMIp8AX9bE3Ks&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-2.xx&oh=00_AfBGbEnJ22KOAIMWylBZCu461PNEYCKeSXnb_ul-KOV6gA&oe=65027A3D\n	3	4	Bốp
13	Hồ Đăng Thắng	2023-12-31 00:00:00	0999000010	https://www.messenger.com/t/100000155464952	t	f	https://scontent-hkg4-2.xx.fbcdn.net/v/t1.6435-1/119035569_3940624195952724_8780621121969387389_n.jpg?stp=dst-jpg_p100x100&_nc_cat=111&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=llfwBn-iA08AX__0ter&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-2.xx&oh=00_AfAbvzlfYrsZIrf88QbYpFz85aqsP5JYzNs2pBj1mS4S6w&oe=6502885E\n	3	4	Thắng
14	Hao Huynh	2023-12-31 00:00:00	0999000011	https://www.messenger.com/t/100003936562578	t	f	https://scontent-hkg4-1.xx.fbcdn.net/v/t39.30808-1/319813500_1131012960908497_3653193005595199793_n.jpg?stp=dst-jpg_p100x100&_nc_cat=107&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=c9X4u9Gn0tkAX-Z6m1w&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent-hkg4-1.xx&oh=00_AfD8tv9G-SFbsNB0Q-lQCC7t8MRBJvgRgmMgj1_Erw0oGA&oe=64E07F01\n	3	4	Hảo
16	Bodoi Nguyen	2023-12-31 00:00:00	0999000013	https://www.messenger.com/t/100002825688623	t	f	https://scontent.fdad3-4.fna.fbcdn.net/v/t1.18169-1/383316_149707725133416_1203796494_n.jpg?stp=c85.25.310.310a_dst-jpg_s100x100&_nc_cat=101&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=8LDSd54Fc-oAX8Su2eh&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-4.fna&oh=00_AfBDy7zH2wXPI1XvkB9Xq30fBtPBlxDSjY0zkRDaO4C3nA&oe=65026D04\n	3	4	Tâm
2	Nhân Lê	1992-03-10 00:00:00	0906444231	https://www.messenger.com/t/100002847373326	t	t	https://scontent.fdad3-1.fna.fbcdn.net/v/t1.18169-1/18527738_1097759823662253_4864510497967260237_n.jpg?stp=dst-jpg_p100x100&_nc_cat=103&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=9hPsvjrDsZoAX-fa2qW&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-1.fna&oh=00_AfCUJEcPmrleXyjEko1ceI1P85G9sx65fw73agzGc1c-LA&oe=6502A1F2	2	2	Tý
17	Ben Ben	2023-12-31 00:00:00	0999000014	https://www.messenger.com/t/100002984294283	t	f	https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-1/299990534_5167174363391989_9133961596443236314_n.jpg?stp=dst-jpg_p100x100&_nc_cat=101&ccb=1-7&_nc_sid=2b6aad&_nc_ohc=ZfxhRZ_0U_oAX9tjjRw&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-4.fna&oh=00_AfALRPryx6XDnWAquGsA4FzQ36wTdYyA6jEs3fq5xP_6Wg&oe=64DF3C65	3	4	Bò
18	Quang Bonsai	2023-12-31 00:00:00	0999000015	https://www.messenger.com/t/100039680979076	t	f	https://scontent.xx.fbcdn.net/v/t39.30808-1/353046139_941683383831019_1302654709104618697_n.jpg?stp=dst-jpg_p100x100&_nc_cat=101&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=o_lvLuNx1z0AX8mwjj-&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=00_AfDEwiww1ti9q_hAl_li24SgqqkDDTVjktgDjUJF5TRs-A&oe=64E0CF80	3	5	Quang
19	Anh Kiệt	2023-12-31 00:00:00	0999000016	https://www.messenger.com/t/1815370298	f	f	https://scontent.fdad3-5.fna.fbcdn.net/v/t39.30808-1/358744673_10219951074646635_1995426187020577113_n.jpg?stp=dst-jpg_p100x100&_nc_cat=102&ccb=1-7&_nc_sid=7206a8&_nc_ohc=i8J1V-3YxBsAX_Zic_U&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-5.fna&oh=00_AfAWs9RJbPrH9j74BNKBa5sQmEci3IRwtEzQo_v5aQqZIQ&oe=64E11428	3	4	Kiệt
20	Thảo Nguyễn	2023-12-31 00:00:00	0999000017	https://www.messenger.com/t/100007837391804	f	f	https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-1/346892613_553864250013321_6481297326667936305_n.jpg?stp=dst-jpg_p100x100&_nc_cat=100&ccb=1-7&_nc_sid=f67be1&_nc_ohc=Rbw8ZQNZwFEAX_u7TIG&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.fdad3-4.fna&oh=00_AfCl2jIk9h9I8igXvJqCREOvKQ1c8eHce4TI9aJYnFJsJg&oe=64E0D84A	3	4	Thảo
\.


--
-- TOC entry 3340 (class 0 OID 41033)
-- Dependencies: 216
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
-- TOC entry 3195 (class 2606 OID 41061)
-- Name: fund fund_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fund
    ADD CONSTRAINT fund_pkey PRIMARY KEY (member_id, year);


--
-- TOC entry 3191 (class 2606 OID 41032)
-- Name: level level_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (level_id);


--
-- TOC entry 3189 (class 2606 OID 41025)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_name);


--
-- TOC entry 3193 (class 2606 OID 41039)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


-- Completed on 2023-08-18 17:25:07

--
-- PostgreSQL database dump complete
--


CREATE TABLE IF NOT EXISTS public.billing
(
    order_code integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    amount integer NOT NULL,
    description character varying COLLATE pg_catalog."default" NOT NULL,
    cancel_url character varying COLLATE pg_catalog."default" NOT NULL,
    return_url character varying COLLATE pg_catalog."default" NOT NULL,
    member_id bigint NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    payment_id character varying COLLATE pg_catalog."default",
    CONSTRAINT billing_pkey PRIMARY KEY (order_code)
)
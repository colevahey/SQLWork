--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: basicinfo; Type: TABLE; Schema: public; Owner: ColeV
--

CREATE TABLE basicinfo (
    uid integer NOT NULL,
    firstname character varying(20) NOT NULL,
    lastname character varying(20) NOT NULL,
    age integer NOT NULL,
    grade integer NOT NULL,
    email character varying(35) NOT NULL,
    favoriteclass integer NOT NULL,
    hashomework boolean NOT NULL,
    sixwordstory character varying(40),
    haircolor integer NOT NULL,
    schoologyusername character varying(20) NOT NULL,
    year character varying(10) NOT NULL
);


ALTER TABLE basicinfo OWNER TO "ColeV";

--
-- Name: classes; Type: TABLE; Schema: public; Owner: ColeV
--

CREATE TABLE classes (
    cid integer NOT NULL,
    class character varying(20) NOT NULL
);


ALTER TABLE classes OWNER TO "ColeV";

--
-- Name: haircolors; Type: TABLE; Schema: public; Owner: ColeV
--

CREATE TABLE haircolors (
    colorid integer NOT NULL,
    color character varying(20) NOT NULL
);


ALTER TABLE haircolors OWNER TO "ColeV";

--
-- Data for Name: basicinfo; Type: TABLE DATA; Schema: public; Owner: ColeV
--

COPY basicinfo (uid, firstname, lastname, age, grade, email, favoriteclass, hashomework, sixwordstory, haircolor, schoologyusername, year) FROM stdin;
1001	Boden	Solomonson	16	11	bsolomonson@student.csdspartans.org	21	t	"What do we have for homework?"	2	bsolomonson	Junior
1002	Jack	Breen	16	11	jbreen@student.csdspartans.org	20	f	Null	1	jbreen	Junior
1003	Ben	Webb	16	11	bwebb@student.csdspartans.org	22	t	"I am writing my six words"	1	bwebb	Junior
1004	Ryan	Moton	16	11	rmoton@student.csdspartans.org	20	f	"If I am six, who's seven?"	1	rmoton	Junior
1005	Emerson	Houser	15	10	ehouser@student.csdspartans.org	22	f	Null	2	ehouser	Sophomore
1006	Ryan	Hamilton	16	11	rhamilton@student.csdspartans.org	21	f	"Six word stories, I have none"	2	rhamilton	Junior
1007	Ged	Fuller	15	10	gfuller@student.csdspartans.org	20	t	"I can not count to six"	2	gfuller	Sophomore
1008	Sky	Fuller	17	12	sfuller@student.csdspartans.org	23	f	Null	2	sfuller	Senior
1009	Kyle	Delay	15	10	kdelay@student.csdspartans.org	21	t	Null	2	kdelay	Sophomore
1010	Brendan	Coale	16	11	bcoale@student.csdspartans.org	21	t	"I love Skilstak like nothing else"	3	bcoale	Junior
1011	Harrison	Hosse	16	11	hhosse@student.csdspartans.org	23	t	"Six words here... wait a second"	2	hhosse	Junior
1012	Ryan	Renshaw	16	11	rrenshaw@student.csdspartans.org	22	f	Null	2	rrenshaw	Junior
1013	Humza	Omar	16	11	homar@student.csdspartans.org	20	t	"I am done with my story"	3	homar	Junior
1014	Johnathan	Okuda	16	11	jokuda@student.csdspartans.org	21	f	Null	1	jokuda	Junior
1015	Sam	Swanner	16	11	sswanner@student.csdspartans.org	20	f	"Is this a six word story?"	2	sswanner	Junior
1016	Edward	Snortles	16	11	esnort@student.csdspartans.org	22	t	Null	4	esnort	Junior
1017	Timmy	Turner	16	11	turnt@student.csdspartans.org	21	f	"I plagiarized this six word story."	5	turnt	Junior
1019	Donovan	Keohane	16	11	keod@student.csdspartans.org	23	t	"I like turtles, not smelly garbage."	1	keod	Junior
1021	Test	SQL	16	11	testersql@gmail.com	22	t	My six word story is interesting	2	tsql	Junior
1018	Cole	Vahey	16	11	rcvahey01@gmail.com	23	f	Null	6	rvahey	Junior
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: ColeV
--

COPY classes (cid, class) FROM stdin;
20	Pre Calculus
21	AP Language
22	APUSH
23	Chemistry
\.


--
-- Data for Name: haircolors; Type: TABLE DATA; Schema: public; Owner: ColeV
--

COPY haircolors (colorid, color) FROM stdin;
1	Brown
2	Blonde
3	Black
4	Red
5	Peach
6	Green
\.


--
-- Name: basicinfo basicinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: ColeV
--

ALTER TABLE ONLY basicinfo
    ADD CONSTRAINT basicinfo_pkey PRIMARY KEY (uid);


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: ColeV
--

ALTER TABLE ONLY classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (cid);


--
-- Name: haircolors haircolors_pkey; Type: CONSTRAINT; Schema: public; Owner: ColeV
--

ALTER TABLE ONLY haircolors
    ADD CONSTRAINT haircolors_pkey PRIMARY KEY (colorid);


--
-- Name: basicinfo basicinfo_favoriteclass_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ColeV
--

ALTER TABLE ONLY basicinfo
    ADD CONSTRAINT basicinfo_favoriteclass_fkey FOREIGN KEY (favoriteclass) REFERENCES classes(cid);


--
-- Name: basicinfo basicinfo_haircolor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ColeV
--

ALTER TABLE ONLY basicinfo
    ADD CONSTRAINT basicinfo_haircolor_fkey FOREIGN KEY (haircolor) REFERENCES haircolors(colorid);


--
-- PostgreSQL database dump complete
--


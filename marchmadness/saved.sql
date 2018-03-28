--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

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
-- Name: tournamentscores; Type: TABLE; Schema: public; Owner: colev
--

CREATE TABLE tournamentscores (
    year integer NOT NULL,
    round integer NOT NULL,
    regionnumber integer NOT NULL,
    regionname character varying(15) NOT NULL,
    seed1 integer NOT NULL,
    score1 integer NOT NULL,
    team1 character varying(30) NOT NULL,
    team2 character varying(30) NOT NULL,
    score2 integer NOT NULL,
    seed2 integer NOT NULL
);


ALTER TABLE tournamentscores OWNER TO colev;

--
-- Data for Name: tournamentscores; Type: TABLE DATA; Schema: public; Owner: colev
--

COPY tournamentscores (year, round, regionnumber, regionname, seed1, score1, team1, team2, score2, seed2) FROM stdin;
1985	1	1	West	1	83	St Johns	Southern	59	16
1985	1	1	West	2	81	VCU	Marshall	65	15
1985	1	1	West	3	65	NC State	Nevada	56	14
1985	1	1	West	4	85	UNLV	San Diego St	80	13
1985	1	1	West	5	58	Washington	Kentucky	65	12
1985	1	1	West	6	75	Tulsa	UTEP	79	11
1985	1	1	West	7	50	Alabama	Arizona	41	10
1985	1	1	West	8	54	Iowa	Arkansas	63	9
1985	1	2	East	1	68	Georgetown	Lehigh	43	16
1985	1	2	East	2	65	Georgia Tech	Mercer	58	15
1985	1	2	East	3	76	Illinois	Northeastern	57	14
1985	1	2	East	4	59	Loyola Illinois	Iona	58	13
1985	1	2	East	5	85	SMU	Old Dominion	68	12
1985	1	2	East	6	67	Georgia	Wichita St	59	11
1985	1	2	East	7	70	Syracuse	DePaul	65	10
1985	1	2	East	8	60	Temple	Virginia Tech	57	9
1985	1	3	Midwest	1	96	Oklahoma	North Carolina A&T	83	16
1985	1	3	Midwest	2	67	Memphis	Pennsylvania	55	15
1985	1	3	Midwest	3	75	Duke	Pepperdine	62	14
1985	1	3	Midwest	4	75	Ohio St	Iowa St	64	13
1985	1	3	Midwest	5	78	Louisiana Tech	Pittsburgh	54	12
1985	1	3	Midwest	6	53	Texas Tech	Boston College	55	11
1985	1	3	Midwest	7	70	UAB	Michigan St	68	10
1985	1	3	Midwest	8	55	USC	Illinois St	58	9
1985	1	4	Southeast	1	59	Michigan	Fairleigh Dickinson	55	16
1985	1	4	Southeast	2	76	North Carolina	Middle Tennessee St	57	15
1985	1	4	Southeast	3	49	Kansas	Ohio	38	14
1985	1	4	Southeast	4	55	LSU	Navy	78	13
1985	1	4	Southeast	5	69	Maryland	Miami Ohio	68	12
1985	1	4	Southeast	6	58	Purdue	Auburn	59	11
1985	1	4	Southeast	7	79	Notre Dame	Oregon St	70	10
1985	1	4	Southeast	8	51	Villanova	Dayton	49	9
1985	2	1	West	1	68	St Johns	Arkansas	65	9
1985	2	1	West	2	59	VCU	Alabama	63	7
1985	2	1	West	3	86	NC State	UTEP	73	11
1985	2	1	West	4	61	UNLV	Kentucky	64	12
1985	2	2	East	1	63	Georgetown	Temple	46	8
1985	2	2	East	2	70	Georgia Tech	Syracuse	53	7
1985	2	2	East	3	74	Illinois	Georgia	58	6
1985	2	2	East	4	70	Loyola Illinois	SMU	57	5
1985	2	3	Midwest	1	75	Oklahoma	Illinois St	69	9
1985	2	3	Midwest	2	67	Memphis	UAB	66	7
1985	2	3	Midwest	3	73	Duke	Boston College	74	11
1985	2	3	Midwest	4	67	Ohio St	Louisiana Tech	79	5
1985	2	4	Southeast	1	55	Michigan	Villanova	59	8
1985	2	4	Southeast	2	60	North Carolina	Notre Dame	58	7
1985	2	4	Southeast	3	64	Kansas	Auburn	66	11
1985	2	4	Southeast	13	59	Navy	Maryland	64	5
1985	3	1	West	1	86	St Johns	Kentucky	70	12
1985	3	1	West	7	55	Alabama	NC State	61	3
1985	3	2	East	1	65	Georgetown	Loyola Illinois	53	4
1985	3	2	East	2	61	Georgia Tech	Illinois	53	3
1985	3	3	Midwest	1	86	Oklahoma	Louisiana Tech	84	5
1985	3	3	Midwest	2	59	Memphis	Boston College	57	11
1985	3	4	Southeast	8	46	Villanova	Maryland	43	5
1985	3	4	Southeast	2	62	North Carolina	Auburn	56	11
1985	4	1	West	1	69	St Johns	NC State	60	3
1985	4	2	East	1	60	Georgetown	Georgia Tech	54	2
1985	4	3	Midwest	1	61	Oklahoma	Memphis	63	2
1985	4	4	Southeast	8	56	Villanova	North Carolina	44	2
1985	5	1	Final Four	1	59	St Johns	Georgetown	77	1
1985	5	2	Final Four	2	45	Memphis	Villanova	52	8
1985	6	1	Championship	1	64	Georgetown	Villanova	66	8
1986	1	1	Southeast	1	75	Kentucky	Davidson	55	16
1986	1	1	Southeast	2	68	Georgia Tech	Marist	53	15
1986	1	1	Southeast	3	95	Memphis	Ball St	63	14
1986	1	1	Southeast	4	75	Illinois	Fairfield	51	13
1986	1	1	Southeast	5	97	Alabama	Xavier	80	12
1986	1	1	Southeast	6	87	Purdue	LSU	94	11
1986	1	1	Southeast	7	62	Virginia Tech	Villanova	71	10
1986	1	1	Southeast	8	67	Western Kentucky	Nebraska	59	9
1986	1	2	West	1	83	St Johns	Montana St	74	16
1986	1	2	West	2	93	Louisville	Drexel	73	15
1986	1	2	West	3	84	North Carolina	Utah	72	14
1986	1	2	West	4	74	UNLV	Louisiana Monroe	51	13
1986	1	2	West	5	69	Maryland	Pepperdine	64	12
1986	1	2	West	6	66	UAB	Missouri	64	11
1986	1	2	West	7	83	Bradley	UTEP	65	10
1986	1	2	West	8	73	Auburn	Arizona	63	9
1986	1	3	East	1	85	Duke	Mississippi Valley St	78	16
1986	1	3	East	2	101	Syracuse	Brown	52	15
1986	1	3	East	3	79	Indiana	Cleveland St	83	14
1986	1	3	East	4	80	Oklahoma	Northeastern	74	13
1986	1	3	East	5	68	Virginia	DePaul	72	12
1986	1	3	East	6	60	St Josephs	Richmond	59	11
1986	1	3	East	7	87	Navy	Tulsa	68	10
1986	1	3	East	8	72	Old Dominion	West Virginia	64	9
1986	1	4	Midwest	1	71	Kansas	North Carolina A&T	46	16
1986	1	4	Midwest	2	70	Michigan	Akron	64	15
1986	1	4	Midwest	3	83	Notre Dame	Arkansas Little Rock	90	14
1986	1	4	Midwest	4	70	Georgetown	Texas Tech	64	13
1986	1	4	Midwest	5	72	Michigan St	Washington	70	12
1986	1	4	Midwest	6	66	NC State	Iowa	64	11
1986	1	4	Midwest	7	81	Iowa St	Miami Ohio	79	10
1986	1	4	Midwest	8	50	Jacksonville	Temple	61	9
1986	2	1	Southeast	1	71	Kentucky	Western Kentucky	64	8
1986	2	1	Southeast	2	66	Georgia Tech	Villanova	61	10
1986	2	1	Southeast	3	81	Memphis	LSU	83	11
1986	2	1	Southeast	4	56	Illinois	Alabama	58	5
1986	2	2	West	1	65	St Johns	Auburn	81	8
1986	2	2	West	2	82	Louisville	Bradley	68	7
1986	2	2	West	3	77	North Carolina	UAB	59	6
1986	2	2	West	4	70	UNLV	Maryland	64	5
1986	2	3	East	1	89	Duke	Old Dominion	61	8
1986	2	3	East	2	85	Syracuse	Navy	97	7
1986	2	3	East	14	75	Cleveland St	St Josephs	69	6
1986	2	3	East	4	69	Oklahoma	DePaul	74	12
1986	2	4	Midwest	1	65	Kansas	Temple	43	9
1986	2	4	Midwest	2	69	Michigan	Iowa St	72	7
1986	2	4	Midwest	14	66	Arkansas Little Rock	NC State	80	6
1986	2	4	Midwest	4	68	Georgetown	Michigan St	80	5
1986	3	1	Southeast	1	68	Kentucky	Alabama	63	5
1986	3	1	Southeast	2	64	Georgia Tech	LSU	70	11
1986	3	2	West	8	70	Auburn	UNLV	63	4
1986	3	2	West	2	94	Louisville	North Carolina	79	3
1986	3	3	East	1	74	Duke	DePaul	67	12
1986	3	3	East	7	71	Navy	Cleveland St	70	14
1986	3	4	Midwest	1	96	Kansas	Michigan St	86	5
1986	3	4	Midwest	7	66	Iowa St	NC State	70	6
1986	4	1	Southeast	1	57	Kentucky	LSU	59	11
1986	4	2	West	8	76	Auburn	Louisville	84	2
1986	4	3	East	1	71	Duke	Navy	50	7
1986	4	4	Midwest	1	75	Kansas	NC State	67	6
1986	5	1	Final Four	11	77	LSU	Louisville	88	2
1986	5	2	Final Four	1	71	Duke	Kansas	67	1
1986	6	1	Championship	2	72	Louisville	Duke	69	1
1987	1	1	West	1	95	UNLV	Idaho St	70	16
1987	1	1	West	2	99	Iowa	Santa Clara	76	15
1987	1	1	West	3	93	Pittsburgh	Marist	68	14
1987	1	1	West	4	92	UCLA	Central Michigan	73	13
1987	1	1	West	5	60	Virginia	Wyoming	64	12
1987	1	1	West	6	74	Oklahoma	Tulsa	69	11
1987	1	1	West	7	98	UTEP	Arizona	91	10
1987	1	1	West	8	79	Georgia	Kansas St	82	9
1987	1	2	Midwest	1	92	Indiana	Fairfield	58	16
1987	1	2	Midwest	2	75	Temple	Southern	56	15
1987	1	2	Midwest	3	76	DePaul	Louisiana Tech	62	14
1987	1	2	Midwest	4	69	Missouri	Xavier	70	13
1987	1	2	Midwest	5	58	Duke	Texas A&M	51	12
1987	1	2	Midwest	6	57	St Johns	Wichita St	55	11
1987	1	2	Midwest	7	79	Georgia Tech	LSU	85	10
1987	1	2	Midwest	8	62	Auburn	San Diego	61	9
1987	1	3	Southeast	1	75	Georgetown	Bucknell	53	16
1987	1	3	Southeast	2	88	Alabama	North Carolina A&T	71	15
1987	1	3	Southeast	3	67	Illinois	Austin Peay	68	14
1987	1	3	Southeast	4	60	Clemson	Southwest Missouri St	65	13
1987	1	3	Southeast	5	66	Kansas	Houston	55	12
1987	1	3	Southeast	6	90	Providence	UAB	68	11
1987	1	3	Southeast	7	83	New Orleans	BYU	79	10
1987	1	3	Southeast	8	77	Kentucky	Ohio St	91	9
1987	1	4	East	1	113	North Carolina	Pennsylvania	82	16
1987	1	4	East	2	79	Syracuse	Georgia Southern	73	15
1987	1	4	East	3	104	Purdue	Northeastern	95	14
1987	1	4	East	4	76	TCU	Marshall	60	13
1987	1	4	East	5	84	Notre Dame	Middle Tennessee St	71	12
1987	1	4	East	6	82	Florida	NC State	70	11
1987	1	4	East	7	62	West Virginia	Western Kentucky	64	10
1987	1	4	East	8	82	Navy	Michigan	97	9
1987	2	1	West	1	80	UNLV	Kansas St	61	9
1987	2	1	West	2	84	Iowa	UTEP	82	7
1987	2	1	West	3	93	Pittsburgh	Oklahoma	96	6
1987	2	1	West	4	68	UCLA	Wyoming	78	12
1987	2	2	Midwest	1	107	Indiana	Auburn	90	8
1987	2	2	Midwest	2	62	Temple	LSU	72	10
1987	2	2	Midwest	3	83	DePaul	St Johns	75	6
1987	2	2	Midwest	13	60	Xavier	Duke	65	5
1987	2	3	Southeast	1	82	Georgetown	Ohio St	79	9
1987	2	3	Southeast	2	101	Alabama	New Orleans	76	7
1987	2	3	Southeast	14	87	Austin Peay	Providence	90	6
1987	2	3	Southeast	13	63	Southwest Missouri St	Kansas	67	5
1987	2	4	East	1	109	North Carolina	Michigan	97	9
1987	2	4	East	2	104	Syracuse	Western Kentucky	86	10
1987	2	4	East	3	66	Purdue	Florida	85	6
1987	2	4	East	4	57	TCU	Notre Dame	58	5
1987	3	1	West	1	92	UNLV	Wyoming	78	12
1987	3	1	West	2	93	Iowa	Oklahoma	91	6
1987	3	2	Midwest	1	88	Indiana	Duke	82	5
1987	3	2	Midwest	10	63	LSU	DePaul	58	3
1987	3	3	Southeast	1	70	Georgetown	Kansas	57	5
1987	3	3	Southeast	2	82	Alabama	Providence	103	6
1987	3	4	East	1	74	North Carolina	Notre Dame	68	5
1987	3	4	East	2	87	Syracuse	Florida	81	6
1987	4	1	West	1	84	UNLV	Iowa	81	2
1987	4	2	Midwest	1	77	Indiana	LSU	76	10
1987	4	3	Southeast	1	73	Georgetown	Providence	88	6
1987	4	4	East	1	75	North Carolina	Syracuse	79	2
1987	5	1	Final Four	1	93	UNLV	Indiana	97	1
1987	5	2	Final Four	6	63	Providence	Syracuse	67	2
1987	6	1	Championship	1	74	Indiana	Syracuse	73	2
1988	1	1	Midwest	1	94	Purdue	Fairleigh Dickinson	79	16
1988	1	1	Midwest	2	108	Pittsburgh	Eastern Michigan	90	15
1988	1	1	Midwest	3	75	NC State	Murray St	78	14
1988	1	1	Midwest	4	66	Kansas St	La Salle	53	13
1988	1	1	Midwest	5	83	DePaul	Wichita St	62	12
1988	1	1	Midwest	6	85	Kansas	Xavier	72	11
1988	1	1	Midwest	7	80	Vanderbilt	Utah St	77	10
1988	1	1	Midwest	8	60	Baylor	Memphis	75	9
1988	1	2	East	1	87	Temple	Lehigh	73	16
1988	1	2	East	2	85	Duke	Boston University	69	15
1988	1	2	East	3	69	Syracuse	North Carolina A&T	55	14
1988	1	2	East	4	69	Indiana	Richmond	72	13
1988	1	2	East	5	90	Georgia Tech	Iowa St	78	12
1988	1	2	East	6	80	Missouri	Rhode Island	87	11
1988	1	2	East	7	83	SMU	Notre Dame	75	10
1988	1	2	East	8	66	Georgetown	LSU	63	9
1988	1	3	West	1	90	Arizona	Cornell	50	16
1988	1	3	West	2	83	North Carolina	North Texas St	65	15
1988	1	3	West	3	63	Michigan	Boise St	58	14
1988	1	3	West	4	54	UNLV	Southwest Missouri St	50	13
1988	1	3	West	5	102	Iowa	Florida St	98	12
1988	1	3	West	6	62	Florida	St Johns	59	11
1988	1	3	West	7	115	Wyoming	Loyola Marymount	119	10
1988	1	3	West	8	80	Seton Hall	UTEP	64	9
1988	1	4	Southeast	1	94	Oklahoma	Chattanooga	66	16
1988	1	4	Southeast	2	99	Kentucky	Southern	84	15
1988	1	4	Southeast	3	81	Illinois	Texas San Antonio	72	14
1988	1	4	Southeast	4	98	BYU	Charlotte	92	13
1988	1	4	Southeast	5	70	Louisville	Oregon St	61	12
1988	1	4	Southeast	6	82	Villanova	Arkansas	74	11
1988	1	4	Southeast	7	92	Maryland	Santa Barbara	82	10
1988	1	4	Southeast	8	90	Auburn	Bradley	86	9
1988	2	1	Midwest	1	100	Purdue	Memphis	73	9
1988	2	1	Midwest	2	74	Pittsburgh	Vanderbilt	80	7
1988	2	1	Midwest	14	58	Murray St	Kansas	61	6
1988	2	1	Midwest	4	66	Kansas St	DePaul	58	5
1988	2	2	East	1	74	Temple	Georgetown	53	8
1988	2	2	East	2	94	Duke	SMU	79	7
1988	2	2	East	3	94	Syracuse	Rhode Island	97	11
1988	2	2	East	13	59	Richmond	Georgia Tech	55	5
1988	2	3	West	1	84	Arizona	Seton Hall	55	8
1988	2	3	West	2	123	North Carolina	Loyola Marymount	97	10
1988	2	3	West	3	108	Michigan	Florida	85	6
1988	2	3	West	4	85	UNLV	Iowa	104	5
1988	2	4	Southeast	1	107	Oklahoma	Auburn	87	8
1988	2	4	Southeast	2	90	Kentucky	Maryland	81	7
1988	2	4	Southeast	3	63	Illinois	Villanova	66	6
1988	2	4	Southeast	4	76	BYU	Louisville	97	5
1988	3	1	Midwest	1	70	Purdue	Kansas St	73	4
1988	3	1	Midwest	7	64	Vanderbilt	Kansas	77	6
1988	3	2	East	1	69	Temple	Richmond	47	13
1988	3	2	East	2	73	Duke	Rhode Island	72	11
1988	3	3	West	1	99	Arizona	Iowa	79	5
1988	3	3	West	2	78	North Carolina	Michigan	69	3
1988	3	4	Southeast	1	108	Oklahoma	Louisville	98	5
1988	3	4	Southeast	2	74	Kentucky	Villanova	80	6
1988	4	1	Midwest	4	58	Kansas St	Kansas	71	6
1988	4	2	East	1	53	Temple	Duke	63	2
1988	4	3	West	1	70	Arizona	North Carolina	52	2
1988	4	4	Southeast	1	78	Oklahoma	Villanova	59	6
1988	5	1	Final Four	6	66	Kansas	Duke	59	2
1988	5	2	Final Four	1	78	Arizona	Oklahoma	86	1
1988	6	1	Championship	6	83	Kansas	Oklahoma	79	1
1989	1	1	Midwest	1	77	Illinois	McNeese St	71	16
1989	1	1	Midwest	2	104	Syracuse	Bucknell	81	15
1989	1	1	Midwest	3	85	Missouri	Creighton	69	14
1989	1	1	Midwest	4	76	Louisville	Arkansas Little Rock	71	13
1989	1	1	Midwest	5	120	Arkansas	Loyola Marymount	101	12
1989	1	1	Midwest	6	70	Georgia Tech	Texas	76	11
1989	1	1	Midwest	7	46	Florida	Colorado St	68	10
1989	1	1	Midwest	8	64	Pittsburgh	Ball St	68	9
1989	1	2	Southeast	1	72	Oklahoma	East Tennessee St	71	16
1989	1	2	Southeast	2	93	North Carolina	Southern	79	15
1989	1	2	Southeast	3	93	Michigan	Xavier	87	14
1989	1	2	Southeast	4	83	Florida St	Middle Tennessee St	97	13
1989	1	2	Southeast	5	100	Virginia	Providence	97	12
1989	1	2	Southeast	6	84	Alabama	South Alabama	86	11
1989	1	2	Southeast	7	84	UCLA	Iowa St	74	10
1989	1	2	Southeast	8	74	La Salle	Louisiana Tech	83	9
1989	1	3	East	1	50	Georgetown	Princeton	49	16
1989	1	3	East	2	90	Duke	South Carolina St	69	15
1989	1	3	East	3	78	Stanford	Siena	80	14
1989	1	3	East	4	87	Iowa	Rutgers	73	13
1989	1	3	East	5	81	NC State	South Carolina	66	12
1989	1	3	East	6	75	Kansas St	Minnesota	86	11
1989	1	3	East	7	84	West Virginia	Tennessee	68	10
1989	1	3	East	8	65	Vanderbilt	Notre Dame	81	9
1989	1	4	West	1	94	Arizona	Robert Morris	60	16
1989	1	4	West	2	99	Indiana	George Mason	85	15
1989	1	4	West	3	60	Seton Hall	Southwest Missouri St	51	14
1989	1	4	West	4	68	UNLV	Idaho	56	13
1989	1	4	West	5	63	Memphis	DePaul	66	12
1989	1	4	West	6	90	Oregon St	Evansville	94	11
1989	1	4	West	7	85	UTEP	LSU	74	10
1989	1	4	West	8	70	St Marys	Clemson	80	9
1989	2	1	Midwest	1	72	Illinois	Ball St	60	9
1989	2	1	Midwest	2	65	Syracuse	Colorado St	50	10
1989	2	1	Midwest	3	108	Missouri	Texas	89	11
1989	2	1	Midwest	4	93	Louisville	Arkansas	84	5
1989	2	2	Southeast	1	124	Oklahoma	Louisiana Tech	81	9
1989	2	2	Southeast	2	88	North Carolina	UCLA	81	7
1989	2	2	Southeast	3	91	Michigan	South Alabama	82	11
1989	2	2	Southeast	13	88	Middle Tennessee St	Virginia	104	5
1989	2	3	East	1	81	Georgetown	Notre Dame	74	9
1989	2	3	East	2	70	Duke	West Virginia	63	7
1989	2	3	East	14	67	Siena	Minnesota	80	11
1989	2	3	East	4	96	Iowa	NC State	102	5
1989	2	4	West	1	94	Arizona	Clemson	68	9
1989	2	4	West	2	92	Indiana	UTEP	69	7
1989	2	4	West	3	87	Seton Hall	Evansville	73	11
1989	2	4	West	4	85	UNLV	DePaul	70	12
1989	3	1	Midwest	1	83	Illinois	Louisville	69	4
1989	3	1	Midwest	2	83	Syracuse	Missouri	80	3
1989	3	2	Southeast	1	80	Oklahoma	Virginia	86	5
1989	3	2	Southeast	2	87	North Carolina	Michigan	92	3
1989	3	3	East	1	69	Georgetown	NC State	61	5
1989	3	3	East	2	87	Duke	Minnesota	70	11
1989	3	4	West	1	67	Arizona	UNLV	68	4
1989	3	4	West	2	65	Indiana	Seton Hall	78	3
1989	4	1	Midwest	1	89	Illinois	Syracuse	86	2
1989	4	2	Southeast	5	65	Virginia	Michigan	102	3
1989	4	3	East	1	77	Georgetown	Duke	85	2
1989	4	4	West	4	61	UNLV	Seton Hall	84	3
1989	5	1	Final Four	1	81	Illinois	Michigan	83	3
1989	5	2	Final Four	2	78	Duke	Seton Hall	95	3
1989	6	1	Championship	3	80	Michigan	Seton Hall	79	3
1990	1	1	Southeast	1	75	Michigan St	Murray St	71	16
1990	1	1	Southeast	2	70	Syracuse	Coppin St	48	15
1990	1	1	Southeast	3	71	Missouri	Northern Iowa	74	14
1990	1	1	Southeast	4	99	Georgia Tech	East Tennessee St	83	13
1990	1	1	Southeast	5	70	LSU	Villanova	63	12
1990	1	1	Southeast	6	64	Minnesota	UTEP	61	11
1990	1	1	Southeast	7	75	Virginia	Notre Dame	67	10
1990	1	1	Southeast	8	66	Houston	Santa Barbara	70	9
1990	1	2	West	1	102	UNLV	Arkansas Little Rock	72	16
1990	1	2	West	2	79	Arizona	South Florida	67	15
1990	1	2	West	3	76	Michigan	Illinois St	70	14
1990	1	2	West	4	78	Louisville	Idaho	59	13
1990	1	2	West	5	53	Oregon St	Ball St	54	12
1990	1	2	West	6	92	New Mexico St	Loyola Marymount	111	11
1990	1	2	West	7	71	Alabama	Colorado St	54	10
1990	1	2	West	8	84	Ohio St	Providence	83	9
1990	1	3	East	1	76	Connecticut	Boston University	52	16
1990	1	3	East	2	79	Kansas	Robert Morris	71	15
1990	1	3	East	3	81	Duke	Richmond	46	14
1990	1	3	East	4	79	La Salle	Southern Mississippi	63	13
1990	1	3	East	5	49	Clemson	BYU	47	12
1990	1	3	East	6	81	St Johns	Temple	65	11
1990	1	3	East	7	68	UCLA	UAB	56	10
1990	1	3	East	8	63	Indiana	California	65	9
1990	1	4	Midwest	1	77	Oklahoma	Towson	68	16
1990	1	4	Midwest	2	75	Purdue	Louisiana Monroe	63	15
1990	1	4	Midwest	3	70	Georgetown	Texas Southern	52	14
1990	1	4	Midwest	4	68	Arkansas	Princeton	64	13
1990	1	4	Midwest	5	86	Illinois	Dayton	88	12
1990	1	4	Midwest	6	87	Xavier	Kansas St	79	11
1990	1	4	Midwest	7	88	Georgia	Texas	100	10
1990	1	4	Midwest	8	83	North Carolina	Southwest Missouri St	70	9
1990	2	1	Southeast	1	62	Michigan St	Santa Barbara	58	9
1990	2	1	Southeast	2	63	Syracuse	Virginia	61	7
1990	2	1	Southeast	14	78	Northern Iowa	Minnesota	81	6
1990	2	1	Southeast	4	94	Georgia Tech	LSU	91	5
1990	2	2	West	1	76	UNLV	Ohio St	65	8
1990	2	2	West	2	55	Arizona	Alabama	77	7
1990	2	2	West	3	115	Michigan	Loyola Marymount	149	11
1990	2	2	West	4	60	Louisville	Ball St	62	12
1990	2	3	East	1	74	Connecticut	California	54	9
1990	2	3	East	2	70	Kansas	UCLA	71	7
1990	2	3	East	3	76	Duke	St Johns	72	6
1990	2	3	East	4	75	La Salle	Clemson	79	5
1990	2	4	Midwest	1	77	Oklahoma	North Carolina	79	8
1990	2	4	Midwest	2	72	Purdue	Texas	73	10
1990	2	4	Midwest	3	71	Georgetown	Xavier	74	6
1990	2	4	Midwest	4	86	Arkansas	Dayton	84	12
1990	3	1	Southeast	1	80	Michigan St	Georgia Tech	81	4
1990	3	1	Southeast	2	75	Syracuse	Minnesota	82	6
1990	3	2	West	1	69	UNLV	Ball St	67	12
1990	3	2	West	7	60	Alabama	Loyola Marymount	62	11
1990	3	3	East	1	71	Connecticut	Clemson	70	5
1990	3	3	East	7	81	UCLA	Duke	90	3
1990	3	4	Midwest	8	73	North Carolina	Arkansas	96	4
1990	3	4	Midwest	10	102	Texas	Xavier	89	6
1990	4	1	Southeast	4	93	Georgia Tech	Minnesota	91	6
1990	4	2	West	1	131	UNLV	Loyola Marymount	101	11
1990	4	3	East	1	78	Connecticut	Duke	79	3
1990	4	4	Midwest	4	88	Arkansas	Texas	85	10
1990	5	1	Final Four	4	81	Georgia Tech	UNLV	90	1
1990	5	2	Final Four	3	97	Duke	Arkansas	83	4
1990	6	1	Championship	1	103	UNLV	Duke	73	3
1991	1	1	West	1	99	UNLV	Montana	65	16
1991	1	1	West	2	93	Arizona	St Francis	80	15
1991	1	1	West	3	71	Seton Hall	Pepperdine	51	14
1991	1	1	West	4	82	Utah	South Alabama	72	13
1991	1	1	West	5	60	Michigan St	Wisconsin Green Bay	58	12
1991	1	1	West	6	56	New Mexico St	Creighton	64	11
1991	1	1	West	7	48	Virginia	BYU	61	10
1991	1	1	West	8	70	Georgetown	Vanderbilt	60	9
1991	1	2	Midwest	1	97	Ohio St	Towson	86	16
1991	1	2	Midwest	2	102	Duke	Louisiana Monroe	73	15
1991	1	2	Midwest	3	84	Nebraska	Xavier	89	14
1991	1	2	Midwest	4	75	St Johns	Northern Illinois	68	13
1991	1	2	Midwest	5	73	Texas	St Peters	65	12
1991	1	2	Midwest	6	62	LSU	Connecticut	79	11
1991	1	2	Midwest	7	76	Iowa	East Tennessee St	73	10
1991	1	2	Midwest	8	87	Georgia Tech	DePaul	70	9
1991	1	3	East	1	101	North Carolina	Northeastern	66	16
1991	1	3	East	2	69	Syracuse	Richmond	73	15
1991	1	3	East	3	67	Oklahoma St	New Mexico	54	14
1991	1	3	East	4	69	UCLA	Penn St	74	13
1991	1	3	East	5	56	Mississippi St	Eastern Michigan	76	12
1991	1	3	East	6	114	NC State	Southern Mississippi	85	11
1991	1	3	East	7	63	Purdue	Temple	80	10
1991	1	3	East	8	48	Princeton	Villanova	50	9
1991	1	4	Southeast	1	117	Arkansas	Georgia St	76	16
1991	1	4	Southeast	2	79	Indiana	Coastal Carolina	69	15
1991	1	4	Southeast	3	55	Kansas	New Orleans	49	14
1991	1	4	Southeast	4	89	Alabama	Murray St	79	13
1991	1	4	Southeast	5	71	Wake Forest	Louisiana Tech	65	12
1991	1	4	Southeast	6	76	Pittsburgh	Georgia	68	11
1991	1	4	Southeast	7	75	Florida St	USC	72	10
1991	1	4	Southeast	8	79	Arizona St	Rutgers	76	9
1991	2	1	West	1	62	UNLV	Georgetown	54	8
1991	2	1	West	2	76	Arizona	BYU	61	10
1991	2	1	West	3	81	Seton Hall	Creighton	69	11
1991	2	1	West	4	85	Utah	Michigan St	84	5
1991	2	2	Midwest	1	65	Ohio St	Georgia Tech	61	8
1991	2	2	Midwest	2	85	Duke	Iowa	70	7
1991	2	2	Midwest	14	50	Xavier	Connecticut	66	11
1991	2	2	Midwest	4	84	St Johns	Texas	76	5
1991	2	3	East	1	84	North Carolina	Villanova	69	9
1991	2	3	East	15	64	Richmond	Temple	77	10
1991	2	3	East	3	73	Oklahoma St	NC State	64	6
1991	2	3	East	13	68	Penn St	Eastern Michigan	71	12
1991	2	4	Southeast	1	97	Arkansas	Arizona St	90	8
1991	2	4	Southeast	2	82	Indiana	Florida St	60	7
1991	2	4	Southeast	3	77	Kansas	Pittsburgh	66	6
1991	2	4	Southeast	4	96	Alabama	Wake Forest	88	5
1991	3	1	West	1	83	UNLV	Utah	66	4
1991	3	1	West	2	77	Arizona	Seton Hall	81	3
1991	3	2	Midwest	1	74	Ohio St	St Johns	91	4
1991	3	2	Midwest	2	81	Duke	Connecticut	67	11
1991	3	3	East	1	93	North Carolina	Eastern Michigan	67	12
1991	3	3	East	10	72	Temple	Oklahoma St	63	3
1991	3	4	Southeast	1	93	Arkansas	Alabama	70	4
1991	3	4	Southeast	2	65	Indiana	Kansas	83	3
1991	4	1	West	1	77	UNLV	Seton Hall	65	3
1991	4	2	Midwest	4	61	St Johns	Duke	78	2
1991	4	3	East	1	75	North Carolina	Temple	72	10
1991	4	4	Southeast	1	81	Arkansas	Kansas	93	3
1991	5	1	Final Four	1	77	UNLV	Duke	79	2
1991	5	2	Final Four	1	73	North Carolina	Kansas	79	3
1991	6	1	Championship	2	72	Duke	Kansas	65	3
1992	1	1	Midwest	1	100	Kansas	Howard	67	16
1992	1	1	Midwest	2	84	USC	Louisiana Monroe	54	15
1992	1	1	Midwest	3	80	Arkansas	Murray St	69	14
1992	1	1	Midwest	4	85	Cincinnati	Delaware	47	13
1992	1	1	Midwest	5	61	Michigan St	Southwest Missouri St	54	12
1992	1	1	Midwest	6	80	Memphis	Pepperdine	70	11
1992	1	1	Midwest	7	65	Georgia Tech	Houston	60	10
1992	1	1	Midwest	8	50	Evansville	UTEP	55	9
1992	1	2	Southeast	1	83	Ohio St	Mississippi Valley St	56	16
1992	1	2	Southeast	2	100	Oklahoma St	Georgia Southern	73	15
1992	1	2	Southeast	3	80	Arizona	East Tennessee St	87	14
1992	1	2	Southeast	4	68	North Carolina	Miami Ohio	63	13
1992	1	2	Southeast	5	80	Alabama	Stanford	75	12
1992	1	2	Southeast	6	73	Michigan	Temple	66	11
1992	1	2	Southeast	7	57	St Johns	Tulane	61	10
1992	1	2	Southeast	8	65	Nebraska	Connecticut	86	9
1992	1	3	East	1	82	Duke	Campbell	56	16
1992	1	3	East	2	88	Kentucky	Old Dominion	69	15
1992	1	3	East	3	85	Massachusetts	Fordham	58	14
1992	1	3	East	4	78	Seton Hall	La Salle	76	13
1992	1	3	East	5	89	Missouri	West Virginia	78	12
1992	1	3	East	6	51	Syracuse	Princeton	43	11
1992	1	3	East	7	74	Charlotte	Iowa St	76	10
1992	1	3	East	8	92	Texas	Iowa	98	9
1992	1	4	West	1	73	UCLA	Robert Morris	53	16
1992	1	4	West	2	94	Indiana	Eastern Illinois	55	15
1992	1	4	West	3	78	Florida St	Montana	68	14
1992	1	4	West	4	83	Oklahoma	Louisiana Lafayette	87	13
1992	1	4	West	5	73	DePaul	New Mexico St	81	12
1992	1	4	West	6	75	Georgetown	South Florida	60	11
1992	1	4	West	7	94	LSU	BYU	83	10
1992	1	4	West	8	81	Louisville	Wake Forest	58	9
1992	2	1	Midwest	1	60	Kansas	UTEP	66	9
1992	2	1	Midwest	2	78	USC	Georgia Tech	79	7
1992	2	1	Midwest	3	80	Arkansas	Memphis	82	6
1992	2	1	Midwest	4	77	Cincinnati	Michigan St	65	5
1992	2	2	Southeast	1	78	Ohio St	Connecticut	55	9
1992	2	2	Southeast	2	87	Oklahoma St	Tulane	71	10
1992	2	2	Southeast	14	90	East Tennessee St	Michigan	102	6
1992	2	2	Southeast	4	64	North Carolina	Alabama	55	5
1992	2	3	East	1	75	Duke	Iowa	62	9
1992	2	3	East	2	106	Kentucky	Iowa St	98	10
1992	2	3	East	3	77	Massachusetts	Syracuse	71	6
1992	2	3	East	4	88	Seton Hall	Missouri	71	5
1992	2	4	West	1	85	UCLA	Louisville	69	8
1992	2	4	West	2	89	Indiana	LSU	79	7
1992	2	4	West	3	78	Florida St	Georgetown	68	6
1992	2	4	West	13	73	Louisiana Lafayette	New Mexico St	81	12
1992	3	1	Midwest	9	67	UTEP	Cincinnati	69	4
1992	3	1	Midwest	7	79	Georgia Tech	Memphis	83	6
1992	3	2	Southeast	1	80	Ohio St	North Carolina	73	4
1992	3	2	Southeast	2	72	Oklahoma St	Michigan	75	6
1992	3	3	East	1	81	Duke	Seton Hall	69	4
1992	3	3	East	2	87	Kentucky	Massachusetts	77	3
1992	3	4	West	1	85	UCLA	New Mexico St	78	12
1992	3	4	West	2	85	Indiana	Florida St	74	3
1992	4	1	Midwest	4	88	Cincinnati	Memphis	57	6
1992	4	2	Southeast	1	71	Ohio St	Michigan	75	6
1992	4	3	East	1	104	Duke	Kentucky	103	2
1992	4	4	West	1	79	UCLA	Indiana	106	2
1992	5	1	Final Four	4	72	Cincinnati	Michigan	76	6
1992	5	2	Final Four	1	81	Duke	Indiana	78	2
1992	6	1	Championship	6	51	Michigan	Duke	71	1
1993	1	1	Southeast	1	96	Kentucky	Rider	52	16
1993	1	1	Southeast	2	81	Seton Hall	Tennessee St	59	15
1993	1	1	Southeast	3	82	Florida St	Evansville	70	14
1993	1	1	Southeast	4	82	Iowa	Louisiana Monroe	69	13
1993	1	1	Southeast	5	81	Wake Forest	Chattanooga	58	12
1993	1	1	Southeast	6	53	Kansas St	Tulane	55	11
1993	1	1	Southeast	7	55	Western Kentucky	Memphis	52	10
1993	1	1	Southeast	8	86	Utah	Pittsburgh	85	9
1993	1	2	West	1	84	Michigan	Coastal Carolina	53	16
1993	1	2	West	2	61	Arizona	Santa Clara	64	15
1993	1	2	West	3	92	Vanderbilt	Boise St	72	14
1993	1	2	West	4	78	Georgia Tech	Southern	93	13
1993	1	2	West	5	68	New Mexico	George Washington	82	12
1993	1	2	West	6	75	Illinois	Long Beach St	72	11
1993	1	2	West	7	75	Temple	Missouri	61	10
1993	1	2	West	8	70	Iowa St	UCLA	81	9
1993	1	3	East	1	85	North Carolina	East Carolina	65	16
1993	1	3	East	2	93	Cincinnati	Coppin St	66	15
1993	1	3	East	3	54	Massachusetts	Pennsylvania	50	14
1993	1	3	East	4	94	Arkansas	Holy Cross	64	13
1993	1	3	East	5	85	St Johns	Texas Tech	67	12
1993	1	3	East	6	78	Virginia	Manhattan	66	11
1993	1	3	East	7	93	New Mexico St	Nebraska	79	10
1993	1	3	East	8	74	Rhode Island	Purdue	68	9
1993	1	4	Midwest	1	97	Indiana	Wright St	54	16
1993	1	4	Midwest	2	94	Kansas	Ball St	72	15
1993	1	4	Midwest	3	105	Duke	Southern Illinois	70	14
1993	1	4	Midwest	4	76	Louisville	Delaware	70	13
1993	1	4	Midwest	5	74	Oklahoma St	Marquette	62	12
1993	1	4	Midwest	6	66	California	LSU	64	11
1993	1	4	Midwest	7	80	BYU	SMU	71	10
1993	1	4	Midwest	8	55	New Orleans	Xavier	73	9
1993	2	1	Southeast	1	83	Kentucky	Utah	62	8
1993	2	1	Southeast	2	68	Seton Hall	Western Kentucky	72	7
1993	2	1	Southeast	3	94	Florida St	Tulane	63	11
1993	2	1	Southeast	4	78	Iowa	Wake Forest	84	5
1993	2	2	West	1	86	Michigan	UCLA	84	9
1993	2	2	West	15	57	Santa Clara	Temple	68	7
1993	2	2	West	3	85	Vanderbilt	Illinois	68	6
1993	2	2	West	13	80	Southern	George Washington	90	12
1993	2	3	East	1	112	North Carolina	Rhode Island	67	8
1993	2	3	East	2	92	Cincinnati	New Mexico St	55	7
1993	2	3	East	3	56	Massachusetts	Virginia	71	6
1993	2	3	East	4	80	Arkansas	St Johns	74	5
1993	2	4	Midwest	1	73	Indiana	Xavier	70	9
1993	2	4	Midwest	2	90	Kansas	BYU	76	7
1993	2	4	Midwest	3	77	Duke	California	82	6
1993	2	4	Midwest	4	78	Louisville	Oklahoma St	63	5
1993	3	1	Southeast	1	103	Kentucky	Wake Forest	69	5
1993	3	1	Southeast	7	78	Western Kentucky	Florida St	81	3
1993	3	2	West	1	72	Michigan	George Washington	64	12
1993	3	2	West	7	67	Temple	Vanderbilt	59	3
1993	3	3	East	1	80	North Carolina	Arkansas	74	4
1993	3	3	East	2	71	Cincinnati	Virginia	54	6
1993	3	4	Midwest	1	82	Indiana	Louisville	69	4
1993	3	4	Midwest	2	93	Kansas	California	76	6
1993	4	1	Southeast	1	106	Kentucky	Florida St	81	3
1993	4	2	West	1	77	Michigan	Temple	72	7
1993	4	3	East	1	75	North Carolina	Cincinnati	68	2
1993	4	4	Midwest	1	77	Indiana	Kansas	83	2
1993	5	1	Final Four	1	78	Kentucky	Michigan	81	1
1993	5	2	Final Four	1	78	North Carolina	Kansas	68	2
1993	6	1	Championship	1	71	Michigan	North Carolina	77	1
1994	1	1	West	1	76	Missouri	Navy	53	16
1994	1	1	West	2	81	Arizona	Loyola Maryland	55	15
1994	1	1	West	3	67	Louisville	Boise St	58	14
1994	1	1	West	4	92	Syracuse	Hawaii	78	13
1994	1	1	West	5	57	California	Wisconsin Green Bay	61	12
1994	1	1	West	6	74	Minnesota	Southern Illinois	60	11
1994	1	1	West	7	57	Virginia	New Mexico	54	10
1994	1	1	West	8	72	Cincinnati	Wisconsin	80	9
1994	1	2	Midwest	1	94	Arkansas	North Carolina A&T	79	16
1994	1	2	Midwest	2	78	Massachusetts	Southwest Texas St	60	15
1994	1	2	Midwest	3	78	Michigan	Pepperdine	74	14
1994	1	2	Midwest	4	65	Oklahoma St	New Mexico St	55	13
1994	1	2	Midwest	5	102	UCLA	Tulsa	112	12
1994	1	2	Midwest	6	91	Texas	Western Kentucky	77	11
1994	1	2	Midwest	7	66	St Louis	Maryland	74	10
1994	1	2	Midwest	8	77	Illinois	Georgetown	84	9
1994	1	3	East	1	71	North Carolina	Liberty	51	16
1994	1	3	East	2	64	Connecticut	Rider	46	15
1994	1	3	East	3	64	Florida	James Madison	62	14
1994	1	3	East	4	61	Temple	Drexel	39	13
1994	1	3	East	5	84	Indiana	Ohio	72	12
1994	1	3	East	6	80	Nebraska	Pennsylvania	90	11
1994	1	3	East	7	46	UAB	George Washington	51	10
1994	1	3	East	8	64	Washington St	Boston College	67	9
1994	1	4	Southeast	1	98	Purdue	Central Florida	67	16
1994	1	4	Southeast	2	82	Duke	Texas Southern	70	15
1994	1	4	Southeast	3	83	Kentucky	Tennessee St	70	14
1994	1	4	Southeast	4	102	Kansas	Chattanooga	73	13
1994	1	4	Southeast	5	68	Wake Forest	College of Charleston	58	12
1994	1	4	Southeast	6	81	Marquette	Louisiana Lafayette	59	11
1994	1	4	Southeast	7	84	Michigan St	Seton Hall	73	10
1994	1	4	Southeast	8	70	Providence	Alabama	76	9
1994	2	1	West	1	109	Missouri	Wisconsin	96	9
1994	2	1	West	2	71	Arizona	Virginia	58	7
1994	2	1	West	3	60	Louisville	Minnesota	55	6
1994	2	1	West	4	64	Syracuse	Wisconsin Green Bay	59	12
1994	2	2	Midwest	1	85	Arkansas	Georgetown	73	9
1994	2	2	Midwest	2	87	Massachusetts	Maryland	95	10
1994	2	2	Midwest	3	84	Michigan	Texas	79	6
1994	2	2	Midwest	4	80	Oklahoma St	Tulsa	82	12
1994	2	3	East	1	72	North Carolina	Boston College	75	9
1994	2	3	East	2	75	Connecticut	George Washington	63	10
1994	2	3	East	3	70	Florida	Pennsylvania	58	11
1994	2	3	East	4	58	Temple	Indiana	67	5
1994	2	4	Southeast	1	83	Purdue	Alabama	73	9
1994	2	4	Southeast	2	85	Duke	Michigan St	74	7
1994	2	4	Southeast	3	63	Kentucky	Marquette	75	6
1994	2	4	Southeast	4	69	Kansas	Wake Forest	58	5
1994	3	1	West	1	98	Missouri	Syracuse	88	4
1994	3	1	West	2	82	Arizona	Louisville	70	3
1994	3	2	Midwest	1	103	Arkansas	Tulsa	84	12
1994	3	2	Midwest	10	71	Maryland	Michigan	78	3
1994	3	3	East	9	77	Boston College	Indiana	68	5
1994	3	3	East	2	60	Connecticut	Florida	69	3
1994	3	4	Southeast	1	83	Purdue	Kansas	78	4
1994	3	4	Southeast	2	59	Duke	Marquette	49	6
1994	4	1	West	1	72	Missouri	Arizona	82	2
1994	4	2	Midwest	1	76	Arkansas	Michigan	68	3
1994	4	3	East	9	65	Boston College	Florida	74	3
1994	4	4	Southeast	1	60	Purdue	Duke	69	2
1994	5	1	Final Four	2	82	Arizona	Arkansas	91	1
1994	5	2	Final Four	3	65	Florida	Duke	70	2
1994	6	1	Championship	1	76	Arkansas	Duke	72	2
1995	1	1	Midwest	1	82	Kansas	Colgate	68	16
1995	1	1	Midwest	2	79	Arkansas	Texas Southern	78	15
1995	1	1	Midwest	3	49	Purdue	Wisconsin Green Bay	48	14
1995	1	1	Midwest	4	96	Virginia	Nicholls St	72	13
1995	1	1	Midwest	5	62	Arizona	Miami Ohio	71	12
1995	1	1	Midwest	6	77	Memphis	Louisville	56	11
1995	1	1	Midwest	7	96	Syracuse	Southern Illinois	92	10
1995	1	1	Midwest	8	82	Western Kentucky	Michigan	76	9
1995	1	2	Southeast	1	113	Kentucky	Mount St Marys	67	16
1995	1	2	Southeast	2	80	North Carolina	Murray St	70	15
1995	1	2	Southeast	3	72	Michigan St	Weber St	79	14
1995	1	2	Southeast	4	67	Oklahoma	Manhattan	77	13
1995	1	2	Southeast	5	81	Arizona St	Ball St	66	12
1995	1	2	Southeast	6	68	Georgetown	Xavier	63	11
1995	1	2	Southeast	7	64	Iowa St	Florida	61	10
1995	1	2	Southeast	8	70	BYU	Tulane	76	9
1995	1	3	East	1	79	Wake Forest	North Carolina A&T	47	16
1995	1	3	East	2	68	Massachusetts	St Peters	51	15
1995	1	3	East	3	81	Villanova	Old Dominion	89	14
1995	1	3	East	4	73	Oklahoma St	Drexel	49	13
1995	1	3	East	5	91	Alabama	Pennsylvania	85	12
1995	1	3	East	6	68	Tulsa	Illinois	62	11
1995	1	3	East	7	68	Charlotte	Stanford	70	10
1995	1	3	East	8	61	Minnesota	St Louis	64	9
1995	1	4	West	1	92	UCLA	Florida International	56	16
1995	1	4	West	2	100	Connecticut	Chattanooga	71	15
1995	1	4	West	3	87	Maryland	Gonzaga	63	14
1995	1	4	West	4	76	Utah	Long Beach St	64	13
1995	1	4	West	5	75	Mississippi St	Santa Clara	67	12
1995	1	4	West	6	73	Oregon	Texas	90	11
1995	1	4	West	7	77	Cincinnati	Temple	71	10
1995	1	4	West	8	65	Missouri	Indiana	60	9
1995	2	1	Midwest	1	75	Kansas	Western Kentucky	70	8
1995	2	1	Midwest	2	96	Arkansas	Syracuse	94	7
1995	2	1	Midwest	3	73	Purdue	Memphis	75	6
1995	2	1	Midwest	4	60	Virginia	Miami Ohio	54	12
1995	2	2	Southeast	1	82	Kentucky	Tulane	60	9
1995	2	2	Southeast	2	73	North Carolina	Iowa St	51	7
1995	2	2	Southeast	14	51	Weber St	Georgetown	53	6
1995	2	2	Southeast	13	54	Manhattan	Arizona St	64	5
1995	2	3	East	1	64	Wake Forest	St Louis	59	9
1995	2	3	East	2	75	Massachusetts	Stanford	53	10
1995	2	3	East	14	52	Old Dominion	Tulsa	64	6
1995	2	3	East	4	66	Oklahoma St	Alabama	52	5
1995	2	4	West	1	75	UCLA	Missouri	74	8
1995	2	4	West	2	96	Connecticut	Cincinnati	91	7
1995	2	4	West	3	82	Maryland	Texas	68	11
1995	2	4	West	4	64	Utah	Mississippi St	78	5
1995	3	1	Midwest	1	58	Kansas	Virginia	67	4
1995	3	1	Midwest	2	96	Arkansas	Memphis	91	6
1995	3	2	Southeast	1	97	Kentucky	Arizona St	73	5
1995	3	2	Southeast	2	74	North Carolina	Georgetown	64	6
1995	3	3	East	1	66	Wake Forest	Oklahoma St	71	4
1995	3	3	East	2	76	Massachusetts	Tulsa	51	6
1995	3	4	West	1	86	UCLA	Mississippi St	67	5
1995	3	4	West	2	99	Connecticut	Maryland	89	3
1995	4	1	Midwest	4	61	Virginia	Arkansas	68	2
1995	4	2	Southeast	1	61	Kentucky	North Carolina	74	2
1995	4	3	East	4	68	Oklahoma St	Massachusetts	54	2
1995	4	4	West	1	102	UCLA	Connecticut	96	2
1995	5	1	Final Four	2	75	Arkansas	North Carolina	68	2
1995	5	2	Final Four	4	61	Oklahoma St	UCLA	74	1
1995	6	1	Championship	2	78	Arkansas	UCLA	89	1
1996	1	1	Southeast	1	68	Connecticut	Colgate	59	16
1996	1	1	Southeast	2	66	Cincinnati	UNC Greensboro	61	15
1996	1	1	Southeast	3	90	Georgia Tech	Austin Peay	79	14
1996	1	1	Southeast	4	41	UCLA	Princeton	43	13
1996	1	1	Southeast	5	58	Mississippi St	VCU	51	12
1996	1	1	Southeast	6	51	Indiana	Boston College	64	11
1996	1	1	Southeast	7	61	Temple	Oklahoma	43	10
1996	1	1	Southeast	8	60	Duke	Eastern Michigan	75	9
1996	1	2	West	1	73	Purdue	Western Carolina	71	16
1996	1	2	West	2	92	Kansas	South Carolina St	54	15
1996	1	2	West	3	90	Arizona	Valparaiso	51	14
1996	1	2	West	4	88	Syracuse	Montana St	55	13
1996	1	2	West	5	63	Memphis	Drexel	75	12
1996	1	2	West	6	81	Iowa	George Washington	79	11
1996	1	2	West	7	79	Maryland	Santa Clara	91	10
1996	1	2	West	8	81	Georgia	Clemson	74	9
1996	1	3	East	1	92	Massachusetts	Central Florida	70	16
1996	1	3	East	2	93	Georgetown	Mississippi Valley St	56	15
1996	1	3	East	3	74	Texas Tech	Northern Illinois	73	14
1996	1	3	East	4	68	Marquette	Monmouth	44	13
1996	1	3	East	5	80	Penn St	Arkansas	86	12
1996	1	3	East	6	86	North Carolina	New Orleans	62	11
1996	1	3	East	7	69	New Mexico	Kansas St	48	10
1996	1	3	East	8	58	Bradley	Stanford	66	9
1996	1	4	Midwest	1	110	Kentucky	San Jose St	72	16
1996	1	4	Midwest	2	62	Wake Forest	Louisiana Monroe	50	15
1996	1	4	Midwest	3	92	Villanova	Portland	58	14
1996	1	4	Midwest	4	73	Utah	Canisius	67	13
1996	1	4	Midwest	5	74	Iowa St	California	64	12
1996	1	4	Midwest	6	82	Louisville	Tulsa	80	11
1996	1	4	Midwest	7	76	Michigan	Texas	80	10
1996	1	4	Midwest	8	48	Wisconsin Green Bay	Virginia Tech	61	9
1996	2	1	Southeast	1	95	Connecticut	Eastern Michigan	81	9
1996	2	1	Southeast	2	78	Cincinnati	Temple	65	7
1996	2	1	Southeast	3	103	Georgia Tech	Boston College	89	11
1996	2	1	Southeast	13	41	Princeton	Mississippi St	63	5
1996	2	2	West	1	69	Purdue	Georgia	76	8
1996	2	2	West	2	76	Kansas	Santa Clara	51	10
1996	2	2	West	3	87	Arizona	Iowa	73	6
1996	2	2	West	4	69	Syracuse	Drexel	58	12
1996	2	3	East	1	79	Massachusetts	Stanford	74	9
1996	2	3	East	2	73	Georgetown	New Mexico	62	7
1996	2	3	East	3	92	Texas Tech	North Carolina	73	6
1996	2	3	East	4	56	Marquette	Arkansas	65	12
1996	2	4	Midwest	1	84	Kentucky	Virginia Tech	60	9
1996	2	4	Midwest	2	65	Wake Forest	Texas	62	10
1996	2	4	Midwest	3	64	Villanova	Louisville	68	6
1996	2	4	Midwest	4	74	Utah	Iowa St	64	5
1996	3	1	Southeast	1	55	Connecticut	Mississippi St	60	5
1996	3	1	Southeast	2	87	Cincinnati	Georgia Tech	70	3
1996	3	2	West	8	81	Georgia	Syracuse	83	4
1996	3	2	West	2	83	Kansas	Arizona	80	3
1996	3	3	East	1	79	Massachusetts	Arkansas	63	12
1996	3	3	East	2	98	Georgetown	Texas Tech	90	3
1996	3	4	Midwest	1	101	Kentucky	Utah	70	4
1996	3	4	Midwest	2	60	Wake Forest	Louisville	59	6
1996	4	1	Southeast	5	73	Mississippi St	Cincinnati	63	2
1996	4	2	West	4	60	Syracuse	Kansas	57	2
1996	4	3	East	1	86	Massachusetts	Georgetown	62	2
1996	4	4	Midwest	1	83	Kentucky	Wake Forest	63	2
1996	5	1	Final Four	5	69	Mississippi St	Syracuse	77	4
1996	5	2	Final Four	1	74	Massachusetts	Kentucky	81	1
1996	6	1	Championship	4	67	Syracuse	Kentucky	76	1
1997	1	1	West	1	92	Kentucky	Montana	54	16
1997	1	1	West	2	75	Utah	Navy	61	15
1997	1	1	West	3	68	Wake Forest	St Marys	46	14
1997	1	1	West	4	75	St Josephs	Pacific	65	13
1997	1	1	West	5	73	Boston College	Valparaiso	66	12
1997	1	1	West	6	80	Stanford	Oklahoma	67	11
1997	1	1	West	7	79	Charlotte	Georgetown	67	10
1997	1	1	West	8	73	Iowa	Virginia	60	9
1997	1	2	Midwest	1	78	Minnesota	Southwest Texas St	46	16
1997	1	2	Midwest	2	109	UCLA	Charleston Southern	75	15
1997	1	2	Midwest	3	86	Cincinnati	Butler	69	14
1997	1	2	Midwest	4	68	Clemson	Miami Ohio	56	13
1997	1	2	Midwest	5	81	Tulsa	Boston University	58	12
1997	1	2	Midwest	6	69	Iowa St	Illinois St	57	11
1997	1	2	Midwest	7	80	Xavier	Vanderbilt	68	10
1997	1	2	Midwest	8	40	Ole Miss	Temple	62	9
1997	1	3	East	1	82	North Carolina	Fairfield	74	16
1997	1	3	East	2	65	South Carolina	Coppin St	78	15
1997	1	3	East	3	59	New Mexico	Old Dominion	55	14
1997	1	3	East	4	101	Villanova	Long Island Brooklyn	91	13
1997	1	3	East	5	55	California	Princeton	52	12
1997	1	3	East	6	65	Louisville	Massachusetts	57	11
1997	1	3	East	7	58	Wisconsin	Texas	71	10
1997	1	3	East	8	62	Indiana	Colorado	80	9
1997	1	4	Southeast	1	78	Kansas	Jackson St	64	16
1997	1	4	Southeast	2	71	Duke	Murray St	68	15
1997	1	4	Southeast	3	70	Georgia	Chattanooga	73	14
1997	1	4	Southeast	4	65	Arizona	South Alabama	57	13
1997	1	4	Southeast	5	66	Maryland	College of Charleston	75	12
1997	1	4	Southeast	6	90	Illinois	USC	77	11
1997	1	4	Southeast	7	59	Marquette	Providence	81	10
1997	1	4	Southeast	8	83	Purdue	Rhode Island	76	9
1997	2	1	West	1	75	Kentucky	Iowa	69	8
1997	2	1	West	2	77	Utah	Charlotte	58	7
1997	2	1	West	3	66	Wake Forest	Stanford	72	6
1997	2	1	West	4	81	St Josephs	Boston College	77	5
1997	2	2	Midwest	1	76	Minnesota	Temple	57	9
1997	2	2	Midwest	2	96	UCLA	Xavier	83	7
1997	2	2	Midwest	3	66	Cincinnati	Iowa St	67	6
1997	2	2	Midwest	4	65	Clemson	Tulsa	59	5
1997	2	3	East	1	73	North Carolina	Colorado	56	9
1997	2	3	East	15	81	Coppin St	Texas	82	10
1997	2	3	East	3	63	New Mexico	Louisville	64	6
1997	2	3	East	4	68	Villanova	California	75	5
1997	2	4	Southeast	1	75	Kansas	Purdue	61	8
1997	2	4	Southeast	2	87	Duke	Providence	98	10
1997	2	4	Southeast	14	75	Chattanooga	Illinois	63	6
1997	2	4	Southeast	4	73	Arizona	College of Charleston	69	12
1997	3	1	West	1	83	Kentucky	St Josephs	68	4
1997	3	1	West	2	82	Utah	Stanford	77	6
1997	3	2	Midwest	1	90	Minnesota	Clemson	84	4
1997	3	2	Midwest	2	74	UCLA	Iowa St	73	6
1997	3	3	East	1	63	North Carolina	California	57	5
1997	3	3	East	10	63	Texas	Louisville	78	6
1997	3	4	Southeast	1	82	Kansas	Arizona	85	4
1997	3	4	Southeast	10	71	Providence	Chattanooga	65	14
1997	4	1	West	1	72	Kentucky	Utah	59	2
1997	4	2	Midwest	1	80	Minnesota	UCLA	72	2
1997	4	3	East	1	97	North Carolina	Louisville	74	6
1997	4	4	Southeast	4	96	Arizona	Providence	92	10
1997	5	1	Final Four	1	78	Kentucky	Minnesota	69	1
1997	5	2	Final Four	1	58	North Carolina	Arizona	66	4
1997	6	1	Championship	1	79	Kentucky	Arizona	84	4
1998	1	1	East	1	88	North Carolina	Navy	52	16
1998	1	1	East	2	93	Connecticut	Fairleigh Dickinson	85	15
1998	1	1	East	3	61	South Carolina	Richmond	62	14
1998	1	1	East	4	83	Michigan St	Eastern Michigan	71	13
1998	1	1	East	5	69	Princeton	UNLV	57	12
1998	1	1	East	6	68	Xavier	Washington	69	11
1998	1	1	East	7	94	Indiana	Oklahoma	87	10
1998	1	1	East	8	77	Charlotte	Illinois Chicago	62	9
1998	1	2	West	1	99	Arizona	Nicholls St	60	16
1998	1	2	West	2	65	Cincinnati	Northern Arizona	62	15
1998	1	2	West	3	85	Utah	San Francisco	68	14
1998	1	2	West	4	82	Maryland	Utah St	68	13
1998	1	2	West	5	64	Illinois	South Alabama	51	12
1998	1	2	West	6	74	Arkansas	Nebraska	65	11
1998	1	2	West	7	52	Temple	West Virginia	82	10
1998	1	2	West	8	81	Tennessee	Illinois St	82	9
1998	1	3	Midwest	1	110	Kansas	Prairie View	52	16
1998	1	3	Midwest	2	95	Purdue	Delaware	56	15
1998	1	3	Midwest	3	67	Stanford	College of Charleston	57	14
1998	1	3	Midwest	4	69	Ole Miss	Valparaiso	70	13
1998	1	3	Midwest	5	87	TCU	Florida St	96	12
1998	1	3	Midwest	6	72	Clemson	Western Michigan	75	11
1998	1	3	Midwest	7	64	St Johns	Detroit	66	10
1998	1	3	Midwest	8	97	Rhode Island	Murray St	74	9
1998	1	4	South	1	99	Duke	Radford	63	16
1998	1	4	South	2	82	Kentucky	South Carolina St	67	15
1998	1	4	South	3	80	Michigan	Davidson	61	14
1998	1	4	South	4	79	New Mexico	Butler	62	13
1998	1	4	South	5	63	Syracuse	Iona	61	12
1998	1	4	South	6	65	UCLA	Miami	62	11
1998	1	4	South	7	46	Massachusetts	St Louis	51	10
1998	1	4	South	8	74	Oklahoma St	George Washington	59	9
1998	2	1	East	1	93	North Carolina	Charlotte	83	8
1998	2	1	East	2	78	Connecticut	Indiana	68	7
1998	2	1	East	14	66	Richmond	Washington	87	11
1998	2	1	East	4	63	Michigan St	Princeton	56	5
1998	2	2	West	1	82	Arizona	Illinois St	49	9
1998	2	2	West	2	74	Cincinnati	West Virginia	75	10
1998	2	2	West	3	75	Utah	Arkansas	69	6
1998	2	2	West	4	67	Maryland	Illinois	61	5
1998	2	3	Midwest	1	75	Kansas	Rhode Island	80	8
1998	2	3	Midwest	2	80	Purdue	Detroit	65	10
1998	2	3	Midwest	3	83	Stanford	Western Michigan	65	11
1998	2	3	Midwest	13	83	Valparaiso	Florida St	77	12
1998	2	4	South	1	79	Duke	Oklahoma St	73	8
1998	2	4	South	2	88	Kentucky	St Louis	61	10
1998	2	4	South	3	82	Michigan	UCLA	85	6
1998	2	4	South	4	46	New Mexico	Syracuse	56	5
1998	3	1	East	1	73	North Carolina	Michigan St	58	4
1998	3	1	East	2	75	Connecticut	Washington	74	11
1998	3	2	West	1	87	Arizona	Maryland	79	4
1998	3	2	West	10	62	West Virginia	Utah	65	3
1998	3	3	Midwest	8	74	Rhode Island	Valparaiso	68	13
1998	3	3	Midwest	2	59	Purdue	Stanford	67	3
1998	3	4	South	1	80	Duke	Syracuse	67	5
1998	3	4	South	2	94	Kentucky	UCLA	68	6
1998	4	1	East	1	75	North Carolina	Connecticut	64	2
1998	4	2	West	1	51	Arizona	Utah	76	3
1998	4	3	Midwest	8	77	Rhode Island	Stanford	79	3
1998	4	4	South	1	84	Duke	Kentucky	86	2
1998	5	1	Final Four	1	59	North Carolina	Utah	65	3
1998	5	2	Final Four	3	85	Stanford	Kentucky	86	2
1998	6	1	Championship	3	69	Utah	Kentucky	78	2
1999	1	1	East	1	99	Duke	Florida A&M	58	16
1999	1	1	East	2	75	Miami	Lafayette	54	15
1999	1	1	East	3	72	Cincinnati	George Mason	48	14
1999	1	1	East	4	62	Tennessee	Delaware	52	13
1999	1	1	East	5	32	Wisconsin	Southwest Missouri St	43	12
1999	1	1	East	6	61	Temple	Kent St	54	11
1999	1	1	East	7	54	Texas	Purdue	58	10
1999	1	1	East	8	53	College of Charleston	Tulsa	62	9
1999	1	2	Midwest	1	76	Michigan St	Mount St Marys	53	16
1999	1	2	Midwest	2	80	Utah	Arkansas St	58	15
1999	1	2	Midwest	3	82	Kentucky	New Mexico St	60	14
1999	1	2	Midwest	4	60	Arizona	Oklahoma	61	13
1999	1	2	Midwest	5	81	Charlotte	Rhode Island	70	12
1999	1	2	Midwest	6	95	Kansas	Evansville	74	11
1999	1	2	Midwest	7	58	Washington	Miami Ohio	59	10
1999	1	2	Midwest	8	70	Villanova	Ole Miss	72	9
1999	1	3	South	1	80	Auburn	Winthrop	41	16
1999	1	3	South	2	82	Maryland	Valparaiso	60	15
1999	1	3	South	3	69	St Johns	Samford	43	14
1999	1	3	South	4	72	Ohio St	Murray St	58	13
1999	1	3	South	5	53	UCLA	Detroit	56	12
1999	1	3	South	6	108	Indiana	George Washington	88	11
1999	1	3	South	7	58	Louisville	Creighton	62	10
1999	1	3	South	8	61	Syracuse	Oklahoma St	69	9
1999	1	4	West	1	91	Connecticut	Texas San Antonio	66	16
1999	1	4	West	2	69	Stanford	Alcorn St	57	15
1999	1	4	West	3	74	North Carolina	Weber St	76	14
1999	1	4	West	4	94	Arkansas	Siena	80	13
1999	1	4	West	5	77	Iowa	UAB	64	12
1999	1	4	West	6	75	Florida	Pennsylvania	61	11
1999	1	4	West	7	63	Minnesota	Gonzaga	75	10
1999	1	4	West	8	59	Missouri	New Mexico	61	9
1999	2	1	East	1	97	Duke	Tulsa	56	9
1999	2	1	East	2	63	Miami	Purdue	73	10
1999	2	1	East	3	54	Cincinnati	Temple	64	6
1999	2	1	East	4	51	Tennessee	Southwest Missouri St	81	12
1999	2	2	Midwest	1	74	Michigan St	Ole Miss	66	9
1999	2	2	Midwest	2	58	Utah	Miami Ohio	66	10
1999	2	2	Midwest	3	92	Kentucky	Kansas	88	6
1999	2	2	Midwest	13	85	Oklahoma	Charlotte	72	5
1999	2	3	South	1	81	Auburn	Oklahoma St	74	9
1999	2	3	South	2	75	Maryland	Creighton	62	10
1999	2	3	South	3	86	St Johns	Indiana	61	6
1999	2	3	South	4	75	Ohio St	Detroit	44	12
1999	2	4	West	1	78	Connecticut	New Mexico	56	9
1999	2	4	West	2	74	Stanford	Gonzaga	82	10
1999	2	4	West	14	74	Weber St	Florida	82	6
1999	2	4	West	4	72	Arkansas	Iowa	82	5
1999	3	1	East	1	78	Duke	Southwest Missouri St	61	12
1999	3	1	East	10	55	Purdue	Temple	77	6
1999	3	2	Midwest	1	54	Michigan St	Oklahoma	46	13
1999	3	2	Midwest	10	43	Miami Ohio	Kentucky	58	3
1999	3	3	South	1	64	Auburn	Ohio St	72	4
1999	3	3	South	2	62	Maryland	St Johns	76	3
1999	3	4	West	1	78	Connecticut	Iowa	68	5
1999	3	4	West	10	73	Gonzaga	Florida	72	6
1999	4	1	East	1	85	Duke	Temple	64	6
1999	4	2	Midwest	1	73	Michigan St	Kentucky	66	3
1999	4	3	South	4	77	Ohio St	St Johns	74	3
1999	4	4	West	1	67	Connecticut	Gonzaga	62	10
1999	5	1	Final Four	1	68	Duke	Michigan St	62	1
1999	5	2	Final Four	4	58	Ohio St	Connecticut	64	1
1999	6	1	Championship	1	74	Duke	Connecticut	77	1
2000	1	1	West	1	71	Arizona	Jackson St	47	16
2000	1	1	West	2	61	St Johns	Northern Arizona	56	15
2000	1	1	West	3	74	Oklahoma	Winthrop	50	14
2000	1	1	West	4	64	LSU	Southeast Missouri St	61	13
2000	1	1	West	5	77	Texas	Indiana St	61	12
2000	1	1	West	6	62	Purdue	Dayton	61	11
2000	1	1	West	7	66	Louisville	Gonzaga	77	10
2000	1	1	West	8	66	Wisconsin	Fresno St	56	9
2000	1	2	Midwest	1	65	Michigan St	Valparaiso	38	16
2000	1	2	Midwest	2	88	Iowa St	Central Connecticut St	78	15
2000	1	2	Midwest	3	74	Maryland	Iona	59	14
2000	1	2	Midwest	4	79	Syracuse	Samford	65	13
2000	1	2	Midwest	5	85	Kentucky	St Bonaventure	80	12
2000	1	2	Midwest	6	65	UCLA	Ball St	57	11
2000	1	2	Midwest	7	72	Auburn	Creighton	69	10
2000	1	2	Midwest	8	48	Utah	St Louis	45	9
2000	1	3	East	1	82	Duke	Lamar	55	16
2000	1	3	East	2	73	Temple	Lafayette	47	15
2000	1	3	East	3	86	Oklahoma St	Hofstra	66	14
2000	1	3	East	4	68	Illinois	Pennsylvania	48	13
2000	1	3	East	5	69	Florida	Butler	68	12
2000	1	3	East	6	57	Indiana	Pepperdine	77	11
2000	1	3	East	7	71	Oregon	Seton Hall	72	10
2000	1	3	East	8	81	Kansas	DePaul	77	9
2000	1	4	South	1	84	Stanford	South Carolina St	65	16
2000	1	4	South	2	64	Cincinnati	UNC Wilmington	47	15
2000	1	4	South	3	87	Ohio St	Appalachian St	61	14
2000	1	4	South	4	63	Tennessee	Louisiana Lafayette	58	13
2000	1	4	South	5	75	Connecticut	Utah St	67	12
2000	1	4	South	6	75	Miami	Arkansas	71	11
2000	1	4	South	7	89	Tulsa	UNLV	62	10
2000	1	4	South	8	84	North Carolina	Missouri	70	9
2000	2	1	West	1	58	Arizona	Wisconsin	66	8
2000	2	1	West	2	76	St Johns	Gonzaga	82	10
2000	2	1	West	3	62	Oklahoma	Purdue	66	6
2000	2	1	West	4	72	LSU	Texas	67	5
2000	2	2	Midwest	1	73	Michigan St	Utah	61	8
2000	2	2	Midwest	2	79	Iowa St	Auburn	60	7
2000	2	2	Midwest	3	62	Maryland	UCLA	105	6
2000	2	2	Midwest	4	52	Syracuse	Kentucky	50	5
2000	2	3	East	1	69	Duke	Kansas	64	8
2000	2	3	East	2	65	Temple	Seton Hall	67	10
2000	2	3	East	3	75	Oklahoma St	Pepperdine	67	11
2000	2	3	East	4	73	Illinois	Florida	93	5
2000	2	4	South	1	53	Stanford	North Carolina	60	8
2000	2	4	South	2	61	Cincinnati	Tulsa	69	7
2000	2	4	South	3	62	Ohio St	Miami	75	6
2000	2	4	South	4	65	Tennessee	Connecticut	51	5
2000	3	1	West	8	61	Wisconsin	LSU	48	4
2000	3	1	West	10	66	Gonzaga	Purdue	75	6
2000	3	2	Midwest	1	75	Michigan St	Syracuse	58	4
2000	3	2	Midwest	2	80	Iowa St	UCLA	56	6
2000	3	3	East	1	78	Duke	Florida	87	5
2000	3	3	East	10	66	Seton Hall	Oklahoma St	68	3
2000	3	4	South	8	74	North Carolina	Tennessee	69	4
2000	3	4	South	7	80	Tulsa	Miami	71	6
2000	4	1	West	8	64	Wisconsin	Purdue	60	6
2000	4	2	Midwest	1	75	Michigan St	Iowa St	64	2
2000	4	3	East	5	77	Florida	Oklahoma St	65	3
2000	4	4	South	8	59	North Carolina	Tulsa	55	7
2000	5	1	Final Four	8	41	Wisconsin	Michigan St	53	1
2000	5	2	Final Four	5	71	Florida	North Carolina	59	8
2000	6	1	Championship	1	89	Michigan St	Florida	76	5
2001	1	1	Midwest	1	96	Illinois	Northwestern St	54	16
2001	1	1	Midwest	2	101	Arizona	Eastern Illinois	76	15
2001	1	1	Midwest	3	72	Ole Miss	Iona	70	14
2001	1	1	Midwest	4	99	Kansas	Cal St Northridge	75	13
2001	1	1	Midwest	5	79	Syracuse	Hawaii	69	12
2001	1	1	Midwest	6	83	Notre Dame	Xavier	71	11
2001	1	1	Midwest	7	63	Wake Forest	Butler	79	10
2001	1	1	Midwest	8	63	Tennessee	Charlotte	70	9
2001	1	2	South	1	69	Michigan St	Alabama St	35	16
2001	1	2	South	2	70	North Carolina	Princeton	48	15
2001	1	2	South	3	69	Florida	Western Kentucky	56	14
2001	1	2	South	4	68	Oklahoma	Indiana St	70	13
2001	1	2	South	5	85	Virginia	Gonzaga	86	12
2001	1	2	South	6	65	Texas	Temple	79	11
2001	1	2	South	7	69	Penn St	Providence	59	10
2001	1	2	South	8	70	California	Fresno St	82	9
2001	1	3	East	1	95	Duke	Monmouth	52	16
2001	1	3	East	2	72	Kentucky	Holy Cross	68	15
2001	1	3	East	3	68	Boston College	Southern Utah	65	14
2001	1	3	East	4	61	UCLA	Hofstra	48	13
2001	1	3	East	5	68	Ohio St	Utah St	77	12
2001	1	3	East	6	69	USC	Oklahoma St	54	11
2001	1	3	East	7	69	Iowa	Creighton	56	10
2001	1	3	East	8	68	Georgia	Missouri	70	9
2001	1	4	West	1	89	Stanford	UNC Greensboro	60	16
2001	1	4	West	2	57	Iowa St	Hampton	58	15
2001	1	4	West	3	83	Maryland	George Mason	80	14
2001	1	4	West	4	73	Indiana	Kent St	77	13
2001	1	4	West	5	84	Cincinnati	BYU	59	12
2001	1	4	West	6	49	Wisconsin	Georgia St	50	11
2001	1	4	West	7	61	Arkansas	Georgetown	63	10
2001	1	4	West	8	62	Georgia Tech	St Josephs	66	9
2001	2	1	Midwest	1	79	Illinois	Charlotte	61	9
2001	2	1	Midwest	2	73	Arizona	Butler	52	10
2001	2	1	Midwest	3	59	Ole Miss	Notre Dame	56	6
2001	2	1	Midwest	4	87	Kansas	Syracuse	58	5
2001	2	2	South	1	81	Michigan St	Fresno St	65	9
2001	2	2	South	2	74	North Carolina	Penn St	82	7
2001	2	2	South	3	54	Florida	Temple	75	11
2001	2	2	South	13	68	Indiana St	Gonzaga	85	12
2001	2	3	East	1	94	Duke	Missouri	81	9
2001	2	3	East	2	92	Kentucky	Iowa	79	7
2001	2	3	East	3	71	Boston College	USC	74	6
2001	2	3	East	4	75	UCLA	Utah St	50	12
2001	2	4	West	1	90	Stanford	St Josephs	83	9
2001	2	4	West	15	57	Hampton	Georgetown	76	10
2001	2	4	West	3	79	Maryland	Georgia St	60	11
2001	2	4	West	13	43	Kent St	Cincinnati	66	5
2001	3	1	Midwest	1	80	Illinois	Kansas	64	4
2001	3	1	Midwest	2	66	Arizona	Ole Miss	56	3
2001	3	2	South	1	77	Michigan St	Gonzaga	62	12
2001	3	2	South	7	72	Penn St	Temple	84	11
2001	3	3	East	1	76	Duke	UCLA	63	4
2001	3	3	East	2	76	Kentucky	USC	80	6
2001	3	4	West	1	78	Stanford	Cincinnati	65	5
2001	3	4	West	10	66	Georgetown	Maryland	76	3
2001	4	1	Midwest	1	81	Illinois	Arizona	87	2
2001	4	2	South	1	69	Michigan St	Temple	62	11
2001	4	3	East	1	79	Duke	USC	69	6
2001	4	4	West	1	73	Stanford	Maryland	87	3
2001	5	1	Final Four	2	80	Arizona	Michigan St	61	1
2001	5	2	Final Four	1	95	Duke	Maryland	84	3
2001	6	1	Championship	2	72	Arizona	Duke	82	1
2002	1	1	South	1	84	Duke	Winthrop	37	16
2002	1	1	South	2	86	Alabama	Florida Atlantic	78	15
2002	1	1	South	3	71	Pittsburgh	Central Connecticut St	54	14
2002	1	1	South	4	89	USC	UNC Wilmington	93	13
2002	1	1	South	5	75	Indiana	Utah	56	12
2002	1	1	South	6	82	California	Pennsylvania	75	11
2002	1	1	South	7	61	Oklahoma St	Kent St	69	10
2002	1	1	South	8	82	Notre Dame	Charlotte	63	9
2002	1	2	West	1	90	Cincinnati	Boston University	52	16
2002	1	2	West	2	71	Oklahoma	Illinois Chicago	63	15
2002	1	2	West	3	86	Arizona	Santa Barbara	81	14
2002	1	2	West	4	69	Ohio St	Davidson	64	13
2002	1	2	West	5	80	Miami	Missouri	93	12
2002	1	2	West	6	66	Gonzaga	Wyoming	73	11
2002	1	2	West	7	70	Xavier	Hawaii	58	10
2002	1	2	West	8	80	UCLA	Ole Miss	58	9
2002	1	3	East	1	85	Maryland	Siena	70	16
2002	1	3	East	2	78	Connecticut	Hampton	67	15
2002	1	3	East	3	85	Georgia	Murray St	68	14
2002	1	3	East	4	83	Kentucky	Valparaiso	68	13
2002	1	3	East	5	69	Marquette	Tulsa	71	12
2002	1	3	East	6	68	Texas Tech	Southern Illinois	76	11
2002	1	3	East	7	69	NC State	Michigan St	58	10
2002	1	3	East	8	80	Wisconsin	St Johns	70	9
2002	1	4	Midwest	1	70	Kansas	Holy Cross	59	16
2002	1	4	Midwest	2	81	Oregon	Montana	62	15
2002	1	4	Midwest	3	70	Mississippi St	McNeese St	58	14
2002	1	4	Midwest	4	93	Illinois	San Diego St	64	13
2002	1	4	Midwest	5	82	Florida	Creighton	83	12
2002	1	4	Midwest	6	70	Texas	Boston College	57	11
2002	1	4	Midwest	7	83	Wake Forest	Pepperdine	74	10
2002	1	4	Midwest	8	84	Stanford	Western Kentucky	68	9
2002	2	1	South	1	84	Duke	Notre Dame	77	8
2002	2	1	South	2	58	Alabama	Kent St	71	10
2002	2	1	South	3	63	Pittsburgh	California	50	6
2002	2	1	South	13	67	UNC Wilmington	Indiana	76	5
2002	2	2	West	1	101	Cincinnati	UCLA	105	8
2002	2	2	West	2	78	Oklahoma	Xavier	65	7
2002	2	2	West	3	68	Arizona	Wyoming	60	11
2002	2	2	West	4	67	Ohio St	Missouri	83	12
2002	2	3	East	1	87	Maryland	Wisconsin	57	8
2002	2	3	East	2	77	Connecticut	NC State	74	7
2002	2	3	East	3	75	Georgia	Southern Illinois	77	11
2002	2	3	East	4	87	Kentucky	Tulsa	82	12
2002	2	4	Midwest	1	86	Kansas	Stanford	63	8
2002	2	4	Midwest	2	92	Oregon	Wake Forest	87	7
2002	2	4	Midwest	3	64	Mississippi St	Texas	68	6
2002	2	4	Midwest	4	72	Illinois	Creighton	60	12
2002	3	1	South	1	73	Duke	Indiana	74	5
2002	3	1	South	10	78	Kent St	Pittsburgh	73	3
2002	3	2	West	8	73	UCLA	Missouri	82	12
2002	3	2	West	2	88	Oklahoma	Arizona	67	3
2002	3	3	East	1	78	Maryland	Kentucky	68	4
2002	3	3	East	2	71	Connecticut	Southern Illinois	59	11
2002	3	4	Midwest	1	73	Kansas	Illinois	69	4
2002	3	4	Midwest	2	72	Oregon	Texas	70	6
2002	4	1	South	5	81	Indiana	Kent St	69	10
2002	4	2	West	12	75	Missouri	Oklahoma	81	2
2002	4	3	East	1	90	Maryland	Connecticut	82	2
2002	4	4	Midwest	1	104	Kansas	Oregon	86	2
2002	5	1	Final Four	5	73	Indiana	Oklahoma	64	2
2002	5	2	Final Four	1	97	Maryland	Kansas	88	1
2002	6	1	Championship	5	52	Indiana	Maryland	64	1
2003	1	1	Midwest	1	95	Kentucky	IUPUI	64	16
2003	1	1	Midwest	2	87	Pittsburgh	Wagner	61	15
2003	1	1	Midwest	3	72	Marquette	Holy Cross	68	14
2003	1	1	Midwest	4	71	Dayton	Tulsa	84	13
2003	1	1	Midwest	5	81	Wisconsin	Weber St	74	12
2003	1	1	Midwest	6	72	Missouri	Southern Illinois	71	11
2003	1	1	Midwest	7	67	Indiana	Alabama	62	10
2003	1	1	Midwest	8	58	Oregon	Utah	60	9
2003	1	2	West	1	80	Arizona	Vermont	51	16
2003	1	2	West	2	64	Kansas	Utah St	61	15
2003	1	2	West	3	67	Duke	Colorado St	57	14
2003	1	2	West	4	65	Illinois	Western Kentucky	60	13
2003	1	2	West	5	70	Notre Dame	Wisconsin Milwaukee	69	12
2003	1	2	West	6	73	Creighton	Central Michigan	79	11
2003	1	2	West	7	71	Memphis	Arizona St	84	10
2003	1	2	West	8	69	Cincinnati	Gonzaga	74	9
2003	1	3	South	1	82	Texas	UNC Asheville	61	16
2003	1	3	South	2	85	Florida	Sam Houston St	55	15
2003	1	3	South	3	71	Xavier	Troy	59	14
2003	1	3	South	4	77	Stanford	San Diego	69	13
2003	1	3	South	5	58	Connecticut	BYU	53	12
2003	1	3	South	6	75	Maryland	UNC Wilmington	73	11
2003	1	3	South	7	79	Michigan St	Colorado	64	10
2003	1	3	South	8	56	LSU	Purdue	80	9
2003	1	4	East	1	71	Oklahoma	South Carolina St	54	16
2003	1	4	East	2	76	Wake Forest	East Tennessee St	73	15
2003	1	4	East	3	76	Syracuse	Manhattan	65	14
2003	1	4	East	4	86	Louisville	Austin Peay	64	13
2003	1	4	East	5	46	Mississippi St	Butler	47	12
2003	1	4	East	6	77	Oklahoma St	Pennsylvania	63	11
2003	1	4	East	7	63	St Josephs	Auburn	65	10
2003	1	4	East	8	76	California	NC State	74	9
2003	2	1	Midwest	1	74	Kentucky	Utah	54	9
2003	2	1	Midwest	2	74	Pittsburgh	Indiana	52	7
2003	2	1	Midwest	3	101	Marquette	Missouri	92	6
2003	2	1	Midwest	13	60	Tulsa	Wisconsin	61	5
2003	2	2	West	1	96	Arizona	Gonzaga	95	9
2003	2	2	West	2	108	Kansas	Arizona St	76	10
2003	2	2	West	3	86	Duke	Central Michigan	60	11
2003	2	2	West	4	60	Illinois	Notre Dame	68	5
2003	2	3	South	1	77	Texas	Purdue	67	9
2003	2	3	South	2	46	Florida	Michigan St	68	7
2003	2	3	South	3	64	Xavier	Maryland	77	6
2003	2	3	South	4	74	Stanford	Connecticut	85	5
2003	2	4	East	1	74	Oklahoma	California	65	8
2003	2	4	East	2	62	Wake Forest	Auburn	68	10
2003	2	4	East	3	68	Syracuse	Oklahoma St	56	6
2003	2	4	East	4	71	Louisville	Butler	79	12
2003	3	1	Midwest	1	63	Kentucky	Wisconsin	57	5
2003	3	1	Midwest	2	74	Pittsburgh	Marquette	77	3
2003	3	2	West	1	88	Arizona	Notre Dame	71	5
2003	3	2	West	2	69	Kansas	Duke	65	3
2003	3	3	South	1	82	Texas	Connecticut	78	5
2003	3	3	South	7	60	Michigan St	Maryland	58	6
2003	3	4	East	1	65	Oklahoma	Butler	54	12
2003	3	4	East	10	78	Auburn	Syracuse	79	3
2003	4	1	Midwest	1	69	Kentucky	Marquette	83	3
2003	4	2	West	1	75	Arizona	Kansas	78	2
2003	4	3	South	1	85	Texas	Michigan St	76	7
2003	4	4	East	1	47	Oklahoma	Syracuse	63	3
2003	5	1	Final Four	3	61	Marquette	Kansas	94	2
2003	5	2	Final Four	1	84	Texas	Syracuse	95	3
2003	6	1	Championship	2	78	Kansas	Syracuse	81	3
2004	1	1	Midwest	1	96	Kentucky	Florida A&M	76	16
2004	1	1	Midwest	2	76	Gonzaga	Valparaiso	49	15
2004	1	1	Midwest	3	65	Georgia Tech	Northern Iowa	60	14
2004	1	1	Midwest	4	78	Kansas	Illinois Chicago	53	13
2004	1	1	Midwest	5	58	Providence	Pacific	66	12
2004	1	1	Midwest	6	58	Boston College	Utah	51	11
2004	1	1	Midwest	7	66	Michigan St	Nevada	72	10
2004	1	1	Midwest	8	100	Washington	UAB	102	9
2004	1	2	East	1	82	St Josephs	Liberty	63	16
2004	1	2	East	2	75	Oklahoma St	Eastern Washington	56	15
2004	1	2	East	3	53	Pittsburgh	Central Florida	44	14
2004	1	2	East	4	79	Wake Forest	VCU	78	13
2004	1	2	East	5	60	Florida	Manhattan	75	12
2004	1	2	East	6	76	Wisconsin	Richmond	64	11
2004	1	2	East	7	59	Memphis	South Carolina	43	10
2004	1	2	East	8	76	Texas Tech	Charlotte	73	9
2004	1	3	South	1	96	Duke	Alabama St	61	16
2004	1	3	South	2	85	Mississippi St	Monmouth	52	15
2004	1	3	South	3	66	Texas	Princeton	49	14
2004	1	3	South	4	80	Cincinnati	East Tennessee St	77	13
2004	1	3	South	5	72	Illinois	Murray St	53	12
2004	1	3	South	6	63	North Carolina	Air Force	52	11
2004	1	3	South	7	80	Xavier	Louisville	70	10
2004	1	3	South	8	80	Seton Hall	Arizona	76	9
2004	1	4	West	1	71	Stanford	Texas San Antonio	45	16
2004	1	4	West	2	70	Connecticut	Vermont	53	15
2004	1	4	West	3	61	NC State	Louisiana Lafayette	52	14
2004	1	4	West	4	86	Maryland	UTEP	83	13
2004	1	4	West	5	80	Syracuse	BYU	75	12
2004	1	4	West	6	71	Vanderbilt	Western Michigan	58	11
2004	1	4	West	7	76	DePaul	Dayton	69	10
2004	1	4	West	8	65	Alabama	Southern Illinois	64	9
2004	2	1	Midwest	1	75	Kentucky	UAB	76	9
2004	2	1	Midwest	2	72	Gonzaga	Nevada	91	10
2004	2	1	Midwest	3	57	Georgia Tech	Boston College	54	6
2004	2	1	Midwest	4	78	Kansas	Pacific	63	12
2004	2	2	East	1	70	St Josephs	Texas Tech	65	8
2004	2	2	East	2	70	Oklahoma St	Memphis	53	7
2004	2	2	East	3	59	Pittsburgh	Wisconsin	55	6
2004	2	2	East	4	84	Wake Forest	Manhattan	80	12
2004	2	3	South	1	90	Duke	Seton Hall	62	8
2004	2	3	South	2	74	Mississippi St	Xavier	89	7
2004	2	3	South	3	78	Texas	North Carolina	75	6
2004	2	3	South	4	68	Cincinnati	Illinois	92	5
2004	2	4	West	1	67	Stanford	Alabama	70	8
2004	2	4	West	2	72	Connecticut	DePaul	55	7
2004	2	4	West	3	73	NC State	Vanderbilt	75	6
2004	2	4	West	4	70	Maryland	Syracuse	72	5
2004	3	1	Midwest	9	74	UAB	Kansas	100	4
2004	3	1	Midwest	10	67	Nevada	Georgia Tech	72	3
2004	3	2	East	1	84	St Josephs	Wake Forest	80	4
2004	3	2	East	2	63	Oklahoma St	Pittsburgh	51	3
2004	3	3	South	1	72	Duke	Illinois	62	5
2004	3	3	South	7	79	Xavier	Texas	71	3
2004	3	4	West	8	80	Alabama	Syracuse	71	5
2004	3	4	West	2	73	Connecticut	Vanderbilt	53	6
2004	4	1	Midwest	4	71	Kansas	Georgia Tech	79	3
2004	4	2	East	1	62	St Josephs	Oklahoma St	64	2
2004	4	3	South	1	66	Duke	Xavier	63	7
2004	4	4	West	8	71	Alabama	Connecticut	87	2
2004	5	1	Final Four	3	67	Georgia Tech	Oklahoma St	65	2
2004	5	2	Final Four	1	78	Duke	Connecticut	79	2
2004	6	1	Championship	3	73	Georgia Tech	Connecticut	82	2
2005	1	1	Midwest	1	67	Illinois	Fairleigh Dickinson	55	16
2005	1	1	Midwest	2	63	Oklahoma St	Southeastern Louisiana	50	15
2005	1	1	Midwest	3	66	Arizona	Utah St	53	14
2005	1	1	Midwest	4	85	Boston College	Pennsylvania	65	13
2005	1	1	Midwest	5	73	Alabama	Wisconsin Milwaukee	83	12
2005	1	1	Midwest	6	68	LSU	UAB	82	11
2005	1	1	Midwest	7	65	Southern Illinois	St Marys	56	10
2005	1	1	Midwest	8	57	Texas	Nevada	61	9
2005	1	2	West	1	88	Washington	Montana	77	16
2005	1	2	West	2	70	Wake Forest	Chattanooga	54	15
2005	1	2	West	3	74	Gonzaga	Winthrop	64	14
2005	1	2	West	4	68	Louisville	Louisiana Lafayette	62	13
2005	1	2	West	5	80	Georgia Tech	George Washington	68	12
2005	1	2	West	6	78	Texas Tech	UCLA	66	11
2005	1	2	West	7	63	West Virginia	Creighton	61	10
2005	1	2	West	8	79	Pacific	Pittsburgh	71	9
2005	1	3	East	1	96	North Carolina	Oakland	68	16
2005	1	3	East	2	77	Connecticut	Central Florida	71	15
2005	1	3	East	3	63	Kansas	Bucknell	64	14
2005	1	3	East	4	67	Florida	Ohio	62	13
2005	1	3	East	5	55	Villanova	New Mexico	47	12
2005	1	3	East	6	57	Wisconsin	Northern Iowa	52	11
2005	1	3	East	7	63	Charlotte	NC State	75	10
2005	1	3	East	8	53	Minnesota	Iowa St	64	9
2005	1	4	South	1	63	Duke	Delaware St	46	16
2005	1	4	South	2	72	Kentucky	Eastern Kentucky	64	15
2005	1	4	South	3	84	Oklahoma	Niagara	67	14
2005	1	4	South	4	57	Syracuse	Vermont	60	13
2005	1	4	South	5	89	Michigan St	Old Dominion	81	12
2005	1	4	South	6	60	Utah	UTEP	54	11
2005	1	4	South	7	76	Cincinnati	Iowa	64	10
2005	1	4	South	8	70	Stanford	Mississippi St	93	9
2005	2	1	Midwest	1	71	Illinois	Nevada	59	9
2005	2	1	Midwest	2	85	Oklahoma St	Southern Illinois	77	7
2005	2	1	Midwest	3	85	Arizona	UAB	63	11
2005	2	1	Midwest	4	75	Boston College	Wisconsin Milwaukee	83	12
2005	2	2	West	1	97	Washington	Pacific	79	8
2005	2	2	West	2	105	Wake Forest	West Virginia	111	7
2005	2	2	West	3	69	Gonzaga	Texas Tech	71	6
2005	2	2	West	4	76	Louisville	Georgia Tech	54	5
2005	2	3	East	1	92	North Carolina	Iowa St	65	9
2005	2	3	East	2	62	Connecticut	NC State	65	10
2005	2	3	East	14	62	Bucknell	Wisconsin	71	6
2005	2	3	East	4	65	Florida	Villanova	76	5
2005	2	4	South	1	63	Duke	Mississippi St	55	9
2005	2	4	South	2	69	Kentucky	Cincinnati	60	7
2005	2	4	South	3	58	Oklahoma	Utah	67	6
2005	2	4	South	13	61	Vermont	Michigan St	72	5
2005	3	1	Midwest	1	77	Illinois	Wisconsin Milwaukee	63	12
2005	3	1	Midwest	2	78	Oklahoma St	Arizona	79	3
2005	3	2	West	1	79	Washington	Louisville	93	4
2005	3	2	West	7	65	West Virginia	Texas Tech	60	6
2005	3	3	East	1	67	North Carolina	Villanova	66	5
2005	3	3	East	10	56	NC State	Wisconsin	65	6
2005	3	4	South	1	68	Duke	Michigan St	78	5
2005	3	4	South	2	62	Kentucky	Utah	52	6
2005	4	1	Midwest	1	90	Illinois	Arizona	89	3
2005	4	2	West	4	93	Louisville	West Virginia	85	7
2005	4	3	East	1	88	North Carolina	Wisconsin	82	6
2005	4	4	South	5	94	Michigan St	Kentucky	88	2
2005	5	1	Final Four	1	72	Illinois	Louisville	57	4
2005	5	2	Final Four	1	87	North Carolina	Michigan St	71	5
2005	6	1	Championship	1	70	Illinois	North Carolina	75	1
2006	1	1	South	1	70	Duke	Southern	54	16
2006	1	1	South	2	60	Texas	Pennsylvania	52	15
2006	1	1	South	3	63	Iowa	Northwestern St	64	14
2006	1	1	South	4	80	LSU	Iona	64	13
2006	1	1	South	5	58	Syracuse	Texas A&M	66	12
2006	1	1	South	6	64	West Virginia	Southern Illinois	46	11
2006	1	1	South	7	52	California	NC State	58	10
2006	1	1	South	8	88	George Washington	UNC Wilmington	85	9
2006	1	2	West	1	94	Memphis	Oral Roberts	78	16
2006	1	2	West	2	78	UCLA	Belmont	44	15
2006	1	2	West	3	79	Gonzaga	Xavier	75	14
2006	1	2	West	4	73	Kansas	Bradley	77	13
2006	1	2	West	5	79	Pittsburgh	Kent St	64	12
2006	1	2	West	6	87	Indiana	San Diego St	83	11
2006	1	2	West	7	85	Marquette	Alabama	90	10
2006	1	2	West	8	55	Arkansas	Bucknell	59	9
2006	1	3	East	1	72	Connecticut	Albany	59	16
2006	1	3	East	2	63	Tennessee	Winthrop	61	15
2006	1	3	East	3	69	North Carolina	Murray St	65	14
2006	1	3	East	4	78	Illinois	Air Force	69	13
2006	1	3	East	5	75	Washington	Utah St	61	12
2006	1	3	East	6	65	Michigan St	George Mason	75	11
2006	1	3	East	7	86	Wichita St	Seton Hall	66	10
2006	1	3	East	8	69	Kentucky	UAB	64	9
2006	1	4	Midwest	1	58	Villanova	Monmouth	45	16
2006	1	4	Midwest	2	70	Ohio St	Davidson	62	15
2006	1	4	Midwest	3	76	Florida	South Alabama	50	14
2006	1	4	Midwest	4	88	Boston College	Pacific	76	13
2006	1	4	Midwest	5	79	Nevada	Montana	87	12
2006	1	4	Midwest	6	74	Oklahoma	Wisconsin Milwaukee	82	11
2006	1	4	Midwest	7	54	Georgetown	Northern Iowa	49	10
2006	1	4	Midwest	8	94	Arizona	Wisconsin	75	9
2006	2	1	South	1	74	Duke	George Washington	61	8
2006	2	1	South	2	75	Texas	NC State	54	10
2006	2	1	South	14	54	Northwestern St	West Virginia	67	6
2006	2	1	South	4	58	LSU	Texas A&M	57	12
2006	2	2	West	1	72	Memphis	Bucknell	56	9
2006	2	2	West	2	62	UCLA	Alabama	59	10
2006	2	2	West	3	90	Gonzaga	Indiana	80	6
2006	2	2	West	13	72	Bradley	Pittsburgh	66	5
2006	2	3	East	1	87	Connecticut	Kentucky	83	8
2006	2	3	East	2	73	Tennessee	Wichita St	80	7
2006	2	3	East	3	60	North Carolina	George Mason	65	11
2006	2	3	East	4	64	Illinois	Washington	67	5
2006	2	4	Midwest	1	82	Villanova	Arizona	78	8
2006	2	4	Midwest	2	52	Ohio St	Georgetown	70	7
2006	2	4	Midwest	3	82	Florida	Wisconsin Milwaukee	60	11
2006	2	4	Midwest	4	69	Boston College	Montana	56	12
2006	3	1	South	1	54	Duke	LSU	62	4
2006	3	1	South	2	74	Texas	West Virginia	71	6
2006	3	2	West	1	80	Memphis	Bradley	64	13
2006	3	2	West	2	73	UCLA	Gonzaga	71	3
2006	3	3	East	1	98	Connecticut	Washington	92	5
2006	3	3	East	7	55	Wichita St	George Mason	63	11
2006	3	4	Midwest	1	60	Villanova	Boston College	59	4
2006	3	4	Midwest	7	53	Georgetown	Florida	57	3
2006	4	1	South	4	70	LSU	Texas	60	2
2006	4	2	West	1	45	Memphis	UCLA	50	2
2006	4	3	East	1	84	Connecticut	George Mason	86	11
2006	4	4	Midwest	1	62	Villanova	Florida	75	3
2006	5	1	Final Four	4	45	LSU	UCLA	59	2
2006	5	2	Final Four	11	58	George Mason	Florida	73	3
2006	6	1	Championship	2	57	UCLA	Florida	73	3
2007	1	1	Midwest	1	112	Florida	Jackson St	69	16
2007	1	1	Midwest	2	76	Wisconsin	Texas A&M Corpus Christi	63	15
2007	1	1	Midwest	3	58	Oregon	Miami Ohio	56	14
2007	1	1	Midwest	4	82	Maryland	Davidson	70	13
2007	1	1	Midwest	5	57	Butler	Old Dominion	46	12
2007	1	1	Midwest	6	64	Notre Dame	Winthrop	74	11
2007	1	1	Midwest	7	67	UNLV	Georgia Tech	63	10
2007	1	1	Midwest	8	63	Arizona	Purdue	72	9
2007	1	2	West	1	107	Kansas	Niagara	67	16
2007	1	2	West	2	70	UCLA	Weber St	42	15
2007	1	2	West	3	79	Pittsburgh	Wright St	58	14
2007	1	2	West	4	61	Southern Illinois	Holy Cross	51	13
2007	1	2	West	5	54	Virginia Tech	Illinois	52	12
2007	1	2	West	6	77	Duke	VCU	79	11
2007	1	2	West	7	70	Indiana	Gonzaga	57	10
2007	1	2	West	8	67	Kentucky	Villanova	58	9
2007	1	3	East	1	85	North Carolina	Eastern Kentucky	65	16
2007	1	3	East	2	80	Georgetown	Belmont	55	15
2007	1	3	East	3	70	Washington St	Oral Roberts	54	14
2007	1	3	East	4	79	Texas	New Mexico St	67	13
2007	1	3	East	5	77	USC	Arkansas	60	12
2007	1	3	East	6	77	Vanderbilt	George Washington	44	11
2007	1	3	East	7	84	Boston College	Texas Tech	75	10
2007	1	3	East	8	49	Marquette	Michigan St	61	9
2007	1	4	South	1	78	Ohio St	Central Connecticut St	57	16
2007	1	4	South	2	73	Memphis	North Texas	58	15
2007	1	4	South	3	68	Texas A&M	Pennsylvania	52	14
2007	1	4	South	4	84	Virginia	Albany	57	13
2007	1	4	South	5	121	Tennessee	Long Beach St	86	12
2007	1	4	South	6	78	Louisville	Stanford	58	11
2007	1	4	South	7	77	Nevada	Creighton	71	10
2007	1	4	South	8	77	BYU	Xavier	79	9
2007	2	1	Midwest	1	74	Florida	Purdue	67	9
2007	2	1	Midwest	2	68	Wisconsin	UNLV	74	7
2007	2	1	Midwest	3	75	Oregon	Winthrop	61	11
2007	2	1	Midwest	4	59	Maryland	Butler	62	5
2007	2	2	West	1	88	Kansas	Kentucky	76	8
2007	2	2	West	2	54	UCLA	Indiana	49	7
2007	2	2	West	3	84	Pittsburgh	VCU	79	11
2007	2	2	West	4	63	Southern Illinois	Virginia Tech	48	5
2007	2	3	East	1	81	North Carolina	Michigan St	67	9
2007	2	3	East	2	62	Georgetown	Boston College	55	7
2007	2	3	East	3	74	Washington St	Vanderbilt	78	6
2007	2	3	East	4	68	Texas	USC	87	5
2007	2	4	South	1	78	Ohio St	Xavier	71	9
2007	2	4	South	2	78	Memphis	Nevada	62	7
2007	2	4	South	3	72	Texas A&M	Louisville	69	6
2007	2	4	South	4	74	Virginia	Tennessee	77	5
2007	3	1	Midwest	1	65	Florida	Butler	57	5
2007	3	1	Midwest	7	72	UNLV	Oregon	76	3
2007	3	2	West	1	61	Kansas	Southern Illinois	58	4
2007	3	2	West	2	64	UCLA	Pittsburgh	55	3
2007	3	3	East	1	74	North Carolina	USC	64	5
2007	3	3	East	2	66	Georgetown	Vanderbilt	65	6
2007	3	4	South	1	85	Ohio St	Tennessee	84	5
2007	3	4	South	2	65	Memphis	Texas A&M	64	3
2007	4	1	Midwest	1	85	Florida	Oregon	77	3
2007	4	2	West	1	55	Kansas	UCLA	68	2
2007	4	3	East	1	84	North Carolina	Georgetown	96	2
2007	4	4	South	1	92	Ohio St	Memphis	76	2
2007	5	1	Final Four	1	76	Florida	UCLA	66	2
2007	5	2	Final Four	2	60	Georgetown	Ohio St	67	1
2007	6	1	Championship	1	84	Florida	Ohio St	75	1
2008	1	1	East	1	113	North Carolina	Mount St Marys	74	16
2008	1	1	East	2	72	Tennessee	American	57	15
2008	1	1	East	3	79	Louisville	Boise St	61	14
2008	1	1	East	4	71	Washington St	Winthrop	40	13
2008	1	1	East	5	68	Notre Dame	George Mason	50	12
2008	1	1	East	6	72	Oklahoma	St Josephs	64	11
2008	1	1	East	7	81	Butler	South Alabama	61	10
2008	1	1	East	8	72	Indiana	Arkansas	86	9
2008	1	2	Midwest	1	85	Kansas	Portland St	61	16
2008	1	2	Midwest	2	66	Georgetown	UMBC	47	15
2008	1	2	Midwest	3	71	Wisconsin	Cal St Fullerton	56	14
2008	1	2	Midwest	4	62	Vanderbilt	Siena	83	13
2008	1	2	Midwest	5	69	Clemson	Villanova	75	12
2008	1	2	Midwest	6	67	USC	Kansas St	80	11
2008	1	2	Midwest	7	76	Gonzaga	Davidson	82	10
2008	1	2	Midwest	8	71	UNLV	Kent St	58	9
2008	1	3	South	1	87	Memphis	Texas Arlington	63	16
2008	1	3	South	2	74	Texas	Austin Peay	54	15
2008	1	3	South	3	77	Stanford	Cornell	53	14
2008	1	3	South	4	82	Pittsburgh	Oral Roberts	63	13
2008	1	3	South	5	72	Michigan St	Temple	61	12
2008	1	3	South	6	74	Marquette	Kentucky	66	11
2008	1	3	South	7	78	Miami	St Marys	64	10
2008	1	3	South	8	76	Mississippi St	Oregon	69	9
2008	1	4	West	1	70	UCLA	Mississippi Valley St	29	16
2008	1	4	West	2	71	Duke	Belmont	70	15
2008	1	4	West	3	73	Xavier	Georgia	61	14
2008	1	4	West	4	69	Connecticut	San Diego	70	13
2008	1	4	West	5	99	Drake	Western Kentucky	101	12
2008	1	4	West	6	90	Purdue	Baylor	79	11
2008	1	4	West	7	75	West Virginia	Arizona	65	10
2008	1	4	West	8	62	BYU	Texas A&M	67	9
2008	2	1	East	1	108	North Carolina	Arkansas	77	9
2008	2	1	East	2	76	Tennessee	Butler	71	7
2008	2	1	East	3	78	Louisville	Oklahoma	48	6
2008	2	1	East	4	61	Washington St	Notre Dame	41	5
2008	2	2	Midwest	1	75	Kansas	UNLV	56	8
2008	2	2	Midwest	2	70	Georgetown	Davidson	74	10
2008	2	2	Midwest	3	72	Wisconsin	Kansas St	55	11
2008	2	2	Midwest	13	72	Siena	Villanova	84	12
2008	2	3	South	1	77	Memphis	Mississippi St	74	8
2008	2	3	South	2	75	Texas	Miami	72	7
2008	2	3	South	3	82	Stanford	Marquette	81	6
2008	2	3	South	4	54	Pittsburgh	Michigan St	65	5
2008	2	4	West	1	51	UCLA	Texas A&M	49	9
2008	2	4	West	2	67	Duke	West Virginia	73	7
2008	2	4	West	3	85	Xavier	Purdue	78	6
2008	2	4	West	13	63	San Diego	Western Kentucky	72	12
2008	3	1	East	1	68	North Carolina	Washington St	47	4
2008	3	1	East	2	60	Tennessee	Louisville	79	3
2008	3	2	Midwest	1	72	Kansas	Villanova	57	12
2008	3	2	Midwest	10	73	Davidson	Wisconsin	56	3
2008	3	3	South	1	92	Memphis	Michigan St	74	5
2008	3	3	South	2	82	Texas	Stanford	62	3
2008	3	4	West	1	88	UCLA	Western Kentucky	78	12
2008	3	4	West	7	75	West Virginia	Xavier	79	3
2008	4	1	East	1	83	North Carolina	Louisville	73	3
2008	4	2	Midwest	1	59	Kansas	Davidson	57	10
2008	4	3	South	1	85	Memphis	Texas	67	2
2008	4	4	West	1	76	UCLA	Xavier	57	3
2008	5	1	Final Four	1	66	North Carolina	Kansas	84	1
2008	5	2	Final Four	1	78	Memphis	UCLA	63	1
2008	6	1	Championship	1	75	Kansas	Memphis	68	1
2009	1	1	Midwest	1	74	Louisville	Morehead St	54	16
2009	1	1	Midwest	2	77	Michigan St	Robert Morris	62	15
2009	1	1	Midwest	3	84	Kansas	North Dakota St	74	14
2009	1	1	Midwest	4	69	Wake Forest	Cleveland St	84	13
2009	1	1	Midwest	5	71	Utah	Arizona	84	12
2009	1	1	Midwest	6	60	West Virginia	Dayton	68	11
2009	1	1	Midwest	7	55	Boston College	USC	72	10
2009	1	1	Midwest	8	72	Ohio St	Siena	74	9
2009	1	2	West	1	103	Connecticut	Chattanooga	47	16
2009	1	2	West	2	81	Memphis	Cal St Northridge	70	15
2009	1	2	West	3	78	Missouri	Cornell	59	14
2009	1	2	West	4	71	Washington	Mississippi St	58	13
2009	1	2	West	5	61	Purdue	Northern Iowa	56	12
2009	1	2	West	6	58	Marquette	Utah St	57	11
2009	1	2	West	7	71	California	Maryland	84	10
2009	1	2	West	8	66	BYU	Texas A&M	79	9
2009	1	3	East	1	72	Pittsburgh	East Tennessee St	62	16
2009	1	3	East	2	85	Duke	Binghamton	62	15
2009	1	3	East	3	80	Villanova	American	67	14
2009	1	3	East	4	77	Xavier	Portland St	59	13
2009	1	3	East	5	59	Florida St	Wisconsin	61	12
2009	1	3	East	6	65	UCLA	VCU	64	11
2009	1	3	East	7	76	Texas	Minnesota	62	10
2009	1	3	East	8	77	Oklahoma St	Tennessee	75	9
2009	1	4	South	1	101	North Carolina	Radford	58	16
2009	1	4	South	2	82	Oklahoma	Morgan St	54	15
2009	1	4	South	3	59	Syracuse	Stephen F Austin	44	14
2009	1	4	South	4	77	Gonzaga	Akron	64	13
2009	1	4	South	5	72	Illinois	Western Kentucky	76	12
2009	1	4	South	6	66	Arizona St	Temple	57	11
2009	1	4	South	7	59	Clemson	Michigan	62	10
2009	1	4	South	8	75	LSU	Butler	71	9
2009	2	1	Midwest	1	79	Louisville	Siena	72	9
2009	2	1	Midwest	2	74	Michigan St	USC	69	10
2009	2	1	Midwest	3	60	Kansas	Dayton	43	11
2009	2	1	Midwest	13	57	Cleveland St	Arizona	71	12
2009	2	2	West	1	92	Connecticut	Texas A&M	66	9
2009	2	2	West	2	89	Memphis	Maryland	70	10
2009	2	2	West	3	83	Missouri	Marquette	79	6
2009	2	2	West	4	74	Washington	Purdue	76	5
2009	2	3	East	1	84	Pittsburgh	Oklahoma St	76	8
2009	2	3	East	2	74	Duke	Texas	69	7
2009	2	3	East	3	89	Villanova	UCLA	69	6
2009	2	3	East	4	60	Xavier	Wisconsin	49	12
2009	2	4	South	1	84	North Carolina	LSU	70	8
2009	2	4	South	2	73	Oklahoma	Michigan	63	10
2009	2	4	South	3	78	Syracuse	Arizona St	67	6
2009	2	4	South	4	83	Gonzaga	Western Kentucky	81	12
2009	3	1	Midwest	1	103	Louisville	Arizona	64	12
2009	3	1	Midwest	2	67	Michigan St	Kansas	62	3
2009	3	2	West	1	72	Connecticut	Purdue	60	5
2009	3	2	West	2	91	Memphis	Missouri	102	3
2009	3	3	East	1	60	Pittsburgh	Xavier	55	4
2009	3	3	East	2	54	Duke	Villanova	77	3
2009	3	4	South	1	98	North Carolina	Gonzaga	77	4
2009	3	4	South	2	84	Oklahoma	Syracuse	71	3
2009	4	1	Midwest	1	52	Louisville	Michigan St	64	2
2009	4	2	West	1	82	Connecticut	Missouri	75	3
2009	4	3	East	1	76	Pittsburgh	Villanova	78	3
2009	4	4	South	1	72	North Carolina	Oklahoma	60	2
2009	5	1	Final Four	2	82	Michigan St	Connecticut	73	1
2009	5	2	Final Four	3	69	Villanova	North Carolina	83	1
2009	6	1	Championship	2	72	Michigan St	North Carolina	89	1
2010	1	1	Midwest	1	90	Kansas	Lehigh	74	16
2010	1	1	Midwest	2	68	Ohio St	Santa Barbara	51	15
2010	1	1	Midwest	3	83	Georgetown	Ohio	97	14
2010	1	1	Midwest	4	89	Maryland	Houston	77	13
2010	1	1	Midwest	5	70	Michigan St	New Mexico St	67	12
2010	1	1	Midwest	6	62	Tennessee	San Diego St	59	11
2010	1	1	Midwest	7	59	Oklahoma St	Georgia Tech	64	10
2010	1	1	Midwest	8	66	UNLV	Northern Iowa	69	9
2010	1	2	West	1	79	Syracuse	Vermont	56	16
2010	1	2	West	2	82	Kansas St	North Texas	62	15
2010	1	2	West	3	89	Pittsburgh	Oakland	66	14
2010	1	2	West	4	65	Vanderbilt	Murray St	66	13
2010	1	2	West	5	77	Butler	UTEP	59	12
2010	1	2	West	6	65	Xavier	Minnesota	54	11
2010	1	2	West	7	99	BYU	Florida	92	10
2010	1	2	West	8	67	Gonzaga	Florida St	60	9
2010	1	3	East	1	100	Kentucky	East Tennessee St	71	16
2010	1	3	East	2	77	West Virginia	Morgan St	50	15
2010	1	3	East	3	62	New Mexico	Montana	57	14
2010	1	3	East	4	53	Wisconsin	Wofford	49	13
2010	1	3	East	5	65	Temple	Cornell	78	12
2010	1	3	East	6	78	Marquette	Washington	80	11
2010	1	3	East	7	78	Clemson	Missouri	86	10
2010	1	3	East	8	80	Texas	Wake Forest	81	9
2010	1	4	South	1	73	Duke	Arkansas Pine Bluff	44	16
2010	1	4	South	2	73	Villanova	Robert Morris	70	15
2010	1	4	South	3	68	Baylor	Sam Houston St	59	14
2010	1	4	South	4	72	Purdue	Siena	64	13
2010	1	4	South	5	69	Texas A&M	Utah St	53	12
2010	1	4	South	6	50	Notre Dame	Old Dominion	51	11
2010	1	4	South	7	71	Richmond	St Marys	80	10
2010	1	4	South	8	77	California	Louisville	62	9
2010	2	1	Midwest	1	67	Kansas	Northern Iowa	69	9
2010	2	1	Midwest	2	75	Ohio St	Georgia Tech	66	10
2010	2	1	Midwest	14	68	Ohio	Tennessee	83	6
2010	2	1	Midwest	4	83	Maryland	Michigan St	85	5
2010	2	2	West	1	87	Syracuse	Gonzaga	65	8
2010	2	2	West	2	84	Kansas St	BYU	72	7
2010	2	2	West	3	68	Pittsburgh	Xavier	71	6
2010	2	2	West	13	52	Murray St	Butler	54	5
2010	2	3	East	1	90	Kentucky	Wake Forest	60	9
2010	2	3	East	2	68	West Virginia	Missouri	59	10
2010	2	3	East	3	64	New Mexico	Washington	82	11
2010	2	3	East	4	69	Wisconsin	Cornell	87	12
2010	2	4	South	1	68	Duke	California	53	8
2010	2	4	South	2	68	Villanova	St Marys	75	10
2010	2	4	South	3	76	Baylor	Old Dominion	68	11
2010	2	4	South	4	63	Purdue	Texas A&M	61	5
2010	3	1	Midwest	9	52	Northern Iowa	Michigan St	59	5
2010	3	1	Midwest	2	73	Ohio St	Tennessee	76	6
2010	3	2	West	1	59	Syracuse	Butler	63	5
2010	3	2	West	2	101	Kansas St	Xavier	96	6
2010	3	3	East	1	62	Kentucky	Cornell	45	12
2010	3	3	East	2	69	West Virginia	Washington	56	11
2010	3	4	South	1	70	Duke	Purdue	57	4
2010	3	4	South	10	49	St Marys	Baylor	72	3
2010	4	1	Midwest	5	70	Michigan St	Tennessee	69	6
2010	4	2	West	5	63	Butler	Kansas St	56	2
2010	4	3	East	1	66	Kentucky	West Virginia	73	2
2010	4	4	South	1	78	Duke	Baylor	71	3
2010	5	1	Final Four	5	50	Michigan St	Butler	52	5
2010	5	2	Final Four	2	57	West Virginia	Duke	78	1
2010	6	1	Championship	5	59	Butler	Duke	61	1
2011	1	1	East	1	75	Ohio St	Texas San Antonio	46	16
2011	1	1	East	2	102	North Carolina	Long Island Brooklyn	87	15
2011	1	1	East	3	77	Syracuse	Indiana St	60	14
2011	1	1	East	4	59	Kentucky	Princeton	57	13
2011	1	1	East	5	84	West Virginia	Clemson	78	12
2011	1	1	East	6	55	Xavier	Marquette	66	11
2011	1	1	East	7	68	Washington	Georgia	65	10
2011	1	1	East	8	61	George Mason	Villanova	57	9
2011	1	2	West	1	87	Duke	Hampton	45	16
2011	1	2	West	2	68	San Diego St	Northern Colorado	50	15
2011	1	2	West	3	81	Connecticut	Bucknell	52	14
2011	1	2	West	4	85	Texas	Oakland	81	13
2011	1	2	West	5	77	Arizona	Memphis	75	12
2011	1	2	West	6	78	Cincinnati	Missouri	63	11
2011	1	2	West	7	66	Temple	Penn St	64	10
2011	1	2	West	8	75	Michigan	Tennessee	45	9
2011	1	3	Southwest	1	72	Kansas	Boston University	53	16
2011	1	3	Southwest	2	69	Notre Dame	Akron	56	15
2011	1	3	Southwest	3	65	Purdue	St Peters	43	14
2011	1	3	Southwest	4	61	Louisville	Morehead St	62	13
2011	1	3	Southwest	5	66	Vanderbilt	Richmond	69	12
2011	1	3	Southwest	6	56	Georgetown	VCU	74	11
2011	1	3	Southwest	7	50	Texas A&M	Florida St	57	10
2011	1	3	Southwest	8	62	UNLV	Illinois	73	9
2011	1	4	Southeast	1	74	Pittsburgh	UNC Asheville	51	16
2011	1	4	Southeast	2	79	Florida	Santa Barbara	51	15
2011	1	4	Southeast	3	74	BYU	Wofford	66	14
2011	1	4	Southeast	4	72	Wisconsin	Belmont	58	13
2011	1	4	Southeast	5	73	Kansas St	Utah St	68	12
2011	1	4	Southeast	6	71	St Johns	Gonzaga	86	11
2011	1	4	Southeast	7	78	UCLA	Michigan St	76	10
2011	1	4	Southeast	8	60	Butler	Old Dominion	58	9
2011	2	1	East	1	98	Ohio St	George Mason	66	8
2011	2	1	East	2	86	North Carolina	Washington	83	7
2011	2	1	East	3	62	Syracuse	Marquette	66	11
2011	2	1	East	4	71	Kentucky	West Virginia	63	5
2011	2	2	West	1	73	Duke	Michigan	71	8
2011	2	2	West	2	71	San Diego St	Temple	64	7
2011	2	2	West	3	69	Connecticut	Cincinnati	58	6
2011	2	2	West	4	69	Texas	Arizona	70	5
2011	2	3	Southwest	1	73	Kansas	Illinois	59	9
2011	2	3	Southwest	2	57	Notre Dame	Florida St	71	10
2011	2	3	Southwest	3	76	Purdue	VCU	94	11
2011	2	3	Southwest	13	48	Morehead St	Richmond	65	12
2011	2	4	Southeast	1	70	Pittsburgh	Butler	71	8
2011	2	4	Southeast	2	73	Florida	UCLA	65	7
2011	2	4	Southeast	3	89	BYU	Gonzaga	67	11
2011	2	4	Southeast	4	70	Wisconsin	Kansas St	65	5
2011	3	1	East	1	60	Ohio St	Kentucky	62	4
2011	3	1	East	2	81	North Carolina	Marquette	63	11
2011	3	2	West	1	77	Duke	Arizona	93	5
2011	3	2	West	2	67	San Diego St	Connecticut	74	3
2011	3	3	Southwest	1	77	Kansas	Richmond	57	12
2011	3	3	Southwest	10	71	Florida St	VCU	72	11
2011	3	4	Southeast	8	61	Butler	Wisconsin	54	4
2011	3	4	Southeast	2	83	Florida	BYU	74	3
2011	4	1	East	4	76	Kentucky	North Carolina	69	2
2011	4	2	West	5	63	Arizona	Connecticut	65	3
2011	4	3	Southwest	1	61	Kansas	VCU	71	11
2011	4	4	Southeast	8	74	Butler	Florida	71	2
2011	5	1	Final Four	4	55	Kentucky	Connecticut	56	3
2011	5	2	Final Four	11	62	VCU	Butler	70	8
2011	6	1	Championship	3	53	Connecticut	Butler	41	8
2012	1	1	South	1	81	Kentucky	Western Kentucky	66	16
2012	1	1	South	2	70	Duke	Lehigh	75	15
2012	1	1	South	3	68	Baylor	South Dakota St	60	14
2012	1	1	South	4	79	Indiana	New Mexico St	66	13
2012	1	1	South	5	59	Wichita St	VCU	62	12
2012	1	1	South	6	64	UNLV	Colorado	68	11
2012	1	1	South	7	63	Notre Dame	Xavier	67	10
2012	1	1	South	8	77	Iowa St	Connecticut	64	9
2012	1	2	West	1	89	Michigan St	Long Island Brooklyn	67	16
2012	1	2	West	2	84	Missouri	Norfolk St	86	15
2012	1	2	West	3	88	Marquette	BYU	68	14
2012	1	2	West	4	69	Louisville	Davidson	62	13
2012	1	2	West	5	75	New Mexico	Long Beach St	68	12
2012	1	2	West	6	58	Murray St	Colorado St	41	11
2012	1	2	West	7	71	Florida	Virginia	45	10
2012	1	2	West	8	54	Memphis	St Louis	61	9
2012	1	3	East	1	72	Syracuse	UNC Asheville	65	16
2012	1	3	East	2	78	Ohio St	Loyola Maryland	59	15
2012	1	3	East	3	86	Florida St	St Bonaventure	63	14
2012	1	3	East	4	73	Wisconsin	Montana	49	13
2012	1	3	East	5	79	Vanderbilt	Harvard	70	12
2012	1	3	East	6	65	Cincinnati	Texas	59	11
2012	1	3	East	7	77	Gonzaga	West Virginia	54	10
2012	1	3	East	8	70	Kansas St	Southern Mississippi	64	9
2012	1	4	Midwest	1	77	North Carolina	Vermont	58	16
2012	1	4	Midwest	2	65	Kansas	Detroit	50	15
2012	1	4	Midwest	3	74	Georgetown	Belmont	59	14
2012	1	4	Midwest	4	60	Michigan	Ohio	65	13
2012	1	4	Midwest	5	44	Temple	South Florida	58	12
2012	1	4	Midwest	6	65	San Diego St	NC State	79	11
2012	1	4	Midwest	7	69	St Marys	Purdue	72	10
2012	1	4	Midwest	8	58	Creighton	Alabama	57	9
2012	2	1	South	1	87	Kentucky	Iowa St	71	8
2012	2	1	South	15	58	Lehigh	Xavier	70	10
2012	2	1	South	3	80	Baylor	Colorado	63	11
2012	2	1	South	4	63	Indiana	VCU	61	12
2012	2	2	West	1	65	Michigan St	St Louis	61	9
2012	2	2	West	15	50	Norfolk St	Florida	84	7
2012	2	2	West	3	62	Marquette	Murray St	53	6
2012	2	2	West	4	59	Louisville	New Mexico	58	5
2012	2	3	East	1	75	Syracuse	Kansas St	59	8
2012	2	3	East	2	73	Ohio St	Gonzaga	66	7
2012	2	3	East	3	56	Florida St	Cincinnati	62	6
2012	2	3	East	4	60	Wisconsin	Vanderbilt	57	5
2012	2	4	Midwest	1	87	North Carolina	Creighton	73	8
2012	2	4	Midwest	2	63	Kansas	Purdue	60	10
2012	2	4	Midwest	3	63	Georgetown	NC State	88	11
2012	2	4	Midwest	13	62	Ohio	South Florida	56	12
2012	3	1	South	1	102	Kentucky	Indiana	90	4
2012	3	1	South	10	70	Xavier	Baylor	75	3
2012	3	2	West	1	44	Michigan St	Louisville	57	4
2012	3	2	West	7	68	Florida	Marquette	58	3
2012	3	3	East	1	84	Syracuse	Wisconsin	83	4
2012	3	3	East	2	81	Ohio St	Cincinnati	66	6
2012	3	4	Midwest	1	73	North Carolina	Ohio	65	13
2012	3	4	Midwest	2	60	Kansas	NC State	57	11
2012	4	1	South	1	82	Kentucky	Baylor	70	3
2012	4	2	West	4	72	Louisville	Florida	68	7
2012	4	3	East	1	70	Syracuse	Ohio St	77	2
2012	4	4	Midwest	1	67	North Carolina	Kansas	80	2
2012	5	1	Final Four	1	69	Kentucky	Louisville	61	4
2012	5	2	Final Four	2	62	Ohio St	Kansas	64	2
2012	6	1	Championship	1	67	Kentucky	Kansas	59	2
2013	1	1	Midwest	1	79	Louisville	North Carolina A&T	48	16
2013	1	1	Midwest	2	73	Duke	Albany	61	15
2013	1	1	Midwest	3	65	Michigan St	Valparaiso	54	14
2013	1	1	Midwest	4	64	St Louis	New Mexico St	44	13
2013	1	1	Midwest	5	55	Oklahoma St	Oregon	68	12
2013	1	1	Midwest	6	54	Memphis	St Marys	52	11
2013	1	1	Midwest	7	67	Creighton	Cincinnati	63	10
2013	1	1	Midwest	8	84	Colorado St	Missouri	72	9
2013	1	2	West	1	64	Gonzaga	Southern	58	16
2013	1	2	West	2	95	Ohio St	Iona	70	15
2013	1	2	West	3	62	New Mexico	Harvard	68	14
2013	1	2	West	4	61	Kansas St	La Salle	63	13
2013	1	2	West	5	46	Wisconsin	Ole Miss	57	12
2013	1	2	West	6	81	Arizona	Belmont	64	11
2013	1	2	West	7	58	Notre Dame	Iowa St	76	10
2013	1	2	West	8	55	Pittsburgh	Wichita St	73	9
2013	1	3	South	1	64	Kansas	Western Kentucky	57	16
2013	1	3	South	2	68	Georgetown	Florida Gulf Coast	78	15
2013	1	3	South	3	79	Florida	Northwestern St	47	14
2013	1	3	South	4	71	Michigan	South Dakota St	56	13
2013	1	3	South	5	88	VCU	Akron	42	12
2013	1	3	South	6	63	UCLA	Minnesota	83	11
2013	1	3	South	7	70	San Diego St	Oklahoma	55	10
2013	1	3	South	8	78	North Carolina	Villanova	71	9
2013	1	4	East	1	83	Indiana	James Madison	62	16
2013	1	4	East	2	78	Miami	Pacific	49	15
2013	1	4	East	3	59	Marquette	Davidson	58	14
2013	1	4	East	4	81	Syracuse	Montana	34	13
2013	1	4	East	5	61	UNLV	California	64	12
2013	1	4	East	6	68	Butler	Bucknell	56	11
2013	1	4	East	7	57	Illinois	Colorado	49	10
2013	1	4	East	8	72	NC State	Temple	76	9
2013	2	1	Midwest	1	82	Louisville	Colorado St	56	8
2013	2	1	Midwest	2	66	Duke	Creighton	50	7
2013	2	1	Midwest	3	70	Michigan St	Memphis	48	6
2013	2	1	Midwest	4	57	St Louis	Oregon	74	12
2013	2	2	West	1	70	Gonzaga	Wichita St	76	9
2013	2	2	West	2	78	Ohio St	Iowa St	75	10
2013	2	2	West	14	51	Harvard	Arizona	74	6
2013	2	2	West	13	76	La Salle	Ole Miss	74	12
2013	2	3	South	1	70	Kansas	North Carolina	58	8
2013	2	3	South	15	81	Florida Gulf Coast	San Diego St	71	7
2013	2	3	South	3	78	Florida	Minnesota	64	11
2013	2	3	South	4	78	Michigan	VCU	53	5
2013	2	4	East	1	58	Indiana	Temple	52	9
2013	2	4	East	2	63	Miami	Illinois	59	7
2013	2	4	East	3	74	Marquette	Butler	72	6
2013	2	4	East	4	66	Syracuse	California	60	12
2013	3	1	Midwest	1	77	Louisville	Oregon	69	12
2013	3	1	Midwest	2	71	Duke	Michigan St	61	3
2013	3	2	West	9	72	Wichita St	La Salle	58	13
2013	3	2	West	2	73	Ohio St	Arizona	70	6
2013	3	3	South	1	85	Kansas	Michigan	87	4
2013	3	3	South	15	50	Florida Gulf Coast	Florida	62	3
2013	3	4	East	1	50	Indiana	Syracuse	61	4
2013	3	4	East	2	61	Miami	Marquette	71	3
2013	4	1	Midwest	1	85	Louisville	Duke	63	2
2013	4	2	West	9	70	Wichita St	Ohio St	66	2
2013	4	3	South	4	79	Michigan	Florida	59	3
2013	4	4	East	4	55	Syracuse	Marquette	39	3
2013	5	1	Final Four	1	72	Louisville	Wichita St	68	9
2013	5	2	Final Four	4	61	Michigan	Syracuse	56	4
2013	6	1	Championship	1	82	Louisville	Michigan	76	4
2014	1	1	South	1	67	Florida	Albany	55	16
2014	1	1	South	2	80	Kansas	Eastern Kentucky	69	15
2014	1	1	South	3	77	Syracuse	Western Michigan	53	14
2014	1	1	South	4	76	UCLA	Tulsa	59	13
2014	1	1	South	5	75	VCU	Stephen F Austin	77	12
2014	1	1	South	6	59	Ohio St	Dayton	60	11
2014	1	1	South	7	53	New Mexico	Stanford	58	10
2014	1	1	South	8	48	Colorado	Pittsburgh	77	9
2014	1	2	East	1	70	Virginia	Coastal Carolina	59	16
2014	1	2	East	2	73	Villanova	Wisconsin Milwaukee	53	15
2014	1	2	East	3	93	Iowa St	North Carolina Central	75	14
2014	1	2	East	4	93	Michigan St	Delaware	78	13
2014	1	2	East	5	57	Cincinnati	Harvard	61	12
2014	1	2	East	6	79	North Carolina	Providence	77	11
2014	1	2	East	7	89	Connecticut	St Josephs	81	10
2014	1	2	East	8	71	Memphis	George Washington	66	9
2014	1	3	West	1	88	Arizona	Weber St	59	16
2014	1	3	West	2	75	Wisconsin	American	35	15
2014	1	3	West	3	76	Creighton	Louisiana Lafayette	66	14
2014	1	3	West	4	73	San Diego St	New Mexico St	69	13
2014	1	3	West	5	75	Oklahoma	North Dakota St	80	12
2014	1	3	West	6	74	Baylor	Nebraska	60	11
2014	1	3	West	7	87	Oregon	BYU	68	10
2014	1	3	West	8	85	Gonzaga	Oklahoma St	77	9
2014	1	4	Midwest	1	64	Wichita St	Cal Poly	37	16
2014	1	4	Midwest	2	57	Michigan	Wofford	40	15
2014	1	4	Midwest	3	71	Duke	Mercer	78	14
2014	1	4	Midwest	4	71	Louisville	Manhattan	64	13
2014	1	4	Midwest	5	83	St Louis	NC State	80	12
2014	1	4	Midwest	6	67	Massachusetts	Tennessee	86	11
2014	1	4	Midwest	7	87	Texas	Arizona St	85	10
2014	1	4	Midwest	8	56	Kentucky	Kansas St	49	9
2014	2	1	South	1	61	Florida	Pittsburgh	45	9
2014	2	1	South	2	57	Kansas	Stanford	60	10
2014	2	1	South	3	53	Syracuse	Dayton	55	11
2014	2	1	South	4	77	UCLA	Stephen F Austin	60	12
2014	2	2	East	1	78	Virginia	Memphis	60	8
2014	2	2	East	2	65	Villanova	Connecticut	77	7
2014	2	2	East	3	85	Iowa St	North Carolina	83	6
2014	2	2	East	4	80	Michigan St	Harvard	73	12
2014	2	3	West	1	84	Arizona	Gonzaga	81	8
2014	2	3	West	2	85	Wisconsin	Oregon	77	7
2014	2	3	West	3	55	Creighton	Baylor	85	6
2014	2	3	West	4	63	San Diego St	North Dakota St	44	12
2014	2	4	Midwest	1	76	Wichita St	Kentucky	78	8
2014	2	4	Midwest	2	79	Michigan	Texas	65	7
2014	2	4	Midwest	14	63	Mercer	Tennessee	83	11
2014	2	4	Midwest	4	66	Louisville	St Louis	51	5
2014	3	1	South	1	79	Florida	UCLA	68	4
2014	3	1	South	10	72	Stanford	Dayton	82	11
2014	3	2	East	1	59	Virginia	Michigan St	61	4
2014	3	2	East	7	81	Connecticut	Iowa St	76	3
2014	3	3	West	1	70	Arizona	San Diego St	64	4
2014	3	3	West	2	69	Wisconsin	Baylor	52	6
2014	3	4	Midwest	8	74	Kentucky	Louisville	69	4
2014	3	4	Midwest	2	73	Michigan	Tennessee	71	11
2014	4	1	South	1	62	Florida	Dayton	52	11
2014	4	2	East	4	54	Michigan St	Connecticut	60	7
2014	4	3	West	1	63	Arizona	Wisconsin	64	2
2014	4	4	Midwest	8	75	Kentucky	Michigan	72	2
2014	5	1	Final Four	1	53	Florida	Connecticut	63	7
2014	5	2	Final Four	2	73	Wisconsin	Kentucky	74	8
2014	6	1	Championship	7	60	Connecticut	Kentucky	54	8
2015	1	1	Midwest	1	79	Kentucky	Hampton	56	16
2015	1	1	Midwest	2	75	Kansas	New Mexico St	56	15
2015	1	1	Midwest	3	69	Notre Dame	Northeastern	65	14
2015	1	1	Midwest	4	65	Maryland	Valparaiso	62	13
2015	1	1	Midwest	5	68	West Virginia	Buffalo	62	12
2015	1	1	Midwest	6	56	Butler	Texas	48	11
2015	1	1	Midwest	7	81	Wichita St	Indiana	76	10
2015	1	1	Midwest	8	66	Cincinnati	Purdue	65	9
2015	1	2	West	1	86	Wisconsin	Coastal Carolina	72	16
2015	1	2	West	2	93	Arizona	Texas Southern	72	15
2015	1	2	West	3	56	Baylor	Georgia St	57	14
2015	1	2	West	4	67	North Carolina	Harvard	65	13
2015	1	2	West	5	56	Arkansas	Wofford	53	12
2015	1	2	West	6	76	Xavier	Ole Miss	57	11
2015	1	2	West	7	72	VCU	Ohio St	75	10
2015	1	2	West	8	79	Oregon	Oklahoma St	73	9
2015	1	3	East	1	93	Villanova	Lafayette	52	16
2015	1	3	East	2	79	Virginia	Belmont	67	15
2015	1	3	East	3	69	Oklahoma	Albany	60	14
2015	1	3	East	4	57	Louisville	Cal Irvine	55	13
2015	1	3	East	5	71	Northern Iowa	Wyoming	54	12
2015	1	3	East	6	53	Providence	Dayton	66	11
2015	1	3	East	7	70	Michigan St	Georgia	63	10
2015	1	3	East	8	66	NC State	LSU	65	9
2015	1	4	South	1	85	Duke	Robert Morris	56	16
2015	1	4	South	2	86	Gonzaga	North Dakota St	76	15
2015	1	4	South	3	59	Iowa St	UAB	60	14
2015	1	4	South	4	84	Georgetown	Eastern Washington	74	13
2015	1	4	South	5	57	Utah	Stephen F Austin	50	12
2015	1	4	South	6	59	SMU	UCLA	60	11
2015	1	4	South	7	83	Iowa	Davidson	52	10
2015	1	4	South	8	76	San Diego St	St Johns	64	9
2015	2	1	Midwest	1	64	Kentucky	Cincinnati	51	8
2015	2	1	Midwest	2	65	Kansas	Wichita St	78	7
2015	2	1	Midwest	3	67	Notre Dame	Butler	64	6
2015	2	1	Midwest	4	59	Maryland	West Virginia	69	5
2015	2	2	West	1	72	Wisconsin	Oregon	65	8
2015	2	2	West	2	73	Arizona	Ohio St	58	10
2015	2	2	West	14	67	Georgia St	Xavier	75	6
2015	2	2	West	4	87	North Carolina	Arkansas	78	5
2015	2	3	East	1	68	Villanova	NC State	71	8
2015	2	3	East	2	54	Virginia	Michigan St	60	7
2015	2	3	East	3	72	Oklahoma	Dayton	66	11
2015	2	3	East	4	66	Louisville	Northern Iowa	53	5
2015	2	4	South	1	68	Duke	San Diego St	49	8
2015	2	4	South	2	87	Gonzaga	Iowa	68	7
2015	2	4	South	14	75	UAB	UCLA	92	11
2015	2	4	South	4	64	Georgetown	Utah	75	5
2015	3	1	Midwest	1	78	Kentucky	West Virginia	39	5
2015	3	1	Midwest	7	70	Wichita St	Notre Dame	81	3
2015	3	2	West	1	79	Wisconsin	North Carolina	72	4
2015	3	2	West	2	68	Arizona	Xavier	60	6
2015	3	3	East	8	65	NC State	Louisville	75	4
2015	3	3	East	7	62	Michigan St	Oklahoma	58	3
2015	3	4	South	1	63	Duke	Utah	57	5
2015	3	4	South	2	74	Gonzaga	UCLA	62	11
2015	4	1	Midwest	1	68	Kentucky	Notre Dame	66	3
2015	4	2	West	1	85	Wisconsin	Arizona	78	2
2015	4	3	East	4	70	Louisville	Michigan St	76	7
2015	4	4	South	1	66	Duke	Gonzaga	52	2
2015	5	1	Final Four	1	64	Kentucky	Wisconsin	71	1
2015	5	2	Final Four	7	61	Michigan St	Duke	81	1
2015	6	1	Championship	1	63	Wisconsin	Duke	68	1
2016	1	1	South	1	105	Kansas	Austin Peay	79	16
2016	1	1	South	2	86	Villanova	UNC Asheville	56	15
2016	1	1	South	3	79	Miami	Buffalo	72	14
2016	1	1	South	4	66	California	Hawaii	77	13
2016	1	1	South	5	79	Maryland	South Dakota St	74	12
2016	1	1	South	6	55	Arizona	Wichita St	65	11
2016	1	1	South	7	72	Iowa	Temple	70	10
2016	1	1	South	8	67	Colorado	Connecticut	74	9
2016	1	2	West	1	91	Oregon	Holy Cross	52	16
2016	1	2	West	2	82	Oklahoma	Cal St Bakersfield	68	15
2016	1	2	West	3	92	Texas A&M	Wisconsin Green Bay	65	14
2016	1	2	West	4	93	Duke	UNC Wilmington	85	13
2016	1	2	West	5	75	Baylor	Yale	79	12
2016	1	2	West	6	72	Texas	Northern Iowa	75	11
2016	1	2	West	7	67	Oregon St	VCU	75	10
2016	1	2	West	8	78	St Josephs	Cincinnati	76	9
2016	1	3	East	1	83	North Carolina	Florida Gulf Coast	67	16
2016	1	3	East	2	71	Xavier	Weber St	53	15
2016	1	3	East	3	56	West Virginia	Stephen F Austin	70	14
2016	1	3	East	4	85	Kentucky	Stony Brook	57	13
2016	1	3	East	5	99	Indiana	Chattanooga	74	12
2016	1	3	East	6	70	Notre Dame	Michigan	63	11
2016	1	3	East	7	47	Wisconsin	Pittsburgh	43	10
2016	1	3	East	8	69	USC	Providence	70	9
2016	1	4	Midwest	1	81	Virginia	Hampton	45	16
2016	1	4	Midwest	2	81	Michigan St	Middle Tennessee St	90	15
2016	1	4	Midwest	3	80	Utah	Fresno St	69	14
2016	1	4	Midwest	4	94	Iowa St	Iona	81	13
2016	1	4	Midwest	5	83	Purdue	Arkansas Little Rock	85	12
2016	1	4	Midwest	6	52	Seton Hall	Gonzaga	68	11
2016	1	4	Midwest	7	51	Dayton	Syracuse	70	10
2016	1	4	Midwest	8	61	Texas Tech	Butler	71	9
2016	2	1	South	1	73	Kansas	Connecticut	61	9
2016	2	1	South	2	87	Villanova	Iowa	68	7
2016	2	1	South	3	65	Miami	Wichita St	57	11
2016	2	1	South	13	60	Hawaii	Maryland	73	5
2016	2	2	West	1	69	Oregon	St Josephs	64	8
2016	2	2	West	2	85	Oklahoma	VCU	81	10
2016	2	2	West	3	92	Texas A&M	Northern Iowa	88	11
2016	2	2	West	4	71	Duke	Yale	64	12
2016	2	3	East	1	85	North Carolina	Providence	66	9
2016	2	3	East	2	63	Xavier	Wisconsin	66	7
2016	2	3	East	14	75	Stephen F Austin	Notre Dame	76	6
2016	2	3	East	4	67	Kentucky	Indiana	73	5
2016	2	4	Midwest	1	77	Virginia	Butler	69	9
2016	2	4	Midwest	15	50	Middle Tennessee St	Syracuse	75	10
2016	2	4	Midwest	3	59	Utah	Gonzaga	82	11
2016	2	4	Midwest	4	78	Iowa St	Arkansas Little Rock	61	12
2016	3	1	South	1	79	Kansas	Maryland	63	5
2016	3	1	South	2	92	Villanova	Miami	69	3
2016	3	2	West	1	82	Oregon	Duke	68	4
2016	3	2	West	2	77	Oklahoma	Texas A&M	63	3
2016	3	3	East	1	101	North Carolina	Indiana	86	5
2016	3	3	East	7	56	Wisconsin	Notre Dame	61	6
2016	3	4	Midwest	1	84	Virginia	Iowa St	71	4
2016	3	4	Midwest	10	63	Syracuse	Gonzaga	60	11
2016	4	1	South	1	59	Kansas	Villanova	64	2
2016	4	2	West	1	68	Oregon	Oklahoma	80	2
2016	4	3	East	1	88	North Carolina	Notre Dame	74	6
2016	4	4	Midwest	1	62	Virginia	Syracuse	68	10
2016	5	1	Final Four	2	95	Villanova	Oklahoma	51	2
2016	5	2	Final Four	1	83	North Carolina	Syracuse	66	10
2016	6	1	Championship	2	77	Villanova	North Carolina	74	10
2017	1	1	East	1	76	Villanova	Mount St Marys	56	16
2017	1	1	East	2	87	Duke	Troy	65	15
2017	1	1	East	3	91	Baylor	New Mexico St	73	14
2017	1	1	East	4	80	Florida	East Tennessee St	65	13
2017	1	1	East	5	76	Virginia	UNC Wilmington	71	12
2017	1	1	East	6	65	SMU	USC	66	11
2017	1	1	East	7	93	South Carolina	Marquette	73	10
2017	1	1	East	8	84	Wisconsin	Virginia Tech	74	9
2017	1	2	West	1	66	Gonzaga	South Dakota St	46	16
2017	1	2	West	2	100	Arizona	North Dakota	82	15
2017	1	2	West	3	86	Florida St	Florida Gulf Coast	80	14
2017	1	2	West	4	86	West Virginia	Bucknell	80	13
2017	1	2	West	5	60	Notre Dame	Princeton	58	12
2017	1	2	West	6	65	Maryland	Xavier	76	11
2017	1	2	West	7	85	St Marys	VCU	77	10
2017	1	2	West	8	68	Northwestern	Vanderbilt	66	9
2017	1	3	Midwest	1	100	Kansas	UC Davis	62	16
2017	1	3	Midwest	2	78	Louisville	Jacksonville St	63	15
2017	1	3	Midwest	3	93	Oregon	Iona	77	14
2017	1	3	Midwest	4	80	Purdue	Vermont	70	13
2017	1	3	Midwest	5	84	Iowa St	Nevada	73	12
2017	1	3	Midwest	6	72	Creighton	Rhode Island	84	11
2017	1	3	Midwest	7	92	Michigan	Oklahoma St	91	10
2017	1	3	Midwest	8	58	Miami	Michigan St	78	9
2017	1	4	South	1	103	North Carolina	Texas Southern	64	16
2017	1	4	South	2	79	Kentucky	Northern Kentucky	70	15
2017	1	4	South	3	97	UCLA	Kent St	80	14
2017	1	4	South	4	76	Butler	Winthrop	64	13
2017	1	4	South	5	72	Minnesota	Middle Tennessee St	81	12
2017	1	4	South	6	75	Cincinnati	Kansas St	61	11
2017	1	4	South	7	58	Dayton	Wichita St	64	10
2017	1	4	South	8	77	Arkansas	Seton Hall	71	9
2017	2	1	East	1	62	Villanova	Wisconsin	65	8
2017	2	1	East	2	81	Duke	South Carolina	88	7
2017	2	1	East	3	82	Baylor	USC	78	11
2017	2	1	East	4	65	Florida	Virginia	39	5
2017	2	2	West	1	79	Gonzaga	Northwestern	73	8
2017	2	2	West	2	69	Arizona	St Marys	60	7
2017	2	2	West	3	66	Florida St	Xavier	91	11
2017	2	2	West	4	83	West Virginia	Notre Dame	71	5
2017	2	3	Midwest	1	90	Kansas	Michigan St	70	9
2017	2	3	Midwest	2	69	Louisville	Michigan	73	7
2017	2	3	Midwest	3	75	Oregon	Rhode Island	72	11
2017	2	3	Midwest	4	80	Purdue	Iowa St	76	5
2017	2	4	South	1	72	North Carolina	Arkansas	65	8
2017	2	4	South	2	65	Kentucky	Wichita St	62	10
2017	2	4	South	3	79	UCLA	Cincinnati	67	6
2017	2	4	South	4	74	Butler	Middle Tennessee St	65	12
2017	3	1	East	8	83	Wisconsin	Florida	84	4
2017	3	1	East	7	70	South Carolina	Baylor	50	3
2017	3	2	West	1	61	Gonzaga	West Virginia	58	4
2017	3	2	West	2	71	Arizona	Xavier	73	11
2017	3	3	Midwest	1	98	Kansas	Purdue	66	4
2017	3	3	Midwest	7	68	Michigan	Oregon	69	3
2017	3	4	South	1	92	North Carolina	Butler	80	4
2017	3	4	South	2	86	Kentucky	UCLA	75	3
2017	4	1	East	4	70	Florida	South Carolina	77	7
2017	4	2	West	1	83	Gonzaga	Xavier	59	11
2017	4	3	Midwest	1	60	Kansas	Oregon	74	3
2017	4	4	South	1	75	North Carolina	Kentucky	73	2
2017	5	1	Final Four	7	73	South Carolina	Gonzaga	77	1
2017	5	2	Final Four	3	76	Oregon	North Carolina	77	1
2017	6	1	Championship	1	65	Gonzaga	North Carolina	71	1
\.


--
-- PostgreSQL database dump complete
--


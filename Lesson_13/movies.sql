--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    country text NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre text NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title text NOT NULL,
    release_year integer
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_countries (
    movie_id integer,
    country text
);


ALTER TABLE public.movies_countries OWNER TO postgres;

--
-- Name: movies_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_genres (
    movie_id integer,
    genre text
);


ALTER TABLE public.movies_genres OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_movie_id_seq OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;


--
-- Name: movies_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_person (
    role_id integer NOT NULL,
    person_id integer,
    movie_id integer
);


ALTER TABLE public.movies_person OWNER TO postgres;

--
-- Name: movies_person_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_person_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_person_role_id_seq OWNER TO postgres;

--
-- Name: movies_person_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_person_role_id_seq OWNED BY public.movies_person.role_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender character(1),
    CONSTRAINT person_gender_check CHECK (((gender = 'M'::bpchar) OR (gender = 'F'::bpchar)))
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    role_id integer,
    role_type text
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: movies movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- Name: movies_person role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person ALTER COLUMN role_id SET DEFAULT nextval('public.movies_person_role_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (country) FROM stdin;
USA
Canada
UK
Italy
France
Soviet Union
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genre) FROM stdin;
Adventure
Drama
Sci-Fi
Crime
Action
Comedy
History
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movie_id, title, release_year) FROM stdin;
1	Interstellar	2014
2	The Godfather	1972
3	The Dark Knight	2008
4	The Godfather: Part II	1974
5	12 Angry Men	1957
6	Eight and half	1963
7	La dolce vita	1960
8	La citta delle donne	1980
9	Boris Godunov	1986
10	Voyna i mir	1965
\.


--
-- Data for Name: movies_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_countries (movie_id, country) FROM stdin;
1	USA
1	Canada
1	UK
2	USA
3	USA
3	UK
4	USA
5	USA
6	Italy
6	France
7	Italy
7	France
8	Italy
8	France
9	Soviet Union
10	Soviet Union
\.


--
-- Data for Name: movies_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_genres (movie_id, genre) FROM stdin;
1	Adventure
1	Drama
1	Sci-Fi
2	Crime
2	Drama
3	Action
3	Crime
3	Drama
4	Crime
4	Drama
5	Crime
5	Drama
6	Drama
7	Drama
8	Drama
9	Drama
9	History
10	Drama
10	History
\.


--
-- Data for Name: movies_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_person (role_id, person_id, movie_id) FROM stdin;
1	1	1
2	2	1
3	3	2
4	4	4
5	4	4
6	5	2
7	6	2
8	7	3
9	8	3
10	9	3
11	10	1
12	11	6
13	11	7
14	11	8
15	12	8
16	13	6
17	13	7
18	13	8
19	14	9
20	14	10
21	15	5
22	16	5
23	17	5
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (person_id, first_name, last_name, gender) FROM stdin;
1	Matthew	McConaughey	M
2	Mackenzie	Foy 	F
3	Marlon	Brando	M
4	Al	Pacino	M
5	James	Caan	M
6	Francis	Cappola	M
7	Christian	Bale	M
8	Heath	Ledger 	M
9	Aaron	Eckhart	M
10	Christopher	Nolan	M
11	Marcello	Mastroianni	M
12	Claudia	Cardinale	F
13	Federico	Fellini	M
14	Sergey	Bondarchuk	M
15	Henry	Fonda	M
16	Martin	Balsam	M
17	Sidney	Lumet	M
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (role_id, role_type) FROM stdin;
1	actor
2	actor
3	actor
4	actor
5	actor
6	director
7	actor
8	actor
9	actor
10	director
11	director
12	actor
13	director
14	director
14	actor
15	actor
16	actor
17	director
\.


--
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 10, true);


--
-- Name: movies_person_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_person_role_id_seq', 23, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 17, true);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre);


--
-- Name: movies_person movies_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person
    ADD CONSTRAINT movies_person_pkey PRIMARY KEY (role_id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: movies_countries movies_countries_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_countries
    ADD CONSTRAINT movies_countries_country_fkey FOREIGN KEY (country) REFERENCES public.countries(country);


--
-- Name: movies_countries movies_countries_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_countries
    ADD CONSTRAINT movies_countries_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- Name: movies_genres movies_genres_genre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT movies_genres_genre_fkey FOREIGN KEY (genre) REFERENCES public.genres(genre);


--
-- Name: movies_genres movies_genres_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT movies_genres_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- Name: movies_person movies_person_movie_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person
    ADD CONSTRAINT movies_person_movie_id_fkey FOREIGN KEY (movie_id) REFERENCES public.movies(movie_id);


--
-- Name: movies_person movies_person_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_person
    ADD CONSTRAINT movies_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: roles roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.movies_person(role_id);


--
-- PostgreSQL database dump complete
--


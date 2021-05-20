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
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genres_id integer NOT NULL,
    genres text
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    title text NOT NULL,
    release_year integer,
    description text
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_genres (
    movie_id integer,
    genre_id integer
);


ALTER TABLE public.movies_genres OWNER TO postgres;

--
-- Name: movies_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies_person (
    role_id integer NOT NULL,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    role_type text NOT NULL
);


ALTER TABLE public.movies_person OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    gender character(1)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name text
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genres_id, genres) FROM stdin;
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movie_id, title, release_year, description) FROM stdin;
\.


--
-- Data for Name: movies_genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_genres (movie_id, genre_id) FROM stdin;
\.


--
-- Data for Name: movies_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies_person (role_id, person_id, movie_id, role_type) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (person_id, first_name, last_name, gender) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (role_id, role_name) FROM stdin;
\.


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genres_id);


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
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- Name: movies_genres movies_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies_genres
    ADD CONSTRAINT movies_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(genres_id);


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


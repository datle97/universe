--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: table_5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_5 (
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    table_5_id integer NOT NULL
);


ALTER TABLE public.table_5 OWNER TO freecodecamp;

--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_5_table_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_5_table_5_id_seq OWNER TO freecodecamp;

--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_5_table_5_id_seq OWNED BY public.table_5.table_5_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: table_5 table_5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5 ALTER COLUMN table_5_id SET DEFAULT nextval('public.table_5_table_5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 500000000, 100000000, 'Galaxy of Sun', true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 1', 123, 123, 'Description 1', false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 2', 234, 234, 'Description 2', true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 3', 345, 345, 'Description 3', false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 4', 456, 456, 'Description 4', true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 5', 567, 567, 'Description 5', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon 1', 37284732, 969693458, 'Moon of Earth', false, 2);
INSERT INTO public.moon VALUES (14, 'Moon 6', 123, 123, 'Description 1', false, 18);
INSERT INTO public.moon VALUES (15, 'Moon 2', 234, 234, 'Description 2', true, 17);
INSERT INTO public.moon VALUES (16, 'Moon 3', 345, 345, 'Description 3', true, 16);
INSERT INTO public.moon VALUES (17, 'Moon 4', 456, 456, 'Description 4', false, 8);
INSERT INTO public.moon VALUES (18, 'Moon 5', 567, 567, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (19, 'Moon 10', 123, 123, 'Description 1', false, 18);
INSERT INTO public.moon VALUES (20, 'Moon 11', 234, 234, 'Description 2', true, 17);
INSERT INTO public.moon VALUES (21, 'Moon 9', 345, 345, 'Description 3', true, 16);
INSERT INTO public.moon VALUES (22, 'Moon 8', 456, 456, 'Description 4', false, 8);
INSERT INTO public.moon VALUES (23, 'Moon 7', 567, 567, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (24, 'Moon 16', 123, 123, 'Description 1', false, 18);
INSERT INTO public.moon VALUES (25, 'Moon 15', 234, 234, 'Description 2', true, 17);
INSERT INTO public.moon VALUES (26, 'Moon 14', 345, 345, 'Description 3', true, 16);
INSERT INTO public.moon VALUES (27, 'Moon 13', 456, 456, 'Description 4', false, 8);
INSERT INTO public.moon VALUES (28, 'Moon 12', 567, 567, 'Description 5', true, 12);
INSERT INTO public.moon VALUES (29, 'Moon 21', 123, 123, 'Description 1', false, 18);
INSERT INTO public.moon VALUES (30, 'Moon 20', 234, 234, 'Description 2', true, 17);
INSERT INTO public.moon VALUES (31, 'Moon 19', 345, 345, 'Description 3', true, 16);
INSERT INTO public.moon VALUES (32, 'Moon 18', 456, 456, 'Description 4', false, 8);
INSERT INTO public.moon VALUES (33, 'Moon 17', 567, 567, 'Description 5', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'planet1', 23234234, 123123123, 'Satellite of Mars', false, 2);
INSERT INTO public.planet VALUES (8, 'Planet 1', 123, 123, 'Description 1', false, 7);
INSERT INTO public.planet VALUES (9, 'Planet 2', 234, 234, 'Description 2', true, 5);
INSERT INTO public.planet VALUES (10, 'Planet 3', 345, 345, 'Description 3', true, 4);
INSERT INTO public.planet VALUES (11, 'Planet 4', 456, 456, 'Description 4', false, 5);
INSERT INTO public.planet VALUES (12, 'Planet 5', 567, 567, 'Description 5', true, 3);
INSERT INTO public.planet VALUES (13, 'Planet 10', 123, 123, 'Description 1', false, 7);
INSERT INTO public.planet VALUES (14, 'Planet 9', 234, 234, 'Description 2', true, 5);
INSERT INTO public.planet VALUES (15, 'Planet 8', 345, 345, 'Description 3', true, 4);
INSERT INTO public.planet VALUES (16, 'Planet 7', 456, 456, 'Description 4', false, 5);
INSERT INTO public.planet VALUES (17, 'Planet 6', 567, 567, 'Description 5', true, 3);
INSERT INTO public.planet VALUES (18, 'Planet 15', 123, 123, 'Description 1', false, 7);
INSERT INTO public.planet VALUES (19, 'Planet 14', 234, 234, 'Description 2', true, 5);
INSERT INTO public.planet VALUES (20, 'Planet 13', 345, 345, 'Description 3', true, 4);
INSERT INTO public.planet VALUES (21, 'Planet 12', 456, 456, 'Description 4', false, 5);
INSERT INTO public.planet VALUES (22, 'Planet 11', 567, 567, 'Description 5', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Mars', 5000000, 20000000, 'USA came', true, 1);
INSERT INTO public.star VALUES (3, 'Star 1', 123, 123, 'Description 1', false, 5);
INSERT INTO public.star VALUES (4, 'Galaxy 2', 234, 234, 'Description 2', true, 4);
INSERT INTO public.star VALUES (5, 'Galaxy 3', 345, 345, 'Description 3', false, 3);
INSERT INTO public.star VALUES (6, 'Galaxy 4', 456, 456, 'Description 4', true, 2);
INSERT INTO public.star VALUES (7, 'Galaxy 5', 567, 567, 'Description 5', false, 1);


--
-- Data for Name: table_5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_5 VALUES ('Name 1', 123, 123, 'Description 1', false, 1);
INSERT INTO public.table_5 VALUES ('Name 2', 234, 234, 'Description 2', true, 2);
INSERT INTO public.table_5 VALUES ('Name 3', 345, 345, 'Description 3', false, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 33, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 23, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_5_table_5_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: table_5 name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_5 table_5_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_id UNIQUE (name);


--
-- Name: table_5 table_5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_pkey PRIMARY KEY (table_5_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


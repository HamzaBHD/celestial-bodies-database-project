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
    num_star integer NOT NULL,
    value numeric(2,2),
    nickname text,
    is_true boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    age integer,
    distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_moon integer NOT NULL,
    star_id integer,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rock; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rock (
    rock_id integer NOT NULL,
    name character varying(30),
    type character varying(30) NOT NULL,
    age character varying(30) NOT NULL
);


ALTER TABLE public.rock OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rock_rock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rock_rock_id_seq OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rock_rock_id_seq OWNED BY public.rock.rock_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_planet integer NOT NULL,
    is_true boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rock rock_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock ALTER COLUMN rock_id SET DEFAULT nextval('public.rock_rock_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Magnum', 50, 0.99, 'COCO', true);
INSERT INTO public.galaxy VALUES (2, 'Oversleep', 0, 0.01, 'SLEEPY', false);
INSERT INTO public.galaxy VALUES (3, 'Fenix', 30, 0.80, 'Angryboy', true);
INSERT INTO public.galaxy VALUES (4, 'Sinta', 10, 0.60, 'Straw', true);
INSERT INTO public.galaxy VALUES (5, 'Xinus', 20, 0.70, 'flash', true);
INSERT INTO public.galaxy VALUES (6, 'Xenon', 95, 0.90, 'King', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Dactyl', 37, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Charon', 38, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Atlas', 39, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Hyperion', 40, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Mimas', 41, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Lapetus', 42, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Pan', 43, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Nereid', 44, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Callisto', 45, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Phobos', 46, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Ganymede', 47, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Miranda', 48, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Epimetheus', 37, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Triton', 38, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Titan', 39, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Io', 40, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Rhea', 41, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Europa', 42, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'The moon', 39, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Enceladus', 40, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'Mercury', 1, 1, NULL);
INSERT INTO public.planet VALUES (38, 'Venus', 1, 2, NULL);
INSERT INTO public.planet VALUES (39, 'Earth', 1, 3, NULL);
INSERT INTO public.planet VALUES (40, 'Mars', 1, 4, NULL);
INSERT INTO public.planet VALUES (41, 'Ceres', 1, 5, NULL);
INSERT INTO public.planet VALUES (42, 'Saturn', 1, 6, NULL);
INSERT INTO public.planet VALUES (43, 'Uranus', 1, 6, NULL);
INSERT INTO public.planet VALUES (44, 'Neptune', 1, 5, NULL);
INSERT INTO public.planet VALUES (45, 'Pluto', 1, 4, NULL);
INSERT INTO public.planet VALUES (46, 'Haumer', 1, 3, NULL);
INSERT INTO public.planet VALUES (47, 'Makemake', 1, 2, NULL);
INSERT INTO public.planet VALUES (48, 'Eris', 1, 1, NULL);


--
-- Data for Name: rock; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rock VALUES (1, 'Spiral', 'Galaxy Rock', 'Not Specified');
INSERT INTO public.rock VALUES (2, 'Eliptical', 'Galaxy Rock', 'Not specified');
INSERT INTO public.rock VALUES (3, 'Irregular', 'Galaxy Rock', 'Not Specified');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Oranus', 3, true, 1);
INSERT INTO public.star VALUES (2, 'Astrus', 2, true, 2);
INSERT INTO public.star VALUES (3, 'Sylus', 6, true, 3);
INSERT INTO public.star VALUES (4, 'Vital', 10, true, 4);
INSERT INTO public.star VALUES (5, 'Neon', 50, true, 5);
INSERT INTO public.star VALUES (6, 'Sympa', 3, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: rock_rock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rock_rock_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: rock rock_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_name_key UNIQUE (name);


--
-- Name: rock rock_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_pkey PRIMARY KEY (rock_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50) NOT NULL,
    years_old integer,
    star_number integer,
    type text
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
-- Name: misc_objects; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.misc_objects (
    name character varying(50) NOT NULL,
    type text,
    speed_kmps numeric,
    misc_objects_id integer NOT NULL
);


ALTER TABLE public.misc_objects OWNER TO freecodecamp;

--
-- Name: misc_objects_misc_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.misc_objects_misc_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_objects_misc_objects_id_seq OWNER TO freecodecamp;

--
-- Name: misc_objects_misc_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.misc_objects_misc_objects_id_seq OWNED BY public.misc_objects.misc_objects_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    craters integer,
    expeditions integer,
    planet_id integer
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
    name character varying(50) NOT NULL,
    has_humans boolean,
    population numeric,
    scientific_name text,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_planets boolean,
    galaxy_id integer,
    years_old integer
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
-- Name: misc_objects misc_objects_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_objects ALTER COLUMN misc_objects_id SET DEFAULT nextval('public.misc_objects_misc_objects_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000000, 400000000, 'barred spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 5000000, 1000000000, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 16000000, 400000000, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'M 110', 2900000, 1000000000, 'dwarf eliptical');
INSERT INTO public.galaxy VALUES (5, 'NGC 6822', 3000000, 100000000, 'barred irregular');
INSERT INTO public.galaxy VALUES (6, 'SMC', 500000, 1000000, 'dwarf irregular');


--
-- Data for Name: misc_objects; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.misc_objects VALUES ('Omuamua', 'Interestellar asteroid', 1000, 1);
INSERT INTO public.misc_objects VALUES ('Ceres', 'Largest asteroid', 1000, 2);
INSERT INTO public.misc_objects VALUES ('4 Vesta', 'Largest asteroid', 100, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 10000, 4, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 100, 0, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1000, 0, 4);
INSERT INTO public.moon VALUES (4, 'IO', 0, 0, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 0, 0, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0, 0, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, 0, 5);
INSERT INTO public.moon VALUES (8, 'Titania', 0, 0, 7);
INSERT INTO public.moon VALUES (9, 'Miranda', 200, 0, 7);
INSERT INTO public.moon VALUES (10, 'Oberon', 250, 0, 7);
INSERT INTO public.moon VALUES (11, 'Ariel', 314, 0, 7);
INSERT INTO public.moon VALUES (12, 'Umbriel', 314, 0, 7);
INSERT INTO public.moon VALUES (13, 'Triton', 4, 0, 8);
INSERT INTO public.moon VALUES (14, 'Charon', 2, 0, 9);
INSERT INTO public.moon VALUES (15, 'Voltaire', 2000, 0, 10);
INSERT INTO public.moon VALUES (16, 'Venma', 45023, 0, 10);
INSERT INTO public.moon VALUES (17, 'Corser', 17035, 0, 11);
INSERT INTO public.moon VALUES (18, 'Corser B', 1035, 0, 11);
INSERT INTO public.moon VALUES (19, 'Malevolon', 1, 0, 11);
INSERT INTO public.moon VALUES (20, 'Giantus', 102020341, 0, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 8000000000, 'Terra', 1);
INSERT INTO public.planet VALUES (2, 'mercury', false, 0, 'Mercury', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 0, 'Venus', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 0, 'Mars', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 0, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 0, 'Saturn', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 0, 'Uranus', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 0, 'Neptune', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 0, 'Pluto', 1);
INSERT INTO public.planet VALUES (10, 'Xandar', true, 299999999, 'Xan111', 1);
INSERT INTO public.planet VALUES (11, 'Elbaf', true, 30000, 'Elbaf', 1);
INSERT INTO public.planet VALUES (12, 'Super Earth', true, 999999999999, 'Ultra Terra', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', true, 1, 450000000);
INSERT INTO public.star VALUES (2, 'polaris', false, 1, 40000000);
INSERT INTO public.star VALUES (3, 'Sirius', false, 1, 40000000);
INSERT INTO public.star VALUES (4, 'Vega', false, 1, 40000030);
INSERT INTO public.star VALUES (5, 'Rigel', false, 1, 40000030);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', false, 1, 40000030);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: misc_objects_misc_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.misc_objects_misc_objects_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: misc_objects misc_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_objects
    ADD CONSTRAINT misc_objects_pkey PRIMARY KEY (misc_objects_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: misc_objects unique_misc_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_objects
    ADD CONSTRAINT unique_misc_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


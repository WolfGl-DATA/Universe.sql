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
    name character varying(30),
    number_of_stars integer,
    galaxy_sounds character varying(50),
    galaxy_numbers integer NOT NULL,
    galaxy_numbers_id integer NOT NULL
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
-- Name: galaxy_galaxy_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_numbers_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_numbers_id_seq OWNED BY public.galaxy.galaxy_numbers_id;


--
-- Name: galaxy_galaxy_numbers_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_numbers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_numbers_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_numbers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_numbers_seq OWNED BY public.galaxy.galaxy_numbers;


--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer,
    steps character varying(50),
    galaxy_numbers integer NOT NULL,
    galaxy_numbers_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_numbers_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_numbers_id_seq OWNED BY public.galaxy_types.galaxy_numbers_id;


--
-- Name: galaxy_types_galaxy_numbers_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_numbers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_numbers_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_numbers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_numbers_seq OWNED BY public.galaxy_types.galaxy_numbers;


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    moon_sounds character varying(50),
    galaxy_numbers_id integer NOT NULL,
    galaxy_numbers integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_numbers_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_numbers_id_seq OWNED BY public.moon.galaxy_numbers_id;


--
-- Name: moon_galaxy_numbers_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_numbers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_numbers_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_numbers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_numbers_seq OWNED BY public.moon.galaxy_numbers;


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
    name character varying(30),
    star_id integer,
    age_in_billion numeric,
    mass_metric_ton integer,
    diameter_km integer,
    planet_sounds character varying(50),
    galaxy_numbers integer NOT NULL,
    galaxy_numbers_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_numbers_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_numbers_id_seq OWNED BY public.planet.galaxy_numbers_id;


--
-- Name: planet_galaxy_numbers_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_numbers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_numbers_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_numbers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_numbers_seq OWNED BY public.planet.galaxy_numbers;


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
    name character varying(30),
    galaxy_id integer,
    description text,
    is_visible boolean,
    is_supernova boolean,
    star_sounds character varying(50),
    galaxy_numbers integer NOT NULL,
    galaxy_numbers_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_numbers_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_numbers_id_seq OWNED BY public.star.galaxy_numbers_id;


--
-- Name: star_galaxy_numbers_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_numbers_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_numbers_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_numbers_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_numbers_seq OWNED BY public.star.galaxy_numbers;


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
-- Name: galaxy galaxy_numbers; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_numbers SET DEFAULT nextval('public.galaxy_galaxy_numbers_seq'::regclass);


--
-- Name: galaxy galaxy_numbers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_numbers_id SET DEFAULT nextval('public.galaxy_galaxy_numbers_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_numbers; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_numbers SET DEFAULT nextval('public.galaxy_types_galaxy_numbers_seq'::regclass);


--
-- Name: galaxy_types galaxy_numbers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_numbers_id SET DEFAULT nextval('public.galaxy_types_galaxy_numbers_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon galaxy_numbers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN galaxy_numbers_id SET DEFAULT nextval('public.moon_galaxy_numbers_id_seq'::regclass);


--
-- Name: moon galaxy_numbers; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN galaxy_numbers SET DEFAULT nextval('public.moon_galaxy_numbers_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet galaxy_numbers; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN galaxy_numbers SET DEFAULT nextval('public.planet_galaxy_numbers_seq'::regclass);


--
-- Name: planet galaxy_numbers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN galaxy_numbers_id SET DEFAULT nextval('public.planet_galaxy_numbers_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_numbers; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_numbers SET DEFAULT nextval('public.star_galaxy_numbers_seq'::regclass);


--
-- Name: star galaxy_numbers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_numbers_id SET DEFAULT nextval('public.star_galaxy_numbers_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral_galaxy', 100000000, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Elliptical_galaxy', 500000000, NULL, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'Irregular_galaxy', 50000000, NULL, 3, 3);
INSERT INTO public.galaxy VALUES (4, 'Lenticular_galaxy', 200000000, NULL, 4, 4);
INSERT INTO public.galaxy VALUES (5, 'Dwarf_galaxy', 1000000, NULL, 5, 5);
INSERT INTO public.galaxy VALUES (6, 'Barred_Spiral_Galaxy', 80000000, NULL, 6, 6);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'kiriko', 1, 'booster', 1, 1);
INSERT INTO public.galaxy_types VALUES (2, 'ruo', 3, 'ramatra', 2, 2);
INSERT INTO public.galaxy_types VALUES (3, 'salkopi', 5, 'lop', 3, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, 2, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, 3, 3);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, 4, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 5, NULL, 5, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, 6, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, 7, 7);
INSERT INTO public.moon VALUES (8, 'Titan', 6, NULL, 8, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, NULL, 9, 9);
INSERT INTO public.moon VALUES (10, 'Triton', 8, NULL, 10, 10);
INSERT INTO public.moon VALUES (11, 'Charon', 9, NULL, 11, 11);
INSERT INTO public.moon VALUES (12, 'Kepler 452b Moon 1', 10, NULL, 12, 12);
INSERT INTO public.moon VALUES (13, 'Kepler 452b Moon 2', 10, NULL, 13, 13);
INSERT INTO public.moon VALUES (14, 'Kepler 452 Moon 3', 10, NULL, 14, 14);
INSERT INTO public.moon VALUES (15, 'Proxima Centauri b moon 1', 12, NULL, 15, 15);
INSERT INTO public.moon VALUES (16, 'Proxima Centauri b Moon 2', 12, NULL, 16, 16);
INSERT INTO public.moon VALUES (17, 'Proxima Centauri b Moon 3', 12, NULL, 17, 17);
INSERT INTO public.moon VALUES (18, 'Proxima Centauri b Moon 4', 12, NULL, 18, 18);
INSERT INTO public.moon VALUES (19, 'Proxima Centauri Moon 5', 12, NULL, 19, 19);
INSERT INTO public.moon VALUES (20, 'Proxima Centauri Moon 6', 12, NULL, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4.5, 3285, 4879, NULL, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4.0, 48670, 12104, NULL, 2, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4.54, 59720, 12756, NULL, 3, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4.6, 639, 6792, NULL, 4, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 4.5, 1898000000, 139822, NULL, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 4.5, 568300000, 116464, NULL, 6, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 4.5, 86810000, 50724, NULL, 7, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 4.5, 102400000, 49244, NULL, 8, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, 4.8, 13, 2370, NULL, 9, 9);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 1, 6, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES (11, 'HD 209458b', 1, 0.8, NULL, NULL, NULL, 11, 11);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 1, 0.004, NULL, NULL, NULL, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'White Dwarf Star', 2, 'false', false, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (3, 'Neutron Star', 3, 'false', false, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES (5, 'Red Dwarf Star', 5, 'false', true, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES (6, 'Yellow Main Sequence Star', 6, 'false', true, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES (1, 'Red Giant Star', 1, 'false', true, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES (4, 'Blue Supergiant Star', 1, 'true', true, NULL, NULL, 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: galaxy_galaxy_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_numbers_id_seq', 6, true);


--
-- Name: galaxy_galaxy_numbers_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_numbers_seq', 6, true);


--
-- Name: galaxy_types_galaxy_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_numbers_id_seq', 3, true);


--
-- Name: galaxy_types_galaxy_numbers_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_numbers_seq', 3, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_galaxy_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_numbers_id_seq', 20, true);


--
-- Name: moon_galaxy_numbers_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_numbers_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_galaxy_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_numbers_id_seq', 12, true);


--
-- Name: planet_galaxy_numbers_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_numbers_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_galaxy_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_numbers_id_seq', 6, true);


--
-- Name: star_galaxy_numbers_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_numbers_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 33, true);


--
-- Name: galaxy galaxy_galaxy_sounds_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_sounds_key UNIQUE (galaxy_sounds);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_steps_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_steps_key UNIQUE (steps);


--
-- Name: moon moon_moon_sounds_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_sounds_key UNIQUE (moon_sounds);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_mass_metric_ton_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_mass_metric_ton_key UNIQUE (mass_metric_ton);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_sounds_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_sounds_key UNIQUE (planet_sounds);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_sounds_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_sounds_key UNIQUE (star_sounds);


--
-- Name: galaxy_types galaxy_types_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


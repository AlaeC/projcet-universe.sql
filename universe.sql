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
-- Name: distance; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance (
    distance_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance character varying(50) NOT NULL,
    same_galaxy character varying(50)
);


ALTER TABLE public.distance OWNER TO freecodecamp;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_distance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_distance_id_seq OWNER TO freecodecamp;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_distance_id_seq OWNED BY public.distance.distance_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL,
    number_of_stars character varying(30),
    dominant_color character varying(50)
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
    orbital_period integer,
    surface_temperature numeric,
    is_spherical boolean NOT NULL,
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
    name character varying(30) NOT NULL,
    orbital_period integer,
    discovery_method text NOT NULL,
    surface_temperature integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    spectral_type character varying(30) NOT NULL,
    mass character varying(40),
    luminosity character varying(40),
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
-- Name: distance distance_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance ALTER COLUMN distance_id SET DEFAULT nextval('public.distance_distance_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: distance; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance VALUES (1, 'Planet Xylos', '10 million light-years', 'true');
INSERT INTO public.distance VALUES (2, 'Planet Veridion', '20 million light-years', 'true');
INSERT INTO public.distance VALUES (3, 'Planet Auron', '30 million light-years', 'true');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', '400 billion', 'Pale white/yellow');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', '1 trillion', 'Blue-white');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', '40 billion', 'Blue');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', '100 billion', 'Blue-white with red star-forming regions');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Lenticular', '800 billion', 'Yellow-white with a dark dust lane');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Dwarf Irregular', '30 billion', 'Blue with reddish star-forming regions');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 27, 250, true, 1);
INSERT INTO public.moon VALUES (2, 'Luna Minor', 15, 220, true, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 0, 200, false, 2);
INSERT INTO public.moon VALUES (4, 'Deimos', 1, 210, false, 2);
INSERT INTO public.moon VALUES (5, 'Alpheron I', 10, 800, true, 3);
INSERT INTO public.moon VALUES (6, 'Alpheron II', 20, 750, true, 3);
INSERT INTO public.moon VALUES (7, 'Alpheron III', 30, 500, true, 4);
INSERT INTO public.moon VALUES (8, 'Alpheron IV', 60, 450, true, 4);
INSERT INTO public.moon VALUES (9, 'Triangulon A', 5, 350, true, 5);
INSERT INTO public.moon VALUES (10, 'Triangulon B', 15, 300, true, 5);
INSERT INTO public.moon VALUES (11, 'Triangulon C', 20, 270, true, 6);
INSERT INTO public.moon VALUES (12, 'Triangulon D', 50, 280, true, 6);
INSERT INTO public.moon VALUES (13, 'Whirlpoolia A', 7, 600, true, 7);
INSERT INTO public.moon VALUES (14, 'Whirlpoolia B', 14, 550, true, 7);
INSERT INTO public.moon VALUES (15, 'Whirlpoolia C', 30, 400, true, 8);
INSERT INTO public.moon VALUES (16, 'Whirlpoolia D', 60, 350, true, 8);
INSERT INTO public.moon VALUES (17, 'Sombrerita A', 10, 500, true, 9);
INSERT INTO public.moon VALUES (18, 'Sombrerita B', 25, 450, true, 9);
INSERT INTO public.moon VALUES (19, 'Sombrerita C', 40, 290, true, 10);
INSERT INTO public.moon VALUES (20, 'Sombrerita D', 90, 270, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365, 'Known since antiquity', 288, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 687, 'Known since antiquity', 210, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Alpheron-1', 12, 'Radial velocity', 800, false, true, 2);
INSERT INTO public.planet VALUES (4, 'Alpheron-2', 30, 'Transit method', 400, false, true, 2);
INSERT INTO public.planet VALUES (5, 'Triangulum-Prime', 730, 'Transit method', 350, false, true, 3);
INSERT INTO public.planet VALUES (6, 'Triangulum-Beta', 1825, 'Direct imaging', 280, false, true, 3);
INSERT INTO public.planet VALUES (7, 'Whirlpoolus-1', 50, 'Radial velocity', 600, false, true, 4);
INSERT INTO public.planet VALUES (8, 'Whirlpoolus-2', 120, 'Microlensing', 250, false, true, 4);
INSERT INTO public.planet VALUES (9, 'Sombrera-A', 20, 'Radial velocity', 500, false, true, 5);
INSERT INTO public.planet VALUES (10, 'Sombrera-B', 300, 'Transit method', 290, false, true, 5);
INSERT INTO public.planet VALUES (11, 'Magellanic Alpha', 8, 'Direct imaging', 1000, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Magellanic Beta', 400, 'Radial velocity', 150, false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', '1 Solar mass', '1 Solar luminosity', 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 'B8IVp', '3.6 Solar masses', '200 Solar luminosities', 2);
INSERT INTO public.star VALUES (3, 'Triangulum OB2-1', 'O9V', '20 Solar masses', '100,000 Solar luminosities', 3);
INSERT INTO public.star VALUES (4, 'NGC 5194-109', 'A0V', '2.1 Solar masses', '25 Solar luminosities', 4);
INSERT INTO public.star VALUES (5, 'SDSS J1237+1238', 'K0III', '1.5 Solar masses', '12 Solar luminosities', 5);
INSERT INTO public.star VALUES (6, 'R136a1', 'WN5h', '215 Solar masses', '6,000,000 Solar luminosities', 6);


--
-- Name: distance_distance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_distance_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: distance distance_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_name_key UNIQUE (name);


--
-- Name: distance distance_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_pkey PRIMARY KEY (distance_id);


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


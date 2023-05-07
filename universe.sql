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
    name character varying(30),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    description text,
    number_of_stars numeric,
    size integer,
    is_dead boolean,
    not_null2 integer NOT NULL,
    not_null1 integer NOT NULL
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
    name character varying(30),
    moon_id integer NOT NULL,
    age integer,
    size integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    planet_id integer,
    not_null1 integer NOT NULL,
    not_null2 integer NOT NULL
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
-- Name: natural_satelitte; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.natural_satelitte (
    name character varying(30) NOT NULL,
    natural_satelitte_id integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.natural_satelitte OWNER TO freecodecamp;

--
-- Name: natural_satelitte_natural_satelitte_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.natural_satelitte_natural_satelitte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.natural_satelitte_natural_satelitte_id_seq OWNER TO freecodecamp;

--
-- Name: natural_satelitte_natural_satelitte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.natural_satelitte_natural_satelitte_id_seq OWNED BY public.natural_satelitte.natural_satelitte_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    age integer,
    size integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earh numeric,
    star_id integer,
    not_null2 integer NOT NULL,
    not_null1 integer NOT NULL
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
    name character varying(30),
    star_id integer NOT NULL,
    age integer,
    size integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    galaxy_id integer,
    not_null1 integer NOT NULL,
    not_null2 integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: natural_satelitte natural_satelitte_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.natural_satelitte ALTER COLUMN natural_satelitte_id SET DEFAULT nextval('public.natural_satelitte_natural_satelitte_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('et', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES ('at', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES ('awdw', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES ('dt', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES ('agherg', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES ('agherg12w', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('a', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ac', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('abc', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab3c', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab5c', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab6c', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab7c', 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab8c', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab9c', 9, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab1c', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab13c', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab12c', 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab123c', 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab1235c', 14, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab12356c', 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab12351326c', 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab123awdwad56c', 17, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab123awcwawacdwad56c', 18, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab123aw121cwawacdwad56c', 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab123aw121cwawacdawdwawad56c', 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab1wad56c', 21, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab1wcad56c', 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.moon VALUES ('ab1wccad56c', 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);


--
-- Data for Name: natural_satelitte; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.natural_satelitte VALUES ('wwda', 1, 2);
INSERT INTO public.natural_satelitte VALUES ('wwca', 2, 2);
INSERT INTO public.natural_satelitte VALUES ('ww2a', 3, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('a1gac2ddg', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gddg', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gd12g', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gvvvvd12g', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gvvvvd122g', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gvva22dd122g', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1gvva22dd122gc', 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1dd122gc', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1dd1cgc', 9, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1dd1cg22c', 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1dd1awd2c', 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO public.planet VALUES ('a1dd1awnnnd2c', 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('awdwa', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('a3t3twa', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('agvggg', 4, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('agv21212ggg', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('agv21212ggddg', 6, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('a1ggddg', 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO public.star VALUES ('a1gac2ddg', 8, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: natural_satelitte_natural_satelitte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.natural_satelitte_natural_satelitte_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


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
-- Name: natural_satelitte natural_satelitte_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.natural_satelitte
    ADD CONSTRAINT natural_satelitte_name_key UNIQUE (name);


--
-- Name: natural_satelitte natural_satelitte_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.natural_satelitte
    ADD CONSTRAINT natural_satelitte_pkey PRIMARY KEY (natural_satelitte_id);


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
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


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


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
    description character varying(50),
    galaxy_id integer NOT NULL,
    galaxy_types character varying(15),
    distance_from_earth integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(20) NOT NULL,
    description character varying(50),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    description character varying(50),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    description text,
    distance_from_earth numeric(5,2) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
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
-- Name: wat; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.wat (
    wat_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.wat OWNER TO freecodecamp;

--
-- Name: what_is_this_table_for_wat_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.what_is_this_table_for_wat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.what_is_this_table_for_wat_id_seq OWNER TO freecodecamp;

--
-- Name: what_is_this_table_for_wat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.what_is_this_table_for_wat_id_seq OWNED BY public.wat.wat_id;


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
-- Name: wat wat_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wat ALTER COLUMN wat_id SET DEFAULT nextval('public.what_is_this_table_for_wat_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Nice place, quite far', 1, 'SPIRAL', 12843, 'Andromeda', 1000000);
INSERT INTO public.galaxy VALUES ('VERY Nice place, quite close', 2, 'NON-SPIRAL', 22243, 'Sol', 2200200);
INSERT INTO public.galaxy VALUES ('VERY Nice place, quite close', 3, 'NON-SPIRAL', 32243, 'Klendathu', 3200200);
INSERT INTO public.galaxy VALUES ('VERY Nice place, quite close', 4, 'NON-SPIRAL', 442243, 'Xal-naga', 4200200);
INSERT INTO public.galaxy VALUES ('VERY Nice place, quite close', 5, 'NON-SPIRAL', 442243, 'Ra', 4200200);
INSERT INTO public.galaxy VALUES ('VERY Nice place, quite close', 6, 'NON-SPIRAL', 442243, 'Molla', 4200200);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'rick', NULL, 35235235, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'morty', NULL, 3523523, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'allan', NULL, 35235235, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'rick2', NULL, 35235235, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'morty2', NULL, 3523523, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'allan2', NULL, 35235235, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'r2', NULL, 35235235, NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'mty2', NULL, 3523523, NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, '3r2', NULL, 35235235, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'mt2ey2', NULL, 3523523, NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, '3r22', NULL, 35235235, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'm22t2ey2', NULL, 3523523, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, '3r322', NULL, 35235235, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'm22t2e3y2', NULL, 3523523, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, '3r3722', NULL, 35235235, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'm22t27e3y2', NULL, 3523523, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, '3r37282', NULL, 35235235, NULL, NULL, 8);
INSERT INTO public.moon VALUES (18, 'm22t287e3y2', NULL, 3523523, NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, '3r372982', NULL, 35235235, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'm22t2879e3y2', NULL, 3523523, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'GOOBA', NULL, 2112, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'DOOBA', NULL, 2112, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'mollux', NULL, 2112, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'vollux', NULL, 2112, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'bollux', NULL, 2112, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'shal', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'drax', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (8, 'elvis', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'pelvis', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'kelvis', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'melvis', NULL, 2112, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'hubriss', NULL, 2112, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'dark tar', NULL, 101.11, 20111100, 1);
INSERT INTO public.star VALUES (2, 'bright tar', NULL, 101.11, 20111100, 1);
INSERT INTO public.star VALUES (3, 'red tar', NULL, 101.11, 20111100, 1);
INSERT INTO public.star VALUES (4, 'white tar', NULL, 101.11, 20111100, 1);
INSERT INTO public.star VALUES (5, 'white mok', NULL, 101.11, 20111100, 2);
INSERT INTO public.star VALUES (6, 'white blob\', NULL, 101.11, 20111100, 2);
INSERT INTO public.star VALUES (7, 'red star', NULL, 101.11, 20111100, 2);
INSERT INTO public.star VALUES (8, 'red dagger', NULL, 101.11, 20111100, 2);
INSERT INTO public.star VALUES (9, 'collapes supernova', NULL, 101.11, 20111100, 4);


--
-- Data for Name: wat; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.wat VALUES (1, 1, 1, 1, NULL);
INSERT INTO public.wat VALUES (2, 1, 2, 2, NULL);
INSERT INTO public.wat VALUES (3, 1, 2, 3, NULL);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: what_is_this_table_for_wat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.what_is_this_table_for_wat_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: wat unique_wat; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wat
    ADD CONSTRAINT unique_wat UNIQUE (galaxy_id, star_id, planet_id);


--
-- Name: wat what_is_this_table_for_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.wat
    ADD CONSTRAINT what_is_this_table_for_pkey PRIMARY KEY (wat_id);


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


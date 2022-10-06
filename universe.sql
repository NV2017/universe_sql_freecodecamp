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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(100) NOT NULL,
    cluster_mass numeric
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    discovery_year integer,
    formation_year integer,
    age_m_yr numeric,
    nickname text,
    active_quasar boolean,
    active_quasar_jet boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    parent_planet character varying(100),
    radius integer,
    color text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    number_moons integer,
    parent_star character varying(100),
    color text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    parent_galaxy character varying(100),
    number_planets integer,
    star_color text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'one', 1);
INSERT INTO public.cluster VALUES (2, 'two', 2);
INSERT INTO public.cluster VALUES (3, 'three', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', -400, -13600000, 13600002, 'ganges of the sky', true, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', -2000, -4500, 4500, 'ganges of the andromeda', true, true);
INSERT INTO public.galaxy VALUES (3, 'milkdromeda', -2000, 4500, 0, 'ganges++', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy one', 1, 2, 3, 'gone', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy two', 4, 5, 6, 'gtwo', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy three', 7, 8, 9, 'gthree', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'm1', 'mercury', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'v1', 'venus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'm4', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'm5', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'm6', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'm7', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'm8', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'm9', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'm10', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'm11', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'm12', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm13', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm14', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'm15', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'm16', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'm17', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'm18', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'm19', 'earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'm20', 'earth', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mercury', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (3, 'venus', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (4, 'planet one', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (5, 'planet two', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (6, 'planet three', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (7, 'planet four', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (8, 'planet five', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (9, 'planet six', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (10, 'planet seven', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (11, 'planet eight', 0, 'sun', NULL, NULL);
INSERT INTO public.planet VALUES (12, 'planet nine', 0, 'sun', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'milky way', 9, NULL, NULL);
INSERT INTO public.star VALUES (2, 'proxima centauri', 'milky way', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'wolf 359', 'milky way', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'one star', 'andromeda', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'two star', 'andromeda', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'three star', 'andromeda', 5, NULL, NULL);


--
-- Name: galaxy add; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT add UNIQUE (name);


--
-- Name: cluster cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_name_key UNIQUE (name);


--
-- Name: cluster cluster_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pk PRIMARY KEY (cluster_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


--
-- Name: planet planet_name_key2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key2 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_to_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_to_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_to_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_to_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_to_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_to_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--



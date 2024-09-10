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
-- Name: asteriods; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriods (
    asteriods_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.asteriods OWNER TO freecodecamp;

--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriods_asteriods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriods_asteriods_id_seq OWNER TO freecodecamp;

--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriods_asteriods_id_seq OWNED BY public.asteriods.asteriods_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    age_in_millions_of_years integer,
    description text,
    galaxy_type character varying(255) NOT NULL
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
    name character varying(255),
    age_in_millions_of_years integer,
    is_spherical boolean,
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
    name character varying(255),
    age_in_millions_of_years integer,
    diameter_in_km numeric(30,1),
    has_life boolean,
    star_id integer NOT NULL,
    planet_types character varying(255) NOT NULL
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
    name character varying(255),
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer NOT NULL,
    star_types character varying(255) NOT NULL
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
-- Name: asteriods asteriods_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods ALTER COLUMN asteriods_id SET DEFAULT nextval('public.asteriods_asteriods_id_seq'::regclass);


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
-- Data for Name: asteriods; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriods VALUES (1, 'Ceres', 4500, true, 1);
INSERT INTO public.asteriods VALUES (2, 'Vesta', 4500, false, 1);
INSERT INTO public.asteriods VALUES (3, 'Eros', 4500, false, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 13600, 'The Milky Way is our home galaxy, a barred spiral galaxy with a distinct bulge and spiral arms. It contains billions of stars, including the Sun, and is part of the Local Group of galaxies. The Milky Way has a supermassive black hole at its center, known as Sagittarius A*', 'Barred spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 10000, 'The Andromeda Galaxy is the nearest large spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. Andromeda is the largest galaxy in the Local Group, with a prominent bulge and well-defined spiral arms.', 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 13000, 'The Triangulum Galaxy, also known as M33, is the third-largest member of the Local Group after Andromeda and the Milky Way. It is a face-on spiral galaxy, making its structure easy to observe.', 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 13100, 'The Large Magellanic Cloud is a satellite galaxy of the Milky Way and one of the most prominent members of the Local Group. It is irregular in
 shape, with no well-defined structure, and is rich in regions of active star formation, such as the famous Tarantula Nebula.', 'Dwarf irregular galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 95500, 'The Sombrero Galaxy is named for its bright central bulge and a dark dust lane that give it the appearance of a sombrero hat. It is a lenticular galaxy, which is a cross between a spiral and elliptical galaxy, and it is known for its central supermassive black hole', 'Lenticular galaxy');
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 12000, 'Messier 81 is one of the brightest galaxies in the night sky and is located in the constellation Ursa Major. It has a well-defined spiral structure and is part of a galactic group that includes the irregular galaxy M82. M81 has undergone interactions with its neighbor, M82, leading to bursts of star formation.', 'Spiral Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon (Luna)', 4500, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4500, true, 13);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, true, 13);
INSERT INTO public.moon VALUES (6, 'Io', 4500, true, 13);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, true, 13);
INSERT INTO public.moon VALUES (8, 'Amalthea', 4500, false, 13);
INSERT INTO public.moon VALUES (9, 'Titan', 4500, true, 8);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4500, true, 8);
INSERT INTO public.moon VALUES (11, 'Mimas', 4500, true, 8);
INSERT INTO public.moon VALUES (12, 'Rhea', 4500, true, 8);
INSERT INTO public.moon VALUES (13, 'Iapetus', 4500, true, 8);
INSERT INTO public.moon VALUES (14, 'Dione', 4500, true, 8);
INSERT INTO public.moon VALUES (15, 'Triton', 4500, true, 7);
INSERT INTO public.moon VALUES (16, 'Proteus', 4500, true, 7);
INSERT INTO public.moon VALUES (17, 'Nereid', 4500, true, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 4500, false, 14);
INSERT INTO public.moon VALUES (19, 'Ariel', 4500, true, 14);
INSERT INTO public.moon VALUES (20, 'Umbriel', 4500, true, 14);
INSERT INTO public.moon VALUES (21, 'Titania', 4500, true, 14);
INSERT INTO public.moon VALUES (22, 'Oberon', 4500, true, 14);
INSERT INTO public.moon VALUES (23, 'Charon', 4500, true, 15);
INSERT INTO public.moon VALUES (24, 'Nix', 4000, false, 15);
INSERT INTO public.moon VALUES (25, 'Hydra', 3500, false, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4540, 12742.0, true, 1, 'terrestrial planet');
INSERT INTO public.planet VALUES (2, 'Mars', 4600, 6779.0, false, 1, 'terrestrial planet');
INSERT INTO public.planet VALUES (3, 'Kepler-452b', 3000, 20387.0, false, 2, 'Super-Earth');
INSERT INTO public.planet VALUES (4, 'Gliese 581g', 8000, 19000.0, false, 2, 'Super-Earth');
INSERT INTO public.planet VALUES (5, 'Proxima Centauri b', 4850, 13600.0, false, 1, 'terrestrial planet');
INSERT INTO public.planet VALUES (6, 'Proxima Centauri c', 4850, 19000.0, false, 1, 'Super-Earth or Neptune-Mini');
INSERT INTO public.planet VALUES (7, 'Neptune', 4600, 49244.0, false, 1, 'Ice-Giant');
INSERT INTO public.planet VALUES (8, 'Saturn', 4600, 116460.0, false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (9, 'HD 209458 b (Osiris)', 4800, 142000.0, false, 1, 'Hot Jupiter');
INSERT INTO public.planet VALUES (10, '55 Cancri e', 8000, 25200.0, false, 1, 'Super-Earth');
INSERT INTO public.planet VALUES (11, 'WASP-12b', 2000, 227000.0, false, 1, 'Hot Jupiter');
INSERT INTO public.planet VALUES (12, 'PSR B1257+12 c', 1000, 19000.0, false, 1, 'Pulsar Planet');
INSERT INTO public.planet VALUES (13, 'Jupiter', 4600, 139820.0, false, 1, 'Gas Giant');
INSERT INTO public.planet VALUES (14, 'Uranus', 4600, 50724.0, false, 1, 'Ice-Giant');
INSERT INTO public.planet VALUES (15, 'Pluto ', 4600, 2377.0, false, 1, 'Dwarf Planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'The Sun is the star at the center of our Solar System and the primary source of energy for Earth. It is a nearly perfect sphere of hot plasma, undergoing nuclear fusion in its core to produce light and heat.', 1, 'G-type main-sequence star');
INSERT INTO public.star VALUES (2, 'X1', 3000, 'Andromeda X-1 is a binary star system containing a neutron star and a companion star. It is known as a strong source of X-rays, indicating the presence of a compact object (likely a neutron star) pulling in material from its companion.', 2, 'Neutron star');
INSERT INTO public.star VALUES (3, 'HD 9446', 5000, 'HD 9446 is a Sun-like star in the Triangulum Galaxy. It is part of a planetary system with two known exoplanets, HD 9446b and HD 9446c. This star is used for studies of planetary formation in distant galaxies.', 3, 'G-type main-sequence star');
INSERT INTO public.star VALUES (4, 'R136a1', 2000, 'R136a1 is one of the most massive stars known, with an estimated mass over 250 times that of the Sun. It is located in the R136 star cluster in the Tarantula Nebula, an active star-forming region in the LMC.', 4, 'Wolf-Rayet star');
INSERT INTO public.star VALUES (5, 'Sun-like Stars', 10000, 'The Sombrero Galaxy contains many stars similar to the Sun, especially in its prominent bulge. These stars are typically older, redder, and more evolved, representing a large population of middle-aged to older stars.', 5, 'G-type, K-type main-sequence stars');
INSERT INTO public.star VALUES (6, 'SN 1993J', 12, 'SN 1993J was a supernova in the galaxy M81, discovered in 1993. The progenitor was a massive star that underwent a core-collapse supernova. This event has been extensively studied for insights into supernova mechanisms.', 6, 'Supernova');


--
-- Name: asteriods_asteriods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriods_asteriods_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteriods asteriods_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods
    ADD CONSTRAINT asteriods_name_key UNIQUE (name);


--
-- Name: asteriods asteriods_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods
    ADD CONSTRAINT asteriods_pkey PRIMARY KEY (asteriods_id);


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
-- Name: asteriods asteriods_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriods
    ADD CONSTRAINT asteriods_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


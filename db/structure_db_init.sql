--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: RDM_bar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_bar" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name integer NOT NULL,
    "L" double precision NOT NULL,
    "Ch" character varying(20000)[] NOT NULL,
    "Qg" double precision[] NOT NULL,
    "Ql" double precision[] NOT NULL,
    "Rg" double precision[] NOT NULL,
    "Rl" double precision[] NOT NULL,
    "EF" jsonb NOT NULL,
    "DP" jsonb NOT NULL,
    "S" jsonb NOT NULL,
    "EFm" jsonb NOT NULL,
    "DPm" jsonb NOT NULL,
    "Sm" jsonb NOT NULL,
    "N1_id" integer NOT NULL,
    "N2_id" integer NOT NULL,
    "Release_id" integer NOT NULL,
    "Section_id" integer NOT NULL,
    project_id integer NOT NULL,
    CONSTRAINT "RDM_bar_name_check" CHECK ((name >= 0))
);


ALTER TABLE public."RDM_bar" OWNER TO postgres;

--
-- Name: RDM_bar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_bar_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_bar_id_seq" OWNER TO postgres;

--
-- Name: RDM_bar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_bar_id_seq" OWNED BY public."RDM_bar".id;


--
-- Name: RDM_dl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_dl" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    type character varying(200) NOT NULL,
    "Axes" character varying(1) NOT NULL,
    features jsonb NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_dl" OWNER TO postgres;

--
-- Name: RDM_dl_bars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_dl_bars" (
    id integer NOT NULL,
    dl_id integer NOT NULL,
    bar_id integer NOT NULL
);


ALTER TABLE public."RDM_dl_bars" OWNER TO postgres;

--
-- Name: RDM_dl_bars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_dl_bars_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_dl_bars_id_seq" OWNER TO postgres;

--
-- Name: RDM_dl_bars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_dl_bars_id_seq" OWNED BY public."RDM_dl_bars".id;


--
-- Name: RDM_dl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_dl_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_dl_id_seq" OWNER TO postgres;

--
-- Name: RDM_dl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_dl_id_seq" OWNED BY public."RDM_dl".id;


--
-- Name: RDM_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_material" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    "YM" double precision NOT NULL,
    "Density" double precision NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_material" OWNER TO postgres;

--
-- Name: RDM_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_material_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_material_id_seq" OWNER TO postgres;

--
-- Name: RDM_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_material_id_seq" OWNED BY public."RDM_material".id;


--
-- Name: RDM_node; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_node" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name integer NOT NULL,
    "X" double precision NOT NULL,
    "Z" double precision NOT NULL,
    "Fn" double precision[] NOT NULL,
    "Dp" double precision[] NOT NULL,
    "Rc" double precision[] NOT NULL,
    "Support_id" integer NOT NULL,
    project_id integer NOT NULL,
    CONSTRAINT "RDM_node_name_check" CHECK ((name >= 0))
);


ALTER TABLE public."RDM_node" OWNER TO postgres;

--
-- Name: RDM_node_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_node_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_node_id_seq" OWNER TO postgres;

--
-- Name: RDM_node_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_node_id_seq" OWNED BY public."RDM_node".id;


--
-- Name: RDM_pl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_pl" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    "FX" double precision NOT NULL,
    "FZ" double precision NOT NULL,
    "CY" double precision NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_pl" OWNER TO postgres;

--
-- Name: RDM_pl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_pl_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_pl_id_seq" OWNER TO postgres;

--
-- Name: RDM_pl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_pl_id_seq" OWNED BY public."RDM_pl".id;


--
-- Name: RDM_pl_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_pl_nodes" (
    id integer NOT NULL,
    pl_id integer NOT NULL,
    node_id integer NOT NULL
);


ALTER TABLE public."RDM_pl_nodes" OWNER TO postgres;

--
-- Name: RDM_pl_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_pl_nodes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_pl_nodes_id_seq" OWNER TO postgres;

--
-- Name: RDM_pl_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_pl_nodes_id_seq" OWNED BY public."RDM_pl_nodes".id;


--
-- Name: RDM_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_project" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    auth character varying(10) NOT NULL,
    results boolean NOT NULL,
    user_id integer NOT NULL,
    preferences jsonb NOT NULL,
    variables jsonb NOT NULL
);


ALTER TABLE public."RDM_project" OWNER TO postgres;

--
-- Name: RDM_project_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_project_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_project_id_seq" OWNER TO postgres;

--
-- Name: RDM_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_project_id_seq" OWNED BY public."RDM_project".id;


--
-- Name: RDM_release; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_release" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    "UX1" boolean NOT NULL,
    "UZ1" boolean NOT NULL,
    "RY1" boolean NOT NULL,
    "UX2" boolean NOT NULL,
    "UZ2" boolean NOT NULL,
    "RY2" boolean NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_release" OWNER TO postgres;

--
-- Name: RDM_release_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_release_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_release_id_seq" OWNER TO postgres;

--
-- Name: RDM_release_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_release_id_seq" OWNED BY public."RDM_release".id;


--
-- Name: RDM_section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_section" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    "Ax" double precision NOT NULL,
    "Iy" double precision NOT NULL,
    "H" double precision NOT NULL,
    "Cy" double precision NOT NULL,
    type character varying(20) NOT NULL,
    features jsonb NOT NULL,
    material_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_section" OWNER TO postgres;

--
-- Name: RDM_section_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_section_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_section_id_seq" OWNER TO postgres;

--
-- Name: RDM_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_section_id_seq" OWNED BY public."RDM_section".id;


--
-- Name: RDM_support; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RDM_support" (
    id integer NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    "UX" boolean NOT NULL,
    "UZ" boolean NOT NULL,
    "RY" boolean NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public."RDM_support" OWNER TO postgres;

--
-- Name: RDM_support_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RDM_support_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."RDM_support_id_seq" OWNER TO postgres;

--
-- Name: RDM_support_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RDM_support_id_seq" OWNED BY public."RDM_support".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE public.social_auth_association OWNER TO postgres;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_auth_association_id_seq OWNER TO postgres;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;


--
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.social_auth_code OWNER TO postgres;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_auth_code_id_seq OWNER TO postgres;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;


--
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE public.social_auth_nonce OWNER TO postgres;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_auth_nonce_id_seq OWNER TO postgres;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;


--
-- Name: social_auth_partial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);


ALTER TABLE public.social_auth_partial OWNER TO postgres;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_auth_partial_id_seq OWNER TO postgres;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;


--
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_auth_usersocialauth OWNER TO postgres;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNER TO postgres;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;


--
-- Name: RDM_bar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar" ALTER COLUMN id SET DEFAULT nextval('public."RDM_bar_id_seq"'::regclass);


--
-- Name: RDM_dl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl" ALTER COLUMN id SET DEFAULT nextval('public."RDM_dl_id_seq"'::regclass);


--
-- Name: RDM_dl_bars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl_bars" ALTER COLUMN id SET DEFAULT nextval('public."RDM_dl_bars_id_seq"'::regclass);


--
-- Name: RDM_material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_material" ALTER COLUMN id SET DEFAULT nextval('public."RDM_material_id_seq"'::regclass);


--
-- Name: RDM_node id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_node" ALTER COLUMN id SET DEFAULT nextval('public."RDM_node_id_seq"'::regclass);


--
-- Name: RDM_pl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl" ALTER COLUMN id SET DEFAULT nextval('public."RDM_pl_id_seq"'::regclass);


--
-- Name: RDM_pl_nodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl_nodes" ALTER COLUMN id SET DEFAULT nextval('public."RDM_pl_nodes_id_seq"'::regclass);


--
-- Name: RDM_project id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_project" ALTER COLUMN id SET DEFAULT nextval('public."RDM_project_id_seq"'::regclass);


--
-- Name: RDM_release id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_release" ALTER COLUMN id SET DEFAULT nextval('public."RDM_release_id_seq"'::regclass);


--
-- Name: RDM_section id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_section" ALTER COLUMN id SET DEFAULT nextval('public."RDM_section_id_seq"'::regclass);


--
-- Name: RDM_support id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_support" ALTER COLUMN id SET DEFAULT nextval('public."RDM_support_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: social_auth_association id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);


--
-- Name: social_auth_code id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);


--
-- Name: social_auth_nonce id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);


--
-- Name: social_auth_partial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);


--
-- Name: social_auth_usersocialauth id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);


--
-- Data for Name: RDM_bar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_bar" (id, modified_date, name, "L", "Ch", "Qg", "Ql", "Rg", "Rl", "EF", "DP", "S", "EFm", "DPm", "Sm", "N1_id", "N2_id", "Release_id", "Section_id", project_id) FROM stdin;
1	2020-01-14 21:24:24.515+00	1	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	1	2	1	2	2
2	2020-01-14 21:24:24.894+00	1	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	3	4	4	3	3
3	2020-01-14 21:24:24.914+00	2	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	4	5	4	3	3
4	2020-01-14 21:24:24.936+00	3	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	5	6	4	3	3
5	2020-01-14 21:24:24.962+00	4	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	4	7	4	3	3
6	2020-01-14 21:24:24.981+00	5	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	5	8	4	3	3
7	2020-01-14 21:24:25.009+00	6	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	3	7	4	3	3
8	2020-01-14 21:24:25.026+00	7	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	7	5	4	3	3
9	2020-01-14 21:24:25.049+00	8	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	7	8	4	3	3
10	2020-01-14 21:24:25.07+00	9	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	8	6	4	3	3
11	2020-01-14 21:24:25.48+00	1	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	9	13	1	4	4
12	2020-01-14 21:24:25.494+00	2	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	13	10	1	4	4
13	2020-01-14 21:24:25.514+00	3	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	10	14	1	4	4
14	2020-01-14 21:24:25.536+00	4	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	14	11	1	4	4
15	2020-01-14 21:24:25.562+00	5	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	11	15	1	4	4
16	2020-01-14 21:24:25.581+00	6	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	15	12	1	4	4
17	2020-01-14 21:24:26.002+00	1	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	16	17	1	5	5
18	2020-01-14 21:24:26.013+00	2	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	17	18	2	5	5
19	2020-01-14 21:24:26.025+00	3	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	18	19	3	5	5
20	2020-01-14 21:24:26.049+00	4	0	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	{0,0,0}	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\", \\"0\\"]"	"[\\"0\\", \\"0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\", \\"0;0\\"]"	"[\\"0;0\\", \\"0;0\\"]"	19	20	1	5	5
\.


--
-- Data for Name: RDM_dl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_dl" (id, modified_date, name, type, "Axes", features, project_id) FROM stdin;
1	2020-01-14 21:24:24.742+00	UL20	Uniform_Load	G	{"MY": 0, "PX": 0, "PZ": -0.02}	2
2	2020-01-14 21:24:25.863+00	q	Uniform_Load	G	{"MY": 0, "PX": 0, "PZ": -0.01}	4
3	2020-01-14 21:24:26.296+00	q1	Uniform_Load	G	{"MY": 0, "PX": 0.01, "PZ": 0}	5
4	2020-01-14 21:24:26.318+00	q2	Uniform_Load	G	{"MY": 0, "PX": 0, "PZ": -0.05}	5
\.


--
-- Data for Name: RDM_dl_bars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_dl_bars" (id, dl_id, bar_id) FROM stdin;
1	1	1
2	2	13
3	3	17
4	4	18
5	4	19
\.


--
-- Data for Name: RDM_material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_material" (id, modified_date, name, "YM", "Density", project_id) FROM stdin;
1	2020-01-14 21:24:24.325+00	Steel	210000	0.077	1
2	2020-01-14 21:24:24.529+00	m1	24000	0	2
3	2020-01-14 21:24:25.084+00	m1	210000	0	3
\.


--
-- Data for Name: RDM_node; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_node" (id, modified_date, name, "X", "Z", "Fn", "Dp", "Rc", "Support_id", project_id) FROM stdin;
1	2020-01-14 21:24:24.441+00	1	0	0	{0,0,0}	{0,0,0}	{0,0,0}	4	2
2	2020-01-14 21:24:24.451+00	2	4	0	{0,0,0}	{0,0,0}	{0,0,0}	3	2
3	2020-01-14 21:24:24.784+00	1	0	0	{0,0,0}	{0,0,0}	{0,0,0}	4	3
4	2020-01-14 21:24:24.796+00	2	2	0	{0,0,0}	{0,0,0}	{0,0,0}	1	3
5	2020-01-14 21:24:24.809+00	3	4	0	{0,0,0}	{0,0,0}	{0,0,0}	1	3
6	2020-01-14 21:24:24.818+00	4	6	0	{0,0,0}	{0,0,0}	{0,0,0}	3	3
7	2020-01-14 21:24:24.829+00	5	2	-1.4	{0,0,0}	{0,0,0}	{0,0,0}	1	3
8	2020-01-14 21:24:24.842+00	6	4	-2	{0,0,0}	{0,0,0}	{0,0,0}	1	3
9	2020-01-14 21:24:25.374+00	1	0	0	{0,0,0}	{0,0,0}	{0,0,0}	3	4
10	2020-01-14 21:24:25.385+00	2	4	4	{0,0,0}	{0,0,0}	{0,0,0}	1	4
11	2020-01-14 21:24:25.396+00	3	10	4	{0,0,0}	{0,0,0}	{0,0,0}	1	4
12	2020-01-14 21:24:25.408+00	4	14	0	{0,0,0}	{0,0,0}	{0,0,0}	4	4
13	2020-01-14 21:24:25.418+00	5	2	2	{0,0,0}	{0,0,0}	{0,0,0}	1	4
14	2020-01-14 21:24:25.429+00	6	7	4	{0,0,0}	{0,0,0}	{0,0,0}	1	4
15	2020-01-14 21:24:25.441+00	7	12	2	{0,0,0}	{0,0,0}	{0,0,0}	1	4
16	2020-01-14 21:24:25.918+00	1	0	0	{0,0,0}	{0,0,0}	{0,0,0}	4	5
17	2020-01-14 21:24:25.93+00	2	0	5	{0,0,0}	{0,0,0}	{0,0,0}	1	5
18	2020-01-14 21:24:25.942+00	3	3	5	{0,0,0}	{0,0,0}	{0,0,0}	1	5
19	2020-01-14 21:24:25.952+00	4	6	5	{0,0,0}	{0,0,0}	{0,0,0}	1	5
20	2020-01-14 21:24:25.963+00	5	6	0	{0,0,0}	{0,0,0}	{0,0,0}	4	5
\.


--
-- Data for Name: RDM_pl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_pl" (id, modified_date, name, "FX", "FZ", "CY", project_id) FROM stdin;
1	2020-01-14 21:24:25.275+00	Q	0	-0.018	0	3
2	2020-01-14 21:24:25.307+00	P	0	-0.036	0	3
3	2020-01-14 21:24:25.808+00	P	0	-0.02	0	4
4	2020-01-14 21:24:25.829+00	Q	-0.01	0	0	4
5	2020-01-14 21:24:26.218+00	P	0.04	0	0	5
\.


--
-- Data for Name: RDM_pl_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_pl_nodes" (id, pl_id, node_id) FROM stdin;
1	1	3
2	2	4
3	2	5
4	3	13
5	3	14
6	4	15
7	5	17
\.


--
-- Data for Name: RDM_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_project" (id, modified_date, name, auth, results, user_id, preferences, variables) FROM stdin;
1	2020-01-14 21:24:24.03+00	Default	private	f	1	{"cdb": ["Distributed Loads", "Section", "Release"], "cdn": ["Point Loads", "Support"]}	{}
2	2020-01-14 21:24:24.435+00	project 1	public	f	1	{"cdb": ["Distributed Loads", "Section", "Release"], "cdn": ["Point Loads", "Support"]}	{}
3	2020-01-14 21:24:24.772+00	Truss Structure	public	f	1	{"cdb": ["Distributed Loads", "Section", "Release"], "cdn": ["Point Loads", "Support"]}	{}
4	2020-01-14 21:24:25.361+00	Frame Structure	public	f	1	{"cdb": ["Distributed Loads", "Section", "Release"], "cdn": ["Point Loads", "Support"]}	{}
5	2020-01-14 21:24:25.912+00	Beams with Internal Hinges	public	f	1	{"cdb": ["Distributed Loads", "Section", "Release"], "cdn": ["Point Loads", "Support"]}	{}
\.


--
-- Data for Name: RDM_release; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_release" (id, modified_date, name, "UX1", "UZ1", "RY1", "UX2", "UZ2", "RY2", project_id) FROM stdin;
1	2020-01-14 21:24:24.376+00	None	f	f	f	f	f	f	1
2	2020-01-14 21:24:24.384+00	F-P	f	f	f	f	f	t	1
3	2020-01-14 21:24:24.396+00	P-F	f	f	t	f	f	f	1
4	2020-01-14 21:24:24.408+00	P-P	f	f	t	f	f	t	1
\.


--
-- Data for Name: RDM_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_section" (id, modified_date, name, "Ax", "Iy", "H", "Cy", type, features, material_id, project_id) FROM stdin;
1	2020-01-14 21:24:24.351+00	Default	0.01	0.0001	1	1	Custom	{"H": 0.1, "Ax": 0.01, "Cy": 0.05, "Iy": 0.0001}	1	1
2	2020-01-14 21:24:24.719+00	s1	0.08	0.00106666666666667	1	1	Rectangular	{"b": 0.2, "h": 0.4}	2	2
3	2020-01-14 21:24:25.228+00	s1	0.0013	9.20833333333335e-07	1	1	Rectangular_Hollow	{"b": 0.07, "h": 0.07, "t": 0.005}	3	3
4	2020-01-14 21:24:25.781+00	s1	0.02202	0.001368461	1	1	I_Section	{"b1": 0.3, "b2": 0.3, "hw": 0.54, "tw": 0.013000000000000001, "tf1": 0.025, "tf2": 0.025}	1	4
5	2020-01-14 21:24:26.167+00	s1	0.02202	0.001368461	1	1	I_Section	{"b1": 0.3, "b2": 0.3, "hw": 0.54, "tw": 0.013000000000000001, "tf1": 0.025, "tf2": 0.025}	1	5
\.


--
-- Data for Name: RDM_support; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RDM_support" (id, modified_date, name, "UX", "UZ", "RY", project_id) FROM stdin;
1	2020-01-14 21:24:24.084+00	None	f	f	f	1
2	2020-01-14 21:24:24.147+00	Roller Z	t	f	f	1
3	2020-01-14 21:24:24.184+00	Roller X	f	t	f	1
4	2020-01-14 21:24:24.229+00	Pinned	t	t	f	1
5	2020-01-14 21:24:24.282+00	Fixed	t	t	t	1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add association	7	add_association
26	Can change association	7	change_association
27	Can delete association	7	delete_association
28	Can view association	7	view_association
29	Can add code	8	add_code
30	Can change code	8	change_code
31	Can delete code	8	delete_code
32	Can view code	8	view_code
33	Can add nonce	9	add_nonce
34	Can change nonce	9	change_nonce
35	Can delete nonce	9	delete_nonce
36	Can view nonce	9	view_nonce
37	Can add user social auth	10	add_usersocialauth
38	Can change user social auth	10	change_usersocialauth
39	Can delete user social auth	10	delete_usersocialauth
40	Can view user social auth	10	view_usersocialauth
41	Can add partial	11	add_partial
42	Can change partial	11	change_partial
43	Can delete partial	11	delete_partial
44	Can view partial	11	view_partial
45	Can add material	12	add_material
46	Can change material	12	change_material
47	Can delete material	12	delete_material
48	Can view material	12	view_material
49	Can add project	13	add_project
50	Can change project	13	change_project
51	Can delete project	13	delete_project
52	Can view project	13	view_project
53	Can add support	14	add_support
54	Can change support	14	change_support
55	Can delete support	14	delete_support
56	Can view support	14	view_support
57	Can add section	15	add_section
58	Can change section	15	change_section
59	Can delete section	15	delete_section
60	Can view section	15	view_section
61	Can add release	16	add_release
62	Can change release	16	change_release
63	Can delete release	16	delete_release
64	Can view release	16	view_release
65	Can add node	17	add_node
66	Can change node	17	change_node
67	Can delete node	17	delete_node
68	Can view node	17	view_node
69	Can add bar	18	add_bar
70	Can change bar	18	change_bar
71	Can delete bar	18	delete_bar
72	Can view bar	18	view_bar
73	Can add pl	19	add_pl
74	Can change pl	19	change_pl
75	Can delete pl	19	delete_pl
76	Can view pl	19	view_pl
77	Can add dl	20	add_dl
78	Can change dl	20	change_dl
79	Can delete dl	20	delete_dl
80	Can view dl	20	view_dl
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$1VAQ2tfqyKgrrnWhs95pPh$Y3YVT+todZ5ZLf4nvHxszfe3mSZy1yHKETyuUQB6ngM=	2024-04-28 20:14:53.341301+00	t	allania7med11			allania7med11@gmail.com	t	t	2020-01-14 21:23:08.774+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	social_django	association
8	social_django	code
9	social_django	nonce
10	social_django	usersocialauth
11	social_django	partial
12	RDM	material
13	RDM	project
14	RDM	support
15	RDM	section
16	RDM	release
17	RDM	node
18	RDM	bar
19	RDM	pl
20	RDM	dl
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-04-28 20:07:11.563984+00
2	auth	0001_initial	2024-04-28 20:07:11.665748+00
3	RDM	0001_initial	2024-04-28 20:07:11.894733+00
4	RDM	0002_auto_20200113_1422	2024-04-28 20:07:11.945415+00
5	RDM	0003_auto_20200113_1422	2024-04-28 20:07:11.966259+00
6	RDM	0004_delete_task	2024-04-28 20:07:11.96948+00
7	admin	0001_initial	2024-04-28 20:07:12.066444+00
8	admin	0002_logentry_remove_auto_add	2024-04-28 20:07:12.077133+00
9	admin	0003_logentry_add_action_flag_choices	2024-04-28 20:07:12.086338+00
10	contenttypes	0002_remove_content_type_name	2024-04-28 20:07:12.122317+00
11	auth	0002_alter_permission_name_max_length	2024-04-28 20:07:12.152075+00
12	auth	0003_alter_user_email_max_length	2024-04-28 20:07:12.170543+00
13	auth	0004_alter_user_username_opts	2024-04-28 20:07:12.188218+00
14	auth	0005_alter_user_last_login_null	2024-04-28 20:07:12.204464+00
15	auth	0006_require_contenttypes_0002	2024-04-28 20:07:12.210525+00
16	auth	0007_alter_validators_add_error_messages	2024-04-28 20:07:12.229768+00
17	auth	0008_alter_user_username_max_length	2024-04-28 20:07:12.256594+00
18	auth	0009_alter_user_last_name_max_length	2024-04-28 20:07:12.278171+00
19	auth	0010_alter_group_name_max_length	2024-04-28 20:07:12.315235+00
20	auth	0011_update_proxy_permissions	2024-04-28 20:07:12.349241+00
21	auth	0012_alter_user_first_name_max_length	2024-04-28 20:07:12.369856+00
22	sessions	0001_initial	2024-04-28 20:07:12.386818+00
23	default	0001_initial	2024-04-28 20:07:12.47759+00
24	social_auth	0001_initial	2024-04-28 20:07:12.480762+00
25	default	0002_add_related_name	2024-04-28 20:07:12.505319+00
26	social_auth	0002_add_related_name	2024-04-28 20:07:12.507227+00
27	default	0003_alter_email_max_length	2024-04-28 20:07:12.514071+00
28	social_auth	0003_alter_email_max_length	2024-04-28 20:07:12.515545+00
29	default	0004_auto_20160423_0400	2024-04-28 20:07:12.527287+00
30	social_auth	0004_auto_20160423_0400	2024-04-28 20:07:12.529133+00
31	social_auth	0005_auto_20160727_2333	2024-04-28 20:07:12.535822+00
32	social_django	0006_partial	2024-04-28 20:07:12.55695+00
33	social_django	0007_code_timestamp	2024-04-28 20:07:12.574267+00
34	social_django	0008_partial_timestamp	2024-04-28 20:07:12.585085+00
35	social_django	0003_alter_email_max_length	2024-04-28 20:07:12.593825+00
36	social_django	0004_auto_20160423_0400	2024-04-28 20:07:12.596671+00
37	social_django	0002_add_related_name	2024-04-28 20:07:12.598627+00
38	social_django	0001_initial	2024-04-28 20:07:12.60109+00
39	social_django	0005_auto_20160727_2333	2024-04-28 20:07:12.604437+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
kz6p5dwwhs40q9tk6a16szz1vxbyt81l	.eJxVjEEOwiAQRe_C2hCYChSX7j0DGYZBqgaS0q6Md7dNutDte-__twi4LiWsnecwJXERWpx-WUR6ct1FemC9N0mtLvMU5Z7Iw3Z5a4lf16P9OyjYy7bOEK0y6ewij9pYhR6UTWwyA1hlR4ZMGUwcBp9d3CiBct6ZQTORQSc-X9zrN9Y:1s1AvF:nVhmat-s0p0tfgtzdhrzfa0coFD5FG8a7ldZeomjFY8	2024-05-12 20:14:53.343344+00
\.


--
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Data for Name: social_auth_partial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
\.


--
-- Name: RDM_bar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_bar_id_seq"', 20, true);


--
-- Name: RDM_dl_bars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_dl_bars_id_seq"', 5, true);


--
-- Name: RDM_dl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_dl_id_seq"', 4, true);


--
-- Name: RDM_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_material_id_seq"', 3, true);


--
-- Name: RDM_node_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_node_id_seq"', 20, true);


--
-- Name: RDM_pl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_pl_id_seq"', 5, true);


--
-- Name: RDM_pl_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_pl_nodes_id_seq"', 7, true);


--
-- Name: RDM_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_project_id_seq"', 5, true);


--
-- Name: RDM_release_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_release_id_seq"', 4, true);


--
-- Name: RDM_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_section_id_seq"', 5, true);


--
-- Name: RDM_support_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RDM_support_id_seq"', 5, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);


--
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);


--
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);


--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);


--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);


--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);


--
-- Name: RDM_bar RDM_bar_name_project_id_01126d4c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_name_project_id_01126d4c_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_bar RDM_bar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_pkey" PRIMARY KEY (id);


--
-- Name: RDM_dl_bars RDM_dl_bars_dl_id_bar_id_fac8d4f2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl_bars"
    ADD CONSTRAINT "RDM_dl_bars_dl_id_bar_id_fac8d4f2_uniq" UNIQUE (dl_id, bar_id);


--
-- Name: RDM_dl_bars RDM_dl_bars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl_bars"
    ADD CONSTRAINT "RDM_dl_bars_pkey" PRIMARY KEY (id);


--
-- Name: RDM_dl RDM_dl_name_project_id_a7dc8ef3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl"
    ADD CONSTRAINT "RDM_dl_name_project_id_a7dc8ef3_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_dl RDM_dl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl"
    ADD CONSTRAINT "RDM_dl_pkey" PRIMARY KEY (id);


--
-- Name: RDM_material RDM_material_name_project_id_f54461a5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_material"
    ADD CONSTRAINT "RDM_material_name_project_id_f54461a5_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_material RDM_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_material"
    ADD CONSTRAINT "RDM_material_pkey" PRIMARY KEY (id);


--
-- Name: RDM_node RDM_node_name_project_id_b3e792d5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_node"
    ADD CONSTRAINT "RDM_node_name_project_id_b3e792d5_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_node RDM_node_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_node"
    ADD CONSTRAINT "RDM_node_pkey" PRIMARY KEY (id);


--
-- Name: RDM_pl RDM_pl_name_project_id_c39df6f1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl"
    ADD CONSTRAINT "RDM_pl_name_project_id_c39df6f1_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_pl_nodes RDM_pl_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl_nodes"
    ADD CONSTRAINT "RDM_pl_nodes_pkey" PRIMARY KEY (id);


--
-- Name: RDM_pl_nodes RDM_pl_nodes_pl_id_node_id_13be15b7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl_nodes"
    ADD CONSTRAINT "RDM_pl_nodes_pl_id_node_id_13be15b7_uniq" UNIQUE (pl_id, node_id);


--
-- Name: RDM_pl RDM_pl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl"
    ADD CONSTRAINT "RDM_pl_pkey" PRIMARY KEY (id);


--
-- Name: RDM_project RDM_project_name_user_id_745d0b68_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_project"
    ADD CONSTRAINT "RDM_project_name_user_id_745d0b68_uniq" UNIQUE (name, user_id);


--
-- Name: RDM_project RDM_project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_project"
    ADD CONSTRAINT "RDM_project_pkey" PRIMARY KEY (id);


--
-- Name: RDM_release RDM_release_name_project_id_27de9510_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_release"
    ADD CONSTRAINT "RDM_release_name_project_id_27de9510_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_release RDM_release_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_release"
    ADD CONSTRAINT "RDM_release_pkey" PRIMARY KEY (id);


--
-- Name: RDM_section RDM_section_name_project_id_98955c2e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_section"
    ADD CONSTRAINT "RDM_section_name_project_id_98955c2e_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_section RDM_section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_section"
    ADD CONSTRAINT "RDM_section_pkey" PRIMARY KEY (id);


--
-- Name: RDM_support RDM_support_name_project_id_4523f413_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_support"
    ADD CONSTRAINT "RDM_support_name_project_id_4523f413_uniq" UNIQUE (name, project_id);


--
-- Name: RDM_support RDM_support_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_support"
    ADD CONSTRAINT "RDM_support_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: social_auth_association social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association social_auth_association_server_url_handle_078befa2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);


--
-- Name: social_auth_code social_auth_code_email_code_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);


--
-- Name: social_auth_code social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- Name: social_auth_partial social_auth_partial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);


--
-- Name: RDM_bar_N1_id_6ddb9cfd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_bar_N1_id_6ddb9cfd" ON public."RDM_bar" USING btree ("N1_id");


--
-- Name: RDM_bar_N2_id_a47c5938; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_bar_N2_id_a47c5938" ON public."RDM_bar" USING btree ("N2_id");


--
-- Name: RDM_bar_Release_id_e1d87fef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_bar_Release_id_e1d87fef" ON public."RDM_bar" USING btree ("Release_id");


--
-- Name: RDM_bar_Section_id_91a805a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_bar_Section_id_91a805a9" ON public."RDM_bar" USING btree ("Section_id");


--
-- Name: RDM_bar_project_id_8f4a05fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_bar_project_id_8f4a05fa" ON public."RDM_bar" USING btree (project_id);


--
-- Name: RDM_dl_bars_bar_id_1db920c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_dl_bars_bar_id_1db920c1" ON public."RDM_dl_bars" USING btree (bar_id);


--
-- Name: RDM_dl_bars_dl_id_73ec97f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_dl_bars_dl_id_73ec97f7" ON public."RDM_dl_bars" USING btree (dl_id);


--
-- Name: RDM_dl_project_id_2bb659b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_dl_project_id_2bb659b4" ON public."RDM_dl" USING btree (project_id);


--
-- Name: RDM_material_project_id_8b5b9a1a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_material_project_id_8b5b9a1a" ON public."RDM_material" USING btree (project_id);


--
-- Name: RDM_node_Support_id_703d2a33; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_node_Support_id_703d2a33" ON public."RDM_node" USING btree ("Support_id");


--
-- Name: RDM_node_project_id_2b55237a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_node_project_id_2b55237a" ON public."RDM_node" USING btree (project_id);


--
-- Name: RDM_pl_nodes_node_id_8ceec915; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_pl_nodes_node_id_8ceec915" ON public."RDM_pl_nodes" USING btree (node_id);


--
-- Name: RDM_pl_nodes_pl_id_c5988eb6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_pl_nodes_pl_id_c5988eb6" ON public."RDM_pl_nodes" USING btree (pl_id);


--
-- Name: RDM_pl_project_id_05b0d35c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_pl_project_id_05b0d35c" ON public."RDM_pl" USING btree (project_id);


--
-- Name: RDM_project_user_id_a9b3b352; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_project_user_id_a9b3b352" ON public."RDM_project" USING btree (user_id);


--
-- Name: RDM_release_project_id_0987de35; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_release_project_id_0987de35" ON public."RDM_release" USING btree (project_id);


--
-- Name: RDM_section_material_id_640137d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_section_material_id_640137d6" ON public."RDM_section" USING btree (material_id);


--
-- Name: RDM_section_project_id_0d323b4d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_section_project_id_0d323b4d" ON public."RDM_section" USING btree (project_id);


--
-- Name: RDM_support_project_id_69e13974; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RDM_support_project_id_69e13974" ON public."RDM_support" USING btree (project_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: social_auth_code_code_a2393167; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);


--
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);


--
-- Name: social_auth_code_timestamp_176b341f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");


--
-- Name: social_auth_partial_timestamp_50f2119f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");


--
-- Name: social_auth_partial_token_3017fea3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);


--
-- Name: social_auth_partial_token_3017fea3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_user_id_17d28448; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);


--
-- Name: RDM_bar RDM_bar_N1_id_6ddb9cfd_fk_RDM_node_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_N1_id_6ddb9cfd_fk_RDM_node_id" FOREIGN KEY ("N1_id") REFERENCES public."RDM_node"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_bar RDM_bar_N2_id_a47c5938_fk_RDM_node_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_N2_id_a47c5938_fk_RDM_node_id" FOREIGN KEY ("N2_id") REFERENCES public."RDM_node"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_bar RDM_bar_Release_id_e1d87fef_fk_RDM_release_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_Release_id_e1d87fef_fk_RDM_release_id" FOREIGN KEY ("Release_id") REFERENCES public."RDM_release"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_bar RDM_bar_Section_id_91a805a9_fk_RDM_section_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_Section_id_91a805a9_fk_RDM_section_id" FOREIGN KEY ("Section_id") REFERENCES public."RDM_section"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_bar RDM_bar_project_id_8f4a05fa_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_bar"
    ADD CONSTRAINT "RDM_bar_project_id_8f4a05fa_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_dl_bars RDM_dl_bars_bar_id_1db920c1_fk_RDM_bar_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl_bars"
    ADD CONSTRAINT "RDM_dl_bars_bar_id_1db920c1_fk_RDM_bar_id" FOREIGN KEY (bar_id) REFERENCES public."RDM_bar"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_dl_bars RDM_dl_bars_dl_id_73ec97f7_fk_RDM_dl_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl_bars"
    ADD CONSTRAINT "RDM_dl_bars_dl_id_73ec97f7_fk_RDM_dl_id" FOREIGN KEY (dl_id) REFERENCES public."RDM_dl"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_dl RDM_dl_project_id_2bb659b4_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_dl"
    ADD CONSTRAINT "RDM_dl_project_id_2bb659b4_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_material RDM_material_project_id_8b5b9a1a_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_material"
    ADD CONSTRAINT "RDM_material_project_id_8b5b9a1a_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_node RDM_node_Support_id_703d2a33_fk_RDM_support_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_node"
    ADD CONSTRAINT "RDM_node_Support_id_703d2a33_fk_RDM_support_id" FOREIGN KEY ("Support_id") REFERENCES public."RDM_support"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_node RDM_node_project_id_2b55237a_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_node"
    ADD CONSTRAINT "RDM_node_project_id_2b55237a_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_pl_nodes RDM_pl_nodes_node_id_8ceec915_fk_RDM_node_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl_nodes"
    ADD CONSTRAINT "RDM_pl_nodes_node_id_8ceec915_fk_RDM_node_id" FOREIGN KEY (node_id) REFERENCES public."RDM_node"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_pl_nodes RDM_pl_nodes_pl_id_c5988eb6_fk_RDM_pl_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl_nodes"
    ADD CONSTRAINT "RDM_pl_nodes_pl_id_c5988eb6_fk_RDM_pl_id" FOREIGN KEY (pl_id) REFERENCES public."RDM_pl"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_pl RDM_pl_project_id_05b0d35c_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_pl"
    ADD CONSTRAINT "RDM_pl_project_id_05b0d35c_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_project RDM_project_user_id_a9b3b352_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_project"
    ADD CONSTRAINT "RDM_project_user_id_a9b3b352_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_release RDM_release_project_id_0987de35_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_release"
    ADD CONSTRAINT "RDM_release_project_id_0987de35_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_section RDM_section_material_id_640137d6_fk_RDM_material_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_section"
    ADD CONSTRAINT "RDM_section_material_id_640137d6_fk_RDM_material_id" FOREIGN KEY (material_id) REFERENCES public."RDM_material"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_section RDM_section_project_id_0d323b4d_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_section"
    ADD CONSTRAINT "RDM_section_project_id_0d323b4d_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RDM_support RDM_support_project_id_69e13974_fk_RDM_project_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RDM_support"
    ADD CONSTRAINT "RDM_support_project_id_69e13974_fk_RDM_project_id" FOREIGN KEY (project_id) REFERENCES public."RDM_project"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


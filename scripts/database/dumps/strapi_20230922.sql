PGDMP  2    $    
            {            strapi    16.0 (Debian 16.0-1.pgdg120+1)    16.0 �   >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    16384    strapi    DATABASE     q   CREATE DATABASE strapi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE strapi;
                postgres    false            B           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   pg_database_owner    false    5            �            1259    19565    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    19570    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    215            C           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    216            �            1259    19571    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    19574 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    217            D           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    218            �            1259    19575    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    19580    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    219            E           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    220            �            1259    19581    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    19586    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    221            F           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    222            �            1259    19587    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    19590    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    223            G           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    224            �            1259    19591    articles    TABLE     j  CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    content text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    19596    articles_author_links    TABLE     �   CREATE TABLE public.articles_author_links (
    id integer NOT NULL,
    article_id integer,
    writer_id integer,
    article_order double precision
);
 )   DROP TABLE public.articles_author_links;
       public         heap    postgres    false            �            1259    19599    articles_author_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.articles_author_links_id_seq;
       public          postgres    false    226            H           0    0    articles_author_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.articles_author_links_id_seq OWNED BY public.articles_author_links.id;
          public          postgres    false    227            �            1259    19600    articles_category_links    TABLE     �   CREATE TABLE public.articles_category_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_order double precision
);
 +   DROP TABLE public.articles_category_links;
       public         heap    postgres    false            �            1259    19603    articles_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.articles_category_links_id_seq;
       public          postgres    false    228            I           0    0    articles_category_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.articles_category_links_id_seq OWNED BY public.articles_category_links.id;
          public          postgres    false    229            �            1259    19604    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    225            J           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    230            �            1259    19605 
   categories    TABLE       CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    19610    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    231            K           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    232            �            1259    19611    components_decoration_heroes    TABLE     p   CREATE TABLE public.components_decoration_heroes (
    id integer NOT NULL,
    title character varying(255)
);
 0   DROP TABLE public.components_decoration_heroes;
       public         heap    postgres    false            �            1259    19614 #   components_decoration_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_decoration_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_decoration_heroes_id_seq;
       public          postgres    false    233            L           0    0 #   components_decoration_heroes_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_decoration_heroes_id_seq OWNED BY public.components_decoration_heroes.id;
          public          postgres    false    234            �            1259    19615    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap    postgres    false            �            1259    19620    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public          postgres    false    235            M           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public          postgres    false    236            �            1259    19621    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    19626    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    19629    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    238            N           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    239            �            1259    19630    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    237            O           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    240            �            1259    19631    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    19636    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    241            P           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    242            �            1259    19637    globals    TABLE     �   CREATE TABLE public.globals (
    id integer NOT NULL,
    site_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.globals;
       public         heap    postgres    false            �            1259    19640    globals_components    TABLE     �   CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.globals_components;
       public         heap    postgres    false            �            1259    19645    globals_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.globals_components_id_seq;
       public          postgres    false    244            Q           0    0    globals_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;
          public          postgres    false    245            �            1259    19646    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public          postgres    false    243            R           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public          postgres    false    246            �            1259    19647 	   homepages    TABLE     �   CREATE TABLE public.homepages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.homepages;
       public         heap    postgres    false            �            1259    19650    homepages_components    TABLE     �   CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.homepages_components;
       public         heap    postgres    false            �            1259    19655    homepages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.homepages_components_id_seq;
       public          postgres    false    248            S           0    0    homepages_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;
          public          postgres    false    249            �            1259    19656    homepages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.homepages_id_seq;
       public          postgres    false    247            T           0    0    homepages_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;
          public          postgres    false    250            �            1259    19664    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false                        1259    19676    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    253            U           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    256                       1259    19679    listings    TABLE     _  CREATE TABLE public.listings (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    bathrooms text,
    bedrooms text,
    description text,
    type text,
    is_featured text,
    is_recommended text,
    photos text,
    capacity text,
    ammenities text,
    reviews_stars text,
    reviews_number text,
    is_favorited text,
    address text,
    fees text,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.listings;
       public         heap    postgres    false                       1259    19684    listings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.listings_id_seq;
       public          postgres    false    257            V           0    0    listings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.listings_id_seq OWNED BY public.listings.id;
          public          postgres    false    258                       1259    19685    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false                       1259    19688 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    259            W           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    260                       1259    19689 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false                       1259    19692 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    261            X           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    262                       1259    19693    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false                       1259    19698    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    263            Y           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    264            	           1259    19699    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            
           1259    19704 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    265            Z           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    266            �            1259    19670    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    19669    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    255            [           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    254            �            1259    19658    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    19657    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    252            \           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    251                       1259    19706 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false                       1259    19709 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    267            ]           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    268                       1259    19710 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false                       1259    19713 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    269            ^           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    270                       1259    19714    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false                       1259    19719    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    271            _           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    272                       1259    19720    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false                       1259    19725    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    273            `           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    274                       1259    19726    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false                       1259    19729    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    275            a           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    276                       1259    19730    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    19733     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    277            b           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    278                       1259    19734    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false                       1259    19739    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    279            c           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    280                       1259    19740    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false                       1259    19745    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    281            d           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    282                       1259    19746    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    19749    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    283            e           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    284                       1259    19750    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false                       1259    19755    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    285            f           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    286                       1259    19756    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false                        1259    19759 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    287            g           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    288            !           1259    19760    writers    TABLE       CREATE TABLE public.writers (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.writers;
       public         heap    postgres    false            "           1259    19765    writers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.writers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.writers_id_seq;
       public          postgres    false    289            h           0    0    writers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.writers_id_seq OWNED BY public.writers.id;
          public          postgres    false    290            <           2604    19766    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            =           2604    19767    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            >           2604    19768    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            ?           2604    19769    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            @           2604    19770    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            A           2604    19771    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    225            B           2604    19772    articles_author_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_author_links ALTER COLUMN id SET DEFAULT nextval('public.articles_author_links_id_seq'::regclass);
 G   ALTER TABLE public.articles_author_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            C           2604    19773    articles_category_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_category_links ALTER COLUMN id SET DEFAULT nextval('public.articles_category_links_id_seq'::regclass);
 I   ALTER TABLE public.articles_category_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            D           2604    19774    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            E           2604    19775    components_decoration_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_decoration_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_decoration_heroes_id_seq'::regclass);
 N   ALTER TABLE public.components_decoration_heroes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            F           2604    19776    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            G           2604    19777    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    237            H           2604    19778    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            I           2604    19779    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            J           2604    19780 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    243            K           2604    19781    globals_components id    DEFAULT     ~   ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);
 D   ALTER TABLE public.globals_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            L           2604    19782    homepages id    DEFAULT     l   ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);
 ;   ALTER TABLE public.homepages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    247            M           2604    19783    homepages_components id    DEFAULT     �   ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);
 F   ALTER TABLE public.homepages_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            O           2604    19784    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    253            Q           2604    19785    listings id    DEFAULT     j   ALTER TABLE ONLY public.listings ALTER COLUMN id SET DEFAULT nextval('public.listings_id_seq'::regclass);
 :   ALTER TABLE public.listings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257            R           2604    19786    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            S           2604    19787 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            T           2604    19788    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263            U           2604    19789    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265            P           2604    19790    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            N           2604    19791    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            V           2604    19792 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            W           2604    19793 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            X           2604    19794    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            Y           2604    19795    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273            Z           2604    19796    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    275            [           2604    19797    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277            \           2604    19798    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279            ]           2604    19799    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            ^           2604    19800    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            _           2604    19801    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285            `           2604    19802    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287            a           2604    19803 
   writers id    DEFAULT     h   ALTER TABLE ONLY public.writers ALTER COLUMN id SET DEFAULT nextval('public.writers_id_seq'::regclass);
 9   ALTER TABLE public.writers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289            �          0    19565    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    215   �H      �          0    19571    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    217   IS      �          0    19575    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    219   KV      �          0    19581    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    221   0W      �          0    19587    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    223   �W      �          0    19591    articles 
   TABLE DATA           �   COPY public.articles (id, title, description, content, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   X      �          0    19596    articles_author_links 
   TABLE DATA           Y   COPY public.articles_author_links (id, article_id, writer_id, article_order) FROM stdin;
    public          postgres    false    226   kg      �          0    19600    articles_category_links 
   TABLE DATA           ]   COPY public.articles_category_links (id, article_id, category_id, article_order) FROM stdin;
    public          postgres    false    228   �g                 0    19605 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   �g                0    19611    components_decoration_heroes 
   TABLE DATA           A   COPY public.components_decoration_heroes (id, title) FROM stdin;
    public          postgres    false    233   �h                0    19615    components_shared_seos 
   TABLE DATA           R   COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    public          postgres    false    235   �h                0    19621    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   ai                0    19626    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    238   �z      
          0    19631    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    241   �z                0    19637    globals 
   TABLE DATA           f   COPY public.globals (id, site_name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    243   �{                0    19640    globals_components 
   TABLE DATA           i   COPY public.globals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    244   5|                0    19647 	   homepages 
   TABLE DATA           ]   COPY public.homepages (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    247   u|                0    19650    homepages_components 
   TABLE DATA           k   COPY public.homepages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    248   �|                0    19664    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    253   }                0    19679    listings 
   TABLE DATA             COPY public.listings (id, title, slug, created_at, bathrooms, bedrooms, description, type, is_featured, is_recommended, photos, capacity, ammenities, reviews_stars, reviews_number, is_favorited, address, fees, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    257   `}                0    19685    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    259   ��                0    19689 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    261   �                 0    19693    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    263   4�      "          0    19699    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    265   Q�                0    19670    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    255   !�                0    19658    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    252   ī      $          0    19706 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    267   �      &          0    19710 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    269   ��      (          0    19714    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    271   �      *          0    19720    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    273   8�      ,          0    19726    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    275   U�      .          0    19730    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    277   ֭      0          0    19734    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    279   [�      2          0    19740    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    281   �      4          0    19746    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    283   �      6          0    19750    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    285   !�      8          0    19756    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    287   >�      :          0    19760    writers 
   TABLE DATA           h   COPY public.writers (id, name, email, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    289   [�      i           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 147, true);
          public          postgres    false    216            j           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 147, true);
          public          postgres    false    218            k           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    220            l           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    222            m           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 3, true);
          public          postgres    false    224            n           0    0    articles_author_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articles_author_links_id_seq', 6, true);
          public          postgres    false    227            o           0    0    articles_category_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.articles_category_links_id_seq', 11, true);
          public          postgres    false    229            p           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 6, true);
          public          postgres    false    230            q           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          postgres    false    232            r           0    0 #   components_decoration_heroes_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_decoration_heroes_id_seq', 2, true);
          public          postgres    false    234            s           0    0    components_shared_seos_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 4, true);
          public          postgres    false    236            t           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    239            u           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 37, true);
          public          postgres    false    240            v           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 34, true);
          public          postgres    false    242            w           0    0    globals_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.globals_components_id_seq', 3, true);
          public          postgres    false    245            x           0    0    globals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.globals_id_seq', 2, true);
          public          postgres    false    246            y           0    0    homepages_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.homepages_components_id_seq', 4, true);
          public          postgres    false    249            z           0    0    homepages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.homepages_id_seq', 2, true);
          public          postgres    false    250            {           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    256            |           0    0    listings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.listings_id_seq', 29, true);
          public          postgres    false    258            }           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    260            ~           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    262                       0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    264            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 32, true);
          public          postgres    false    266            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 3, true);
          public          postgres    false    254            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    251            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    268            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    270            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    272            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    274            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);
          public          postgres    false    276            �           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);
          public          postgres    false    278            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    280            �           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    282            �           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    284            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    286            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    288            �           0    0    writers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.writers_id_seq', 4, true);
          public          postgres    false    290            d           2606    19808 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    215            j           2606    19810 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    217            l           2606    19812 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    217    217            o           2606    19814    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    219            s           2606    19816    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    221            z           2606    19818 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    223            |           2606    19820 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    223    223            �           2606    19822 0   articles_author_links articles_author_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_pkey;
       public            postgres    false    226            �           2606    19824 2   articles_author_links articles_author_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_unique UNIQUE (article_id, writer_id);
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_unique;
       public            postgres    false    226    226            �           2606    19826 4   articles_category_links articles_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_pkey;
       public            postgres    false    228            �           2606    19828 6   articles_category_links articles_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_unique UNIQUE (article_id, category_id);
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_unique;
       public            postgres    false    228    228                       2606    19830    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    225            �           2606    19832    articles articles_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_slug_unique;
       public            postgres    false    225            �           2606    19834    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    231            �           2606    19836 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            postgres    false    231            �           2606    19838 >   components_decoration_heroes components_decoration_heroes_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_decoration_heroes
    ADD CONSTRAINT components_decoration_heroes_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_decoration_heroes DROP CONSTRAINT components_decoration_heroes_pkey;
       public            postgres    false    233            �           2606    19840 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public            postgres    false    235            �           2606    19842 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    238            �           2606    19844 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    238    238            �           2606    19846    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    237            �           2606    19848 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    241            �           2606    19850 *   globals_components globals_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_components_pkey;
       public            postgres    false    244            �           2606    19852    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public            postgres    false    243            �           2606    20304 !   globals_components globals_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_unique;
       public            postgres    false    244    244    244    244            �           2606    19856 .   homepages_components homepages_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_components_pkey;
       public            postgres    false    248            �           2606    19858    homepages homepages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_pkey;
       public            postgres    false    247            �           2606    20306 %   homepages_components homepages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_unique UNIQUE (entity_id, component_id, field, component_type);
 O   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_unique;
       public            postgres    false    248    248    248    248            �           2606    19862    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    253            �           2606    19864    listings listings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_pkey;
       public            postgres    false    257            �           2606    19866    listings listings_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_slug_unique;
       public            postgres    false    257            �           2606    19868 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    259            �           2606    19870 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    261            �           2606    19872 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    261    261            �           2606    19874 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    263            �           2606    19876 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    265            �           2606    19678 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    255            �           2606    19663 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    252            �           2606    19878 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    267            �           2606    19880 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    269            �           2606    19882 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    269    269            �           2606    19884 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    271            �           2606    19886 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    273            �           2606    19888 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    275            �           2606    19890 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    277                       2606    19892 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    277    277                       2606    19894    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    279                       2606    19896    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    281                       2606    19898 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    283                       2606    19900 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    283    283                       2606    19902 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    287                       2606    19904 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    287    287                       2606    19906 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    285                       2606    19908 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    285                       2606    19910 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    285            "           2606    19912    writers writers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_pkey;
       public            postgres    false    289            b           1259    19913 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    215            f           1259    19914    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    217            g           1259    19915 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    217            h           1259    19916 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    217            e           1259    19917 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    215            m           1259    19918    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    219            p           1259    19919    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    219            q           1259    19920    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    221            u           1259    19921    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    223            v           1259    19922    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    223            w           1259    19923     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    223            x           1259    19924 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    223            t           1259    19925    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    221            �           1259    19926    articles_author_links_fk    INDEX     `   CREATE INDEX articles_author_links_fk ON public.articles_author_links USING btree (article_id);
 ,   DROP INDEX public.articles_author_links_fk;
       public            postgres    false    226            �           1259    19927    articles_author_links_inv_fk    INDEX     c   CREATE INDEX articles_author_links_inv_fk ON public.articles_author_links USING btree (writer_id);
 0   DROP INDEX public.articles_author_links_inv_fk;
       public            postgres    false    226            �           1259    19928 "   articles_author_links_order_inv_fk    INDEX     m   CREATE INDEX articles_author_links_order_inv_fk ON public.articles_author_links USING btree (article_order);
 6   DROP INDEX public.articles_author_links_order_inv_fk;
       public            postgres    false    226            �           1259    19929    articles_category_links_fk    INDEX     d   CREATE INDEX articles_category_links_fk ON public.articles_category_links USING btree (article_id);
 .   DROP INDEX public.articles_category_links_fk;
       public            postgres    false    228            �           1259    19930    articles_category_links_inv_fk    INDEX     i   CREATE INDEX articles_category_links_inv_fk ON public.articles_category_links USING btree (category_id);
 2   DROP INDEX public.articles_category_links_inv_fk;
       public            postgres    false    228            �           1259    19931 $   articles_category_links_order_inv_fk    INDEX     q   CREATE INDEX articles_category_links_order_inv_fk ON public.articles_category_links USING btree (article_order);
 8   DROP INDEX public.articles_category_links_order_inv_fk;
       public            postgres    false    228            }           1259    19932    articles_created_by_id_fk    INDEX     W   CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);
 -   DROP INDEX public.articles_created_by_id_fk;
       public            postgres    false    225            �           1259    19933    articles_updated_by_id_fk    INDEX     W   CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);
 -   DROP INDEX public.articles_updated_by_id_fk;
       public            postgres    false    225            �           1259    19934    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            postgres    false    231            �           1259    19935    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            postgres    false    231            �           1259    19936    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    237            �           1259    19937    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    238            �           1259    19938    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    238            �           1259    19939    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    238            �           1259    19940    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    241            �           1259    20302 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    241            �           1259    20301     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    241            �           1259    19941    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    237            �           1259    19942    globals_component_type_index    INDEX     e   CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);
 0   DROP INDEX public.globals_component_type_index;
       public            postgres    false    244            �           1259    19943    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public            postgres    false    243            �           1259    19944    globals_entity_fk    INDEX     U   CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public            postgres    false    244            �           1259    19945    globals_field_index    INDEX     S   CREATE INDEX globals_field_index ON public.globals_components USING btree (field);
 '   DROP INDEX public.globals_field_index;
       public            postgres    false    244            �           1259    19946    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public            postgres    false    243            �           1259    19947    homepages_component_type_index    INDEX     i   CREATE INDEX homepages_component_type_index ON public.homepages_components USING btree (component_type);
 2   DROP INDEX public.homepages_component_type_index;
       public            postgres    false    248            �           1259    19948    homepages_created_by_id_fk    INDEX     Y   CREATE INDEX homepages_created_by_id_fk ON public.homepages USING btree (created_by_id);
 .   DROP INDEX public.homepages_created_by_id_fk;
       public            postgres    false    247            �           1259    19949    homepages_entity_fk    INDEX     Y   CREATE INDEX homepages_entity_fk ON public.homepages_components USING btree (entity_id);
 '   DROP INDEX public.homepages_entity_fk;
       public            postgres    false    248            �           1259    19950    homepages_field_index    INDEX     W   CREATE INDEX homepages_field_index ON public.homepages_components USING btree (field);
 )   DROP INDEX public.homepages_field_index;
       public            postgres    false    248            �           1259    19951    homepages_updated_by_id_fk    INDEX     Y   CREATE INDEX homepages_updated_by_id_fk ON public.homepages USING btree (updated_by_id);
 .   DROP INDEX public.homepages_updated_by_id_fk;
       public            postgres    false    247            �           1259    19952    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    253            �           1259    19953    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    253            �           1259    19954    listings_created_by_id_fk    INDEX     W   CREATE INDEX listings_created_by_id_fk ON public.listings USING btree (created_by_id);
 -   DROP INDEX public.listings_created_by_id_fk;
       public            postgres    false    257            �           1259    19955    listings_updated_by_id_fk    INDEX     W   CREATE INDEX listings_updated_by_id_fk ON public.listings USING btree (updated_by_id);
 -   DROP INDEX public.listings_updated_by_id_fk;
       public            postgres    false    257            �           1259    19956 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    259            �           1259    19957 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    261            �           1259    19958 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    261            �           1259    19959 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    261            �           1259    19960 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    259            �           1259    19961 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    263            �           1259    19962 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    263            �           1259    19963 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    267            �           1259    19964 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    269            �           1259    19965 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    269            �           1259    19966 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    269            �           1259    19967 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    267            �           1259    19968 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    271            �           1259    19969 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    271            �           1259    19970    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    275            �           1259    19971    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    277            �           1259    19972     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    277            �           1259    19973 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    277            �           1259    19974    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    275                       1259    19975    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    279                       1259    19976    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    279                       1259    19977    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    281            
           1259    19978    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    283                       1259    19979    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    283                       1259    19980     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    283            	           1259    19981    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    281            �           1259    19982    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    237            �           1259    19983    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    237            �           1259    19984    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    237            �           1259    19985    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    237            �           1259    19986    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    237            �           1259    19987    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    237                       1259    19988    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    285                       1259    19989    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    287                       1259    19990 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    287                       1259    19991 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    287                       1259    19992    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    285                        1259    19993    writers_created_by_id_fk    INDEX     U   CREATE INDEX writers_created_by_id_fk ON public.writers USING btree (created_by_id);
 ,   DROP INDEX public.writers_created_by_id_fk;
       public            postgres    false    289            #           1259    19994    writers_updated_by_id_fk    INDEX     U   CREATE INDEX writers_updated_by_id_fk ON public.writers USING btree (updated_by_id);
 ,   DROP INDEX public.writers_updated_by_id_fk;
       public            postgres    false    289            $           2606    19995 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    3443    215    221            &           2606    20000 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    3428    215    217            '           2606    20005 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    219    3439    217            %           2606    20010 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    221    3443    215            (           2606    20015 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    219    221    3443            )           2606    20020 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    219    221    3443            *           2606    20025 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    221    221    3443            ,           2606    20030 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    221    3443    223            -           2606    20035 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    223    219    3439            +           2606    20040 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    221    3443    221            0           2606    20045 .   articles_author_links articles_author_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_fk;
       public          postgres    false    225    3455    226            1           2606    20050 2   articles_author_links articles_author_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_inv_fk FOREIGN KEY (writer_id) REFERENCES public.writers(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_inv_fk;
       public          postgres    false    289    3618    226            2           2606    20055 2   articles_category_links articles_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_fk;
       public          postgres    false    225    3455    228            3           2606    20060 6   articles_category_links articles_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_inv_fk;
       public          postgres    false    231    228    3475            .           2606    20065 "   articles articles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
       public          postgres    false    225    3443    221            /           2606    20070 "   articles articles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
       public          postgres    false    3443    225    221            4           2606    20075 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          postgres    false    231    3443    221            5           2606    20080 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          postgres    false    231    3443    221            6           2606    20085    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    221    237    3443            8           2606    20090 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    238    237    3485            9           2606    20095 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    238    3607    285            :           2606    20100 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    3485    241    237            7           2606    20105    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    237    221    3443            ;           2606    20110     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public          postgres    false    3443    221    243            =           2606    20115 $   globals_components globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_entity_fk;
       public          postgres    false    3507    243    244            <           2606    20120     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public          postgres    false    221    243    3443            >           2606    20125 $   homepages homepages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_created_by_id_fk;
       public          postgres    false    247    3443    221            @           2606    20130 (   homepages_components homepages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homepages(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_entity_fk;
       public          postgres    false    248    3518    247            ?           2606    20135 $   homepages homepages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_updated_by_id_fk;
       public          postgres    false    3443    247    221            A           2606    20140 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    253    3443    221            B           2606    20145 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    221    3443    253            C           2606    20150 "   listings listings_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_created_by_id_fk;
       public          postgres    false    257    3443    221            D           2606    20155 "   listings listings_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_updated_by_id_fk;
       public          postgres    false    221    3443    257            E           2606    20160 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    3443    221    259            G           2606    20165 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    3543    259    261            H           2606    20170 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    261    3554    263            F           2606    20175 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    221    259    3443            I           2606    20180 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    263    221    3443            J           2606    20185 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    221    3443    263            K           2606    20190 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    3443    221    267            M           2606    20195 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    3560    269    267            N           2606    20200 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    271    3571    269            L           2606    20205 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    221    3443    267            O           2606    20210 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    271    3443    221            P           2606    20215 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    221    3443    271            Q           2606    20220 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    275    221    3443            S           2606    20225 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    3577    277    275            T           2606    20230 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    279    3588    277            R           2606    20235 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    275    221    3443            U           2606    20240 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    3443    279    221            V           2606    20245 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    279    221    3443            W           2606    20250 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    221    3443    281            Y           2606    20255 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    3592    281    283            Z           2606    20260 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    279    283    3588            X           2606    20265 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    3443    281    221            [           2606    20270 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    3443    221    285            ]           2606    20275 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    285    287    3607            ^           2606    20280 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    3607    285    287            \           2606    20285 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    3443    221    285            _           2606    20290     writers writers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_created_by_id_fk;
       public          postgres    false    3443    289    221            `           2606    20295     writers writers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_updated_by_id_fk;
       public          postgres    false    3443    221    289            �   �
  x��\�n�}�~�"��@EI�sQ�/E{��(�I�Ȗ!�IE���8Tlsh��d�E
�|��3C�3���fW���r�j�����M�-d�߻�i�Ū�e/o�]�\�m_�j	���?���������o�}����O_oײ[�ծ�������N���b|h�o�u�Qz�E�����������M%lŋ�}����K�c�����%	sǘ��ءm���V�����kY��usW֠��U��\��r_���ld_��z#��?ߗ��v�e+�jn�}�\)�nrH�1���4���f#w��`.N\=����,Oeۀ��ngD�9q�s�����> ~w�3�����m�M7~����d��v��U�_�Ծ�k���r�l6r�����N/�]���q���oT}%ǟ��/�?��l���~s'[T)��VM���\�[ٍ�{/Ϭ�x;q=�Y�h�F����tW��9Z��Znʪv��Cęצ��*Kח�9p�:q�L��{��bʾ���30�Q����q��%㢀$����ћ8ěO�Y��q0=��������F�"b#��zT1����Few�]0z�Q�z�Α1��	bn �6zT �6^exTQ9J��Gmp��d�@Zq�ǣ�8���ȔA�S+U�8�%��p~T�d*�U.�h�G=���tI�v��/��q�{T��DHs����C�=��C��`�P�*Q�C��B����T/Rb��8�{��Cuk�;�3`T[q��Hb��'+é,��Q�#5��w��ǰ��C�S�B�(�/��}Ǽ�(����Q�5��V�������g���8���ʳ��A��j���#�j�#�8�/�N���s���R�~���9�1.��y� b�H;����v�|^ W޻pH\���-�j�tN!���"�
�=�U=�L�����(?��+EL�=�������)�=�N�Q�����>��lo�j��8:ؖ�Q����Ҕ������'��z��(�b qa���{������G���A=�+�\m��E�q|.�~�a����0��=�ɇ�g�e�C[&N8kP��I�d5�qt=�kyeI#��z*�8:�Q�}�����5Bu_����߷��m|�P�T�h|`_��RF�z��8�ؒ�I� Q�8��ف�ן&(U�R�k��^YX �W�8�X�?0/Q��^+�O8z�߻��i~�JZkL8�؅�ڒ��d�UFL8�ؚ�[�%T�6�hP`����{���z�ј��5ݸ�4�Ab%Fs<��\'�ۘ"�R���9)�|s�ӘT�}j"k�9���-4�(��F���*R��q�c#|��'DO��5�=,�P�G�7��Q���px{o|d�"+�O8*���'K:�v��l7Uש���;�?br�N6C2j��j�3�N9�Ҵk�w�OC���I�"��j7��OA����f��/��un@�[�[F���86�/v�F�-���I��v�߹��l��c�66�/�c��U����0��������~$8��O`������!aD�E��cc��ǳG�r����coط���&�8��8
A���
eu��}	��MPC�����97�h]P7�:SAǈ��A]�K��҂H툣7�ǧ��S��!J��qL�:�ϩ�q��턣��=��6Ad�O)&�!�|��A��"��E����u�����F?=�U��Wf����?������,=�����G�b,��	����޹P�B�'v'���zUN�I)'�G��&��|�CYG�&�=Ra���Q��D��8*{$�7��W*	D���	G���0�·�նG_h|��L�R`S	qT�H�g�G��~�{�Q�#ʇ��W")$��mGqwL�w-C���%(��~km�Q��VM]�Ր{��90�!-��h*�횭B5��[��ϫ�/�5�H6����W���g2H�7�'5^�՘|@U����<�ՎF٭GKs�9p���8����RR��n��͋�o|�b��
V7����(��d��<>RT�;wn$ة��rc������T�wb*�����]�U\lA�K�gg���G'ܰg$���1Ty����I����H�ɏ�a/HvL�g�EJ�3��8Su�o�5���������*�ݍ"���	7:����I�S[TčR2�4�8��KEn��%��?��Ҹ�J����0�����5~Fm��^nv�Қ�/2̌�����}��R>j�h�g4��s�]���;��p�2q�Yi�{Z�--5O5nT��ؔ���8��l���T��8R'��~�w�M����85T�ff1�X���%u�qÛZ��ì2* n���<h�bj��a��8k<�Xm��U���͏i�ƗAB�����t~p�^-�i�Њc���MU�A�2�#-��gVU^p�v�m|L;7�\�D���!M�I�G�����\7��v~d�3^�����Ԟz��T�[�dם��!��{�nNp�ߺ2r�j�pg���+ ���"n�s�y�&@Ex悴�Ane;�. ɩ��q�/��y"���TC��i�*�_r��?�D�C�(�N����x
A�W���.���v�����]}���X&l�z����ƍ s	�s��HL�07�K���鱀�z��	�H�n���m�k��M�ƍH��W�	�p#�;|���,>`�      �   �  x��[�$1��Ì�~ܥ���,-��j��Y	��T���/��RqV���cks�8:�'�.獧��"�n���.�H~}o�ȥ�չ"K�۳"[i@v�V��;�(��y�&�|J���e�1A�6y��+fLP���i�b�2mvLP���i��eڼ1A�6_��e��R˴���5m!�Y8��䰐-R�-b�#r�+��'����R�B��L�<���d_�d�V���U� k�A�ZWe��S��=�f!k��0dm��i��t�y!�K��iFcӐ���4d��6Y��MC�~jӐumӐu��iȺ�iȺQ�p�$��"��ؘs �>"�~�"�,��x��D�C�mx0���#"��S:� �ic�ls��s��\��<��]��B4/#a^>�ixK�{ӌۺ�!�ݺ�!�=��!�e�LC��tMC�7�LC�ǫLC���������/_陆/_�}�x[ϴU�i��]=�֎�$�����a6o1u�♸<�p3�9���Ť�N�JՉc)����1���R�v�[
�N��
��Ļ�f���+ŉ)<���kŉ�)�;q1t'>��������ŉ�)�;q3��[˜gz����i0�����R�pba
N\Lc~~��^�/�y�;S؇~�����:Xqwp��%֦����Н؛��S@wbq
��:`�|��)lwp蠼������fq��+�\:`}��)�;�<t'���_D��L�Z      �   �   x�u��n� @g���(��-C�.]�\�#9`qG��}I��V�%�!�h�^�p��K�%��D=��?�#�s�=<0� �n�R25�$�ev��;�z��d�0���VWg��Iy��65�*Vu�-�c<�KQ(
C�n.��L�	��L��)����^7y���\�}�Qئ�EU���������E�_��øɛ�:t]�4�~k      �   �   x�-�A�0���Wx��ؾ9ŝ�
#/����Rc.���a	�</<�rZ�v���H�����dm�~�l?��be�@z�x����Y��$]�����t�s�u�/��j�:�Sa��&��+�4D�iaDz �|B}`.����@����R"� ��[��|.�23      �      x�3�4�@�=... �      �   W  x��Zےܶ}�� [53����ee٥�Vŕ�R���$1CdI�������|I�i���ٵ�J��U��@�����M]���6�P{��
?�	�5�t�?��r^��Z]�*���Q���3��C��4��mT�VWƫ_�4^�ն�Ec�����N5��Ѻ.����~���F7�^v*L�������EK��BoJk���m�E76�J��)����e3�1���;��Q;k����Fջ���ծ���Ù~ܵ־W�Mc�"���G���8��ޛ�R���^^we�?o�k�&�5m���E�F��~Ѝ.ѥ����U���\��i�O�7��[��~Sq��Rܻ�nG;��sU�����D�F�1�6�K�Zm+�W-k5�|��_��\�W��[�a8:R�[ܢ�ö�pH�tޘ7�z�6y�M^*�N�q1L����*���j�O���7�G��5�4s��q�ay��:��_��&��;�<��^�@��\ ��/��KL��8�[:�INbn�d�|1.u]�������9d���6�Xm��l[��)��v^�_���&���V�t�eB�Ty�@ ;�����*�A".[��7����|B9^j�¡0�۪�;e2�t��6� ��Jx/�ׅQ�jOs����B�Y�OC1����օEL�?!Wಹ�=z+Q��2ي�9���ot�B��|j�������D�U� �Cy����b��V
b� #��7�˂�$#.��v�u_��� ��{g� �L�����Xr6�Ѷ���S���Xmc#^��?�U�<�1����n N8	��|�v�Ɩ��OC��������h���	�s�{��V�Gx�o�7v!a��IHG��Fn��	�p,ö��톮����ʆ�Gx�=���xݒ�X�Z?=�-���%�!��Uc��<��v˽�P�%b���TO�y��ǿ}��_�[�J6*��_�+��+]�.�g��p_�7z�R������h������K��Z�[��npDJoL�՗O��_=T]�ws ��䄙#om�	��l��?1.�C�C��G܈�Ƕ�%��%���I�G��0���U�Sh�<c�0�C���
���H'���6�'���xYH&���֖�=w#����-�-6(Qb��l�(�\�F�bZ"&� ��BVDR�0}���-haWWM� �Z=�<??O;��U��4�e)������G����R��pp�.K�
2I߸�x:�³����š������u0\S��y�SF��|�0��!{Q�
g�����R/O\#פ@��>�CV혁(�"{`13�/d�6�d��S��M��������w9.F�T�N�@`���[*s�#��u���S�B��Y�y/�k_P��j��[L���/ruH�}wt�\ޓ%r���*�,n˲�F�m)��{���6,�=�4j΋����jqq�Vחϯ/V�������:q�~v�z�\=�����zu5����곧�oae:@Ī[
MD�!�{���߷N������_);�GL�߅�P��^�N�^ֆ�S-�P����"��&*%�C;bZp$u�5�Z��Jc���7�� ���[�p��h�}�	��<��$F�5���	&eQ䰨�PU��eu��π|WQ=6�H%
���Ak���'<J�E�tQo�\�(�-x"���0�^A�,bqM]���<��x�ʮc]Ay�E
��b[`����C��y����D�=K n��ms��f;#f.������) ��//���j�^���6@�k���+��VF�mus�������J��!1{^��	1(-�zo��i詳	�|OzMݻ3��6bs��Ie!��EH>F|��9һj(��)U�nb���`!����-����=�������j�3��Z�����q����P�����i�Is�b�sB�`�"D�'ԋ
K�1
d�'JH����l��[ON{
��Q�7���Z}/4*�պA�Pҡ��Q*�Pf�,;�BMcE<:�k��a�[��|�O�� � 9�.���3E�#�J��NN^�#Z�Ò8�?�T�{(z�PA���UIGI��TTC,�8��llr|��Q�o!�?�p`d �nu3�l��

�; ���=�k�V^�wҥO����Ȓr�ӭwt	J�fخQn�|�� ß%�G�!K��6aز%fO·GP�Rh� o�K�>ƒ���e
�v��#�+���#�Mi-���l�$nw�v�p�P�y_J�}
A1v�<9m�Jƨv��F��$��,-��,[�C��$X�Ny}}�^>�X}���f�L�ם��8���n�g������O/�8�2dB�҈�c$�8�����L�toOX�k<( �k+)9�FGM;�kE; �:X��M��M���<v@5�bJ�b�$��dA�z��I�ϕ��:@ �Pڜr0'�
M(Lc�R/��S��{^�Z��O����8m]��XL%�#��15T�ϕ��˃��չJ�-'��un���I#��a��C7��y'Q�I���0^U�%?�#����(� �J���3�S��9�ˎϋ��tw�_rkA�&�B4�=�>��qC�{o�<E`.b�^i��Oӫ�H=pg��R�����^@�I��C��|2�L�ҹ��7r"{��瑳�(��N+�K�<��;Bv�2j9#tHK�m�(У�Yl���$ ��9v�'%����yLDq|c7`�}���ȟO��P�ĝN�o|��>������Q�6.����@lN��U���g3�(�-;�°���@�h�[`�����Ջ��4�����r}��8ͮg��Vo8w����	����RC����
M� B���D�Icd�g��4�VFyju�0F�?���B����2�G
J+P��&�,3K�Ũa����R��������p��UC�!R]N��a��9%Cx���1�H�D7�pK"=i+�*
������\�#���{���E^����/o��D����C�O���tt[w���XT'�n��t�ȇAk�'��{k���,�v ���`<Ne�VKǮ��(�b�g�$����32Nڛ\D�>�ql�6�ű��7��5�d��{0�|u�i�E�&a���}�ZiSU9$�	~t���n�P9�-ϒ���@�Ǖ��$�G���+�=ʼ���ܡ(i�MĖS�a٨\9�O$i!�(}��7����+��S�
p}�Г�:�l�8#��q�+� Ԕ���#RK� Q�h�����n�,.U"����;��?pJ�������N�:%��
?D�ce�~d�'Tb��fBu\��p=5T$��� ����`�[+�5f��xy�bKڧ��g����{I��Hg"�Ҍ�b�9z��z�9�gio��\#�����i!���z�\��&��\/f#���^mǟ���l�ƉDLJ �F���:�F��A�v(yT)2��E�
��N���D���X��!��os��5�]�����&��u��iʒ�~�<*���;���7䧹��9�H���Q��1ϭ>3`L8ְ�h�:�k	�uzף_&�t��%ގ�-M#чکT��aT���X.�.n�3��h�f8;h�|<�S�%���LM���$x�lR���e�\�8����4��:�D��]�ݟ�����!���{�B;�
{�|{G��*�L�9ܤ��V����)Hv*��~9Z�,.�S璷���щ�s����$��<��䇂<���,h���1:!��%/y�B�+E#�E�'J�ښ��B~���z�bk���?�Ҳ��/�q����=��[7ͽ���M��+i�DvQ��ó�����z�^��}B�������S��      �   /   x�3�4�4�4�2�@ژ�L�p���M9M����H%W� ��B      �   3   x���  ��0�'�V����_!�PH����ꘞ���A�𑼍����          �   x�u�[
� �o]E6�8�h���
�#A�B�����a��50��sP��s[Zi
���G��J����s�a)�J[���n�b�P�S�޷�e>=
�X��(�yk���q����}��C�$�C��-y��S٤>���}�ɒk�$9�MR�            x�3���TH��O�2��b���� W�F         �   x���9�0Ek��HY.��2

mc�d4q��E�(U����s�1�$\D��ƀ*rk�!y����Q�G4h������נ�;���SkS����%���On�fǃrb��~�'uJ�>�_�$�V�s?rrU$8�]P�:	�sf��-e�            x��]�r�8�}VEG=Q�=��t���iYrXv�ܞ����	 A�����Qe8�<�IbI�EY����=Y�dO��'B�^("����ޞ�o�_����ϻ��z�<}�ǯ�>��͏�?^�۬�}���~�}?�$9S�(yu�z�vύ�ߺ�|Y�4�����7١��~t�����}�^۟v�?cj����sU�M0��P���s�0����%[�!��������v��J�i*�qR#�8_�r��	�`	�4`������n�D'X�y����K��V���4��F��"�F���\��&\����5�E��sM�$�O |a/~��b�-�u���)K0I(���%�K����n�~��/tQf?Ve����{�^W��)'zA!�\��W�J]��`��P|�`#�}��ZRw��9T	ٚCmhg-A3�#�#I��ه������.1q.;|w���p�!�E��9GL�B�ҴC�l�'G�-� �	���%>"mr&�=�!)�M��XB+$M��� �� a���@Ul��޲�<��z;���1jYPqOX��Nqe��6|��|P����L���LJS5��b�{@�6�]��H�8a��+&l�����K�h��.R,I�ᰘ�a^1<�m�`2ߨz\&�����,��$��������=�%��nUVI����=yޮ����/�lh.�yo�Lw��4K�}�M�i�jV&����r�2�;67���;_��(&H�/�F@"��n��L]����t�a��$��m�Y� ���#
	|f0T!:�)���~��x^������5��~V��K�L���p|��t�:L�ߎ�EmX��Zd��R��4�~�HwT�r	���S4@7(�F�@-U���.�S�ˣ�Q���Y3��+W�xV����F�kUFbbs��G�&��4_�"�@\/Z(�����~�Gi[Y�x��6U#۟�$��_d�Vc��JOZY���Ô��6X1U��1��ǡ����i/��Q�Q�	�ΏQ P��w�^���H�~��]���ӫ�1��8~���B2zi$��c`|}~l��6?���������ja�珧F�ؾ�6O6�~�^�d�I���`�$�;���U�W<5�q�7lK�o��M��ah��Ur��k��z�88?k� �Y�� c)�2� ��A	�j�A���36.ŝ ��=�i�j�C�-���&I�`xUg1�p5��b����-G��b4�-	2@S������E^e��c�������
��4�鼰/
�r��Yz�,��*�eF�y��%�^��>P���qLu����)�&K�pL� 0��窻�4)Ƅ�aD8��G~��|��{��3ǅ����8(sl?��Y�����Ge�����S�r��4��~Vi�Q��(�5�-q�&/�5��:�v�P#�;�'�]fh�~k��(TA���,�e*h�s��l^�D��2)=Ac{Dm�"gH��y��\�X����y���W�!.:����E��X�M�Oa���h�{z��A�$�ʤ��f�v��<1{t�-����z?�����|��{�n�A���*d�����)Q�Tk}8��'�v"�����O��!��ʷѕ����:8M_;R�5��B��ݑ̃�~�C����3�!��h��w��P��4�ywh?�������_w���7?������۷
�\m����T���O>����nW�s�c,+����\�m�7�M��ǹ��[Oˈq�2#N� Q��
�O̫��6b�iub�\T��-�1=9d:�#ar>�撜�DX.&��^C�G�׷��O�ݓ쏏�*ٽo�f�) Y
�ھr�����f��4�\\�����!L��:����97��4��Q�Cׅn|cj&M �t �1����|� ���\5����\���	/��e�.1^b���\;�������,rѿsbL�+�	��@�T2n�lՈ/�U���W�G;b�������fS�a^1*2�ݹ�\w�~�pN�%R9ۏZ"�yCo��\I2�(1U�v&��{�{~�0�(Xc|���w�-8���7�=j���w���s81�`���a�5��#���ܙ%�w�׊aZ���n�ݠ��}���"c�Pݠ�u�[D�hW4�P?�f��.�l��i�k�P��F�y|�M�c@�zu2th���~�I��j.�&$�¼�UR	�%\�Ybt�%"c��\�ӆ��~T��q�\W�&�,��Xl7�����񉟣�C������&��	(mJ��Lԕ�	=�c;�;��n<��!����3h�����>ٴM�e�����EM���u�c��gU������|��aB��+6K!�e��8�ɂ�B���̔�$P�֔TΣ�����Y�=��̔�GB	t�g����2W��%�/"K�SE���HL#\��[�e9��Q�er�O��_V=�א��T7�E��w�����	�D\Y#��T��J��Y�p�	�T.�J��yt��Xd�P���dw�����i�ZU�1��>L<i#��ZEW��!E?��ܠ��,bܿ��Ѳ��R��V�8{@���*f����Pe�y��y$0<�X��Q-c6����Gs��8��Uscb`Cp^+%V�e��s��p�L�=f��nm�L�B�����.k�lܶ>�<gހ����'�nYed��l@���3k��U2�A5 ra���hsU<9�U�d�sg��W�~��s�Q	�eUf!�S�^��qZ��8����,�B��n��1>����g�c.����\n/3�'����G� �����h=n�UfrU�%����:����Vpp��2�_�����y��v7na������y4w����J 	5� �����}�O��G�:I��$X��ϑ�/����`S��D�L��0�����{Q�w���p0�k!��4� <"����um�>�	����
 ��޼��s����a(z�#4��B�w��i�øK�D��ة�1��"�����y����(��A墨��PBe4 gÿ�"���o� ���[..������rq���.�W�[b�0���\�O�xz���Ci�~�)eee�є}��
ǥu�z|���X�JBBX��#�$�%Q�#���3`�-a8���G��a�R�V#�91�ӛ��D� s{��*�K�%�پW�W��R�T�(�Ҿع��2Bm J��U}FiB��-#�.�s$_X]B zLcT�(�6�=�����[G*	DE|��>E�r��!���y��پ�������юf�)��55sKǅa�r��p?���G <�a�l�#�v�8�@�m�A�(��4|4���5�� �߶��`\c`����� ����K�yL]�Ź}/j/�����l���f�Q�jV:��k�4B4Ψ��7�C�o!��FH ��{�|���x1��� E�����XA,�2@T#��X:��7�!)�7��A0�z��K,g���������z��=���&�øh�]}��t�ѦT1��e>̄ö@*�����n"xɅ�|ݧf�>�9��j�N��
��O��hz����v�܈^��9�2���Y��oÓ�l��}�U��pSS�,�Q�J�ӈ����;1�Hx�}��0��4"1@H��C�_71b賍I(Rٽg�h�aˀydb@T!
���e 1T즉� �W����Y�jߋ	9I�B'����H��q�)!INe��d�d5�h���]����J���&��	(m�R����:�0��ȹ����MH4����1�d�6A��4��	��u���K���Gq͗���49�W�4�K�ԇT��=��'u-���*�*ng�,14��ھ�P��6�qj�ۀ�S@iP��6��R�y!5/�y�����`�n4I���#���6A��D8��	��a|L�\�#s�d�齊��j��D�پ'B~��/TR���N]���3�X�+�Z��Նpfʇ!BPz
(mJ���&��P������q�xtwQD���Ij�Y X  ݳ�� D8��M�e4N2}�')0#S	� Ao�-��*"�K����پ'BqBV�4�Ya��pbg�׉Qe�HZ��:��<J��J���&��	(m�Z��UͽD�]F��y�b�;VH��O�]��$�g��~�C��D�ܚ���<(�}�}��g����|BXfY��K����w�wB8gB螶	���$��+!�N�UD�����Q�l��:"ˬ�V#�F%\r�^�V��b+M��a����J���&��	(m�f�V�V��|D8��("��߳D(��'��	��&�I���Xg�<D8"��a��m�p��^E�zɔ�|�lo��7��/��?E<M�            x������ � �      
   �   x���Q� D��Ð.ۢ���?X��T�Ъ�w�H�����!�����O�yz������_7���İ���`����`�v#X)����Ԑ[��#P1��Pw��u��;��s[ZLZ���XP�k)���&A.����)Bvj�v�
�9�I�M^�I�6�\�j�!�\��Z)�#C��         r   x�u�=
�@@�z�s�]��a�HZ����BD�l���c�2«^�Ix�5�g�-e
B��8J�,N�,�LN������b[^�lc^��\��^]�t;�F6dsU'�Q��C�/|�#�         0   x�3�4�4�,�H,JM�+N��LIMK,�)	2c�����&��c���� �z�         >   x�3�4202�50�52Q04�2��2��3�0�)�D\F(�V��V�z��8�!�b���� �2         A   x�3�4��Ģ����|N���2���&�d���e��s�	��1��1=&@q#zb���� ���         <   x�3�t�K��,�P�H���L��4202�50�52V04�26�22�34��)�D\1z\\\ ��E         �  x�Ř�n�H���S�b1 �*�Efg;q��-���%�$UL��H-��Uf;/0�y�y��E�XR$�Nz�E2i�"���sI��RG5��,��k�f�R�6�)�{�i�S����n�L��;̧�K��8�7��/�9�s�ʁJk20%��&��4UU��2�<ri����Ȍ��zDƲ�UI�F׊�����9dO"�>�����6kW*{f��c���C�9x���B�n��{�ȇ�n4e����T*߳5SYf��}xC�����k����gGej"kS»�������ȴyx�u(�x5	���79�_u/��#|�RY�S�	UB$x�kʸ2�H�(q��A �C"�>z���W�qקv�i��S|y��;�?r~���s��$�%IV$�fe��۬��ۖ�[�uԌ��-�'J6�4�&��=��Uϔ#c���j~�HVxL&ˡ"3Y�[���U�-��sNM�7v��!�R�C�<���ꁆ��=���}��;,����}����,5�N�x�,�ur8��Du.�pvo�B�䓞X��^3ቘ	�£>���a!�D!ЄG���'�o���=��s:��kp�l�Ҋ��[��v�]���V]��	`�g"�[|��R+�O��e�z�b���u5��j�7�~���&2�s��vM.b<���!��9��+\}��9�e�)�jx�RJ�$���(���A֨�$�Q��]�����8��M�q�H�l��\5���Uθ�SwU�ƣܱ�K�.����~���#p�g)�ߡ�-x��Jfc�\�����'8�#�K8k�\�M����(�w��㩚����_����rЌ�G5?��G����́{<F}94�I��8?D9:@9tmq��[�+MW�LmA�A�ږn�p݁�lf;t��a3�}v�����qZ����Y�k���4�U(�L�cU�Zf+��!��J�Q�xy�Je�;=�1Q�F��l�۶�����@W�t*�k}���RE.�)P�§H3��8��Ћ�$�s�'��Gx�<�I��6EBu9�t_9Y�6��Q�jG
w�f�n��na��6�r�L��|�(��<�.K�|E�a$��X��2y�3"�u�U�a�t��9�j�9����n�]�"�����O�jb��Dn��	��.����!�xkS9C!�~���K�8 �q�B���Ժ������bo��-��[.���/��HeW|�͖�����#'���D���մ������~�o�3�hS9Q��^.�va봬oUYZ�X��O߉����T?��9|��{�ܢ/�^AqhF�'8�l��� !
�q���৓Tr@��a'D�.z�F{�V��t4o�������ӿn
�l����,���j�.^�s�:i�a�U�.m�b�E��
n���c�m��.�i�%���[�z<���Bl���!���'���'��Xf�S��}u�U7 .������7x�(�̥���F�=�r^��{u>0�5d=F��Z��j:2eN�{	7��*r��H~"aU^�ہ'�0I��$Y�,��)�����7�#�Cxi�����3�q���V����Tik�-��ϛ����Rs���Ț���S�*a�;���5��n�V��F6��M|{<
lf���BM�����f�,Q���0e���C�����64G�a��=���%O>�H?;��aX�mi��4�{祱��΁�Ӡ�v��7�e�2w��lg������+�q���vn�v�t��n/}��ɚ����.��,0�-��ľ�S��#_���T�i;.E��SX=Oxxrp(f���>���}�n3�jRj�Z�E�-�bY�H�����W��|�;o��K�����/gw�*'C��|�|2f�9�
m"o�Iޠ��N���NTv/��O9f>,��;�B��š��l��j���M@$O�~rp|f��f��a��yk�$\/��~�O?���?����_�;�14�غ��]Ufd�\�A�\e� �4yj��<?�x;�XP@�"����b�`Xk�?�1�u&���4����I�t��pK�-w��U�=��@�f��C� �<�������ߩt,�6�!�y�Ⱦ��5���i�M?�K�����1ܵ��Q���PL���x�D�G�Ѿx'��^�z�?���            x������ � �            x������ � �             x������ � �      "      x��]�n�F���<EO�g!u,;v!�]�6��6��Y���M2$[��0�1��O�u�Y�n�m���$Vթês��Օ�M['��eт���7h�M�����4�V�89�@��M�bz�a��y���2Y��	�5������g.h��R��4MZê%��A��u��L^�f��u��V
�#�M�'7/�*n�%� n��X����u�VI�\�?��<ϑ�E�7 �yp���a�93��I���|�";I[�P�$R51z?�/j���h�ӓc"/��Ia�����5Ȧ'm��Z4��?Pco-��UU��[Hue"�hHS�����H�9�薶RE�n%���W�8�wY&�y�R���LQ_ޜ��
@��
�Ⱦ����M��r�=9!��A҂���z��I_WYg:+�k�ЭhY ���̺A6�i����������Z���WH/aO�5�[M��%,��(Xs�u=��8���"}�P�5~��*3��Ҫ�Q0� ).�E�
��@� �B�ɊM+G�у��<O��8�3�H�n������I�2����K�=��k7[��i�ٮ�.��ki7yJ��+�e��@��a���k�=	�� �ˌgU�4�e�)u�G�s�"d� ��e�Jоf՜������ꂤ_@Lˉ��Z8l�!�R���D���h�𯫳����xq�P) 6����M��N�<�A��jH�9Uiz���%�v��U �΋���������U���\6�U���`	��Ɲ���Z��Io�1��Cl��!v���;�c,	�ݣ+�j��A�6��oh���>�[��D�߰Y��7��O�u$��HQ��#Yk� �e�����޽J���6�S'k��LKlT1af�z�V�B�����4�Q��O����/�Si�ݔ�[;+�h�Q�I�����H&�;>����^��l�E�팪8��?<@�w��D��F��ЮX�@��5=y�d$�QY����<?J�4��uӖ��Y��ɺ�HܚD�/�fG��+�a7b������#���s>��>�1�;G� �}�4[�^�����!r�\���-&2��Qss�>|�����
!� �n�P�������041�{�ϳ��)^M���%����8��v)��;�#--�Rsw<&������������6М��q���35<��͟�>JoTeX��j۵%=2��0�ݒ�Ȥu�?t:�}Rsk�a6�l���������!�����t�{�9���`4����1l��eU��9���C[����c���1��=���]���S!=�3 @�6B�"/��2�f��ԊT0l��3̘�-�g��q��$;�:�����S��y׽+Mn�������ϡ�K /����^%m�!],?i���۠�Z�m����TKg ��$.�����jp���`�Ly��nZ+�0_�6AA<	�S���1��u���9��K�c� b��(�9���~��N�����9@8@y���y��!�1����˜XƜ���B�0'y�>�z�cʻ���7l�-�y~{�Ǻo��.q25Lke�4�&?s�!y�$`�tI �$A�K Fz���Ɯ=��C"�<�>��G�&;����2֤����[� �ch)z�uDH�.t筯�(f <ͽ����{�2��+��E��5�pD+O��k6�"��;{�S�M��`'�9������R�B�H5�I�P`���
Px`���EPY�$���DW��吳9���������҃�� �E�����L:��q2��p2���@�{�L����5��fu�h����y�G�}��U�~z���wx�95�{N:ٽR3x�5����� ,�+�U�T ?v�-~>�|~~��%�`u��:P�g=�y�U�:~5d�~W���9���|aWmA��cW*t,����jn��&����ۇ��/A��}3���q�4�Ƴ��P��ܪT�u�Ҿp���Q�ot�͵�ȡw�w������K����˚v�	��Pb(�5�
�v"�|*��=c�����l�t��Q=7�Ǻ��w��/�MVU#w�h��u��t�����oO������~lR#܏̈́o~K����L��h��R$K��&7�M���t#�
&���C� 1��iF��yk�'zI���U|���''I��43�7�����i���'\�yy�,h��$�� �`�B�
5m#��a סq��q-l5�L�z��-�5�"�X�j�0]�r7HM%+6	n�?C�����jB�|Q��q��'�,����e���B��jž��yy2l/d�Ih�=O=`�}:�T�N����p#.��	P��.m�eo5���MH�C�Ӟ��p������"t}bе=�6�}��E_����e�T�P|�Lz��͈��v؝4�x�B�����X+����Ha���Sכx��:��Me�I]O�+S�jk�9��Q�?�E����=v+��ޮ(�[y��ҙ N����Q���4{�2y�	�b�����.��;`\"�k6٠ �2�.Y��
J%{Z�*dL%N�@ͯe2��L��Y��;�/�+�R��.���!�+øL���Q�֣;��;I�WP1�E��ý�*ԋG
Ћn��e�z��%�y��2�T���Y�0dlM8�X�-�Ѡ�Tm�fFD�s�{�f?8Gرl�J[��{*�*XU�& XQ\l�[���A��L�aq��*Y�87%�������j��CϓvY��J�&:�A�u�|���З6?��Y�ڂ�?����^��Z�m�jiR%)lo�&�z�B"�^J�̑y�C��չ����|�U�']C�#ɲǭ?��_\g�$ B�n����#l�lo?�+�����$Q%���A%8PP}�q�E:@M,ej�&����]h�GZB�NS���<{9�-4��%��9��Q��DG�SG��E��ü��C��x�`���.��=(��@����������L�9;�7��E�T�jC�&rc����ڹ������<_��(� �Y}��0�O��ɯ�����`�";#/� ʺ���HxU�M��g��@:�].JM�0dv-o���`��dS�Nm�$V�M�8�τ	�J��}�)X��.�SQh-X�R����a�&��R�'�����dU�Ȅ8�4�TR�PUomxW��9�?�T���J��j�����MM}����;)��Y]!�q�uE� �Y����">DW�G����QtU�hWJ�<����t�-b����Z��v��L��wP��, �)���r*�9�|�9;d��N^]*�X�D��T_�vv(�xG�C-��0�ܙ��3�h<<�L�]N�Y��R
O*��?�����^�-�	y���Z������"یJ���ڠ�u~�{Gu����L.%c,�]Nv0��F���P�<�3'L�J��g��G�����Z����3#+$�-
��H��_��Ju�e'��a�sL^'�����N��U~�_�+g3H��X7�9φ�`$b��2Q�Á�!���V��&Kd�٤]&���$/�K-��&���7��� ���o��������d|��fe���w;��9�2�_$(M�	jLT L%c��䰸��儴�^�	��D~�׿M޾y1��w��o������/?�DO��O�Iq���3B�I���t����.�
���ˣ��uR�;�giZ��vb(��ys�c��F�y�4 آ���=�L� ns&��:�w�&�f��9HPg�9L/'�-p���B�Y^�4�Z�HI/���ǟ�;��ԯ���dWI���^ȡT�Zb�Q�����0/H�����%�b(ck> ��8�P~F��� ޗ�Y���fuR���(8∛O���
5?�"#N���Xn����z��c�p���#��ϓ��^�ĺɊ|)�P�WH~�ō��3��*�ey١�"}'X^ԩ�T�,/?v��2�������yW�4ÐzI	g�l��8�:�`Z�M�h;�@H����=�X�*(�%Q���-�x�(�sP����� �
  �i�*���d���B޷�#�E���/|�e�W�Cj��m�鲧mQ��M�.��z�;V�0���D�Z�2N=�y[���G��|��/
ؖZ%~�G;+�� �^��ğ��\y�e�ut&� � �ZP�`���,�O�V9��R������3?�P#���ZT�hg`�i'R�S�:���VJ�ĞG7b�֡w�`!�f��]�?D3&���ůgSk|v�t��`�j��v/U�7�w�����w2,�C��R�]Or�AS�l�5���2	L����0��ch�JRU�6bi��FQT
��سb��&���.?�}ض�{���C����15TR��S���Y�VX�0��zA�@bϒ�DSFY�ᢃfЕ�R�:Oe�G
Z��vjYk�2u��IU|���V1k�J�0��fCԖ;�|z�c*.�D3u��D�Hx���g�{�2f�4�%�!J򍃦����1�qI5.��%Uϒ� ѱ�$��5U��^ReC�z�6~�
���Q�`�VqNQEuVh���k)Xp��J8%�o��©C���
�������Ǐ6��@RL���39����Ĝ��ɴ�5jB�Pg�q�	���;$_6�q���v��m�q�Jöˉ/"X��߫�K��Uʮ0�*ܖI^$y���9"	CJ����"n2����ɢ�8�
W�ӑ�vLG� :�v�GG�ٔĝt'�D������Ex��rS��$_ݽ�\r��}q��c�>M��A�*[--E��f���iEק�E+�(��'(h��A�8*ad��8���YR�8�)!=hUR~Q�Z�dI��I
�A�ϡD>����i��p* ��E�UJcqc�&\3�Jl�� U$�_�3�|X�a�	��'��2�;���qԞ���f��.8�GKo��|0�aO���L����eC\u}'�C�/h����Z�_��GX�g���]~��Z��)wԮ����"����g)�CJ�-��ϓ*�u|�XMWW�%@���9:Y%��$?=H��ɝ%s\ fsH���!�7���7F��G�ٱ��)_���|�<5k^Zf��"j�]{+8�y��G&��e��d���8��َ�����7,w[W1KCR/�ϊ�-�z,ɓvG�$kwX��ڮ�J��p��+f����q��swURG��C�Í�^s4�����Z�[��!������	|�ƺ����H�7�� �=`�=� 9�/�Å6<&/�3�}eQ'l<iw2"�vx����7+�CT���"mE�q���k�*�&�,6\����݋�v�q���%��34 �r�C�qN��k���Ce���᫋��>�E۪�F/��b�!uV�q.j�*��}q�/��y�/*TȖ�3�Q���Q�J�<[w�
��t����,0�>|c-�!�x�=�lo&i�B�g����!��QfN���q�W��v��nOt#������w"߹�|�!��]L�KT88opZ�:㡲�	�hl�-�����G-ܛlC$Dʱ����|�4IS�4� '���q��!��ζ�m|OIk�]��Oz��
֠q7�Len^�d p�*q��H�8��8�Yfd�{{�X�9��:�opTY�,{P
>�f��G�{�\4����Y���e��Hh#�݄�F�Ic$��4F�I��!�2�9��a7=쟩<줇�!��_o~�����_��Vr��{A������i���z��e�q�/��W��*st�7��i�վ�#z�=9jQ�e�&�r<��Rj�⯣^p����.A��m0}�p������O�p�7��-iG��|����O�~����cC�㬱lx����+Ϩ7~^�|��|��f�y���v��[1�Řvc��k�-�]q��;������xw��!1Ɖ'b��q"Ɖ�������rf�k��}�2-����<]���H���S�މUf�Q�UG�uo�5h�4ʉ!;D�k��K��4a���� ^,���R�PP��_�ķ9���ƒF�[A���]&�����Q�
�����cys�����Qn���K$�8�0��Q�0�� �S�N�S�s��x���[?%u�C�R����A���>g���9A�RXfSs��0�\�Z]0�嵐�������3�N�!\I')���8�����{m�Fp�>h��1q�{*����WH��HTX��2U���t|jr�c��2��Ђ�{{;�`]ۉ��֑��{J�������w㛝Lb����2�ĉ��=�Q!�x�錤�s��a��ޟ����E�%̳��A'�vG�+�2N���E�o�!ۻ*լ�"�U���^FzB/�3D*e�p]O%0پ�BA=��⬰�"ovn��qQǦ��̣2��1`�ƀ���bX���$��9�ƛz?��p�=��E^�'����O�hI�����{0�N��P �v.3)j�~�I;�M��.M��q�{+�~�L�1�'�2_/dǣ<1p���\�%����T�r^ק��sNYz�H�x�8�,W ��E�uV��f�Hg>����HѢ&�W���������.F��gt .�|�{L�����H��~�5B���5
G���Ё^K���`�� L�u�T�'���"d�A��}3��+��O�e<�W�6�;A���:�c������%x����e�8)i1�E4��o��(��}��U��]�a~O����g_|����Mߺ         �
  x��_��4���O��90�\)�ޘ���t<��$�9���L�;�X�e[���%��K�+y�ە%˷/��8�D8����ϋ�{w^�J�P���b�I�K��G�.�\y[q���_�S�C@�����P��OI��8`��c�KBlWL9 ���q��U��Bh��!7�[�E����,�V^L���/��u�,N�-8��(J��ф{!�h�h�hJ�Tz!mH��2�(��3o�{�w�O�
 ���h�� H5���()��o��ޟ������p�=F!fi��SJ�U�}����8/(yĆ��خע�@b?��@Ҕи����|ᝈ���<�$������^�7��ϒp@R몐�J�l\yo1�q��e�U"��t����FJY���q�y^珟?|�������k�}Ӟ-P�E�@(�6�p kFŽ�C�!�qHx5d��TcI���&'E�8������%$�s��͸K�ǌj4|U#ڴ��	�;���y1p��R�eq͐^�f��a�v�Cޠ�W��-a)��1#�#�3�:��4N�4}�,��������&��{�ޑ|*�GFxm$���A�kiz�e��d* �,cB?B�.C;P�vi���Fx0�(
�L+Jv�
���
��^QZ���q0�@O}v/�����"��o��1���l�x���8��h�s�&��
��>�ra>'�]�+sN��~]#"��i�$�ِ�/����5���E��ւ0�Қ=˗�n�M#J�/�9^şq*������\�����Y�.��YͿ"�]�t�M�t������s��jv�'���V��n�����|ܒ���,�(c-/�oi��� �����(]��PipnP�U��ƫT�$�Ӓָ�J��<Z���Tr��ZR�RB����Yٔj���~�c�ƥvG΍=�@���]Q���������Z~��	\�B�S�G
�٤򩆽R{�B��}�f��=�m v��E(hr��P�(xu�Z[H��FV�~�������?`�D @�#CN�\��w�Ľ�_���2U�����R�[
��{�{��9��ӄ�D���u�u�)��\���@���\`p��<0�Woc?���:*H��+˰E^c� �k�P�ܳy���y�%��}�23RR���9����n�N�n��l&�^꬯΁���9�,�{��
6�A�3�8{�8���:��vO�1������?�f��<"'�����Si>�f�#r\Խ䨋'Awv�^=\����(��ǫ�;q�S)0?�`��#�@�1j�nNx��	�fx��o8Uŀ��s����r��Be�����m�%Ƭ@(�QFt�VS~Bܒ*�F.I���ejd�2m��/�I�����-��"��ԏ᪋�H���⡑=�04j��0%��;V�.P{z�	����/C��`S�6A�ʰ�W�*G�K����w���;��KO�@��b�(���,���Y��A�>�p�A|�(=Ho��=~��p1]?�no���CR+�&c�B'�:�o� {���dO9]�C����%t��I�spp��W�E|�-�0�y3�8@���"n��t����e��Yd�ne,��G���q>^׷�����5�����:�,��g��K���Y��E[}p�=yT�Aҳq@�ߞ^K�(�`���W~z��̠в�ds���KE~D�{�Ϸ75:a�)�ـ8$��Q��)BT�����G�*�,?�He���(4�{���:����������O������0x��L��T�lq�X`���[@�m2
�m"l5��_�.�geO�p7�N�A���p��4�t�0S����-J�j��
Q5�0RM��h���M�������?����IW��m�3R�/�ӭ��}U�S�iW����T6��^��`���~.*����5\#�&�Eo�i��Q��k����E�,��9C�z":�[�w�jTc��,�*�6e�R?NWMs��o�6gA���ã�]��c�gG�1?�Bd���S�(���M0O��%���Jv�6/tJ;eŚ"�3�+T�m�5&��~)@%�.+3��Ϣi-�8.�؜�0�9?l��Z��_����� �d�r�Ъ�
�U��ʪ,�q[I�@"�۟����)�c%s:z�������i�R	{�6�)�	_�Cx��9؇$�<��m�$%?�w"u�"CZpR��a�Bjk�躈���%�3iCCo�	��e�./�K����_��M�9yPOz�bxo�u�k�n��̓Uu�rZPkÂ���t��ߨ��:{���>(�6L��+��e�(Xh��9�<��ip+��pwm�,�ٍ�S]��"�2�K������M=
��+5ے�o�N��ϑmI�7c�A�#�Ί#-��r�B����t�������Ue��4iUV�o�6�^�Q�H�t(�n�!�}N�)7`�1�k|�1�t�E��x���=55�r�*�jQ�\��[d��)��Tr�%F���?u�����>����ij�$ʕ�j�ϴ#���o�ı�xVcU�m�(߾��qk�����bANS�:
Us�ӈ�鴷��3���t�q�y�������f}��͏߮�߼��[�xw��������_����7o�܆?�����͛����`����^�|�? ���            x������ � �      $      x������ � �      &      x������ � �      (      x������ � �      *      x������ � �      ,   q  x����n�  ���}�������m�j)%C0@����mv1��C��w@�nz}��0v���]/\��W�x����7R|p�o֝6�DxW��[H���6�l��6<zR�':�PƱ�{aN�W�Ś�rû?P !����sB*�[�Ә/�� ��A�O~zJ�*V�l��k����Zy���o��5F�a!��cz�e$�ǳ2�w�k*�"�k)���O*�W��h$oN��r�x�\
�lyҺ/�X�A�^l'z.x,֠��.�Vp�+?h���+�z~�K�f$��G��V��Lj&�h�(��f�S;>�D���A��$C%��������@�9M��V�M�A��WI�6I��E�!f�U      .   u   x�%��	�0C�oy�R�y����b��=�b�_4�j"��cVFubWNu�WV�/��%�5�4H+�mu�Y�����empX<��ws�M�4x-�Z�F�R����O�R��d�{"��#�      0   |   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�kd�`hjelhed�gfi�S<����8J�r2�qX[��������L-p�Cl����� UEe      2      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x�3�tI,�LQp�O�L�R�S�K�2�2�9���uu�L���-���L�q����gpbQb��Sbvjg1��b4��8�`cR\k``e`�gdd�Sb�	���`l�Sbp� �#Wo     
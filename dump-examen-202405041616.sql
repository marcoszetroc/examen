PGDMP                      |            examen    16.0    16.0 /               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19125    examen    DATABASE     y   CREATE DATABASE examen WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE examen;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    19163    activos    TABLE     F  CREATE TABLE public.activos (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    codigo character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    cantidad_inicial integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.activos;
       public         heap    postgres    false    4            �            1259    19162    activos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.activos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.activos_id_seq;
       public          postgres    false    223    4                       0    0    activos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.activos_id_seq OWNED BY public.activos.id;
          public          postgres    false    222            �            1259    19172    bajas    TABLE       CREATE TABLE public.bajas (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    activo_id bigint NOT NULL,
    motivo character varying(255) NOT NULL,
    fecha date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.bajas;
       public         heap    postgres    false    4            �            1259    19171    bajas_id_seq    SEQUENCE     u   CREATE SEQUENCE public.bajas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.bajas_id_seq;
       public          postgres    false    225    4                        0    0    bajas_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.bajas_id_seq OWNED BY public.bajas.id;
          public          postgres    false    224            �            1259    19151    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    4            �            1259    19150    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    221    4            !           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    220            �            1259    19127 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    4            �            1259    19126    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216    4            "           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    19144    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false    4            �            1259    19134    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    19133    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218    4            #           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            l           2604    19166 
   activos id    DEFAULT     h   ALTER TABLE ONLY public.activos ALTER COLUMN id SET DEFAULT nextval('public.activos_id_seq'::regclass);
 9   ALTER TABLE public.activos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            m           2604    19175    bajas id    DEFAULT     d   ALTER TABLE ONLY public.bajas ALTER COLUMN id SET DEFAULT nextval('public.bajas_id_seq'::regclass);
 7   ALTER TABLE public.bajas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            j           2604    19154    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            h           2604    19130    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            i           2604    19137    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                      0    19163    activos 
   TABLE DATA           l   COPY public.activos (id, nombre, codigo, descripcion, cantidad_inicial, created_at, updated_at) FROM stdin;
    public          postgres    false    223   �3                 0    19172    bajas 
   TABLE DATA           _   COPY public.bajas (id, cantidad, activo_id, motivo, fecha, created_at, updated_at) FROM stdin;
    public          postgres    false    225   r4                 0    19151    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    221   5                 0    19127 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   :5                 0    19144    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    219   �5                 0    19134    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �5       $           0    0    activos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.activos_id_seq', 3, true);
          public          postgres    false    222            %           0    0    bajas_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.bajas_id_seq', 7, true);
          public          postgres    false    224            &           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    220            '           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 5, true);
          public          postgres    false    215            (           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    217            z           2606    19170    activos activos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.activos
    ADD CONSTRAINT activos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.activos DROP CONSTRAINT activos_pkey;
       public            postgres    false    223            |           2606    19177    bajas bajas_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bajas
    ADD CONSTRAINT bajas_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.bajas DROP CONSTRAINT bajas_pkey;
       public            postgres    false    225            v           2606    19159    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    221            x           2606    19161 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    221            o           2606    19132    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            q           2606    19143    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            s           2606    19141    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            t           1259    19149    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    219            }           2606    19178    bajas bajas_activo_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bajas
    ADD CONSTRAINT bajas_activo_id_foreign FOREIGN KEY (activo_id) REFERENCES public.activos(id);
 G   ALTER TABLE ONLY public.bajas DROP CONSTRAINT bajas_activo_id_foreign;
       public          postgres    false    223    225    4730               t   x�m�;
�0@g����$�-�f��|�j�,�����Bh C���=���Z�k-+�3_�+����G�Q�8i��V�)[g���!�1����f�^9���}�~�'�\S!e�@w�"� re&�         �   x�3�44�4�t��S(�LIT8��$3�����@����L#]S]CK+c3+cKlb\F$dne`�M��h�!g��E)@s�`d�M���#��bbhe����)� �����|�&��c�2��
a�0�,�e�nDDp U�b����� �(g            x������ � �         �   x�U�K
�0E�q��"��^
%Q!!�b����Lj��\ă%�`[��0g��x�U�]6�r�R�'�Y��+qgA#�풇��.��tqp�At�}�ܸ�u}�F�	=�b��lҠ3��1��*Dm            x������ � �            x������ � �     
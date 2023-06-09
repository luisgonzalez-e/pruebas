PGDMP     "    $                {            t2bd    15.2    15.2 B    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    17171    t2bd    DATABASE     w   CREATE DATABASE t2bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE t2bd;
                postgres    false                        2615    23179    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            T           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5            U           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    23180    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false    5            �            1259    23241    defensa_reino    TABLE     f   CREATE TABLE public.defensa_reino (
    id_reino integer NOT NULL,
    id_defensa integer NOT NULL
);
 !   DROP TABLE public.defensa_reino;
       public         heap    postgres    false    5            �            1259    23235    defensas    TABLE     f   CREATE TABLE public.defensas (
    id integer NOT NULL,
    defensa character varying(45) NOT NULL
);
    DROP TABLE public.defensas;
       public         heap    postgres    false    5            �            1259    23234    defensas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.defensas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.defensas_id_seq;
       public          postgres    false    227    5            V           0    0    defensas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.defensas_id_seq OWNED BY public.defensas.id;
          public          postgres    false    226            �            1259    23229    diplomacias    TABLE     �   CREATE TABLE public.diplomacias (
    id_reino_1 integer NOT NULL,
    id_reino_2 integer NOT NULL,
    es_aliado boolean NOT NULL
);
    DROP TABLE public.diplomacias;
       public         heap    postgres    false    5            �            1259    23206    karts    TABLE     �   CREATE TABLE public.karts (
    id integer NOT NULL,
    modelo character varying(45) NOT NULL,
    color character varying(45) NOT NULL,
    velocidad_maxima integer,
    id_personaje integer NOT NULL
);
    DROP TABLE public.karts;
       public         heap    postgres    false    5            �            1259    23205    karts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.karts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.karts_id_seq;
       public          postgres    false    5    220            W           0    0    karts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.karts_id_seq OWNED BY public.karts.id;
          public          postgres    false    219            �            1259    23212    persona_tiene_trabajo    TABLE     �   CREATE TABLE public.persona_tiene_trabajo (
    id_trabajo integer NOT NULL,
    id_personaje integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_termino date
);
 )   DROP TABLE public.persona_tiene_trabajo;
       public         heap    postgres    false    5            �            1259    23224    personaje_habita_reino    TABLE     �   CREATE TABLE public.personaje_habita_reino (
    id_personaje integer NOT NULL,
    id_reino integer NOT NULL,
    fecha_registro timestamp without time zone NOT NULL,
    es_gobernante boolean NOT NULL
);
 *   DROP TABLE public.personaje_habita_reino;
       public         heap    postgres    false    5            �            1259    23199 
   personajes    TABLE     �   CREATE TABLE public.personajes (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    fuerza integer NOT NULL,
    fecha_nacimiento date NOT NULL,
    objeto character varying(30)
);
    DROP TABLE public.personajes;
       public         heap    postgres    false    5            �            1259    23198    personajes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.personajes_id_seq;
       public          postgres    false    5    218            X           0    0    personajes_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.personajes_id_seq OWNED BY public.personajes.id;
          public          postgres    false    217            �            1259    23218    reinos    TABLE     �   CREATE TABLE public.reinos (
    id integer NOT NULL,
    nombre character varying(45) NOT NULL,
    ubicacion character varying(45) NOT NULL,
    superficie integer NOT NULL
);
    DROP TABLE public.reinos;
       public         heap    postgres    false    5            �            1259    23217    reinos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reinos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.reinos_id_seq;
       public          postgres    false    5    223            Y           0    0    reinos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.reinos_id_seq OWNED BY public.reinos.id;
          public          postgres    false    222            �            1259    23192    trabajos    TABLE     ~   CREATE TABLE public.trabajos (
    id integer NOT NULL,
    descripcion character varying(45),
    sueldo integer NOT NULL
);
    DROP TABLE public.trabajos;
       public         heap    postgres    false    5            �            1259    23191    trabajos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trabajos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.trabajos_id_seq;
       public          postgres    false    216    5            Z           0    0    trabajos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.trabajos_id_seq OWNED BY public.trabajos.id;
          public          postgres    false    215            �           2604    23238    defensas id    DEFAULT     j   ALTER TABLE ONLY public.defensas ALTER COLUMN id SET DEFAULT nextval('public.defensas_id_seq'::regclass);
 :   ALTER TABLE public.defensas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    23209    karts id    DEFAULT     d   ALTER TABLE ONLY public.karts ALTER COLUMN id SET DEFAULT nextval('public.karts_id_seq'::regclass);
 7   ALTER TABLE public.karts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    23202    personajes id    DEFAULT     n   ALTER TABLE ONLY public.personajes ALTER COLUMN id SET DEFAULT nextval('public.personajes_id_seq'::regclass);
 <   ALTER TABLE public.personajes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    23221 	   reinos id    DEFAULT     f   ALTER TABLE ONLY public.reinos ALTER COLUMN id SET DEFAULT nextval('public.reinos_id_seq'::regclass);
 8   ALTER TABLE public.reinos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    23195    trabajos id    DEFAULT     j   ALTER TABLE ONLY public.trabajos ALTER COLUMN id SET DEFAULT nextval('public.trabajos_id_seq'::regclass);
 :   ALTER TABLE public.trabajos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            ?          0    23180    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   2O       M          0    23241    defensa_reino 
   TABLE DATA           =   COPY public.defensa_reino (id_reino, id_defensa) FROM stdin;
    public          postgres    false    228   �O       L          0    23235    defensas 
   TABLE DATA           /   COPY public.defensas (id, defensa) FROM stdin;
    public          postgres    false    227   �O       J          0    23229    diplomacias 
   TABLE DATA           H   COPY public.diplomacias (id_reino_1, id_reino_2, es_aliado) FROM stdin;
    public          postgres    false    225   IP       E          0    23206    karts 
   TABLE DATA           R   COPY public.karts (id, modelo, color, velocidad_maxima, id_personaje) FROM stdin;
    public          postgres    false    220   P       F          0    23212    persona_tiene_trabajo 
   TABLE DATA           f   COPY public.persona_tiene_trabajo (id_trabajo, id_personaje, fecha_inicio, fecha_termino) FROM stdin;
    public          postgres    false    221   WQ       I          0    23224    personaje_habita_reino 
   TABLE DATA           g   COPY public.personaje_habita_reino (id_personaje, id_reino, fecha_registro, es_gobernante) FROM stdin;
    public          postgres    false    224   �Q       C          0    23199 
   personajes 
   TABLE DATA           R   COPY public.personajes (id, nombre, fuerza, fecha_nacimiento, objeto) FROM stdin;
    public          postgres    false    218   	R       H          0    23218    reinos 
   TABLE DATA           C   COPY public.reinos (id, nombre, ubicacion, superficie) FROM stdin;
    public          postgres    false    223   S       A          0    23192    trabajos 
   TABLE DATA           ;   COPY public.trabajos (id, descripcion, sueldo) FROM stdin;
    public          postgres    false    216   �S       [           0    0    defensas_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.defensas_id_seq', 4, true);
          public          postgres    false    226            \           0    0    karts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.karts_id_seq', 13, true);
          public          postgres    false    219            ]           0    0    personajes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.personajes_id_seq', 13, true);
          public          postgres    false    217            ^           0    0    reinos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.reinos_id_seq', 6, true);
          public          postgres    false    222            _           0    0    trabajos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.trabajos_id_seq', 13, true);
          public          postgres    false    215            �           2606    23188 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            �           2606    23245     defensa_reino defensa_reino_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.defensa_reino
    ADD CONSTRAINT defensa_reino_pkey PRIMARY KEY (id_reino, id_defensa);
 J   ALTER TABLE ONLY public.defensa_reino DROP CONSTRAINT defensa_reino_pkey;
       public            postgres    false    228    228            �           2606    23240    defensas defensas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.defensas
    ADD CONSTRAINT defensas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.defensas DROP CONSTRAINT defensas_pkey;
       public            postgres    false    227            �           2606    23233    diplomacias diplomacias_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.diplomacias
    ADD CONSTRAINT diplomacias_pkey PRIMARY KEY (id_reino_1, id_reino_2);
 F   ALTER TABLE ONLY public.diplomacias DROP CONSTRAINT diplomacias_pkey;
       public            postgres    false    225    225            �           2606    23211    karts karts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.karts
    ADD CONSTRAINT karts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.karts DROP CONSTRAINT karts_pkey;
       public            postgres    false    220            �           2606    23216 0   persona_tiene_trabajo persona_tiene_trabajo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.persona_tiene_trabajo
    ADD CONSTRAINT persona_tiene_trabajo_pkey PRIMARY KEY (id_trabajo, id_personaje);
 Z   ALTER TABLE ONLY public.persona_tiene_trabajo DROP CONSTRAINT persona_tiene_trabajo_pkey;
       public            postgres    false    221    221            �           2606    23228 2   personaje_habita_reino personaje_habita_reino_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_pkey PRIMARY KEY (id_personaje, id_reino);
 \   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_pkey;
       public            postgres    false    224    224            �           2606    23204    personajes personajes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.personajes
    ADD CONSTRAINT personajes_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.personajes DROP CONSTRAINT personajes_pkey;
       public            postgres    false    218            �           2606    23223    reinos reinos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.reinos
    ADD CONSTRAINT reinos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.reinos DROP CONSTRAINT reinos_pkey;
       public            postgres    false    223            �           2606    23197    trabajos trabajos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.trabajos
    ADD CONSTRAINT trabajos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.trabajos DROP CONSTRAINT trabajos_pkey;
       public            postgres    false    216            �           2606    23286 +   defensa_reino defensa_reino_id_defensa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.defensa_reino
    ADD CONSTRAINT defensa_reino_id_defensa_fkey FOREIGN KEY (id_defensa) REFERENCES public.defensas(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.defensa_reino DROP CONSTRAINT defensa_reino_id_defensa_fkey;
       public          postgres    false    227    3237    228            �           2606    23281 )   defensa_reino defensa_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.defensa_reino
    ADD CONSTRAINT defensa_reino_id_reino_fkey FOREIGN KEY (id_reino) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.defensa_reino DROP CONSTRAINT defensa_reino_id_reino_fkey;
       public          postgres    false    223    3231    228            �           2606    23271 '   diplomacias diplomacias_id_reino_1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diplomacias
    ADD CONSTRAINT diplomacias_id_reino_1_fkey FOREIGN KEY (id_reino_1) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.diplomacias DROP CONSTRAINT diplomacias_id_reino_1_fkey;
       public          postgres    false    225    3231    223            �           2606    23276 '   diplomacias diplomacias_id_reino_2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.diplomacias
    ADD CONSTRAINT diplomacias_id_reino_2_fkey FOREIGN KEY (id_reino_2) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.diplomacias DROP CONSTRAINT diplomacias_id_reino_2_fkey;
       public          postgres    false    223    225    3231            �           2606    23246    karts karts_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.karts
    ADD CONSTRAINT karts_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personajes(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.karts DROP CONSTRAINT karts_id_personaje_fkey;
       public          postgres    false    220    218    3225            �           2606    23251 =   persona_tiene_trabajo persona_tiene_trabajo_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona_tiene_trabajo
    ADD CONSTRAINT persona_tiene_trabajo_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personajes(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 g   ALTER TABLE ONLY public.persona_tiene_trabajo DROP CONSTRAINT persona_tiene_trabajo_id_personaje_fkey;
       public          postgres    false    218    3225    221            �           2606    23256 ;   persona_tiene_trabajo persona_tiene_trabajo_id_trabajo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona_tiene_trabajo
    ADD CONSTRAINT persona_tiene_trabajo_id_trabajo_fkey FOREIGN KEY (id_trabajo) REFERENCES public.trabajos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 e   ALTER TABLE ONLY public.persona_tiene_trabajo DROP CONSTRAINT persona_tiene_trabajo_id_trabajo_fkey;
       public          postgres    false    216    3223    221            �           2606    23261 ?   personaje_habita_reino personaje_habita_reino_id_personaje_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_id_personaje_fkey FOREIGN KEY (id_personaje) REFERENCES public.personajes(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 i   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_id_personaje_fkey;
       public          postgres    false    3225    224    218            �           2606    23266 ;   personaje_habita_reino personaje_habita_reino_id_reino_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personaje_habita_reino
    ADD CONSTRAINT personaje_habita_reino_id_reino_fkey FOREIGN KEY (id_reino) REFERENCES public.reinos(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 e   ALTER TABLE ONLY public.personaje_habita_reino DROP CONSTRAINT personaje_habita_reino_id_reino_fkey;
       public          postgres    false    223    3231    224            ?   �   x�m���0�Ri@�%�E��.�_B��g�;s�Z�HR_-偖Z-��<���0]LG�˺a����T=�i��(f�YT�9�>lm	L,�4q~1.�tT�Y��J�J@}��ÿH�7O�x1�/�,�      M   "   x�3�4�2�4�2�4b.#N#.3�X� 5��      L   ?   x�3�����L�LI,�2�L�J-J�,�WHIUH�/������$�$��s�`U���� ��      J   &   x�3�4�L�2�4�,��`�(b�i$���=... ��B      E   �   x�5�Av�0Dף��a �ܥ%v�ıx�����N�V��3c�˯��E`K-ns8TRؑä;�B�������"�K+��>��������Cch�#�)2�V�E���k�=�/�FrXy�����������S�gծ�i�9μo/\�[u�R�̒���mZ�X��
�aZ*���W�i�9��ڱl��"�7�QE      F   �   x�-O�� {۽hG6Ć&���_Gl��B"e���A�Oq��yMY�,�[�s]�de�Z�3��X�8�-�_���}�2���QY8�^D���͇�6����RzQAn�	���^t�����?U} <j'�      I      x������ � �      C     x�M�Qn� D��S�T,`.��g��1�I���B�Q�3��\���q�d��Xy��u�We�*u� ���6���̏Y9�g>/0��= `�+�G�'�&m���5`���|S�6��}�F<;���]�M���^�Cڈ1�;'V���.��Y;�`���8�|lP��L�:��]��׵lx�r"h�p��QVVDrD>,� ^+�p�M��[)��I�Vƶ"�?�䰗�k�~j-b�!ӧ��[)�d�e�      H   }   x�5�A� ����Sp�&���f"$R�à�iO_t7�/���ʝ+5�-�H�A:Ԕ��i�s���k�{'��R�FSjNz��C��Ģ�����g�Jh��H��J��J���+f��ɚ�!��&"?\1d      A   �   x����m�0��8�&,����E.��lɥ���2��rhQ�����F��@r�Xtd=�eM$z���\(PU���M�!Xſ��I�Hϥj��,K��y�ǃ�+﷟6���J�q��X
�$�4�PlFU~�#�cJH��m΀?n/�+��O��z�`|�57vL�{��t�q�r�?�!m�����`�KNL����*[5���ا�����	 ����     
PGDMP                      |         	   studentdb    17.2    17.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    40964 	   studentdb    DATABASE     �   CREATE DATABASE studentdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE studentdb;
                     postgres    false            �            1259    40966    students    TABLE     �   CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    roll_no character varying(20)
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �            1259    40965    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public               postgres    false    218            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public               postgres    false    217            !           2604    40969    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    40966    students 
   TABLE DATA           F   COPY public.students (id, first_name, last_name, roll_no) FROM stdin;
    public               postgres    false    218   �
       �           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 1, false);
          public               postgres    false    217            #           2606    40971    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    218            �      x������ � �     
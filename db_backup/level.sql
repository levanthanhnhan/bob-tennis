PGDMP     0                    {            bob    15.2    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40960    bob    DATABASE     }   CREATE DATABASE bob WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.932';
    DROP DATABASE bob;
                postgres    false            �            1259    41026    level    TABLE     g   CREATE TABLE public.level (
    level_id bigint NOT NULL,
    level_name character varying NOT NULL
);
    DROP TABLE public.level;
       public         heap    postgres    false            �          0    41026    level 
   TABLE DATA           5   COPY public.level (level_id, level_name) FROM stdin;
    public          postgres    false    215          j           2606    41032    level level_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (level_id);
 :   ALTER TABLE ONLY public.level DROP CONSTRAINT level_pkey;
       public            postgres    false    215            �   2   x����  ��n+o}m�άT�Q�Ny��I��̈́���ߢ��g�     
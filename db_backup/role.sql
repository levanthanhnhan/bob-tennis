PGDMP                         {            bob    15.2    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40960    bob    DATABASE     }   CREATE DATABASE bob WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.932';
    DROP DATABASE bob;
                postgres    false            �            1259    41033    role    TABLE     d   CREATE TABLE public.role (
    role_id bigint NOT NULL,
    role_name character varying NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �          0    41033    role 
   TABLE DATA           2   COPY public.role (role_id, role_name) FROM stdin;
    public          postgres    false    216          j           2606    41039    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    216            �   J   x�3��x�{f�BIѱw��K�2��d��e���p�r��҇�wr�@��2���2�u>ܽ�+F��� Z0!�     
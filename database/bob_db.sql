PGDMP     :                	    {            bob    15.2    15.1     +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    40960    bob    DATABASE     }   CREATE DATABASE bob WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.932';
    DROP DATABASE bob;
                postgres    false            �            1259    49153    billing    TABLE     �  CREATE TABLE public.billing (
    billing_id integer NOT NULL,
    order_code integer NOT NULL,
    member_id bigint NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    amount integer NOT NULL,
    description character varying NOT NULL,
    reference character varying NOT NULL,
    transaction_time character varying NOT NULL,
    payment_id character varying NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.billing;
       public         heap    postgres    false            �            1259    49152    billing_billing_id_seq    SEQUENCE     �   ALTER TABLE public.billing ALTER COLUMN billing_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.billing_billing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    41053    fund    TABLE     �   CREATE TABLE public.fund (
    member_id bigint NOT NULL,
    year bigint NOT NULL,
    quarter1 integer DEFAULT 0 NOT NULL,
    quarter2 integer DEFAULT 0 NOT NULL,
    quarter3 integer DEFAULT 0 NOT NULL,
    quarter4 integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.fund;
       public         heap    postgres    false            �            1259    41026    level    TABLE     g   CREATE TABLE public.level (
    level_id bigint NOT NULL,
    level_name character varying NOT NULL
);
    DROP TABLE public.level;
       public         heap    postgres    false            �            1259    41019    members    TABLE     �  CREATE TABLE public.members (
    member_id bigint NOT NULL,
    member_name character varying NOT NULL,
    birthday timestamp without time zone NOT NULL,
    phone_number character varying NOT NULL,
    contact character varying NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    img_path character varying NOT NULL,
    level_id bigint NOT NULL,
    role_id bigint NOT NULL,
    sort_name character varying NOT NULL
);
    DROP TABLE public.members;
       public         heap    postgres    false            �            1259    57353    payments    TABLE     �   CREATE TABLE public.payments (
    payment_id bigint NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    amount integer NOT NULL,
    description character varying,
    invalid boolean DEFAULT false
);
    DROP TABLE public.payments;
       public         heap    postgres    false            �            1259    57352    payments_payments_id_seq    SEQUENCE     �   ALTER TABLE public.payments ALTER COLUMN payment_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    57345    receipts    TABLE     �   CREATE TABLE public.receipts (
    receipt_id bigint NOT NULL,
    year integer NOT NULL,
    quarter integer NOT NULL,
    amount integer NOT NULL,
    description character varying,
    invalid boolean DEFAULT false
);
    DROP TABLE public.receipts;
       public         heap    postgres    false            �            1259    57344    receipts_receipt_id_seq    SEQUENCE     �   ALTER TABLE public.receipts ALTER COLUMN receipt_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.receipts_receipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    41065    role    TABLE     d   CREATE TABLE public.role (
    role_id bigint NOT NULL,
    role_name character varying NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            $          0    49153    billing 
   TABLE DATA           �   COPY public.billing (billing_id, order_code, member_id, year, quarter, amount, description, reference, transaction_time, payment_id, status) FROM stdin;
    public          postgres    false    219    #       !          0    41053    fund 
   TABLE DATA           W   COPY public.fund (member_id, year, quarter1, quarter2, quarter3, quarter4) FROM stdin;
    public          postgres    false    216   '$                  0    41026    level 
   TABLE DATA           5   COPY public.level (level_id, level_name) FROM stdin;
    public          postgres    false    215   Y$                 0    41019    members 
   TABLE DATA           �   COPY public.members (member_id, member_name, birthday, phone_number, contact, is_active, is_admin, img_path, level_id, role_id, sort_name) FROM stdin;
    public          postgres    false    214   �$       (          0    57353    payments 
   TABLE DATA           [   COPY public.payments (payment_id, year, quarter, amount, description, invalid) FROM stdin;
    public          postgres    false    223   *       &          0    57345    receipts 
   TABLE DATA           [   COPY public.receipts (receipt_id, year, quarter, amount, description, invalid) FROM stdin;
    public          postgres    false    221   �*       "          0    41065    role 
   TABLE DATA           2   COPY public.role (role_id, role_name) FROM stdin;
    public          postgres    false    217   .+       /           0    0    billing_billing_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.billing_billing_id_seq', 37, true);
          public          postgres    false    218            0           0    0    payments_payments_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.payments_payments_id_seq', 13, true);
          public          postgres    false    222            1           0    0    receipts_receipt_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receipts_receipt_id_seq', 2, true);
          public          postgres    false    220            �           2606    49159    billing billing_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.billing
    ADD CONSTRAINT billing_pkey PRIMARY KEY (billing_id);
 >   ALTER TABLE ONLY public.billing DROP CONSTRAINT billing_pkey;
       public            postgres    false    219            �           2606    41061    fund fund_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.fund
    ADD CONSTRAINT fund_pkey PRIMARY KEY (member_id, year);
 8   ALTER TABLE ONLY public.fund DROP CONSTRAINT fund_pkey;
       public            postgres    false    216    216            �           2606    41032    level level_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.level
    ADD CONSTRAINT level_pkey PRIMARY KEY (level_id);
 :   ALTER TABLE ONLY public.level DROP CONSTRAINT level_pkey;
       public            postgres    false    215            �           2606    41072    members members_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    214            �           2606    57359    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    223            �           2606    57351    receipts receipts_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.receipts
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (receipt_id);
 @   ALTER TABLE ONLY public.receipts DROP CONSTRAINT receipts_pkey;
       public            postgres    false    221            $     x�]��j1Eך����z�1��f6ih24�nd����Pg ��r��̠�!�"��2O�i>ov_�~�.����c�{v�qK�qa�	$G״��ĬU4�yI�"'7��ʓE�q���ו%V�	='�^X�##�EM�E�"�Z�Lַ�R�wV �/���|;7++  $ό��lMg�"�	p`����~���yZ{��L�{�Wg{�,^}f�= K�XIZH�g�ܝ=���ΧwR[Q�+SL�����Ŋ��U2�q�BY����0��e�      !   "   x�3�4202�4�@.cT�!*��5�rc���� �l          2   x����  ��n+o}m�άT�Q�Ny��I��̈́���ߢ��g�         V  x����nE��3O1�������T�a$)!"����{E�ce�D9#�đI�$B�+Ⰱ��P�됈�v|���+�WU�W_T_����9Z�8?���Z�Q�6oi-���4{o�s�T'��������Ǐ�N�bQ����^�O��� ����4��Z�����٣��,���x\�����a�g����_������,��l����xv�8��_����e���h�� 8� Ƈ�ۧ������e~�[2޺��MV���SN�"�r�\���^�X}v���?������ˋ��蠀�� �q� Zc�w�N[ D�[��u���J���֊��L@]@_a�������'����˟�f ��hf����;>�(��wS���L`�:���"�btAq"v�O�&-�Tm`k[��l�_^|���'����W�6�C���S �V��H'"EEX���-��c�a]�l������7������ v���&M.h��f�m�6t�kU�NQj;�LVAt���]̦�k����h62�4�.s�����n��@l0[�t���c��/X:K�L����V/N�P�^̛���U�;��]{���e�a�"n� G�>Y���2������a�\RR���Qk�������n5;t�j?56oa�$ۦՠt)QQAT!sQ)wܹl��6�����٩X]��ǡ-��������l/���d:�;O���X`��m���+��5�¿��ͧ3YuwO��0��C��L�t����3K�U���uVIG�bsN��{)����CU�z����;/�.J#橭��y��g��1�աp$�E`"�I�a#�Y�g5�����������A�,:�h	��-9b;y	�o���B������* t
A�?�к���mbz�o�?�70�4J���3|���E������Q%��g��]�-�oL�y_��^{��鬹�z�{��� k�B0S�{�~��re1�䙆������,}.l,o�Z��������2�~�hg��B���vo�9�� ��Ӓ�J�+���q�C��o�Ͱ�jq�2oƨo��2L&LNm���i�dE���T���l�b�&q���5���y�;��8�M>吇 �Y��G���$�.�@� I�}�C>�2>�"�/7�`�v�\W�{w}��&Is,���<)�5�8LjU2�蔋<`V�/�u���n�5gm������>�؁~�L�zdr�L���ek�v�a���c�$��)/�G�d�G��Vo7�k�~�@��Ҩ���s�H��M������ڧznC��-p�mFZ?�(bnIq�	����!Ce�u�zU�W����6      (   �   x�m�=
�0Fg�9A�d%i�Q��%���R��[��-'螱�{�&��L�F<?�;�@@��.������������@\0X����WC�!@R0D�z1l��M�:+����GɁ�1[&mfb�1��:����cn'H���b�ـ�<�ae�iT���_!��	T-      &   c   x�3�4202�4�4400�|�{Y^�B���3�3�Z����蘿�p��<C�4.#�j#�‌c���Q
ԕ}xE����e �c��c���� �5#�      "   J   x�3��x�{f�BIѱw��K�2��d��e���p�r��҇�wr�@��2���2�u>ܽ�+F��� Z0!�     
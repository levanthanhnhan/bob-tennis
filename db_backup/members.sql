PGDMP                         {            bob    15.2    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40960    bob    DATABASE     }   CREATE DATABASE bob WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.932';
    DROP DATABASE bob;
                postgres    false            �            1259    41019    members    TABLE     �  CREATE TABLE public.members (
    member_id bigint NOT NULL,
    member_name character varying NOT NULL,
    birthday timestamp without time zone NOT NULL,
    phone_number character varying NOT NULL,
    contact character varying NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    img_path character varying NOT NULL,
    level_id bigint,
    role_id bigint
);
    DROP TABLE public.members;
       public         heap    postgres    false            �          0    41019    members 
   TABLE DATA           �   COPY public.members (member_id, member_name, birthday, phone_number, contact, is_active, is_admin, img_path, level_id, role_id) FROM stdin;
    public          postgres    false    214   �       j           2606    41025    members members_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_name);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    214            �   B  x����n#��c�)uV�/F�}_D(��})n�55�c8t�Áv`'�0���7�_R��v���҈bP7ݯ��Ϲ�C����7����B��� <��7�!���\IB#�[n�y�v��G��ͦ��눳����bx)VJJ��'�<�==�,\��z�A�ӣ��Nd�uzn��{owo=�#)���R�4U�ؘA��ZR��6Q�
N��#����nd��b�-o�%�{πc{	_� �7���Nǻň�q��-6��c�q�tE��{8\��[�O$�X4�-�i�9}�[�w{2���z|ϑw�����bt��m��ʙ���L*�5ؤk$��|s�����|�b����d��0�,����Tb���F������;��p{��k���@���k�5F�!�H!�W���(0X(F����)M0�c%���dR
k��f��P�gP�k���d�㪨�|o��ή/�K���[��U��˶�^�r�#9kf��P��m�2��d� �#"c!�7,��ϟæ;
׶�?��'B�/����?8���J*�Sx>#b��Cf����R�I°M�\k` �Ė��w���x%���\)(�"��{�fd�f2d��;�����m��� WvO�Q#����5,:s����}�b���6��Ci^�VZ���(��,s�K�i>�*6���r�����u�ȹi��.P��5��d�7��}���Ʈ�nx��(.N���ʏ�#���솇��.o����	gG�sG�Q�""\b(�"�'+�E�gD؄r%	��1���#A���i_���ԇQ^B��z�I���|�ïQ�D}�b�.V��w��&{la���j��|^J)֌���ԜF;�'K�����}�"B�����x��z�0�. 	�C�
�L�� !�0�>[ *��$R3�K�����'8�:CTAH��6[��!L�*_��+����Mt+X��tz����*���p;c�l�~�%b��D���D~�S�q�!�`$�W��0V�+�p �&�����Rj���!1`# R(I�'C�SO��S����6�f��-�6&�Q��+(u,s�N�l~1�4��9�ؼ&�����sS|���O�Ym>ٙ�}��B���põL��	���w�BC�U���K��e`lQ"� �1D��5
1k?O��pP���q/��rn����`�
u�=��D�Ӹ7k�]�3R��79DJ�ҵQݞ�Jl����Jeg9���y��c���#`���M�2ş
Hq*^1k����cCʆ� 1�pq��C0t�R0kA����D��Z������l���q_��Xj2n'��2֡�DVJ����&��,��x��d{���H���ِ�> �!_.�C�D������k�H.`���$p��Ћ$S�"b�X�Р{a�3��KF:n�2�b-����+FMԈ��m�DI?%�"j�>�GW�Z�nm�>��.�K��
�q�4j�=U�p~!<;ZhE�"�M\C����U��Z*
9��|��1�D���B�ס�Ah�u���N�@+�S��Wi��Z���<����$�8��: ����<��ʢ�߸G���j2BCB���} ����.3��r�H�´�r
x���Z�������b\�3*��� &x !@C�^�q�^t��˧�0Lt7N���(/�yy��ݸ�!$[4���rt�.�w�l��r��vfd�14�%դ�'4���������+@�����2L�@*�8L�R�Q�վ( h�@y���%`�k
�L韉�l6�[�16P�m���/�bvw���n�i����ݻe�xg�)��ݩ�!Kk��UV�'*���'*<���?|7F￿����_N��\l/A���-$�Z�M���̈��F ���;���)�D
��8�:���ָ^7�+B״0��7��%=��j�q��&Q6�͓Fl�MDk�j�r��~�b�B��"��>�́��/���n�P�T�]�a[p@��P浴���hk-�u�����ꤋ�)�h�9޿x�Ey;�4���`��1+G��S����+�y~8�v|�G�乥��O4D�Z���~�B����"�������B�D��W��~��O�L��k��O6��p�����"Q�X��Y�1~�ߒ���"�bGyJ�}��ƭ��ҭE�+Y�C�:�C�i%�)�(u��D�����+�{���y�@@=G���Wh�@������-�/�H���!�n�pY�
A�9Δ`#`��$Ξ+w\h=*mv�ul��7��j�"�3q�4_����$>]`���%œzs|���3<%��3'Hn7S�����q�^��I�fD}�<��� ����4w���[Ѷ�h�9ȄQ`D�-%��h�J�Fuhho2�\�X_� �Ji}<�V�m��mrc�ĩLžֻ;�b����J�h���hT�G�R���Z����2���X/'�F�'f����)��Ha������`1!�R�3gi�?:����D���}y��g�ܶp�'.5�O&�u �ό�~��co�W�Ȝٳ1a��j5��j����&�L��*�<3���a���!�jL�aW����t�9��$`�_����Ag� cI��Z��2h�
>q	�����%KI��3�����A�4t�=v��+.Y67����)=��*d�ߔ�qgLӕ�?���wʫv���cH��qN���?.�_��@䊍,���D!v	K@�eP�`��9�	A����a��$�����EWv��7Bv����ݫv���' ��[YK'_�P����z��j<l�2�h%^�e��Q���g���d��Df�9w�b��_Fnnn��苈     
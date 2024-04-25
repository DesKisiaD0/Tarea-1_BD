PGDMP                      |            postgres    16.2    16.2 .                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    5    postgres    DATABASE     {   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE postgres;
                postgres    false            $           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4899                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            %           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    18094    actor    TABLE     z   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    18093    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    18110    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    18088    director    TABLE     w   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    18087    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    18100    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer,
    fecha_publicacion date,
    id_director integer
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    18099    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    18137    premio_mejor_actor    TABLE     s   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    anio integer,
    id_actor integer
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    18136     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    18126    premio_mejor_director    TABLE     y   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    anio integer,
    id_director integer
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    18125 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    18148    premio_mejor_pelicula    TABLE     y   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    anio integer,
    id_pelicula integer
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    18147 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228                      0    18094    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    219   �7                 0    18110    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    222   U?                 0    18088    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    217   �E                 0    18100    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, nombre, genero, duracion, fecha_publicacion, id_director) FROM stdin;
    public          postgres    false    221   EM                 0    18137    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, anio, id_actor) FROM stdin;
    public          postgres    false    226   �c                 0    18126    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, anio, id_director) FROM stdin;
    public          postgres    false    224   d                 0    18148    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, anio, id_pelicula) FROM stdin;
    public          postgres    false    228   �d       &           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    218            '           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    216            (           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    220            )           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 20, true);
          public          postgres    false    225            *           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 37, true);
          public          postgres    false    223            +           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 31, true);
          public          postgres    false    227            u           2606    18114 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    222    222            q           2606    18098    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    219            o           2606    18092    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    217            s           2606    18104    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    221            y           2606    18141 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    226            w           2606    18130 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    224            {           2606    18152 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    228            }           2606    18115 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    219    4721    222            ~           2606    18120 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    4723    222    221            |           2606    18105 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    217    4719    221            �           2606    18142 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    226    219    4721                       2606    18131 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    224    4719    217            �           2606    18153 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    221    4723    228               W  x�mW�V�8]K_�/�cy��21���鍠�*5ٮ���}�&;�^bl�w*���������zfU�3�Qβ�2�?�a����^~�&y=�ꈷʚ��AɭV�H���d7r�G2�0��ތ,+x�N����L�d�Y���-��������ady�vn4>ޔ����~R�+=h�[q���� u�|Y�C!�{�4z��[ziX�r��[٩a��j�
<����A�yL>�aF�,˸(��T�ӫ'�Q\��\���%��Nӳ��8���ip������boJ^HcƉ�{�f���]x��͖�]��Ĳԏ�R>��H�g��;���vx5s���2��|[�g�)V�
v)�Q�:y3��;��;-�I��I;3&��y�,�!U\�Ƀ�i��f�r�ؓ��S����^�F�4��e'OX~r��A��<e�1w��(\Ǫ��"����]��|��[��&+���4z����� ��`wr­�5�p" ���������{�-]'��Q�Xt�*<��8��c܌N�`[��W�>�^��Z�kQ�"�vz��oM�B���Q�"c�����+@����u���'�e�󢌘��]/���xQ��{t�i5�����*�a�����S�_P�ڍ�lydɣV�����:��=�Q
vs��P����K��2c�Ёe(%@�]p?�k,�"�L輒]��9zxR�S9�^���O��v@?�����x=K1Ѳ	]G��e˾�^EP��J�H��)-'����؟V�*s�	dBgUԦ�<���x U8�� V�׼��rWB�:��_�𪱜��X��������X��e�j6� �Q�P�*5 %��#(�Q��^Ϩ-�H���5u���qaf��Tk]Y������fo�"z��W7m��tj�%��M*�`M6���Nn�_�9����P�Ü�P>'w�kxSĹ�����ˮ�;����4}����av���C1�;�ִ@v/��n�v���V��U^��ǃ&sh��}x���|�˫N�0m�����׃��wg�7�.L��#]Δ �$����x�,:�v������4L�iT؍��"�h�x�jiq�/�Ss��-�DZ����}� �te�c�.�K��e��q�p�*�f�D�:��i��:,E��&q�(~F�$�x"De�3$"wD��fO]љ��~�dL��b|%�!t��g���0�h����֍(�'������$}%�� ��$c�#y��at�%R�V���\��в�^��ϴ��+���la �_�c[,���JF�z��w��Yh'�}�w�
��B�����H!�oV�I>-X���U��=\������\�%n���{AE�p|W�:(�}�ō�?]���	��$`�Aض��oi.���]�/oG�8���+0S��]�;C��l�B ���\��֢�ftb���yI�־���A� �Χ�����u�i뤐��2�t션
�w�a�I\��7���={"�)�R��K��#x�^�s+����S� �8ja�y߆!�K���	N�(Ѐ51����׶�B{�!�F68����������i��*��;�g-�sa�ϴ�j�<�$�T<~sz��]�I5l%B"#�x�n�'��� ^4Pd��h��T����& D�젊��bۃ���Hl���0&�&�:qa�p�L�FX��6	&*,�6�V�U�}@r�������#?�Z =8|�4��E��7C0M���?ۚx��	B7�~��nHm#l�>E�e�b���v����w#@�Ok,����A����������s>P�a�<�%h�/���kJ:���f�"h!��_��񜪤         ^  x�5�ە+9�[���V.7�8���|y�VS$���;�����K__������垯�rytw�:�=KD�:'�[����Qb�o���ׂ��^b�oLC�ie���*�v�őyK���[����yow2����V�9ʼ_��x�ڊ|�����D'*?s��.�}�j���ѹ�YD�_/�8k������r{;e��
>j�8�d���R��Tf/�D�=;	p�"�����R�(%�n��MQ̓3a�)TY���hX�G�n��5F�k����u~��[Կ��<��,D]� �ǭ�ڡؚh�|�.p@G����S3y�7��ǥ�r3�h�J�U��tĔ+���iE��:1��q�;�� 5���vOi"�_79&��_aS?��Ƈ�ʞ�a;^vV#���Bg~���l*)�:c��u���ǋ�I+�oL�er]�,Uѳxb���z3l��<�P%RѴ���׻̴e �	���&Ag~���[�³�Zd�d9O��6�}����0;�{|�#���+��v4j9�5h�O����(a�Y����{�Kż�Zu� �)��ӟ�"[����r�WaQe��w����H�>n�#YuQ���l���][BJ����1�X��	�ݓ /p	����nH9�ӾV�R��$�e��d룂�芃�%���(C��T��h���.i�Dz�S��t�Pf�0 =��0J�q�+�j��ZO�$xGfEƣ�\��_�l�T�I�g�{��J�����m3+9;u�����l��hN�WRO_�l(SL,rm}�Q���:_G�
�yݑ^��V-IWH��iqZ�m���
�!'��=0jYc�OՈ������ �����y��})/R�IzfS��8���$�/�tp��|K�{I����J�Ѣ��G�+��@�Z:���?\I�7��>���l�jO !y}�{s?��Q�������T���E����a�)�T7�^O��0d����D�e�~�}�ֱ���M�gP2,۩�Q�9·��U�z=�)����t#]���U��9	��K�����ZI �Ғ�/{�{S!-9��Q�5'�zo��>e�R��1���ӑ@`��j��.	�r�a�%�%0i���iFe����P��5(�r���x�L��WvWM	���uc��w��p=���|A2����~O�I�l�}5L��?��(��"�JV���A`�'�<ر_<r9yZ�� ���T��z>��Q!rG��s���R)P�J��W���c��37A�<g�34;A����3&%����3�'ߜ�Z�C�6J*��_�V����'W���f
$ɼ�}&�yA��-7���K���1�U���/?mR����޹)�����[�T���z���oD�z��y��9���n�h��V(Me��9h>[ol���H����������D��� �pڐ���� ~�lF�8��8ɴt����o�J{t���ŒW�{���m���:�[�N�^�Z
�oW;�y��DN^�T�M��r�4�Y
�Z��i<��]O�K[���y=����VF�x;�j_�B��\9:5�5�V�(��!��R��k�7�'q�kx4����>����^ⱻE6���o��o�q�L%כ�r�k�������g��Ia���+���*�         r  x�eWYvܶ�V����S�"[dY���Hw#j�	����M��6��b"sާ �w�[U-�oG;��=��;^��f2ŗ�55��=�v.n��O;���
܏���������@�kvk��=:S��f�7L��a7f���f��k޲_��1E՚w�9�n(n�d�dX��(���g��B���i6�x�v��j���Gӻ��8.'C����9"�up��b7�ޚǃ}�����`��Â�3k5�>�4�����ĭ��6gg��f��ķP��b��W
�vk�f{�~
^�쓙7����Z�J0DfTw��3��Uj�'��V��9�����W��㌞"���}0��Pu�+��5m��Dkv�����ޣ�����&�����x@%�Z�9N�epū<�� �pY�K3��<�8�w(��r{j�ݍ��*���v�����2v7�&z�쿬�[;���Lh!P&5���Y��v��im,�$QX���Ŵ<���eO�[�'$�F�\v�}�ޛi�~`�d�����#@����\	t�7G�-�����^�����JF�'`�*n˝�|�S��+��xS��W�%W��{����g3�g�W-0~t}D ࢺ�}7�O�?�%{k�N���U\��Fn���V�KG���*�%�2���!m+�V4o���7rg눞�v�Ku��b�dp����zCۦ[���OP��u�^��xS����a$��»]�Zg#y]�[wħ.�T&��Z����%�Vy!�~��N�~e��;<+�u�p�M��t�r1��5�[v7�R��G�\�.�U�Y�>�N�F��ĭoyS�^ލ���$�b�}*�L��QC�3Yt�T��ɑh�$��l��zݴ�q�߱n)��F��i�Lm!,5���������_���64�;���ߡe��Ӫ��PU[�V'R��C�:�'�:��6���j�P�W�6��KB*][F �J���ָg��:�Ĥ�]�C�l�djz��❊r���0b�x��;�cZ���]�������ꚔL��ICS<�VΠ�DEY�F���$5qÌ���D��pZmv��=V\�2���a���p%jB���4Z&}73Xn?�D;��3�%�5ve9�J������	=k(\�(%1 " �I�"H�������d��L�H�쟰�Ӹ��>���:N{���#���T���C�#Wy|j
���z��?��O��_�,��"wI�sTt�ev�T�v��?�#fC���M}c�2��
%��um�H%��L��x9�$,Qr�Eu&�{��3����c=�"{��Fr�lh
��>��`I!��3�x)�1�� �Q�>ѭ�bD$��S�B ��k�]�d�}�r�M�0A�<���Y�~�K�҇���1iè0���� �f�2+]^�����!*v+qR%]����GS8�2��GF��P���m�j�çe2�uAO �_W����X����õ�n�@�݈6142��]P0��X}�wp�އ����Ox���w�T+,@\�|��>��<x�%�#��~���o����D��,�y�T-<����$ZgǙ0Fy��̜G|��A虀7g�1)�:���a�u������6i~Ѣ�竾&�F���T��Q� ,Bb��I�0	���&����$Zz.7��4FL�@D)"P�)кo���z��K7�g�Eː�e�@c4�k�ć>�.�G�C�9��$��d�"6��v���z��I�/
�� �A:EM�����p��D6~��)}�	-�t[�Fк�DIl~�EW���EՏ�H��E]Z�J�׭�z6�t��^�arҶӯT؉��� ӏH��'r;�;��N���d�uh��D���j<hK�.
����T��IRAg���s�?���d            x��\���Fr�����*��XI�֑!G�w.��Y��-����;?�|�@�U��!o�^�'O�̢j�eyz_?�������uzZƧ�yZױ���t�����
�{�³��Z��n�i�>�O���^q���ᷗu>�0���	�q�ǧo��4���2�-�;����U�i�m|Z���$�XƗi�q�M��i�4���0�>+ߨζ���u�������x~�y!�����m:}�����QfW�%�?+�����q'��q������70�Y�}����[��M��u�m4�|=��K�U��l�M�q�pB�2�����}��۵����p�C�Q�����4}h���}�_�?�o3��f�<Sg�M��t�.i���[��yz��Fu�;�����U]}x����Ƅ����`ִJ��u~����/��t�&�?��n��t�&���}}�.�(X,ϑ�Љ+���3���]O��;^��8����4lk�m��Ty���i�0B���@�R���aS��Q�y�1ץ���'��ӆ+���>�5���>6�q��O���NƧ��`Xl�� �ö���fy/������m��4��3�Ǒw�q*�V=���[|�;��?1tb-��r��d-��e\�)��:͗1�V�lt6���ZM�����_�Yfi	xfו|��"�Y�B�㶭&z�������%yd����;������ޮ�Vؼ��z����ߧ���[)Fk���v��eZM��z����<�t��|[��J��&�V�L�e~�M;��̗<t��83��v�Vw�g� qhmh��	0������.�sڞ�|�����U���&�+��3*oÒG[\'�jZMXs��
�5����H)����ֈ��,K4���[-Q��!l�������Q�E������'�v�p�֐��*��|_�)u�MF�]kL\d�ۯ��N8�����[��dm�l&s�c8_/����}�������<-��(%��)D��P��x;�z����R��x�
c�`Z�QP�c�,�	itn��M�[C�N����w��T����';�ք]8';�����)�Z�Y��n�Y�i�����\'.qN���<_�O�G�N�y\�$�)�&0TZ��/C~n~I�Ƌ����d6b�r(0�e�i���u%k�����6a�?�8	9��Y3	e�{r�N7����JhzK�oЭu���L�I �uY�`�@�t���8�-y�e�o���������v]?����i���&�444xFag��t�=	�L�E����Q\h��Zq���:����|S�@Ѿ'�Y��)C��׊7��� .���l~r<��G�qM�`���	�4��IƗ�I�牣!��K�dFrs`�+����v��2+��Ō����B���x+\��Mv�z��V�Z��]ȸ��eʾb�d��]�88�C����+n3t�aB��E�� T����W�־-��/`�m�k�p��"����&}ߺZ�%%�V�vć|���ΧL�ҙ�y ��0L:�����"tQց4��G�����|���9'Y
���a(���5������i��� mN��L��.<\m�$�d�R0+��*�mt��5��|;�r%�9�����u~#�+|��o�y����k�pd�U4!���.�sb�E�zA��Hi����8/�Z�i�e�����o�:��}@���`R ���kh˴��
Q��$ͪs�7¤ P>�UF�A���R9�h����a�l���r�x�`եT���&0a
=B�	C�07�����K����5%��Q
� ������s9�J��� �B7���ƾ-�H%S$��x���_�\���e0���7|�/Oxxk��;��$�,��?r���2-ŭe"#W��)�#��df�pŸ_�7�gq�r��F�̓��nwQ��P^1˾�A�$'�ɶ�v�?��������ة������RN��L��G�	�J��K� �^1�8����
k $o�R`I�3"p0�1�;�'t�'!&z2�K�4��
���E�����P'qxA}���T��y�D�{
�t=�u�,mm�H҇��5Ʒ�)	{q��Z�g��Gg��P님�LA�c41�A��k���+S?�V#��C�]�HT�-� �+۰ɲ�!�݆G�)�zᠬ����8x���5���x%�*jp���,�iZ��,�9n1�yk���#3t�޶�3l/�Lob�Z�)%���ηi܀AbaF
s��y�1��mE��2?�k��u �
����I46�]ZH!yqߢ�y�Y)�%Jg�8�Q��S�IЈ�ߊ=Ҕ.Ĵ�(�R=�G�.�ɚkq�Y� ��^����#NL�&�	ׁ�G�}~/��i%��I3Isr��h�s$��%�ҝL�H�R�ID�;o���,6(��P*��O�������Z��m�$�,��5(��h�*�Y�\�J�H�/5:ÀT�U,l��^T�

�)q"O�	�t�j$,�W���+E����.�w��j�yJ�'�@�#�K.���)E��)2�Т~�i�	���u�N�F���u�A�/��.4!�_�0�����J����꽮Tȴ7��j �FGF�����TG	B$��!��eq��-�(�u�s}��?%3�he��$�(����X��d1_64��eldɅS��F��*_��	���0�+��ܔdU�2�"�ǐ����N��U�\d�)��l���UA:c8b�b )}���w����f0:��]W���OT�K�8�g5 P���^tj}���J	9���gLb���#�p'%H�c o�ݦ�	��.�3Z��(س�Zqwp�u��i���������͌��R "�EW9��R=-���"m����ӏߐe�"��I��v84�p1�^H��¿-�G:A�rV������B��Ndq���[�9s�,��ǜ��x�<K s�>Є�]o�m���>ߋ�Ɋ>B���2�pE��H�������}�|��n�\�Sd0.��X��1���
��IE<�~'e rO�|�D��0�C7�94�+����Cw�6�T���^����Ut�X���z�e�V��x�DLi��i#ْͩ�b���#�3�*Aְ\�z��[OQҥ��g93zR��FlE�C����:��H��x�i�����A�fO�H��D
8�U��캜!�Z��JI��1��Do��i��Z�kLũ�Jn��ر*()�x�,:)�����2ψT'�k���t�6�����{���­+B`D�=KN5��z�~8e�Y(>}�c�����qJn2Cyّ&���Y��b9�G�\J@RcKup���%Ƿ2�ɼ�bA �zuyc	��DD�U+	��J��b�J���|o%ϧNWT;�'� ��Z����q�ao�Zh-`_���9�p��U�
�9�/�Ĉ���-�0 ���K�!3�Úyc`w^o�3"[�t�z.R�zf���e%�3�KQ�
�[֢��1=*�t;�B�pXx�Q�(ª�����wG�Wa��$BHlPp�Ίs��R�\E��5���g3<b�Kj|H.O���������_���3��d1y��e�j�1j#��T���u$�Mb%�bU�bZ�;�}V|�eF��d{��S��$IU7��N4b�!C�`�*!��v�*<���wz�(��yZ3��v �������; �C?a����.�IYߥ)�j�)Y[ުvY�I8� %�=θWx�,77$i��qm>t���!��.3�Bs�q�WpӗZ�[(�9�f�Nа�o%M��IY��hG��du1d,��u]�js�Q�����X��Q�t� Ǣp�⁻�@l��=N�����&Y��MB7v|�G��TN>�����5`����U��t cS��>0<����	�P7��G �`R���JoA�.x�	�TR�&�+�$�i��`$T�����]�Q��ҙ(�Q��yj6��5�]���D-tg�JDJf�J 2  nȱ,������Aq9p�Т\�;W��E꜑��.)j8��R�#5QhO��1�jWpdؐ���]�zp�h��9�R�c��F��ۣB�Y��6�s�X�����,��a��6���R�hra�(#$����j��.Bv1�b�f�Wځ9*��[J�P�85zke�*o���Л��c +�e�������(�N*�ZE!h_h�_H�u/񝘄�M�,�G��č��B�S�`����֞b�*S���r�v����C�Q;%硞�K:X	�Y�RI��s3��)���0Tm����槃������X�����;"'�K�u�-��hË��znp���Q5��R;
܍��w�b"��셾I4x�n[�'�yJ0P'/V>�D��r�_�惬���*Z�qLe�yV�M��@�g�"���j���:��4�}�,HoP���j{�{�m98 ����3�"r�K������ICrT͢4�FҬI�}jD��h�4�=����Ǵ��n5�iH����1�(U䫥���Y���Ż#z|���Ip�,[�������z�\���p(RQ�����)Dk�����|å<hl�h�f���4g/��8]{�.��J��!�,���QX�E/ Wۊ�&^"�"���aB�c�R���A�,�;E�K�=USG��F���؃���0[�Z�P~N�qүӦ�����fo)���6���'hݶ�9���p��{�w I"�SIE<�=<n4~L=�7��?��+��n�ޡ�}�h-���Y��*(�:p�?�𯲡S�
9nf�T�`��(UyyG���95�i�	ML��J0	�u�f��uqyvV@N܄��A�º���i@�E�~���E@���a�H%���~>2T����2��٣��_[�u�+�%��D냐�V�Q����G9P�y*Af����MoF0$
���NE�2�������ͳ�X��8� .`����fhj����^�K����(\�����pƟ�V,,mz�������ZF���tW�Q��D�|�v��)�����z��g�n�V��ݶ�������j!�y��[<ň}t���H7��$(�4-�&O%c:^\�q?my�����Gx����}��e��<����5o��%U�RP�j%���jW����zV����GT�R^5�$�ϒ��2R@�t�U�2�í ���_��#����ϑy�>^-��"e/y��;���L�}�43[Ή�fy��E�~�J��T�r.��UP ��Q�K��Y��B��p��y�sgj��X�����{�d��'V�P�q�~��+��n҃~o��ã1�*����8�����T6���U�������NiKz�/=��>݂����b�D8�F���m�W��|{�}�Ԛ������RsG�[�Y�zb�r���������<j,��,�ܥc�l��RyQL>o;ּ���X��W菞�ƶ֬�40��kM㐂S�����X�Ʈڳ�'��d*�<��"p!�Ǯ�φ���Vv] �Q_wpk�'Cך��;Hb����N
-TA���S۶�-�         }   x�=��C1C�x�
�!	�t�9j~��̳�MZ��O['�։�ɲܨ�	9���cKm��q���t�$�����lp�V
��z����x.�TZp͈�Hp�t�z<wPI�Ը-G���~ � ��"-         �   x�5���@CϨ����K��#��\<�V�a�X'�{!,��8��.�CS�WĒ�ۉ-m���VՏAc�s#� _�6(��1L麠���V�­m;��cՍ�Zu�x���)�z�p�z������� o���c&b�lB�j�����/G	靝�(Y��<HW�n#��������
�f ǭar
ܞ^R��Y���oQ����AG         �   x�-�˕�0Bע�9��뿎AI69K\l���-�r����������%�v+���8���Ix5�D�1f���z��oX�X��m+
lVVp$��l�6o�DO7�t����Mܞ���@��m})�3����>ԁ��C�ͷkB�-�\�����u^=ݷ�������ȯ�
�vl����U8�     
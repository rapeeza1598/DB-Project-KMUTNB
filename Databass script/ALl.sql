PGDMP     7    .                z         
   DB_Project    14.5    14.4 <    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    16386 
   DB_Project    DATABASE     a   CREATE DATABASE "DB_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "DB_Project";
                nattawut    false            A           0    0    DATABASE "DB_Project"    ACL     ?   GRANT ALL ON DATABASE "DB_Project" TO admin WITH GRANT OPTION;
                   nattawut    false    3648            �            1259    17279    car    TABLE     '  CREATE TABLE public.car (
    car_id integer NOT NULL,
    car_id_plate character varying(255) NOT NULL,
    car_county_plate character varying(255) NOT NULL,
    car_model character varying(255),
    car_brand character varying(255),
    car_year integer,
    car_employee_id_driver integer
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    17278    car_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.car_car_id_seq;
       public          postgres    false    214            B           0    0    car_car_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.car_car_id_seq OWNED BY public.car.car_id;
          public          postgres    false    213            �            1259    17249    client    TABLE     &  CREATE TABLE public.client (
    client_id integer NOT NULL,
    client_name character varying(255) NOT NULL,
    client_surname character varying(255),
    client_phone character varying(255) NOT NULL,
    client_address character varying(255),
    client_citizen_id character varying(255)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    17248    client_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.client_client_id_seq;
       public          postgres    false    212            C           0    0    client_client_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.client_client_id_seq OWNED BY public.client.client_id;
          public          postgres    false    211            �            1259    17240    employee    TABLE     �  CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    employee_name character varying(255) NOT NULL,
    employee_surname character varying(255) NOT NULL,
    employee_phone character varying(255) NOT NULL,
    employee_address character varying(255) NOT NULL,
    employee_citizen_id character varying(255) NOT NULL,
    employee_position character varying(255) NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    17239    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    210            D           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    209            �            1259    17392    schedule    TABLE     %  CREATE TABLE public.schedule (
    schedule_id integer NOT NULL,
    schedule_time character varying(255) NOT NULL,
    schedule_date character varying(255) NOT NULL,
    schedule_car_id integer NOT NULL,
    schedule_start_stop_station_id integer,
    schedule_end_stop_station_id integer
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �            1259    17391    schedule_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          postgres    false    219            E           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule.schedule_id;
          public          postgres    false    218            �            1259    17293    station    TABLE     �   CREATE TABLE public.station (
    station_id integer NOT NULL,
    station_name character varying(255) NOT NULL,
    station_address character varying(255) NOT NULL,
    station_empoyee_id integer
);
    DROP TABLE public.station;
       public         heap    postgres    false            �            1259    17292    station_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.station_station_id_seq;
       public          postgres    false    216            F           0    0    station_station_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.station_station_id_seq OWNED BY public.station.station_id;
          public          postgres    false    215            �            1259    17385    stop_station    TABLE       CREATE TABLE public.stop_station (
    stop_station_id integer NOT NULL,
    code character varying(4) NOT NULL,
    stop_station_county_th character varying(150) NOT NULL,
    stop_station_county_en character varying(150) NOT NULL,
    province_id integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.stop_station;
       public         heap    postgres    false            �            1259    17411    ticket    TABLE     Y  CREATE TABLE public.ticket (
    ticket_id integer NOT NULL,
    ticket_price integer,
    ticket_schedule_id integer,
    ticket_client_id integer,
    ticket_station_id integer,
    ticket_employee_id integer,
    ticket_start_station_id integer,
    ticket_end_station_id integer,
    ticket_timestamp timestamp without time zone NOT NULL
);
    DROP TABLE public.ticket;
       public         heap    postgres    false            �            1259    17410    ticket_ticket_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ticket_ticket_id_seq;
       public          postgres    false    221            G           0    0    ticket_ticket_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ticket_ticket_id_seq OWNED BY public.ticket.ticket_id;
          public          postgres    false    220            �           2604    17282 
   car car_id    DEFAULT     h   ALTER TABLE ONLY public.car ALTER COLUMN car_id SET DEFAULT nextval('public.car_car_id_seq'::regclass);
 9   ALTER TABLE public.car ALTER COLUMN car_id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    17252    client client_id    DEFAULT     t   ALTER TABLE ONLY public.client ALTER COLUMN client_id SET DEFAULT nextval('public.client_client_id_seq'::regclass);
 ?   ALTER TABLE public.client ALTER COLUMN client_id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17243    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    17395    schedule schedule_id    DEFAULT     |   ALTER TABLE ONLY public.schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17296    station station_id    DEFAULT     x   ALTER TABLE ONLY public.station ALTER COLUMN station_id SET DEFAULT nextval('public.station_station_id_seq'::regclass);
 A   ALTER TABLE public.station ALTER COLUMN station_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    17414    ticket ticket_id    DEFAULT     t   ALTER TABLE ONLY public.ticket ALTER COLUMN ticket_id SET DEFAULT nextval('public.ticket_ticket_id_seq'::regclass);
 ?   ALTER TABLE public.ticket ALTER COLUMN ticket_id DROP DEFAULT;
       public          postgres    false    220    221    221            3          0    17279    car 
   TABLE DATA           }   COPY public.car (car_id, car_id_plate, car_county_plate, car_model, car_brand, car_year, car_employee_id_driver) FROM stdin;
    public          postgres    false    214   sL       1          0    17249    client 
   TABLE DATA           y   COPY public.client (client_id, client_name, client_surname, client_phone, client_address, client_citizen_id) FROM stdin;
    public          postgres    false    212   �L       /          0    17240    employee 
   TABLE DATA           �   COPY public.employee (employee_id, employee_name, employee_surname, employee_phone, employee_address, employee_citizen_id, employee_position) FROM stdin;
    public          postgres    false    210   M       8          0    17392    schedule 
   TABLE DATA           �   COPY public.schedule (schedule_id, schedule_time, schedule_date, schedule_car_id, schedule_start_stop_station_id, schedule_end_stop_station_id) FROM stdin;
    public          postgres    false    219   �M       5          0    17293    station 
   TABLE DATA           `   COPY public.station (station_id, station_name, station_address, station_empoyee_id) FROM stdin;
    public          postgres    false    216   �M       6          0    17385    stop_station 
   TABLE DATA           z   COPY public.stop_station (stop_station_id, code, stop_station_county_th, stop_station_county_en, province_id) FROM stdin;
    public          postgres    false    217    N       :          0    17411    ticket 
   TABLE DATA           �   COPY public.ticket (ticket_id, ticket_price, ticket_schedule_id, ticket_client_id, ticket_station_id, ticket_employee_id, ticket_start_station_id, ticket_end_station_id, ticket_timestamp) FROM stdin;
    public          postgres    false    221   5�       H           0    0    car_car_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.car_car_id_seq', 1, false);
          public          postgres    false    213            I           0    0    client_client_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.client_client_id_seq', 8, true);
          public          postgres    false    211            J           0    0    employee_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employee_id_seq', 2, true);
          public          postgres    false    209            K           0    0    schedule_schedule_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 1, false);
          public          postgres    false    218            L           0    0    station_station_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.station_station_id_seq', 1, false);
          public          postgres    false    215            M           0    0    ticket_ticket_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ticket_ticket_id_seq', 1, false);
          public          postgres    false    220            �           2606    17286    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    214            �           2606    17256    client client_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (client_id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    212            �           2606    17247    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    210            �           2606    17399    schedule schedule_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (schedule_id);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            postgres    false    219            �           2606    17300    station station_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (station_id);
 >   ALTER TABLE ONLY public.station DROP CONSTRAINT station_pkey;
       public            postgres    false    216            �           2606    17390    stop_station stop_station_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.stop_station
    ADD CONSTRAINT stop_station_pkey PRIMARY KEY (stop_station_id);
 H   ALTER TABLE ONLY public.stop_station DROP CONSTRAINT stop_station_pkey;
       public            postgres    false    217            �           2606    17416    ticket ticket_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (ticket_id);
 <   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pkey;
       public            postgres    false    221            �           2606    17287 #   car car_car_employee_id_driver_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_car_employee_id_driver_fkey FOREIGN KEY (car_employee_id_driver) REFERENCES public.employee(employee_id);
 M   ALTER TABLE ONLY public.car DROP CONSTRAINT car_car_employee_id_driver_fkey;
       public          postgres    false    210    214    3468            �           2606    17405 3   schedule schedule_schedule_end_stop_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_schedule_end_stop_station_id_fkey FOREIGN KEY (schedule_end_stop_station_id) REFERENCES public.stop_station(stop_station_id);
 ]   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_schedule_end_stop_station_id_fkey;
       public          postgres    false    3476    217    219            �           2606    17400 5   schedule schedule_schedule_start_stop_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_schedule_start_stop_station_id_fkey FOREIGN KEY (schedule_start_stop_station_id) REFERENCES public.stop_station(stop_station_id);
 _   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_schedule_start_stop_station_id_fkey;
       public          postgres    false    217    219    3476            �           2606    17301 '   station station_station_empoyee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_station_empoyee_id_fkey FOREIGN KEY (station_empoyee_id) REFERENCES public.employee(employee_id);
 Q   ALTER TABLE ONLY public.station DROP CONSTRAINT station_station_empoyee_id_fkey;
       public          postgres    false    210    3468    216            �           2606    17422 #   ticket ticket_ticket_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_client_id_fkey FOREIGN KEY (ticket_client_id) REFERENCES public.client(client_id);
 M   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_client_id_fkey;
       public          postgres    false    3470    221    212            �           2606    17432 %   ticket ticket_ticket_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_employee_id_fkey FOREIGN KEY (ticket_employee_id) REFERENCES public.employee(employee_id);
 O   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_employee_id_fkey;
       public          postgres    false    210    221    3468            �           2606    17442 (   ticket ticket_ticket_end_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_end_station_id_fkey FOREIGN KEY (ticket_end_station_id) REFERENCES public.stop_station(stop_station_id);
 R   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_end_station_id_fkey;
       public          postgres    false    221    217    3476            �           2606    17417 %   ticket ticket_ticket_schedule_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_schedule_id_fkey FOREIGN KEY (ticket_schedule_id) REFERENCES public.schedule(schedule_id);
 O   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_schedule_id_fkey;
       public          postgres    false    221    219    3478            �           2606    17437 *   ticket ticket_ticket_start_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_start_station_id_fkey FOREIGN KEY (ticket_start_station_id) REFERENCES public.stop_station(stop_station_id);
 T   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_start_station_id_fkey;
       public          postgres    false    3476    221    217            �           2606    17427 $   ticket ticket_ticket_station_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_ticket_station_id_fkey FOREIGN KEY (ticket_station_id) REFERENCES public.station(station_id);
 N   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_ticket_station_id_fkey;
       public          postgres    false    216    3474    221            3      x������ � �      1   |   x����	1���bd	���b1*�*xO"���|ݼ�����4�����ь���#��'r�E{��&���rSʝY����1�zB�����<ġ�1��&��>�V�ˍ�b�W!�/���      /   �   x�u�1
�@E����L�a6w�Y5`�İdKm hacg����Q\,������'��8�]!l7˵��� :g��CHQ�/bh��
	���� ���U�rP9���{��M�r1?4�b��k&$&W��9�	��N@T&UY�֟i��'3�c>�(^.      8      x������ � �      5      x������ � �      6      x��}[OI��s�+x�B�y�|,�����X��K��e�6�0�X~kh4خ�9}�qc�OBt�q��v�~�YߺDF�Np��H�������X+V�kD���apq����͋��go/�/�>\��]�mѿ��������Z5}�,��A8�*�v.��.�N.�>������u� �>����l����cCH���/�D��,��^_��2��GGs�"��HR��]$��=����O�@�u>f���}�OV���,Y�n�'a���_P�6_�/�W��Ux\��Iw���`��8��;���x�9[Ο�O:�hez~�Z�^�����Ġ
�Ub�����2�iK疪!M:Q��DJ��H鍾0�k�0拐��������0YC���=wxE�^��soU��skՃJY
�t��{��S��S��_I�T �T��:���d�WL���<���P���'�/UO��!gaҚ����s�]���i5�(sB���ꜦEZ-n� h᥂�5pq�[^?�k����<�.̛+	�s�s�)S�������<C��m1�d�Ȝ���2�Kl�
"%<��I�/|i_������8�PE�W~5͜����W��#Xv����?�����xHl���@Ԣ����G����3�������-k#V�.�L��o��=]F˫�BHYԐ�C{�?�����:����r��
	P5��G���S�Af��;���/-W��d/�Z��3���[E���U�&��Ey�i3֝1��[��{��1*-*Z+�th�p]��VTv~яg���x�}�¸�R7�������Q4�����?,��C��nQ�1�x&�B4"��|�!Bq����_���/*9kՓ�~�8�d��/���[� �1d&NZy��&/y��0&�xk,K=���ikzd�ٕ���&%�T��-$�my��Rm��=}"d%�'���-�c�I���K�'�������>x�j�&P�طF ����}��e��{�=.��I 6I�2�,� h	&	[���D���3{���>)��$��8����ϷY�'��-$�M���lڴҶ�yH 'I[N>���>z�D��HÜK +I:9��NV������fY��@v����e�����#@������Y3�ys�񐛤!7*e�R@;��~C <I٢?�-m��̈�,kcؘ��{G{-��{�k��R�Q3��@��?؞}��:7���D(4��^y<����v������=dEbZǬ���ESi��H"�Wժo	PPLl*_�L������Վ�Ӏ���eIO�[	�d�I}���޻�[8k<�|����C~r�Q��iՋl��ce��F�҈��$��=��bө�m�d���x*-1@c�Ħ��%ϛ[#3���,�����C�00i2{\kg�ʸ�/!�DX�[�{�j�"��D�8���|:���6��y�Rsk�3��:;��p�9߯s��e���V򆙞�2�K�5�<�f&X�?��ߜ܌$)*�����1���g���]L��W���K#E1��T�cp�Wd�m��칄/��_13j�F}*�M�P�o;�(�e��ҩ�����Ey	����� ��[�sUo���~�����AUx��4g��Pb�S����aC?��'�Vq��%Њ�x�x�s��K�~57�~��I�l"��bq�z�=�g<��/&A;��wO�P�O� ��S��Db�u���w1�� ��=&���d� �Kז��>PPik�C�u]�N&T	��� ��3a��ҭ��]��O�ߩ��%��B��x�'5U�� ED�`�&�gE[�zA/ ���K�+�;A8�<�����J妨 '��OQ���C����^���)�6��m�<� C�cx�L>�����V�Sǚ'{�|kp���{D(�"V��KK�qOd��7 tI�H���{�}��d��;���l�A�*�K�  /��t�_#��W����l�ꞾM+�0100�6�_�/�����K��q	��96�EF�M����p)p�0�3�_�=����q
��^���U}��6m[�@1A����SY׬�'L�÷F�:ɧ��Q`��6�x���j�[�����iͮ��Y8mƯ����� 6�f*�
ggA ir���d��/�52k�O=��;c�fso�G@��u  `�����A�ՆAe�� ZȬ��k����P�e����қ��hM��9@@�l��
A�c���/�������
������K���5��ox5��������C4f�[Y]��A�#���_b*VY��JK��ld��S!��y�ғ}虯`�r$��}`��Ki�Dn�D���E��$�C޹{���������Z|���,p[���Y��zp��k�:���kS��)ϒ�3G�-�=_����pD�����m;-���Lapp�����@���*o󀕀�>l���p�'��,xjޙ{��!o2�!��<��گE�Zɫ"�XXLϦ\�}��p�y
?,/V)o�i�&��� 	�����*�SV紖�Aʭ�'����w;�s���2�� r��#���g� wk����F,��[�	<?�ۂh���x�q������o2ٞ<��n@C@K߰|k��+[���.����ҧ[Kˇ�X>��lj#��������V��pR6��dq�"Ӂ�����<�t%�G�+�Y����5��B��>d��36��QoE�;}��,�f/Y�G]bw��] ے�<j�P���C� �-v�3���%�w���$���i����,4��)j�TC�g�	r����m4I���$H ����@&4O_�@c@u�K�僆Uo��1"��+f&I@R���p"�_��UK�U�����W�4^d`� �j�7�
�L����[H:$`${q�W�ʅk\h�g���;�J,�������zn��G�����W�o��F?����e����?k㞾���;cއy�~^a������x��
��G2|
,�_�h����F,�:#~�������)�@D��+�����#]M������iB��U.��i��I�/0�iS�3�5:ud��E��)o�o�]��e~�Bd�b�^A��_�-�!��>��!$i	mQt.�}��oʧA��I����@F�H0:#��<v)����	1��i��8���~����ouK%�
k��
@�@����q�?Y~����#���L���	���<�-��� �CR@�����V2gb�1E
u%������Q��?XXѲs�yٚ}Ά����XOI��A3s"H,2$N����'�#�����3���x��_��8H(��#w5�B�9�-�̆K�O�g���+��+sh.��9x"���U+��2>IAg$ӥ�vL�װ�'D���l�,������|	���F2s���ۘηd;��t��L�J[R���X�<�
66kma2�;ع���a9�y��@��鋒$]S��4�R���Oo5�@�>ziLi��5�C�]~����+���6bW���7jV�/aMi�����#���aF�m8{h�� ttK7#C���c�k�hߴ��N�f����!kt	�r�Et���r/���c����ktb���PZ��};��Ț	i�R�Gv��::����>&��8�s�_N�ƯY'.V�~�*T���[��MWu ���8J!$Q���Tܳ��)�1�!�j�~6E�	F�`m0�ro}�z� A;%����9��	4��y���J��MmElE`؍���-��>*a@����֝x9{1?xM� A�	�Z!��do�c$�*y �@X�F��s=9�u�A]�u��AW6�@�NbdJ1zlx��Di�yzhy���^���9�k(bPJHE�;�K�����v,V�=� & ਞq?����\,S.A��383��:���ԛպ�I :í~bO�����d��-�Yͧ``Dw����#��	a�%    ��-I�S���z�R�4V�R�RH�3��?��*}81���ބ@�P��u1#ʻx�p0��+���a$}�	V$�_�u� �X�/�HF l��-y}����b?�H�ib����y*g���ҟ�_Z��
��c?���Jg��V~S:u��3J2Ð���V�� ��]4�W��M�gO�	� 8�Q���?��Z���;�>�-z���fA6��i����*6� ̅/���e�5D/�E +�mo����T�7���ȑ�J� �F5�y���ַ���b�9I N8p���M��O��)�f$��A�{,�H��Pm*N+6�%ƕ��@�ua����]�C��q.����+?��:�c'�,���ƒ>��G�%0��`](!cWk�/����\fK3��>-Q��G�����1�_���`c�Vҹ!D0��w��X0���d�8Jf/ӣ�'T`%*puM�s�f ��}E��(��U��m���n���hQYy?�nH���x8�B���gɚ��Y�F��;n���(�E���샧Qz�~�4��V���U2	�m���bl�S�K�Uݧ@f[�����kTݷI�r��ֻ̮�'~�`�*���G����v�@�^-ⷄ�+��&�	��z�L���n�NLv$��P�l�[��%�� ������FȮ���p��3���[s��ZT烋V}k�͉g�@0g�۰+����#�֪�yD� ��<R7e��E�R���^�_���ę�60��V�hv
�Zqh���dY��*r^Ɖ����),,q����K�B�#& �r>�t�������G���s~�H*�VJ���w��dՌ��Yy3Q��ev����=��I�^ �� � a�{�[�&����oC/�ƭSq��F�(�yF>�*r/9;���qo ����Z�l���ÿ�g�s�Z^��m���2�{[�q��M����}Nʗ_ۿO�)^ZFnu��'9/�۟3^x�k&�y�h8c������T�������j���>,��7��H�����޲i�g���R��'���F�f�	�� En��Xmo�n��`m���-�m���H���9=���3�|bZ�Op^�zgtx$ j*�t ,�UgJ3U
*?���<���Q���2���k>�o�K~�``x1���BQ�� *,��ڏ�ɰ
�9p	�ƪ$����E�j(w� ��U�L��CH�Ǒ���>r�5s�(e;j�F��_^�9�l
�i>`Hx���º�rG:;�R�+aO���h�-����!�.a�_
��
�Ĩ�I��f��C��5a� wL�sc��� ��Z�D`�M������$�k�~y�n����V"�N4�![:�L:0��O��=��txn%�,���1s��'�*������'�AB��?�=�-����ɢGI#F �=�cs��b�8۳V�0��b�%�dG��Ȗ��% K��6�G��� i:F�@fRs��<�]h�~_��� ��ըְ<�H�8�=�E�y��ᣪ��ϛ�p���̖�s��c�`�҉$�Ǽ�\a癧B�[;��=UG���XF 7#��֮5�x������"p�<�Z�ܮm��Z�e��*�%xƾ�Jų�v���ɼ�����>Hu�%�����|�E�]�?؞�����~ީ7���;���>�(�fΎ�!I�1����r��s�MXn����;|��k쫨HC>☽շV��/T=eq�P"�,~�x��[�.v� �ك����\�/�/Z(q�3�$r)~�[M�|���ֹ� �� -���[���\�e,�t�<�Jܦ��Ѱ/+bCf%R�b.N%OB�Âl��uWؾ}���۴��*���eJ��O?3�x/�Y�O�`�. VOy�)dw��7z���?����)yf~đ���auy���Z�9_�l�l����.8b|��5x2m`������_����@^���a��-���돂E�BX�[�G�,09�܎|��fd�*��4�cn������P�[���p���
f��+Ǽ;Yȯ.#���������FN�-����Qq0�U�UJ.���E>�Li�|��r*+#fR�d�/�7�ګĚA�?[GC)�bbHI͌�kkn�*������F�@�.	K��/��Go���q�cx���A $��^�^�B�-7N��!t�t("��jG��$�0�̂���r�r�ޟ��G�%�h�����2.��������A	�h�<�@T"-����+|�B�$�!��:_���~ێ�qi�$��:�zI�h�g9�zlca	H��(S���X~IT|e�������6foa�O38�`;���`��I��b���"�	G���)�� �����_b�R#ꚓ��˵N@#݂IL�yzn$J	q�$V9:�N�͠��8�-�e��kr��9�c_Yn�D_��(D�.�oﬞ&�b5._�gx����G��u&�x&NT�\����"�A*u��S�/k��"o�Y ��XzV���s�N?�&�˽Fґc��sJ�# җ�3[;�q�'Q�+00�֤b�b����Y]��_Q=�cw�ʈ[��VۑYw ����ם�"��$ )]��A[�/jϏ�wP�|t��]��&{�O�YNi�C�����*l� ��P䠐��g'�Tn��@S�H
�$�x�g�ԻҖs��4o��%�ۑO�a{ii�U=J��f^��E P�������m)`C`���i�=N'?k��ת�!�Q�ȋK^��-���W�[=�	y��O|�hT��%�<�Ԏ��+I�����^^ރ�T	[Q���ImQ2�Cº��y�gqwMk:<�!lK��*:.D�ͦ?��߱Z�:�������R����q�&�%.=շ�G p����:�~ns��G�6	���l]Q�݈�:[�of&ݯ$K�ݐ~�w���y�V�Ʊ�k���Â����j��B���+�檪s����	�L�+w,3�1�T�'� ����p�/�v��Q�R���Ob���-��Lp}4���[�Q �iֽ
�z[��uۢ�rt�׋W��%�旮ȫ;J�������*F�6K�KW�U�pQeN�a/�W;~.��T�~hZv�_�f4\���1dX�;K�����e4\��4�>�+_w�2��Z�p�U�ic�#�!��@=H��෴�z��M�d MAZ7�Mxd�C||\�x�
�$���q�{�DΡ�D��\fD9Z`����u���aø�F ��wFZ�B��-�|
+~����5r/�jR�!hUM�liC�̆�<�Kc�f��@��o0��>��;���ͦ�ʛ�N��ڂFH0B���_t����44��rq�$��\ � �8���?�Oc`xxꥤ��o�p��	� *�~+���1�H/���@�@澳�֥�W8Z�D  �`�-Y]�?-����$!H��˰�iU��,"�us9幅���~�ٍ��덱�u�����^�,�7��H
��Zms�n��%�:X�G ��`�����m����J:��NC�lc�ș��f6r
��ʰ`����Qv�-�t�����l�5y�L���d�v�m��� i`@�4�8�S�T��Ev��x<�W
���Y���Z�T$���D<I�NN �h]����:���8v�d@酜7B��H�AЂ�Q��ڳy�$L�SI!S��Q2����*&nV=�)���t����J�/�J�X;ǯf��[b$3kI׌��͊�?YԶC�؉@��؜��D���j`K_b%q �|�P"�Xa::IRgQ��xvfJ�%r���I8����ZC��f���?:Uz������$�I��bD����Yx9�%�껤������N��>�-vk�3���+i��V�`% ���b���=R``x�ǵ���StWר�e�6�ay˘�@
y��A���	����o���`m�g�3�e#���P�O���f��L    �' ��h��쉙�Aj�8�N�	�f�6o�s�T{B.�=f��(�g��OZF3�i$��<���V$I
F���ޔp�>o�08�M]��U��ٞHA�Zqk�wb~ Wq��#�%`k�:��U){�0��j���
�a�����|��$�u��l�z
Ђs�.�s�f�c�)	�Eu�����g�}�^~c�?�6�������j��9 fvi��>���Y"�AP�Î��y*np)3�
ല�E�hc�o_��
A	-�>�x��U�0(�(�u��iP7����!��J��C�Oz՛�O�E��ܷo�bg[�q1p�G=��㋵��҇&@��!�Aۦ\V�焂��ѳ�z�q5cԱ>�� �X���	�-Ǆ�bs�O�׋�� �����+���Jy�?��aS�C]U��k�hF|ꬻ�)��g�����1�1�d�5��l_	**uY��v1ȼW��Z��ʵ���6��Z�Ѿb_k� �8��EJ;\s�o��g�Vޚ����-��/*®��וt�22�었x��|����J���"$	�!G���a0}SgM��D�XZǚ�\�RUw���U`,��B|f��J ԫ�p��6��F����]1����c��:��z��w�A�N*"sP�h"��i|R%[������Y�6yR�@�4l����T��Ν��i5��]]j�D��T�� ��!R0�}=�RH���46��'�z(� +3<�g������=�$Ӂ�͢�C�>�q�3�p�:G�_X�lO�;fi�
��%�,)Fw���`�����L��L��T����v@ƨ?����1�a�h2�s�@��ܓYY���G=;��	I�xu����U��J׼�2@�K�O�G��GJ1v�W��_4�Wq���o���o�J?��5ll�P��@;@���ŤV���et	t��-�����4 6E�%�W:j���%A�PH��Է�V�F�֚l��%[�ч�w���J>�NR��{�)�S��,�ׂ��vV)Qrn���?��}"`'��ĳ����dk�g�PG/Y��%m�Z6��@lTd!?����(��ϼ�?΁�K"V`%�I͸iR�Sm�=1"�5l����p. �zI�٦�W�X��qڴ߱��62��3�,�W�������ùj�zs$���3Z�U����1~ׂ�}u��dND�`,p��$�}�Ѫu�5i100u���i�fyn�s �h�	3f~L�����j**�uv}Z����
>0� X��u�"O�Kƕ��{A�@��T�줬f=����+�)�+��Z	�M*#�3F�����eg��c���}7�G��� ���2�ui��II�Ё���L.]-@��j�֥���-Gw���Q��_�:��_+�=�Bp`cX��Ts��<}���Y���46�̂w���sO���`b�e}��Y�u���+��<N�RHr/u�奎�b}���S��oӼV+6�5�@�E��\��>m���7�G�2U*�TbUf�`���  3g�]�m
�2BbLv� R��R��R�S���^����pO�D�rG3��5�4�[!/� �ԵH�.i����3����&YW�������ȧ�:\��ke�����ʐϩ'2M�p��LS�{�/ʪ�npS_&1�\�X��3�?($��Vz��q^a�t۝G#}'�=L��Z�ܵ�a(��<#�C�ۤN�6"#$ƚ�Em��A)�"���C1$�D^�֛���Oë�����F R��̄�!�w��k��ZmބJ���I�:�ݳfX5-['2�}��T�`Ma���"��r�C��h 㐹F��x?�~A>�G�w�,�ڒ@^k�`��O��7GP���	�*6����ٹ����:�v 7��#ɐ�3��8�椮{G�7��*}�D�qe��7N�
�X\�yo- �,y��Kޘ�d� ��Jdֽ<��y����s�$vu&��yn7l���i����!�T�9�a���w�,+V;s�z��hPǠ���ӊk�q.�C���y�asި�j`d
d�4��r|a�L;Ʒ��@MqO4�j2u(W{ ��>>��~z���D�]��+�S����Q4P�����'�' �Y 5+�o1�gr�������"��d�Y0]�o�����1��j'�����0�@�"k��K���UeQ� �{@U���w���)`�s�#|֌�ȍ��g�\��?���3�����}'�q�����P%S1�-Vlh�X�C�ڒ�E�Mޘ����џjM��u�H�ٗ`��[��_P)�K۟�>:�{0�ؿ�K�7Gª�L�Og�.�`B�u���ui���`���������u#��®�s���	��l�-ܐ�R��#qQ�Eb0ʺ���uj"x��s��%﹒�p� �����iq����Y�%�T�_�z�r5p�<6̱>��sٴ��ֆ�AV�����˸k�" �� ��?������/�V�{}{/�`�}�����+��V���r�����mH�;��GVdt��Y�ºE�$����|�yK�`r`ZG�a���DV�R��-�А;����%~H�A��t�q� �hT��!�D��΂Z��U�����+I�2,����#��(�/��bb=7vʣ��!Y޼e�٣H4;O<pgt�zq=L:^2��B�&���C���S{$���u�(���H�?�ʀJ\��Т��f���S2��>l�^A?��
����3��w�c/&&�%p�g��IU�iF|k�iK#��?�?����?��������ͬ?,1.jn��6i�:!cA���E�4�|Q�����Z���U?�	Qq�������F}.wy�~��3)%9����^�bU9���<��s�)iR�E
	+��5����6��w�s!WG`%`r����h��K+ymq�t���mU:,�%Ҝð��%E�-k���44,�PG�%�Ř�"���w��[��2�3I ����{.4�1U(���>�Ӻҋj�z�,_�$e ���n�I��k���lǀ��T�'���m��k�+��v� ���Z��4�׍��6h<����g�C��/M9�D�{����<1��m��x��0^6݉JRs6�^��֙۫��wNą�	H�M�|FP�,h� �O����k�Y�g��gGyU��i�d�Q9PZ���q%��%����?�r�'��%(��M[�nMf-Z{�Ė'�� ('��ʲ#ˎ���z��w�k�D�0"�LE�So?[|k��:�Z��oz>���{MM�k���3����-�C:�'H����έů���o0Xg9����ӊx,bvgb�tpQ���p�!",A���dMɔ�O�,~�9���:�ãu��)a�	M�ګݰ��߲���?aK1�m>U_�����!��
T��:���-��Q�H@�mXR����([��K��]��,���2�$%I��̓�F�W�iKY|�)���w�fӅ&����,(g��E�~;��w����O~�-Uf��Sį���t�G�⮻��&��ٻc��s�ċ,�dĹ�iI�l�"�Ӭ��n��R����{󈰎�̲���.�w����5{,�fW���+��oGL�����?���guRO����5e��0��_�-wLކ~�ȝ��-�d�$�?Y�ޒr���$V�|l���b�@b�7�{W̼~տzI��X1U�]8��$��2��3)E�2���Pd � jm�p��/~IZ���ۦ�E(�Dσ�Y:9�ގ.�-�:� \U�=��5���z� ��E%h��[_Xr�e"V��O�.�T���kz����N0��hMƌ���S�'B����ԓ��J0T�j��Lt����g�U�M��
(��tra� K�1#3 �U�Z@��]��W�ZR�e����4{hEdLY��ݳ����i�&�UFӷй�4%h������H�,Ö��4Jd_��`��-�V��,y�Y."\�:     J=pk��à\�S��v��T�՛�\��KȪ"����6"~a�k{R��P00���o}��e��n@���ooӗx�c��62�v��~	�s3�I�u&��� g��,M5�Y�tǫ]���33�-�,D%�dB����'U�C(I@o{����S���f�]k�������v�w1'�T��,���۵��O��5ep������p�S&�l�x�K�j���vǝ��:pv�:>u�H�1wcO5���<���*�A8XX��������9��@���@]#�a��/m�2�$�,�,��%���lh��(p!pz���A?��<��f�)�~]q�wB]�F�j8�e�'0>���1T����s77w	k�/&I@�Y
I�|�\��'�p�q�HS�6X��l����r�I2��+�*�ܩ�Ǎ�x5p'�ݑ�c�����Ы ���e=�\HIj";u�o�]g���h(w=�����~+�(����~��s�ǐ��%�A��\vy֩w�	���Y��{�́lCF@�A�xĶ�}G���k�b�v�%G9w���O o����j-1�x��Ȓ�L��*k|�m�����!�׵�2���,lF�@�hLþu�l�ca�c ��)�QD=A�bb|�5i~ ��ʁU�ؼ��\��e���bbkg�GQ�@�];?��{I*�F��F1B��~w�[W����s��;h'�a"���Y��ڿlm������^	�m��8�r�"E��+�3�I*�QG�ېOe���b�Թ������y0a	�
ې�k���@r4
]l).�E���2�(
>q�Trd�Gf )s&%��u����jl��.n�_Lj�_5�ʓY��'��Oļ�KO���E�ڇ?r����(d���9�Ovm� _ppꃝ�vS��WʭIK�%����w�?ץEra8M��=,Q�����.�ǅ۸!�����6���Y�9#s ��qH���gˡH�q)�ё0\ �̑�n��?�ĩ4&��Q���^f�V�����!�� �K�]�����ņ�� �ˬ�)�c�+	Z���-qr�	7�1>���}�ݫw�9�,D1�2���/�ą�]� �{��ٶ;:Ƕ����������xk�&#�f�֥�Y/�u�&QȚ;�_{��J:��R���N�mX���i١9߭J���k���BL�B��"��3UFL�,��f��7's=(S��&4P����wQ��)�u������|qQ�=�oR22i"�%��8#��	�z`��f$�a���B��~&MA�oT}+��U�e������$ڲS�9�E��V$g�I!,� k��Τ��w�s��y�Q+@ﬕ���t`s0�£������4A���� ��h�[�-�r�[�iJCD�Q]gg�su����H�j�u�a"�U��h-��T�'�|�Q�儹�c��Sw\�i��e�#{Tt��!���*Q�è�F驿���irE��E��n�j��^�%���߁~cwLl��3��lR�x���+/�i���y�7���Wx�?�0�����Ws�'�v�C���p�c"�h�C�n,&�3�\�a� � {�?�01EG������8��Ħ�D�bXp�B����f�;�F��T�͚P׋�P��3� V�x�2��n�y��J4�7�� o2�Ϛ��k6��,��g1<v5y�����_M�$+��Y|�X[�n��xbXpZ7������֢G���r��b_��'Z��+�wQ����0nT�$���T�+|��H���+��eξ��ݽi�Z���"!��8tV�%�\�g�;vsNRsŭ4~3�䢑�evN�,��>{7+�?^�}@�CoeZ�T�����Sb���\��+��˧��Y��70�<��k���p��4���[Y�zɭF ̂��]����=�HX�a_(bPԗ�ok@D����ٿ�\D'�	�d���v���K�+�Ғ/�{� #���N�|����~��_q��HB:C3.#C����N��G�=�)tY����E���aDN�2M	��s�SV]Ka}��
AFߗǳ��w�7��Hs�q��W��'�rK߂tC[��YO�tZ��Q�b�Ҩ2�-8�[�VFC>�i�ŗH�m�C{z�1pe�=P����J1�Nr�G�~}!g�q�5�h�e�k�2����zvF'q���'�x��K�|o�U��Ҙ�l��.J��؎Y��<ywF����	Y�H�<ض[Ѿ��|
RjYHÄ&�׃:������B#@ۧ~y+L�R�н��A��b��^�*c�o1S�=��{��6r��q)p�뾭����H�22��xYI��ݸh3att}R�fPĪ���WU�LH,�l|�����.B�lj�/f����2f=��3��؃f>`ܗ�
�x��w�O�U��9�p��_NǨ^�3��E���L�G��z � Z�th�cp���5	��J���8P#� �R���w.�Ǒhh5��q�.dYP\��w[�+3����N�s�nE.��b=��Q+V���q��LP� �3*'jk�\	����K����=$� ��	�Ѩ���ۅ!! Y�����2�H�2��@�����5<�ONb`ix�`�Wk	4��������kRBz������'uFjg��>E�t������V<���ȝ����&�¶�;wa��5�O��jB>Y[��?���Ò�u
6�zo�(�}N�q���G�ȱ��¿�_��1z؝�I+�����;\Q�G�Zg*�$h�S!�
��)){�7s�,bE��r���aa<�eWg�rP��CyY��E���f������_��E ���uA,�k�\�X`��Iu/��
$� �坄l�0AW�?#�0\y����e`33ΑJ02��a�����^���-�� pi�!�W�e�/�C���}Y� �i�Q��+��?��m)��$��؉�W������I�4i�D�n�������톝#�ƚ;wH��WB��@/yq��]c۾��S�	
�l�e�Gz��w8Ʀ7d	���`���Ӏ/��?���gA���O�|���W��uӏ�	��(hI,?А�t:�v������#��"K�6mԚT����_�� ���|Т�j�_����N�l��C�E�W88��Hd�di'�V�*ͼ�p�L�z��W]�1^�(��s�\���j��u������Z��;N�f�|d1���uE������1ڢ�l
����m��:G���,AD@ļ�8E��? b�����̱ԙE>~� ���t�Z\?_����u�O-�p8���Ȼ/R���G�v,q�{�̔ãh�b�d�K��I�r���`:O	�C��R ����p���z��	$(4%h2���4��S��r�羭%I�lh�uM,���qȏ����D�����u;	��#��.����ֲ���i��UO�]�	;6 x�<��y-;�b 8�+$��~m~�np/l7�1u�Ψ�2p�N�ٲ~O0-l~��V� �DKY\���İΗ��o�zs�-�Yp3�C,n���\����b�i'�l{�/�,8j��3���������T�o��Xp�L_BU<�b��׍�kL�"�31����]l�	1_[���1ґIT.9�Q�C`��2kC��)��QH��ȼ����5C� ��E�j��K�.�\\4-��������cSkc��"�n��1��-�������6*+�4��-d�GS� �����������)��2_C9�P�	��M,��������Y��i�ܼ�Z�j]��T!�/?����U��|�H{�Ue���|�"A<�T�Y"-A�����`g�k|����2�\�R��g&{���s���^�]�2>_Ǡ�Ե �׬���=�����$/~�$"�� �^D/S�E`%�"��dW5�I���9�[|vf ����}�˵��|�cs�ڍ�L%�^�!�q� �B=���$���&8�[��h�w�dۙ�X���   `���vly���ey:���0X6�bV%��T�g�������٢�uz)�l��qaֲ���O��U��樯�iL6湳��9�;�Mʊ5�H�fe��Xc�U������eA���k������:���Q?_'}��D��(�9��/�+�} ��՝蝦�>W�3�%(��2|+�@ (���.��9��ᣱ����M�މY�|�U����d>�q��bb�E����V�ۻ��-��(���ɔ3��d,s�J�}����f�a�&Mb{���2È6�eZ.�́u+������V !q�:�lAY�)#"���F��9"!�Y�o������.��B�a�@VMy
J�S��ǤwC<rDV;���G�cƃa�y���\ο���-���9v1�����8@V"~�'�;=:�w�j�ڡFn�K��H1�������&�2LL�=��)iM?`m>�JE
�_�♒[���  ��r���^��ܠc��g�0���ϖH�S�g���G�7���4iI|��ʰ��ĖUz��f��k
���X���ȍ�ޘ��y�2O�3^�f׮_�=wWm̅���z���	�2bc����>��"��i��}&D������-O�΁n����9-�)�� �)����J�zk=� ����c�H+>�G����d<���>uX.�d��uIj�KZ0'���z��T�=ƷQ�|2Cc@K֤��w�(ٰ�;�x⫸�4N�� `�~C=-�UvU�<���F/����Kg.��Z�Ϊ���K�M���֣���Yc�����;˞g�s(�R�kˠ�,��v+�c�;+�`��3xJ���#D�Uo�8���� �)CA�@�.����w*}�"��c�]�aY������X��Z�ً�j���~�7��O�F�0���	��5�r^��
LLl��ʪ�,�U?��  %2G_\kdp�O��BJ@��3Է1�]��{�)g����wۛN�qwǽ�2V�P�^I���
l��ȏ�{]V~��s�|�-+��C|���t$�Rf����wVi��{��9� G�`2��>�ߑفF���j�&g��2�{��d�1v��3�el����1���s�
S�S~8����X,�1���0��l*���-�v��oss8�*�L �"ڿ٤m�^�f��?�	�|�PƠlT��q�%�I��к#�Xwjv�<~^���<^�!���������/��\���
��L�ޠ��eY�׎%�J�e���-F����&�ֈ�ag;�����̏�_755�� �8�      :      x������ � �     
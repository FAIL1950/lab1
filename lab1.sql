PGDMP     
    +            	    {           lab1    14.9    14.9 H    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16394    lab1    DATABASE     a   CREATE DATABASE lab1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lab1;
                postgres    false            �            1259    16430    Address    TABLE     �   CREATE TABLE public."Address" (
    "AddressID" integer NOT NULL,
    "Country" character varying(30) NOT NULL,
    "City" character varying(30) NOT NULL,
    "Street" character varying(30) NOT NULL,
    "House" character varying(30) NOT NULL
);
    DROP TABLE public."Address";
       public         heap    postgres    false            �            1259    16429    Address_AddressID_seq    SEQUENCE     �   CREATE SEQUENCE public."Address_AddressID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Address_AddressID_seq";
       public          postgres    false    216            D           0    0    Address_AddressID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Address_AddressID_seq" OWNED BY public."Address"."AddressID";
          public          postgres    false    215            �            1259    16423    Events    TABLE     �   CREATE TABLE public."Events" (
    "EventID" integer NOT NULL,
    "Title" character varying(100) NOT NULL,
    "Type" character varying(30) NOT NULL,
    "Date" timestamp without time zone NOT NULL,
    "Address_ID" integer NOT NULL
);
    DROP TABLE public."Events";
       public         heap    postgres    false            �            1259    16422    Events_EventID_seq    SEQUENCE     �   CREATE SEQUENCE public."Events_EventID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Events_EventID_seq";
       public          postgres    false    214            E           0    0    Events_EventID_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Events_EventID_seq" OWNED BY public."Events"."EventID";
          public          postgres    false    213            �            1259    16558 
   Phone_nums    TABLE     �   CREATE TABLE public."Phone_nums" (
    "PhoneID" integer NOT NULL,
    "Tourist_ID" integer NOT NULL,
    "Number" character varying(16) NOT NULL
);
     DROP TABLE public."Phone_nums";
       public         heap    postgres    false            �            1259    16557    Phone_nums_PhoneID_seq    SEQUENCE     �   CREATE SEQUENCE public."Phone_nums_PhoneID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Phone_nums_PhoneID_seq";
       public          postgres    false    224            F           0    0    Phone_nums_PhoneID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Phone_nums_PhoneID_seq" OWNED BY public."Phone_nums"."PhoneID";
          public          postgres    false    223            �            1259    16406    Tourists    TABLE     �   CREATE TABLE public."Tourists" (
    "TouristID" integer NOT NULL,
    "F_name" character varying(30) NOT NULL,
    "L_name" character varying(30) NOT NULL,
    email character varying(30) NOT NULL
);
    DROP TABLE public."Tourists";
       public         heap    postgres    false            �            1259    16508    Tourists/Events    TABLE     �   CREATE TABLE public."Tourists/Events" (
    "Tourist" integer NOT NULL,
    "Event_t" integer NOT NULL,
    booking_time timestamp without time zone NOT NULL
);
 %   DROP TABLE public."Tourists/Events";
       public         heap    postgres    false            �            1259    16507    Tourists/Events_Event_t_seq    SEQUENCE     �   CREATE SEQUENCE public."Tourists/Events_Event_t_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Tourists/Events_Event_t_seq";
       public          postgres    false    222            G           0    0    Tourists/Events_Event_t_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Tourists/Events_Event_t_seq" OWNED BY public."Tourists/Events"."Event_t";
          public          postgres    false    221            �            1259    16506    Tourists/Events_Tourist_seq    SEQUENCE     �   CREATE SEQUENCE public."Tourists/Events_Tourist_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Tourists/Events_Tourist_seq";
       public          postgres    false    222            H           0    0    Tourists/Events_Tourist_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."Tourists/Events_Tourist_seq" OWNED BY public."Tourists/Events"."Tourist";
          public          postgres    false    220            �            1259    16405    Tourists_TouristID_seq    SEQUENCE     �   CREATE SEQUENCE public."Tourists_TouristID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Tourists_TouristID_seq";
       public          postgres    false    212            I           0    0    Tourists_TouristID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Tourists_TouristID_seq" OWNED BY public."Tourists"."TouristID";
          public          postgres    false    211            �            1259    16401    Оrganizers    TABLE     �   CREATE TABLE public."Оrganizers" (
    "ОrganizerID" integer NOT NULL,
    "F_name" character varying(30) NOT NULL,
    "L_name" character varying(30) NOT NULL,
    email character varying(30) NOT NULL
);
 !   DROP TABLE public."Оrganizers";
       public         heap    postgres    false            �            1259    16477    Оrganizers/Events    TABLE     p   CREATE TABLE public."Оrganizers/Events" (
    "Оrganizer" integer NOT NULL,
    "Event_o" integer NOT NULL
);
 (   DROP TABLE public."Оrganizers/Events";
       public         heap    postgres    false            �            1259    16476    Оrganizers/Events_Event_seq    SEQUENCE     �   CREATE SEQUENCE public."Оrganizers/Events_Event_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Оrganizers/Events_Event_seq";
       public          postgres    false    219            J           0    0    Оrganizers/Events_Event_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Оrganizers/Events_Event_seq" OWNED BY public."Оrganizers/Events"."Event_o";
          public          postgres    false    218            �            1259    16475 !   Оrganizers/Events_Оrganizer_seq    SEQUENCE     �   CREATE SEQUENCE public."Оrganizers/Events_Оrganizer_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Оrganizers/Events_Оrganizer_seq";
       public          postgres    false    219            K           0    0 !   Оrganizers/Events_Оrganizer_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Оrganizers/Events_Оrganizer_seq" OWNED BY public."Оrganizers/Events"."Оrganizer";
          public          postgres    false    217            �            1259    16400    Оrganizers_ОrganizerID_seq    SEQUENCE     �   CREATE SEQUENCE public."Оrganizers_ОrganizerID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."Оrganizers_ОrganizerID_seq";
       public          postgres    false    210            L           0    0    Оrganizers_ОrganizerID_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Оrganizers_ОrganizerID_seq" OWNED BY public."Оrganizers"."ОrganizerID";
          public          postgres    false    209                       2604    16433    Address AddressID    DEFAULT     |   ALTER TABLE ONLY public."Address" ALTER COLUMN "AddressID" SET DEFAULT nextval('public."Address_AddressID_seq"'::regclass);
 D   ALTER TABLE public."Address" ALTER COLUMN "AddressID" DROP DEFAULT;
       public          postgres    false    215    216    216            ~           2604    16426    Events EventID    DEFAULT     v   ALTER TABLE ONLY public."Events" ALTER COLUMN "EventID" SET DEFAULT nextval('public."Events_EventID_seq"'::regclass);
 A   ALTER TABLE public."Events" ALTER COLUMN "EventID" DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16561    Phone_nums PhoneID    DEFAULT     ~   ALTER TABLE ONLY public."Phone_nums" ALTER COLUMN "PhoneID" SET DEFAULT nextval('public."Phone_nums_PhoneID_seq"'::regclass);
 E   ALTER TABLE public."Phone_nums" ALTER COLUMN "PhoneID" DROP DEFAULT;
       public          postgres    false    223    224    224            }           2604    16409    Tourists TouristID    DEFAULT     ~   ALTER TABLE ONLY public."Tourists" ALTER COLUMN "TouristID" SET DEFAULT nextval('public."Tourists_TouristID_seq"'::regclass);
 E   ALTER TABLE public."Tourists" ALTER COLUMN "TouristID" DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16511    Tourists/Events Tourist    DEFAULT     �   ALTER TABLE ONLY public."Tourists/Events" ALTER COLUMN "Tourist" SET DEFAULT nextval('public."Tourists/Events_Tourist_seq"'::regclass);
 J   ALTER TABLE public."Tourists/Events" ALTER COLUMN "Tourist" DROP DEFAULT;
       public          postgres    false    222    220    222            �           2604    16512    Tourists/Events Event_t    DEFAULT     �   ALTER TABLE ONLY public."Tourists/Events" ALTER COLUMN "Event_t" SET DEFAULT nextval('public."Tourists/Events_Event_t_seq"'::regclass);
 J   ALTER TABLE public."Tourists/Events" ALTER COLUMN "Event_t" DROP DEFAULT;
       public          postgres    false    221    222    222            |           2604    16494    Оrganizers ОrganizerID    DEFAULT     �   ALTER TABLE ONLY public."Оrganizers" ALTER COLUMN "ОrganizerID" SET DEFAULT nextval('public."Оrganizers_ОrganizerID_seq"'::regclass);
 K   ALTER TABLE public."Оrganizers" ALTER COLUMN "ОrganizerID" DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16480    Оrganizers/Events Оrganizer    DEFAULT     �   ALTER TABLE ONLY public."Оrganizers/Events" ALTER COLUMN "Оrganizer" SET DEFAULT nextval('public."Оrganizers/Events_Оrganizer_seq"'::regclass);
 P   ALTER TABLE public."Оrganizers/Events" ALTER COLUMN "Оrganizer" DROP DEFAULT;
       public          postgres    false    217    219    219            �           2604    16481    Оrganizers/Events Event_o    DEFAULT     �   ALTER TABLE ONLY public."Оrganizers/Events" ALTER COLUMN "Event_o" SET DEFAULT nextval('public."Оrganizers/Events_Event_seq"'::regclass);
 M   ALTER TABLE public."Оrganizers/Events" ALTER COLUMN "Event_o" DROP DEFAULT;
       public          postgres    false    218    219    219            5          0    16430    Address 
   TABLE DATA           V   COPY public."Address" ("AddressID", "Country", "City", "Street", "House") FROM stdin;
    public          postgres    false    216   4V       3          0    16423    Events 
   TABLE DATA           T   COPY public."Events" ("EventID", "Title", "Type", "Date", "Address_ID") FROM stdin;
    public          postgres    false    214   pV       =          0    16558 
   Phone_nums 
   TABLE DATA           I   COPY public."Phone_nums" ("PhoneID", "Tourist_ID", "Number") FROM stdin;
    public          postgres    false    224   �V       1          0    16406    Tourists 
   TABLE DATA           L   COPY public."Tourists" ("TouristID", "F_name", "L_name", email) FROM stdin;
    public          postgres    false    212   �V       ;          0    16508    Tourists/Events 
   TABLE DATA           O   COPY public."Tourists/Events" ("Tourist", "Event_t", booking_time) FROM stdin;
    public          postgres    false    222   3W       /          0    16401    Оrganizers 
   TABLE DATA           R   COPY public."Оrganizers" ("ОrganizerID", "F_name", "L_name", email) FROM stdin;
    public          postgres    false    210   qW       8          0    16477    Оrganizers/Events 
   TABLE DATA           G   COPY public."Оrganizers/Events" ("Оrganizer", "Event_o") FROM stdin;
    public          postgres    false    219   �W       M           0    0    Address_AddressID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Address_AddressID_seq"', 1, true);
          public          postgres    false    215            N           0    0    Events_EventID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Events_EventID_seq"', 2, true);
          public          postgres    false    213            O           0    0    Phone_nums_PhoneID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Phone_nums_PhoneID_seq"', 2, true);
          public          postgres    false    223            P           0    0    Tourists/Events_Event_t_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Tourists/Events_Event_t_seq"', 1, false);
          public          postgres    false    221            Q           0    0    Tourists/Events_Tourist_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Tourists/Events_Tourist_seq"', 1, false);
          public          postgres    false    220            R           0    0    Tourists_TouristID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Tourists_TouristID_seq"', 4, true);
          public          postgres    false    211            S           0    0    Оrganizers/Events_Event_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Оrganizers/Events_Event_seq"', 1, false);
          public          postgres    false    218            T           0    0 !   Оrganizers/Events_Оrganizer_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Оrganizers/Events_Оrganizer_seq"', 1, false);
          public          postgres    false    217            U           0    0    Оrganizers_ОrganizerID_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Оrganizers_ОrganizerID_seq"', 2, true);
          public          postgres    false    209            �           2606    16435    Address Address_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("AddressID");
 B   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_pkey";
       public            postgres    false    216            �           2606    16428    Events Events_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY ("EventID");
 @   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Events_pkey";
       public            postgres    false    214            �           2606    16563    Phone_nums Phone_nums_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Phone_nums"
    ADD CONSTRAINT "Phone_nums_pkey" PRIMARY KEY ("PhoneID");
 H   ALTER TABLE ONLY public."Phone_nums" DROP CONSTRAINT "Phone_nums_pkey";
       public            postgres    false    224            �           2606    16514 $   Tourists/Events Tourists/Events_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Tourists/Events"
    ADD CONSTRAINT "Tourists/Events_pkey" PRIMARY KEY ("Tourist", "Event_t", booking_time);
 R   ALTER TABLE ONLY public."Tourists/Events" DROP CONSTRAINT "Tourists/Events_pkey";
       public            postgres    false    222    222    222            �           2606    16411    Tourists Tourists_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Tourists"
    ADD CONSTRAINT "Tourists_pkey" PRIMARY KEY ("TouristID");
 D   ALTER TABLE ONLY public."Tourists" DROP CONSTRAINT "Tourists_pkey";
       public            postgres    false    212            �           2606    16552    Tourists U_e1 
   CONSTRAINT     M   ALTER TABLE ONLY public."Tourists"
    ADD CONSTRAINT "U_e1" UNIQUE (email);
 ;   ALTER TABLE ONLY public."Tourists" DROP CONSTRAINT "U_e1";
       public            postgres    false    212            �           2606    16556    Оrganizers U_e2 
   CONSTRAINT     P   ALTER TABLE ONLY public."Оrganizers"
    ADD CONSTRAINT "U_e2" UNIQUE (email);
 >   ALTER TABLE ONLY public."Оrganizers" DROP CONSTRAINT "U_e2";
       public            postgres    false    210            �           2606    16574    Phone_nums U_num 
   CONSTRAINT     S   ALTER TABLE ONLY public."Phone_nums"
    ADD CONSTRAINT "U_num" UNIQUE ("Number");
 >   ALTER TABLE ONLY public."Phone_nums" DROP CONSTRAINT "U_num";
       public            postgres    false    224            �           2606    16542    Оrganizers/Events U_org 
   CONSTRAINT     j   ALTER TABLE ONLY public."Оrganizers/Events"
    ADD CONSTRAINT "U_org" UNIQUE ("Оrganizer", "Event_o");
 F   ALTER TABLE ONLY public."Оrganizers/Events" DROP CONSTRAINT "U_org";
       public            postgres    false    219    219            �           2606    16544    Tourists/Events U_tour 
   CONSTRAINT     s   ALTER TABLE ONLY public."Tourists/Events"
    ADD CONSTRAINT "U_tour" UNIQUE ("Tourist", "Event_t", booking_time);
 D   ALTER TABLE ONLY public."Tourists/Events" DROP CONSTRAINT "U_tour";
       public            postgres    false    222    222    222            �           2606    16483 *   Оrganizers/Events Оrganizers/Events_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Оrganizers/Events"
    ADD CONSTRAINT "Оrganizers/Events_pkey" PRIMARY KEY ("Оrganizer", "Event_o");
 X   ALTER TABLE ONLY public."Оrganizers/Events" DROP CONSTRAINT "Оrganizers/Events_pkey";
       public            postgres    false    219    219            �           2606    16474    Оrganizers Оrganizers_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Оrganizers"
    ADD CONSTRAINT "Оrganizers_pkey" PRIMARY KEY ("ОrganizerID");
 J   ALTER TABLE ONLY public."Оrganizers" DROP CONSTRAINT "Оrganizers_pkey";
       public            postgres    false    210            �           2606    16495    Events fk_address    FK CONSTRAINT     �   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT fk_address FOREIGN KEY ("Address_ID") REFERENCES public."Address"("AddressID") NOT VALID;
 =   ALTER TABLE ONLY public."Events" DROP CONSTRAINT fk_address;
       public          postgres    false    3216    216    214            �           2606    16489    Оrganizers/Events fk_event    FK CONSTRAINT     �   ALTER TABLE ONLY public."Оrganizers/Events"
    ADD CONSTRAINT fk_event FOREIGN KEY ("Event_o") REFERENCES public."Events"("EventID");
 G   ALTER TABLE ONLY public."Оrganizers/Events" DROP CONSTRAINT fk_event;
       public          postgres    false    3214    214    219            �           2606    16515    Tourists/Events fk_events    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tourists/Events"
    ADD CONSTRAINT fk_events FOREIGN KEY ("Event_t") REFERENCES public."Events"("EventID");
 E   ALTER TABLE ONLY public."Tourists/Events" DROP CONSTRAINT fk_events;
       public          postgres    false    3214    222    214            �           2606    16566    Phone_nums fk_nums    FK CONSTRAINT     �   ALTER TABLE ONLY public."Phone_nums"
    ADD CONSTRAINT fk_nums FOREIGN KEY ("Tourist_ID") REFERENCES public."Tourists"("TouristID");
 >   ALTER TABLE ONLY public."Phone_nums" DROP CONSTRAINT fk_nums;
       public          postgres    false    212    3210    224            �           2606    16484    Оrganizers/Events fk_organizer    FK CONSTRAINT     �   ALTER TABLE ONLY public."Оrganizers/Events"
    ADD CONSTRAINT fk_organizer FOREIGN KEY ("Оrganizer") REFERENCES public."Оrganizers"("ОrganizerID");
 K   ALTER TABLE ONLY public."Оrganizers/Events" DROP CONSTRAINT fk_organizer;
       public          postgres    false    219    210    3208            �           2606    16520    Tourists/Events fk_tourists    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tourists/Events"
    ADD CONSTRAINT fk_tourists FOREIGN KEY ("Tourist") REFERENCES public."Tourists"("TouristID");
 G   ALTER TABLE ONLY public."Tourists/Events" DROP CONSTRAINT fk_tourists;
       public          postgres    false    212    222    3210            5   ,   x�3�t�JM�PJ-(M��L�(J�H��JM�K�4����� Ҩ
K      3   8   x�3�I�;�{xm��
)G��r��q� ������qr��qqq ���      =      x�3�4�4�0�47645342����� +4�      1   =   x�3�t�+���t/-N�����/�44261uH�M���K���2��,K�@Y�2$�=... ��      ;   .   x�3�4�4202�54�50V04�26�20�2�7��P���� X      /   6   x�3�t�IM����t/vH�M���K���2��N,I�t*�/���vB������ Ӂ<      8      x�3�4�2�=... ��     
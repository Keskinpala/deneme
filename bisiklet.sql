PGDMP     &    ;                x            Bisiklet    12.3    12.3 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    36166    Bisiklet    DATABASE     �   CREATE DATABASE "Bisiklet" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE "Bisiklet";
                postgres    false            �            1255    36167    test()    FUNCTION     �   CREATE FUNCTION public.test() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
         INSERT INTO cari(toplam)
         VALUES(NEW.odeme_toplam);
 
    RETURN NEW;
END;
$$;
    DROP FUNCTION public.test();
       public          postgres    false            �            1255    36168    test1()    FUNCTION     �   CREATE FUNCTION public.test1() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
         INSERT INTO cari(toplam)
         VALUES(NEW.odeme_toplam);
 
    RETURN NEW;
END;
$$;
    DROP FUNCTION public.test1();
       public          postgres    false            �            1255    36169    test2()    FUNCTION     �   CREATE FUNCTION public.test2() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
         INSERT INTO cari(toplam)
         VALUES(NEW.odeme_toplam);
 
    RETURN NEW;
END;
$$;
    DROP FUNCTION public.test2();
       public          postgres    false            �            1255    36170    test3()    FUNCTION     �   CREATE FUNCTION public.test3() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
         INSERT INTO cari(toplam)
         VALUES(NEW.odeme_toplam);
 
    RETURN NEW;
END;
$$;
    DROP FUNCTION public.test3();
       public          postgres    false            �            1259    36171    admins    TABLE     �   CREATE TABLE public.admins (
    admin_id integer NOT NULL,
    admin_kad character varying(20),
    admin_password character varying(500),
    admin_updated_at timestamp without time zone
);
    DROP TABLE public.admins;
       public         heap    postgres    false            �            1259    36177    admins_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admins_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.admins_admin_id_seq;
       public          postgres    false    202            �           0    0    admins_admin_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.admins_admin_id_seq OWNED BY public.admins.admin_id;
          public          postgres    false    203            �            1259    36179    bisiklet    TABLE     �   CREATE TABLE public.bisiklet (
    bisiklet_id integer NOT NULL,
    bisiklet_ad character varying(100),
    bisiklet_adres character varying(200)
);
    DROP TABLE public.bisiklet;
       public         heap    postgres    false            �            1259    36182    araba_araba_id_seq    SEQUENCE     �   CREATE SEQUENCE public.araba_araba_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.araba_araba_id_seq;
       public          postgres    false    204            �           0    0    araba_araba_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.araba_araba_id_seq OWNED BY public.bisiklet.bisiklet_id;
          public          postgres    false    205            �            1259    36184    basvuru    TABLE     �   CREATE TABLE public.basvuru (
    basvuru_id integer NOT NULL,
    basvuru_ad character varying(20),
    basvuru_fiyat integer
);
    DROP TABLE public.basvuru;
       public         heap    postgres    false            �            1259    36187    basvuru_basvuru_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basvuru_basvuru_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.basvuru_basvuru_id_seq;
       public          postgres    false    206            �           0    0    basvuru_basvuru_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.basvuru_basvuru_id_seq OWNED BY public.basvuru.basvuru_id;
          public          postgres    false    207            �            1259    36189    bdurum    TABLE     ^   CREATE TABLE public.bdurum (
    bdurum_id integer NOT NULL,
    bdurum_ogrenci_id integer
);
    DROP TABLE public.bdurum;
       public         heap    postgres    false            �            1259    36192    bdurum_bdurum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bdurum_bdurum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.bdurum_bdurum_id_seq;
       public          postgres    false    208            �           0    0    bdurum_bdurum_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.bdurum_bdurum_id_seq OWNED BY public.bdurum.bdurum_id;
          public          postgres    false    209            �            1259    36194    bdurum_ihtiyac    TABLE     k   CREATE TABLE public.bdurum_ihtiyac (
    bdurum_ihtiyac_id integer NOT NULL,
    ihtiyac_miktar integer
);
 "   DROP TABLE public.bdurum_ihtiyac;
       public         heap    postgres    false            �            1259    36197 $   bdurum_ihtiyac_bdurum_ihtiyac_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bdurum_ihtiyac_bdurum_ihtiyac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.bdurum_ihtiyac_bdurum_ihtiyac_id_seq;
       public          postgres    false    210            �           0    0 $   bdurum_ihtiyac_bdurum_ihtiyac_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.bdurum_ihtiyac_bdurum_ihtiyac_id_seq OWNED BY public.bdurum_ihtiyac.bdurum_ihtiyac_id;
          public          postgres    false    211            �            1259    36253    bisikletolmayanlar    TABLE     �   CREATE TABLE public.bisikletolmayanlar (
    olmayan_id integer NOT NULL,
    parca_ad character varying(20),
    parca_fiyat integer
);
 &   DROP TABLE public.bisikletolmayanlar;
       public         heap    postgres    false            �            1259    36238    calisandurum    TABLE     �   CREATE TABLE public.calisandurum (
    durum_id integer NOT NULL,
    calisan_ad character varying(30),
    calisan_durum character varying
);
     DROP TABLE public.calisandurum;
       public         heap    postgres    false            �            1259    36204 
   calisanlar    TABLE     p   CREATE TABLE public.calisanlar (
    calisanlar_id integer NOT NULL,
    calisanlar_ad character varying(20)
);
    DROP TABLE public.calisanlar;
       public         heap    postgres    false            �            1259    36199    cari    TABLE     V   CREATE TABLE public.cari (
    cari_id integer NOT NULL,
    toplam numeric(100,0)
);
    DROP TABLE public.cari;
       public         heap    postgres    false            �            1259    36202    cari_cari_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cari_cari_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cari_cari_id_seq;
       public          postgres    false    212            �           0    0    cari_cari_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cari_cari_id_seq OWNED BY public.cari.cari_id;
          public          postgres    false    213            �            1259    36207    kasa    TABLE     �   CREATE TABLE public.kasa (
    kasa_id integer NOT NULL,
    basvurus_id integer,
    durum_id integer,
    ogrenci_id integer
);
    DROP TABLE public.kasa;
       public         heap    postgres    false            �            1259    36210    kasa_kasa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kasa_kasa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kasa_kasa_id_seq;
       public          postgres    false    215            �           0    0    kasa_kasa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kasa_kasa_id_seq OWNED BY public.kasa.kasa_id;
          public          postgres    false    216            �            1259    36212    tamirolcaklar    TABLE     �   CREATE TABLE public.tamirolcaklar (
    tamir_id integer NOT NULL,
    tamir_ad character varying(20),
    tamir_neden character varying(200)
);
 !   DROP TABLE public.tamirolcaklar;
       public         heap    postgres    false            �            1259    36215    kayitli_kayitli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kayitli_kayitli_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.kayitli_kayitli_id_seq;
       public          postgres    false    217            �           0    0    kayitli_kayitli_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kayitli_kayitli_id_seq OWNED BY public.tamirolcaklar.tamir_id;
          public          postgres    false    218            �            1259    36217    kesinti    TABLE     �   CREATE TABLE public.kesinti (
    kesinti_id integer NOT NULL,
    kesinti_ad character varying(20),
    kesinti_miktar numeric
);
    DROP TABLE public.kesinti;
       public         heap    postgres    false            �            1259    36223    kesinti_all    TABLE     p   CREATE TABLE public.kesinti_all (
    kesinti_all_id integer NOT NULL,
    basvuru_id integer,
    days date
);
    DROP TABLE public.kesinti_all;
       public         heap    postgres    false            �            1259    36226    kesinti_all_kesinti_all_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kesinti_all_kesinti_all_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.kesinti_all_kesinti_all_id_seq;
       public          postgres    false    220            �           0    0    kesinti_all_kesinti_all_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.kesinti_all_kesinti_all_id_seq OWNED BY public.kesinti_all.kesinti_all_id;
          public          postgres    false    221            �            1259    36228    kesinti_kesinti_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kesinti_kesinti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.kesinti_kesinti_id_seq;
       public          postgres    false    219            �           0    0    kesinti_kesinti_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.kesinti_kesinti_id_seq OWNED BY public.kesinti.kesinti_id;
          public          postgres    false    222            �            1259    36230    odeme    TABLE     ~   CREATE TABLE public.odeme (
    odeme_id integer NOT NULL,
    odeme_ad character varying,
    odeme_toplam numeric(100,0)
);
    DROP TABLE public.odeme;
       public         heap    postgres    false            �            1259    36236    odeme_odeme_id_seq    SEQUENCE     �   CREATE SEQUENCE public.odeme_odeme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.odeme_odeme_id_seq;
       public          postgres    false    223            �           0    0    odeme_odeme_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.odeme_odeme_id_seq OWNED BY public.odeme.odeme_id;
          public          postgres    false    224            �            1259    36244    ogrenci_durum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ogrenci_durum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ogrenci_durum_id_seq;
       public          postgres    false    225            �           0    0    ogrenci_durum_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.ogrenci_durum_id_seq OWNED BY public.calisandurum.durum_id;
          public          postgres    false    226            �            1259    36246    ogrencis_ogrenci_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ogrencis_ogrenci_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ogrencis_ogrenci_id_seq;
       public          postgres    false    214            �           0    0    ogrencis_ogrenci_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.ogrencis_ogrenci_id_seq OWNED BY public.calisanlar.calisanlar_id;
          public          postgres    false    227            �            1259    36248    puantaj    TABLE     e   CREATE TABLE public.puantaj (
    puan_id integer NOT NULL,
    basvuru_id integer,
    days date
);
    DROP TABLE public.puantaj;
       public         heap    postgres    false            �            1259    36251    puantaj_puan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.puantaj_puan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.puantaj_puan_id_seq;
       public          postgres    false    228            �           0    0    puantaj_puan_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.puantaj_puan_id_seq OWNED BY public.puantaj.puan_id;
          public          postgres    false    229            �            1259    36256    yazili_yazili_id_seq    SEQUENCE     �   CREATE SEQUENCE public.yazili_yazili_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.yazili_yazili_id_seq;
       public          postgres    false    230            �           0    0    yazili_yazili_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.yazili_yazili_id_seq OWNED BY public.bisikletolmayanlar.olmayan_id;
          public          postgres    false    231            �
           2604    36258    admins admin_id    DEFAULT     r   ALTER TABLE ONLY public.admins ALTER COLUMN admin_id SET DEFAULT nextval('public.admins_admin_id_seq'::regclass);
 >   ALTER TABLE public.admins ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    36260    basvuru basvuru_id    DEFAULT     x   ALTER TABLE ONLY public.basvuru ALTER COLUMN basvuru_id SET DEFAULT nextval('public.basvuru_basvuru_id_seq'::regclass);
 A   ALTER TABLE public.basvuru ALTER COLUMN basvuru_id DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    36261    bdurum bdurum_id    DEFAULT     t   ALTER TABLE ONLY public.bdurum ALTER COLUMN bdurum_id SET DEFAULT nextval('public.bdurum_bdurum_id_seq'::regclass);
 ?   ALTER TABLE public.bdurum ALTER COLUMN bdurum_id DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    36262     bdurum_ihtiyac bdurum_ihtiyac_id    DEFAULT     �   ALTER TABLE ONLY public.bdurum_ihtiyac ALTER COLUMN bdurum_ihtiyac_id SET DEFAULT nextval('public.bdurum_ihtiyac_bdurum_ihtiyac_id_seq'::regclass);
 O   ALTER TABLE public.bdurum_ihtiyac ALTER COLUMN bdurum_ihtiyac_id DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    36259    bisiklet bisiklet_id    DEFAULT     v   ALTER TABLE ONLY public.bisiklet ALTER COLUMN bisiklet_id SET DEFAULT nextval('public.araba_araba_id_seq'::regclass);
 C   ALTER TABLE public.bisiklet ALTER COLUMN bisiklet_id DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    36272    bisikletolmayanlar olmayan_id    DEFAULT     �   ALTER TABLE ONLY public.bisikletolmayanlar ALTER COLUMN olmayan_id SET DEFAULT nextval('public.yazili_yazili_id_seq'::regclass);
 L   ALTER TABLE public.bisikletolmayanlar ALTER COLUMN olmayan_id DROP DEFAULT;
       public          postgres    false    231    230            �
           2604    36270    calisandurum durum_id    DEFAULT     y   ALTER TABLE ONLY public.calisandurum ALTER COLUMN durum_id SET DEFAULT nextval('public.ogrenci_durum_id_seq'::regclass);
 D   ALTER TABLE public.calisandurum ALTER COLUMN durum_id DROP DEFAULT;
       public          postgres    false    226    225            �
           2604    36264    calisanlar calisanlar_id    DEFAULT        ALTER TABLE ONLY public.calisanlar ALTER COLUMN calisanlar_id SET DEFAULT nextval('public.ogrencis_ogrenci_id_seq'::regclass);
 G   ALTER TABLE public.calisanlar ALTER COLUMN calisanlar_id DROP DEFAULT;
       public          postgres    false    227    214            �
           2604    36263    cari cari_id    DEFAULT     l   ALTER TABLE ONLY public.cari ALTER COLUMN cari_id SET DEFAULT nextval('public.cari_cari_id_seq'::regclass);
 ;   ALTER TABLE public.cari ALTER COLUMN cari_id DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    36265    kasa kasa_id    DEFAULT     l   ALTER TABLE ONLY public.kasa ALTER COLUMN kasa_id SET DEFAULT nextval('public.kasa_kasa_id_seq'::regclass);
 ;   ALTER TABLE public.kasa ALTER COLUMN kasa_id DROP DEFAULT;
       public          postgres    false    216    215            �
           2604    36267    kesinti kesinti_id    DEFAULT     x   ALTER TABLE ONLY public.kesinti ALTER COLUMN kesinti_id SET DEFAULT nextval('public.kesinti_kesinti_id_seq'::regclass);
 A   ALTER TABLE public.kesinti ALTER COLUMN kesinti_id DROP DEFAULT;
       public          postgres    false    222    219            �
           2604    36268    kesinti_all kesinti_all_id    DEFAULT     �   ALTER TABLE ONLY public.kesinti_all ALTER COLUMN kesinti_all_id SET DEFAULT nextval('public.kesinti_all_kesinti_all_id_seq'::regclass);
 I   ALTER TABLE public.kesinti_all ALTER COLUMN kesinti_all_id DROP DEFAULT;
       public          postgres    false    221    220            �
           2604    36269    odeme odeme_id    DEFAULT     p   ALTER TABLE ONLY public.odeme ALTER COLUMN odeme_id SET DEFAULT nextval('public.odeme_odeme_id_seq'::regclass);
 =   ALTER TABLE public.odeme ALTER COLUMN odeme_id DROP DEFAULT;
       public          postgres    false    224    223            �
           2604    36271    puantaj puan_id    DEFAULT     r   ALTER TABLE ONLY public.puantaj ALTER COLUMN puan_id SET DEFAULT nextval('public.puantaj_puan_id_seq'::regclass);
 >   ALTER TABLE public.puantaj ALTER COLUMN puan_id DROP DEFAULT;
       public          postgres    false    229    228            �
           2604    36266    tamirolcaklar tamir_id    DEFAULT     |   ALTER TABLE ONLY public.tamirolcaklar ALTER COLUMN tamir_id SET DEFAULT nextval('public.kayitli_kayitli_id_seq'::regclass);
 E   ALTER TABLE public.tamirolcaklar ALTER COLUMN tamir_id DROP DEFAULT;
       public          postgres    false    218    217            �          0    36171    admins 
   TABLE DATA           W   COPY public.admins (admin_id, admin_kad, admin_password, admin_updated_at) FROM stdin;
    public          postgres    false    202   ,�       �          0    36184    basvuru 
   TABLE DATA           H   COPY public.basvuru (basvuru_id, basvuru_ad, basvuru_fiyat) FROM stdin;
    public          postgres    false    206   I�       �          0    36189    bdurum 
   TABLE DATA           >   COPY public.bdurum (bdurum_id, bdurum_ogrenci_id) FROM stdin;
    public          postgres    false    208   {�       �          0    36194    bdurum_ihtiyac 
   TABLE DATA           K   COPY public.bdurum_ihtiyac (bdurum_ihtiyac_id, ihtiyac_miktar) FROM stdin;
    public          postgres    false    210   ��       �          0    36179    bisiklet 
   TABLE DATA           L   COPY public.bisiklet (bisiklet_id, bisiklet_ad, bisiklet_adres) FROM stdin;
    public          postgres    false    204   ��       �          0    36253    bisikletolmayanlar 
   TABLE DATA           O   COPY public.bisikletolmayanlar (olmayan_id, parca_ad, parca_fiyat) FROM stdin;
    public          postgres    false    230   ��       �          0    36238    calisandurum 
   TABLE DATA           K   COPY public.calisandurum (durum_id, calisan_ad, calisan_durum) FROM stdin;
    public          postgres    false    225   
�       �          0    36204 
   calisanlar 
   TABLE DATA           B   COPY public.calisanlar (calisanlar_id, calisanlar_ad) FROM stdin;
    public          postgres    false    214   :�       �          0    36199    cari 
   TABLE DATA           /   COPY public.cari (cari_id, toplam) FROM stdin;
    public          postgres    false    212   g�       �          0    36207    kasa 
   TABLE DATA           J   COPY public.kasa (kasa_id, basvurus_id, durum_id, ogrenci_id) FROM stdin;
    public          postgres    false    215   ��       �          0    36217    kesinti 
   TABLE DATA           I   COPY public.kesinti (kesinti_id, kesinti_ad, kesinti_miktar) FROM stdin;
    public          postgres    false    219   Ɓ       �          0    36223    kesinti_all 
   TABLE DATA           G   COPY public.kesinti_all (kesinti_all_id, basvuru_id, days) FROM stdin;
    public          postgres    false    220   �       �          0    36230    odeme 
   TABLE DATA           A   COPY public.odeme (odeme_id, odeme_ad, odeme_toplam) FROM stdin;
    public          postgres    false    223    �       �          0    36248    puantaj 
   TABLE DATA           <   COPY public.puantaj (puan_id, basvuru_id, days) FROM stdin;
    public          postgres    false    228   4�       �          0    36212    tamirolcaklar 
   TABLE DATA           H   COPY public.tamirolcaklar (tamir_id, tamir_ad, tamir_neden) FROM stdin;
    public          postgres    false    217   Q�       �           0    0    admins_admin_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.admins_admin_id_seq', 1, false);
          public          postgres    false    203            �           0    0    araba_araba_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.araba_araba_id_seq', 3, true);
          public          postgres    false    205            �           0    0    basvuru_basvuru_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.basvuru_basvuru_id_seq', 3, true);
          public          postgres    false    207            �           0    0    bdurum_bdurum_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.bdurum_bdurum_id_seq', 1, false);
          public          postgres    false    209            �           0    0 $   bdurum_ihtiyac_bdurum_ihtiyac_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.bdurum_ihtiyac_bdurum_ihtiyac_id_seq', 1, false);
          public          postgres    false    211            �           0    0    cari_cari_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cari_cari_id_seq', 12, true);
          public          postgres    false    213            �           0    0    kasa_kasa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kasa_kasa_id_seq', 1, false);
          public          postgres    false    216            �           0    0    kayitli_kayitli_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.kayitli_kayitli_id_seq', 3, true);
          public          postgres    false    218            �           0    0    kesinti_all_kesinti_all_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.kesinti_all_kesinti_all_id_seq', 1, false);
          public          postgres    false    221            �           0    0    kesinti_kesinti_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.kesinti_kesinti_id_seq', 1, false);
          public          postgres    false    222            �           0    0    odeme_odeme_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.odeme_odeme_id_seq', 5, true);
          public          postgres    false    224            �           0    0    ogrenci_durum_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ogrenci_durum_id_seq', 5, true);
          public          postgres    false    226            �           0    0    ogrencis_ogrenci_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ogrencis_ogrenci_id_seq', 6, true);
          public          postgres    false    227            �           0    0    puantaj_puan_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.puantaj_puan_id_seq', 1, false);
          public          postgres    false    229            �           0    0    yazili_yazili_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.yazili_yazili_id_seq', 3, true);
          public          postgres    false    231            �
           2606    36274    admins admins_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (admin_id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public            postgres    false    202            �
           2606    36276    bisiklet araba_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bisiklet
    ADD CONSTRAINT araba_pkey PRIMARY KEY (bisiklet_id);
 =   ALTER TABLE ONLY public.bisiklet DROP CONSTRAINT araba_pkey;
       public            postgres    false    204            �
           2606    36278    basvuru basvuru_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.basvuru
    ADD CONSTRAINT basvuru_pkey PRIMARY KEY (basvuru_id);
 >   ALTER TABLE ONLY public.basvuru DROP CONSTRAINT basvuru_pkey;
       public            postgres    false    206            �
           2606    36280 "   bdurum_ihtiyac bdurum_ihtiyac_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.bdurum_ihtiyac
    ADD CONSTRAINT bdurum_ihtiyac_pkey PRIMARY KEY (bdurum_ihtiyac_id);
 L   ALTER TABLE ONLY public.bdurum_ihtiyac DROP CONSTRAINT bdurum_ihtiyac_pkey;
       public            postgres    false    210            �
           2606    36282    bdurum bdurum_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.bdurum
    ADD CONSTRAINT bdurum_pkey PRIMARY KEY (bdurum_id);
 <   ALTER TABLE ONLY public.bdurum DROP CONSTRAINT bdurum_pkey;
       public            postgres    false    208            �
           2606    36284    cari cari_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.cari
    ADD CONSTRAINT cari_pkey PRIMARY KEY (cari_id);
 8   ALTER TABLE ONLY public.cari DROP CONSTRAINT cari_pkey;
       public            postgres    false    212            �
           2606    36286    kasa kasa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.kasa
    ADD CONSTRAINT kasa_pkey PRIMARY KEY (kasa_id);
 8   ALTER TABLE ONLY public.kasa DROP CONSTRAINT kasa_pkey;
       public            postgres    false    215            �
           2606    36288    tamirolcaklar kayitli_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tamirolcaklar
    ADD CONSTRAINT kayitli_pkey PRIMARY KEY (tamir_id);
 D   ALTER TABLE ONLY public.tamirolcaklar DROP CONSTRAINT kayitli_pkey;
       public            postgres    false    217            �
           2606    36290    kesinti_all kesinti_all_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.kesinti_all
    ADD CONSTRAINT kesinti_all_pkey PRIMARY KEY (kesinti_all_id);
 F   ALTER TABLE ONLY public.kesinti_all DROP CONSTRAINT kesinti_all_pkey;
       public            postgres    false    220            �
           2606    36292    kesinti kesinti_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.kesinti
    ADD CONSTRAINT kesinti_pkey PRIMARY KEY (kesinti_id);
 >   ALTER TABLE ONLY public.kesinti DROP CONSTRAINT kesinti_pkey;
       public            postgres    false    219                       2606    36294    odeme odeme_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.odeme
    ADD CONSTRAINT odeme_pkey PRIMARY KEY (odeme_id);
 :   ALTER TABLE ONLY public.odeme DROP CONSTRAINT odeme_pkey;
       public            postgres    false    223                       2606    36296    calisandurum ogrenci_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.calisandurum
    ADD CONSTRAINT ogrenci_pkey PRIMARY KEY (durum_id);
 C   ALTER TABLE ONLY public.calisandurum DROP CONSTRAINT ogrenci_pkey;
       public            postgres    false    225            �
           2606    36298    calisanlar ogrencis_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.calisanlar
    ADD CONSTRAINT ogrencis_pkey PRIMARY KEY (calisanlar_id);
 B   ALTER TABLE ONLY public.calisanlar DROP CONSTRAINT ogrencis_pkey;
       public            postgres    false    214                       2606    36300    puantaj puantaj_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.puantaj
    ADD CONSTRAINT puantaj_pkey PRIMARY KEY (puan_id);
 >   ALTER TABLE ONLY public.puantaj DROP CONSTRAINT puantaj_pkey;
       public            postgres    false    228                       2606    36302    bisikletolmayanlar yazili_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.bisikletolmayanlar
    ADD CONSTRAINT yazili_pkey PRIMARY KEY (olmayan_id);
 H   ALTER TABLE ONLY public.bisikletolmayanlar DROP CONSTRAINT yazili_pkey;
       public            postgres    false    230                       2620    36303    odeme test_trigger    TRIGGER     f   CREATE TRIGGER test_trigger AFTER DELETE ON public.odeme FOR EACH ROW EXECUTE FUNCTION public.test();
 +   DROP TRIGGER test_trigger ON public.odeme;
       public          postgres    false    223    232            	           2620    36304    odeme test_trigger1    TRIGGER     h   CREATE TRIGGER test_trigger1 AFTER DELETE ON public.odeme FOR EACH ROW EXECUTE FUNCTION public.test1();
 ,   DROP TRIGGER test_trigger1 ON public.odeme;
       public          postgres    false    233    223            
           2620    36305    odeme test_trigger2    TRIGGER     h   CREATE TRIGGER test_trigger2 AFTER DELETE ON public.odeme FOR EACH ROW EXECUTE FUNCTION public.test2();
 ,   DROP TRIGGER test_trigger2 ON public.odeme;
       public          postgres    false    234    223                       2620    36306    odeme test_trigger3    TRIGGER     h   CREATE TRIGGER test_trigger3 AFTER DELETE ON public.odeme FOR EACH ROW EXECUTE FUNCTION public.test3();
 ,   DROP TRIGGER test_trigger3 ON public.odeme;
       public          postgres    false    223    235            �      x������ � �      �   "   x�3�LN0�2�tr��444����� �i�      �      x������ � �      �      x������ � �      �      x�3�L,NI��bN0	D\1z\\\ t��      �      x�3�t,I�N��444����� +�      �       x�3�t,I�N��<ܞ���[�Z����� f4�      �      x�3�tJ-��2�t,I�N������ ;�      �   2   x�3���2& �D��sa"9���,�L0i&�@d� ��s      �      x������ � �      �      x������ � �      �      x������ � �      �   $   x�3�H,:�<Q������LN#�=... ���      �      x������ � �      �      x������ � �     
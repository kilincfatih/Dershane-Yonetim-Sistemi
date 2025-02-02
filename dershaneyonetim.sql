PGDMP                          {            dershaneyonetim    14.5    14.5 =    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    41259    dershaneyonetim    DATABASE     l   CREATE DATABASE dershaneyonetim WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.utf8';
    DROP DATABASE dershaneyonetim;
                postgres    false            �            1255    41465    fonksiyon()    FUNCTION     �   CREATE FUNCTION public.fonksiyon() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
	begin 
	update toplamogrencitable set otoplam =otoplam+1;
	return new;
	end;
	$$;
 "   DROP FUNCTION public.fonksiyon();
       public          postgres    false            �            1255    41488    kdv(double precision)    FUNCTION     �   CREATE FUNCTION public.kdv(dershane_gelirleri_taksitler double precision) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
begin
dershane_gelirleri_taksitler:=dershane_gelirleri_taksitler*0.18;
return dershane_gelirleri_taksitler;
end;
$$;
 I   DROP FUNCTION public.kdv(dershane_gelirleri_taksitler double precision);
       public          postgres    false            �            1259    41470    alir    TABLE     �   CREATE TABLE public.alir (
    alirid character varying NOT NULL,
    ders_kodu character varying,
    ogrenci_tckn character varying
);
    DROP TABLE public.alir;
       public         heap    postgres    false            �            1259    41267    ders    TABLE     �   CREATE TABLE public.ders (
    ders_kodu character varying NOT NULL,
    ders_adi character varying,
    haftalik_ders_saati character varying
);
    DROP TABLE public.ders;
       public         heap    postgres    false            �            1259    41423    dershane_gelirleri    TABLE     �   CREATE TABLE public.dershane_gelirleri (
    ogrenci_tckn character varying(11) NOT NULL,
    dershane_gelirleri_taksitler integer
);
 &   DROP TABLE public.dershane_gelirleri;
       public         heap    postgres    false            �            1259    41416    dershane_giderleri    TABLE     �   CREATE TABLE public.dershane_giderleri (
    "odeme_yapılan_tckn_vkn" character varying(11) NOT NULL,
    unvan_isim character varying,
    odeme_tutari integer,
    odeme_sekli character varying
);
 &   DROP TABLE public.dershane_giderleri;
       public         heap    postgres    false            �            1259    41317    diger_personeller    TABLE       CREATE TABLE public.diger_personeller (
    diger_personel_tckn character varying(11) NOT NULL,
    diger_personel_adsoyad character varying,
    diger_personel_departman character varying,
    diger_personel_maas_bilgisi character varying,
    diger_personel_telno character varying
);
 %   DROP TABLE public.diger_personeller;
       public         heap    postgres    false            �            1259    41362    girer    TABLE     �   CREATE TABLE public.girer (
    girerid character varying NOT NULL,
    sinav_sinavkodu character varying,
    ogrenci_ogrenci_tckn character varying(11)
);
    DROP TABLE public.girer;
       public         heap    postgres    false            �            1259    41379    odeme_yapar    TABLE     �   CREATE TABLE public.odeme_yapar (
    odeme_yaparid character varying NOT NULL,
    ogrenci_ogrenci_tckn character varying(11)
);
    DROP TABLE public.odeme_yapar;
       public         heap    postgres    false            �            1259    41260    ogrenci    TABLE     �   CREATE TABLE public.ogrenci (
    ogrenci_tckn character varying(11) NOT NULL,
    ogrenci_adsoyad character varying,
    ogrenci_cinsiyet character varying(5),
    ogrenci_dershane_no character varying(11)
);
    DROP TABLE public.ogrenci;
       public         heap    postgres    false            �            1259    41274    ogrenci_iletisim_bilgileri    TABLE     �   CREATE TABLE public.ogrenci_iletisim_bilgileri (
    ogrenci_tckn character varying(11) NOT NULL,
    ogrenci_mailadresi character varying,
    ogrenci_adres character varying,
    ogrenci_telno character varying
);
 .   DROP TABLE public.ogrenci_iletisim_bilgileri;
       public         heap    postgres    false            �            1259    41338    ogretmen    TABLE     �   CREATE TABLE public.ogretmen (
    ogretmen_tckn character varying(11) NOT NULL,
    ogretmen_adsoyad character varying,
    ogretmen_telno character varying,
    ogretmen_alani character varying,
    ogretmen_maas_bilgisi character varying
);
    DROP TABLE public.ogretmen;
       public         heap    postgres    false            �            1259    41324    sinav    TABLE     i   CREATE TABLE public.sinav (
    sinavkodu character varying NOT NULL,
    sinavturu character varying
);
    DROP TABLE public.sinav;
       public         heap    postgres    false            �            1259    41331    sinif    TABLE     �   CREATE TABLE public.sinif (
    sinifkodu character varying NOT NULL,
    sinifturu character varying,
    sinifkapasitesi integer
);
    DROP TABLE public.sinif;
       public         heap    postgres    false            �            1259    41467    toplamogrencitable    TABLE     @   CREATE TABLE public.toplamogrencitable (
    otoplam integer
);
 &   DROP TABLE public.toplamogrencitable;
       public         heap    postgres    false            �            1259    41286    veli    TABLE     �   CREATE TABLE public.veli (
    ogrenci_tckn character varying(11) NOT NULL,
    veli_telno character varying,
    veli_adsoyad character varying
);
    DROP TABLE public.veli;
       public         heap    postgres    false            �            1259    41391    yapilir    TABLE     �   CREATE TABLE public.yapilir (
    yapilirid character varying NOT NULL,
    sinav_sinavkodu character varying,
    sinif_sinifkodu character varying
);
    DROP TABLE public.yapilir;
       public         heap    postgres    false            U          0    41470    alir 
   TABLE DATA           ?   COPY public.alir (alirid, ders_kodu, ogrenci_tckn) FROM stdin;
    public          postgres    false    223   �J       H          0    41267    ders 
   TABLE DATA           H   COPY public.ders (ders_kodu, ders_adi, haftalik_ders_saati) FROM stdin;
    public          postgres    false    210   �J       S          0    41423    dershane_gelirleri 
   TABLE DATA           X   COPY public.dershane_gelirleri (ogrenci_tckn, dershane_gelirleri_taksitler) FROM stdin;
    public          postgres    false    221   eK       R          0    41416    dershane_giderleri 
   TABLE DATA           n   COPY public.dershane_giderleri ("odeme_yapılan_tckn_vkn", unvan_isim, odeme_tutari, odeme_sekli) FROM stdin;
    public          postgres    false    220   �K       K          0    41317    diger_personeller 
   TABLE DATA           �   COPY public.diger_personeller (diger_personel_tckn, diger_personel_adsoyad, diger_personel_departman, diger_personel_maas_bilgisi, diger_personel_telno) FROM stdin;
    public          postgres    false    213   bL       O          0    41362    girer 
   TABLE DATA           O   COPY public.girer (girerid, sinav_sinavkodu, ogrenci_ogrenci_tckn) FROM stdin;
    public          postgres    false    217   |M       P          0    41379    odeme_yapar 
   TABLE DATA           J   COPY public.odeme_yapar (odeme_yaparid, ogrenci_ogrenci_tckn) FROM stdin;
    public          postgres    false    218   �M       G          0    41260    ogrenci 
   TABLE DATA           g   COPY public.ogrenci (ogrenci_tckn, ogrenci_adsoyad, ogrenci_cinsiyet, ogrenci_dershane_no) FROM stdin;
    public          postgres    false    209   
N       I          0    41274    ogrenci_iletisim_bilgileri 
   TABLE DATA           t   COPY public.ogrenci_iletisim_bilgileri (ogrenci_tckn, ogrenci_mailadresi, ogrenci_adres, ogrenci_telno) FROM stdin;
    public          postgres    false    211   3P       N          0    41338    ogretmen 
   TABLE DATA           z   COPY public.ogretmen (ogretmen_tckn, ogretmen_adsoyad, ogretmen_telno, ogretmen_alani, ogretmen_maas_bilgisi) FROM stdin;
    public          postgres    false    216   PP       L          0    41324    sinav 
   TABLE DATA           5   COPY public.sinav (sinavkodu, sinavturu) FROM stdin;
    public          postgres    false    214   �R       M          0    41331    sinif 
   TABLE DATA           F   COPY public.sinif (sinifkodu, sinifturu, sinifkapasitesi) FROM stdin;
    public          postgres    false    215   S       T          0    41467    toplamogrencitable 
   TABLE DATA           5   COPY public.toplamogrencitable (otoplam) FROM stdin;
    public          postgres    false    222   �S       J          0    41286    veli 
   TABLE DATA           F   COPY public.veli (ogrenci_tckn, veli_telno, veli_adsoyad) FROM stdin;
    public          postgres    false    212   �S       Q          0    41391    yapilir 
   TABLE DATA           N   COPY public.yapilir (yapilirid, sinav_sinavkodu, sinif_sinifkodu) FROM stdin;
    public          postgres    false    219   	U       �           2606    41476    alir alir_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alir
    ADD CONSTRAINT alir_pkey PRIMARY KEY (alirid);
 8   ALTER TABLE ONLY public.alir DROP CONSTRAINT alir_pkey;
       public            postgres    false    223            �           2606    41273    ders ders_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.ders
    ADD CONSTRAINT ders_pkey PRIMARY KEY (ders_kodu);
 8   ALTER TABLE ONLY public.ders DROP CONSTRAINT ders_pkey;
       public            postgres    false    210            �           2606    41427 *   dershane_gelirleri dershane_gelirleri_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.dershane_gelirleri
    ADD CONSTRAINT dershane_gelirleri_pkey PRIMARY KEY (ogrenci_tckn);
 T   ALTER TABLE ONLY public.dershane_gelirleri DROP CONSTRAINT dershane_gelirleri_pkey;
       public            postgres    false    221            �           2606    41422 *   dershane_giderleri dershane_giderleri_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.dershane_giderleri
    ADD CONSTRAINT dershane_giderleri_pkey PRIMARY KEY ("odeme_yapılan_tckn_vkn");
 T   ALTER TABLE ONLY public.dershane_giderleri DROP CONSTRAINT dershane_giderleri_pkey;
       public            postgres    false    220            �           2606    41323 (   diger_personeller diger_personeller_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.diger_personeller
    ADD CONSTRAINT diger_personeller_pkey PRIMARY KEY (diger_personel_tckn);
 R   ALTER TABLE ONLY public.diger_personeller DROP CONSTRAINT diger_personeller_pkey;
       public            postgres    false    213            �           2606    41368    girer girer_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.girer
    ADD CONSTRAINT girer_pkey PRIMARY KEY (girerid);
 :   ALTER TABLE ONLY public.girer DROP CONSTRAINT girer_pkey;
       public            postgres    false    217            �           2606    41385    odeme_yapar odeme_yapar_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.odeme_yapar
    ADD CONSTRAINT odeme_yapar_pkey PRIMARY KEY (odeme_yaparid);
 F   ALTER TABLE ONLY public.odeme_yapar DROP CONSTRAINT odeme_yapar_pkey;
       public            postgres    false    218            �           2606    41280 :   ogrenci_iletisim_bilgileri ogrenci_iletisim_bilgileri_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.ogrenci_iletisim_bilgileri
    ADD CONSTRAINT ogrenci_iletisim_bilgileri_pkey PRIMARY KEY (ogrenci_tckn);
 d   ALTER TABLE ONLY public.ogrenci_iletisim_bilgileri DROP CONSTRAINT ogrenci_iletisim_bilgileri_pkey;
       public            postgres    false    211            �           2606    41266    ogrenci ogrenci_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT ogrenci_pkey PRIMARY KEY (ogrenci_tckn);
 >   ALTER TABLE ONLY public.ogrenci DROP CONSTRAINT ogrenci_pkey;
       public            postgres    false    209            �           2606    41344    ogretmen ogretmen_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.ogretmen
    ADD CONSTRAINT ogretmen_pkey PRIMARY KEY (ogretmen_tckn);
 @   ALTER TABLE ONLY public.ogretmen DROP CONSTRAINT ogretmen_pkey;
       public            postgres    false    216            �           2606    41330    sinav sinav_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.sinav
    ADD CONSTRAINT sinav_pkey PRIMARY KEY (sinavkodu);
 :   ALTER TABLE ONLY public.sinav DROP CONSTRAINT sinav_pkey;
       public            postgres    false    214            �           2606    41337    sinif sinif_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.sinif
    ADD CONSTRAINT sinif_pkey PRIMARY KEY (sinifkodu);
 :   ALTER TABLE ONLY public.sinif DROP CONSTRAINT sinif_pkey;
       public            postgres    false    215            �           2606    41292    veli veli_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.veli
    ADD CONSTRAINT veli_pkey PRIMARY KEY (ogrenci_tckn);
 8   ALTER TABLE ONLY public.veli DROP CONSTRAINT veli_pkey;
       public            postgres    false    212            �           2606    41397    yapilir yapilir_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.yapilir
    ADD CONSTRAINT yapilir_pkey PRIMARY KEY (yapilirid);
 >   ALTER TABLE ONLY public.yapilir DROP CONSTRAINT yapilir_pkey;
       public            postgres    false    219            �           2620    41466    ogrenci sayactrigger1    TRIGGER     n   CREATE TRIGGER sayactrigger1 AFTER INSERT ON public.ogrenci FOR EACH ROW EXECUTE FUNCTION public.fonksiyon();
 .   DROP TRIGGER sayactrigger1 ON public.ogrenci;
       public          postgres    false    209    224            �           2606    41477    alir alir_ders_kodu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alir
    ADD CONSTRAINT alir_ders_kodu_fkey FOREIGN KEY (ders_kodu) REFERENCES public.ders(ders_kodu) ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.alir DROP CONSTRAINT alir_ders_kodu_fkey;
       public          postgres    false    3224    210    223            �           2606    41482    alir alir_ogrenci_tckn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alir
    ADD CONSTRAINT alir_ogrenci_tckn_fkey FOREIGN KEY (ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.alir DROP CONSTRAINT alir_ogrenci_tckn_fkey;
       public          postgres    false    3222    209    223            �           2606    41428 7   dershane_gelirleri dershane_gelirleri_ogrenci_tckn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dershane_gelirleri
    ADD CONSTRAINT dershane_gelirleri_ogrenci_tckn_fkey FOREIGN KEY (ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn);
 a   ALTER TABLE ONLY public.dershane_gelirleri DROP CONSTRAINT dershane_gelirleri_ogrenci_tckn_fkey;
       public          postgres    false    3222    221    209            �           2606    41281 G   ogrenci_iletisim_bilgileri ogrenci_iletisim_bilgileri_ogrenci_tckn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ogrenci_iletisim_bilgileri
    ADD CONSTRAINT ogrenci_iletisim_bilgileri_ogrenci_tckn_fkey FOREIGN KEY (ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn);
 q   ALTER TABLE ONLY public.ogrenci_iletisim_bilgileri DROP CONSTRAINT ogrenci_iletisim_bilgileri_ogrenci_tckn_fkey;
       public          postgres    false    211    209    3222            �           2606    41374    girer ogrenci_ogrenci_tckn_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.girer
    ADD CONSTRAINT ogrenci_ogrenci_tckn_fk FOREIGN KEY (ogrenci_ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn);
 G   ALTER TABLE ONLY public.girer DROP CONSTRAINT ogrenci_ogrenci_tckn_fk;
       public          postgres    false    3222    217    209            �           2606    41386 #   odeme_yapar ogrenci_ogrenci_tckn_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.odeme_yapar
    ADD CONSTRAINT ogrenci_ogrenci_tckn_fk FOREIGN KEY (ogrenci_ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn);
 M   ALTER TABLE ONLY public.odeme_yapar DROP CONSTRAINT ogrenci_ogrenci_tckn_fk;
       public          postgres    false    3222    218    209            �           2606    41369    girer sinav_sinavkodu_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.girer
    ADD CONSTRAINT sinav_sinavkodu_fk FOREIGN KEY (sinav_sinavkodu) REFERENCES public.sinav(sinavkodu);
 B   ALTER TABLE ONLY public.girer DROP CONSTRAINT sinav_sinavkodu_fk;
       public          postgres    false    217    3232    214            �           2606    41398    yapilir sinav_sinavkodu_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.yapilir
    ADD CONSTRAINT sinav_sinavkodu_fk FOREIGN KEY (sinav_sinavkodu) REFERENCES public.sinav(sinavkodu);
 D   ALTER TABLE ONLY public.yapilir DROP CONSTRAINT sinav_sinavkodu_fk;
       public          postgres    false    3232    219    214            �           2606    41403    yapilir sinif_sinifkodu_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.yapilir
    ADD CONSTRAINT sinif_sinifkodu_fk FOREIGN KEY (sinif_sinifkodu) REFERENCES public.sinif(sinifkodu);
 D   ALTER TABLE ONLY public.yapilir DROP CONSTRAINT sinif_sinifkodu_fk;
       public          postgres    false    219    215    3234            �           2606    41293    veli veli_ogrenci_tckn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.veli
    ADD CONSTRAINT veli_ogrenci_tckn_fkey FOREIGN KEY (ogrenci_tckn) REFERENCES public.ogrenci(ogrenci_tckn);
 E   ALTER TABLE ONLY public.veli DROP CONSTRAINT veli_ogrenci_tckn_fkey;
       public          postgres    false    212    3222    209            U      x������ � �      H   �   x�M�A
�0���a�4���.�d7-n"Nq�!����2̔ d7���&���l�'�h�����r���d�9��?���#yG104z�����ƭI��m�{����~�]J����h!h�窱��Ge���V�����!�C�P=(      S   D   x�ʹ� ���3�]���j1O[����;$g�h׭ұR޴�mKG��uS1v�/N)�n)�} |�/�      R   �   x�U�1
�0 ���9A��6��Xq'G��Q�1[
���tq�z/u<,j]�D�J�m�wr�N1�t��)�7�J)Xۓ�)d6\Q�#�Ẉ���{wi}�Z�հ��N0aM3��hh���4�m��P�����;��,�a7=�жB| �l4M      K   
  x�u�1n1E��)|��{lo�DAJ��)�KXk��+�er�mRm��^1�@i�y��?�����U<�C8c�k�|�y��S�B^ )$WrĴtN['�2��o��?���>�.�a{���%Tw�(�)��uZ�a��p(�o�ws�?_<�߃�����H+u-�a�}L����66)B]����:�!�.���D^�2��+'ZY�9�0�x
���O�����&l#Hq���*��L����S�E�ryE���>�������1���x`      O   E   x�3��10�45��076��46�2��YX����Y��p�ŌPԙ@Őՙr:b�gCV���� +�|      P   )   x�3�45��076��46�2ⴰ00517�077������ gD�      G     x�e��n�0�g�)�y�#�c��nѢY���$"X��.�@ߠ�Ǭ��M�{�"[��j?���?A��)%�s^U��۰��]�?��n^�
��̖0�Ѫ/��j3����}՘˪Yw���=�<jO��CBg��Ǘm1gy�[%�E��#3��LՏ������l���졈�$���Z%��`������������wA��՝����F�Q�#y͞��	@}�]6�v�Y.��D�(�>��Z�륙��RpV����R �ߥ5���\�E�@�@Q٘�E'�]I�M��n�v��z�;��Y��j>�E�z�<$�f��3���M9��������<u�Cb^��1�����VƘ��Y��F��j�w�(K��`c��=�,�N�0����ٿZO�9�v�+�=Xu��k
�îv�t8tI����$����m�ܔ��Z�zF睦CS����U%���ht����Z�$�v�˲\o�#F_�&$���4�z�w�?�{�-mi��d�s���V������p�??h��~"'      I      x������ � �      N   J  x�e�=n�@���)x�`wvgZ9�9)7�l���!)4)@�@n�*���4��Q�W�?��aC>�7�{D張VH#঩�:�~mB�:�AJE�)B�P����z�,Z��'��-�2���T���B2�YM��e���iaYi�rp����qސ�e*�,��q�k/��bU�M6o�9�#g�y�o���f4��%j��B��ІM�إ!�DҖ��*n�XW�|��Nxe���K�ƺf��1�c�Z��X�oij�Qg����X�s�:=�]*F�����tjT �6V9�~7yv���D�H.���*��AXc�$�e`��M�ۻ�P�5�PB�e,�:NUio�Ѳ��}�U�̖��@vr�P�-X�`?�C���xz��f��ap��1����1d��������t�ƾ�Sj��$a�^j"�`�"�n���d��in�^
D-G�8T�=l��PqG�s 3�S����c��}��Տ0@�JZ�;���r��=ZsM�p��l���q||?$�����X�,���պɎ/Eǆ���8�Tn@O�4������P5y_�*����*d�e�&��w���/��	�      L   G   x��10��Q>�1/���F. ��S�S�S�S�U�l�#����1��	��)���P� !�U      M   q   x�v��7�7�N�<��81G!��Ƽ#ӎl�41�
��5�&k�5�!��o�������#�l,�9�1��"#b�S�΄��`�(�*S���۪R������ ��}�      T      x�32�����       J   W  x�e�;N�@�k�� ���<��IA�!!Ѭ E;AF"�iS�vOgs/�I��K�_c����'&M�\=̊��]�]�l�N�SV�cϱ�yYWo�{�5D����R�6/�҉*$�J{%6�H�H�ݴ�\:4D�������<A���b9\c����c�v�)j"Bp��M�]�Y�>,Tb8�1�/5�� ۷��	�@���\,r���DA±X�k��!��cR������RD[8Ұ@�I���U�C���0e����uD�)��(3-�ڎ�>�p�:����;.\�@P����o���?��%/b�^����=�8�~ �P      Q   A   x�3��10�v��7�7�2�8]㍀\cNG���o�e�A�q����P�1W� 3��     
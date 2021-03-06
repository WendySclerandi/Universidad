PGDMP         %                u            P2E1    9.4.3    9.4.3 ?    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            )           1262    18134    P2E1    DATABASE     x   CREATE DATABASE "P2E1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_AR.UTF-8' LC_CTYPE = 'es_AR.UTF-8';
    DROP DATABASE "P2E1";
             dba    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            *           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            +           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ,           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    182            �            1259    18173    Almacen    TABLE       CREATE TABLE "Almacen" (
    "IdAlmacen" integer NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Localidad" character varying(150) NOT NULL,
    "Departamento" character varying(150) NOT NULL,
    "Provincia" character varying(150) NOT NULL
);
    DROP TABLE public."Almacen";
       public         dba    false    5            �            1259    18155    Despacho    TABLE     �   CREATE TABLE "Despacho" (
    "IdAlmacen_Origen" integer NOT NULL,
    "IdAlmacen_Destino" integer NOT NULL,
    "Fecha" date NOT NULL,
    "Kilogramos" real NOT NULL,
    "IdProducto" integer NOT NULL,
    "IdLote" integer NOT NULL
);
    DROP TABLE public."Despacho";
       public         dba    false    5            �            1259    18160    Despacho_Exportacion    TABLE     �   CREATE TABLE "Despacho_Exportacion" (
    "IdProducto" integer NOT NULL,
    "IdLote" integer NOT NULL,
    "IdPais" integer NOT NULL,
    "Fecha" date NOT NULL,
    "Kilogramos" real NOT NULL
);
 *   DROP TABLE public."Despacho_Exportacion";
       public         dba    false    5            �            1259    18150 
   Inventario    TABLE     �   CREATE TABLE "Inventario" (
    "IdProducto" integer NOT NULL,
    "IdLote" integer NOT NULL,
    "IdAlmacen" integer NOT NULL,
    "Fecha" date NOT NULL,
    "Kilogramos" real NOT NULL
);
     DROP TABLE public."Inventario";
       public         dba    false    5            �            1259    18181    Lote    TABLE     �   CREATE TABLE "Lote" (
    "IdLote" integer NOT NULL,
    "Fecha_Elaboracion" date NOT NULL,
    "Fecha_Vencimiento" date NOT NULL
);
    DROP TABLE public."Lote";
       public         dba    false    5            �            1259    18186    Pais    TABLE     e   CREATE TABLE "Pais" (
    "IdPais" integer NOT NULL,
    "Nombre" character varying(150) NOT NULL
);
    DROP TABLE public."Pais";
       public         dba    false    5            �            1259    18135    Planta    TABLE     �   CREATE TABLE "Planta" (
    "IdPlanta" integer NOT NULL,
    "Nombre" character varying(100),
    "Localidad" character varying(100),
    "Departamento" character varying(100),
    "Provincia" character varying(100)
);
    DROP TABLE public."Planta";
       public         dba    false    5            �            1259    18145 
   Produccion    TABLE     �   CREATE TABLE "Produccion" (
    "IdProducto" integer NOT NULL,
    "IdLote" integer NOT NULL,
    "IdPlanta" integer NOT NULL,
    "IdAlmacen" integer NOT NULL,
    "Kilogramos" real NOT NULL,
    "Kilogramos_Leche_Utilizada" real NOT NULL
);
     DROP TABLE public."Produccion";
       public         dba    false    5            �            1259    18165    Producto    TABLE     �   CREATE TABLE "Producto" (
    "IdProducto" integer NOT NULL,
    "Nombre" character varying(150) NOT NULL,
    "Envase" character varying(150) NOT NULL,
    "Rubro" character varying(150) NOT NULL,
    "SubRubro" character varying(150) NOT NULL
);
    DROP TABLE public."Producto";
       public         dba    false    5            �            1259    18140    Recibo_Leche    TABLE     �   CREATE TABLE "Recibo_Leche" (
    "IdPlanta" integer NOT NULL,
    "IdTambo" integer NOT NULL,
    "Fecha" date NOT NULL,
    "Kilogramos" real NOT NULL,
    "Grasa_Butirometrica" real NOT NULL,
    "Solidos_Totales" real NOT NULL
);
 "   DROP TABLE public."Recibo_Leche";
       public         dba    false    5            "          0    18173    Almacen 
   TABLE DATA               ]   COPY "Almacen" ("IdAlmacen", "Nombre", "Localidad", "Departamento", "Provincia") FROM stdin;
    public       dba    false    179   �G                 0    18155    Despacho 
   TABLE DATA               u   COPY "Despacho" ("IdAlmacen_Origen", "IdAlmacen_Destino", "Fecha", "Kilogramos", "IdProducto", "IdLote") FROM stdin;
    public       dba    false    176   �G                  0    18160    Despacho_Exportacion 
   TABLE DATA               b   COPY "Despacho_Exportacion" ("IdProducto", "IdLote", "IdPais", "Fecha", "Kilogramos") FROM stdin;
    public       dba    false    177   �G                 0    18150 
   Inventario 
   TABLE DATA               [   COPY "Inventario" ("IdProducto", "IdLote", "IdAlmacen", "Fecha", "Kilogramos") FROM stdin;
    public       dba    false    175   �G       #          0    18181    Lote 
   TABLE DATA               M   COPY "Lote" ("IdLote", "Fecha_Elaboracion", "Fecha_Vencimiento") FROM stdin;
    public       dba    false    180   H       $          0    18186    Pais 
   TABLE DATA               -   COPY "Pais" ("IdPais", "Nombre") FROM stdin;
    public       dba    false    181   0H                 0    18135    Planta 
   TABLE DATA               [   COPY "Planta" ("IdPlanta", "Nombre", "Localidad", "Departamento", "Provincia") FROM stdin;
    public       dba    false    172   MH                 0    18145 
   Produccion 
   TABLE DATA               |   COPY "Produccion" ("IdProducto", "IdLote", "IdPlanta", "IdAlmacen", "Kilogramos", "Kilogramos_Leche_Utilizada") FROM stdin;
    public       dba    false    174   jH       !          0    18165    Producto 
   TABLE DATA               T   COPY "Producto" ("IdProducto", "Nombre", "Envase", "Rubro", "SubRubro") FROM stdin;
    public       dba    false    178   �H                 0    18140    Recibo_Leche 
   TABLE DATA               y   COPY "Recibo_Leche" ("IdPlanta", "IdTambo", "Fecha", "Kilogramos", "Grasa_Butirometrica", "Solidos_Totales") FROM stdin;
    public       dba    false    173   �H       �           2606    18180 
   PK_Almacen 
   CONSTRAINT     V   ALTER TABLE ONLY "Almacen"
    ADD CONSTRAINT "PK_Almacen" PRIMARY KEY ("IdAlmacen");
 @   ALTER TABLE ONLY public."Almacen" DROP CONSTRAINT "PK_Almacen";
       public         dba    false    179    179            �           2606    18159    PK_Despacho 
   CONSTRAINT     }   ALTER TABLE ONLY "Despacho"
    ADD CONSTRAINT "PK_Despacho" PRIMARY KEY ("IdAlmacen_Origen", "IdAlmacen_Destino", "Fecha");
 B   ALTER TABLE ONLY public."Despacho" DROP CONSTRAINT "PK_Despacho";
       public         dba    false    176    176    176    176            �           2606    18164    PK_Despacho_Exportacion 
   CONSTRAINT     �   ALTER TABLE ONLY "Despacho_Exportacion"
    ADD CONSTRAINT "PK_Despacho_Exportacion" PRIMARY KEY ("IdProducto", "IdLote", "IdPais", "Fecha");
 Z   ALTER TABLE ONLY public."Despacho_Exportacion" DROP CONSTRAINT "PK_Despacho_Exportacion";
       public         dba    false    177    177    177    177    177            �           2606    18139    PK_IdPlanta 
   CONSTRAINT     U   ALTER TABLE ONLY "Planta"
    ADD CONSTRAINT "PK_IdPlanta" PRIMARY KEY ("IdPlanta");
 @   ALTER TABLE ONLY public."Planta" DROP CONSTRAINT "PK_IdPlanta";
       public         dba    false    172    172            �           2606    18154    PK_Inventario 
   CONSTRAINT     }   ALTER TABLE ONLY "Inventario"
    ADD CONSTRAINT "PK_Inventario" PRIMARY KEY ("IdProducto", "IdLote", "IdAlmacen", "Fecha");
 F   ALTER TABLE ONLY public."Inventario" DROP CONSTRAINT "PK_Inventario";
       public         dba    false    175    175    175    175    175            �           2606    18185    PK_Lote 
   CONSTRAINT     M   ALTER TABLE ONLY "Lote"
    ADD CONSTRAINT "PK_Lote" PRIMARY KEY ("IdLote");
 :   ALTER TABLE ONLY public."Lote" DROP CONSTRAINT "PK_Lote";
       public         dba    false    180    180            �           2606    18190    PK_Pais 
   CONSTRAINT     M   ALTER TABLE ONLY "Pais"
    ADD CONSTRAINT "PK_Pais" PRIMARY KEY ("IdPais");
 :   ALTER TABLE ONLY public."Pais" DROP CONSTRAINT "PK_Pais";
       public         dba    false    181    181            �           2606    18149    PK_Produccion 
   CONSTRAINT     �   ALTER TABLE ONLY "Produccion"
    ADD CONSTRAINT "PK_Produccion" PRIMARY KEY ("IdProducto", "IdLote", "IdPlanta", "IdAlmacen");
 F   ALTER TABLE ONLY public."Produccion" DROP CONSTRAINT "PK_Produccion";
       public         dba    false    174    174    174    174    174            �           2606    18172    PK_Producto 
   CONSTRAINT     Y   ALTER TABLE ONLY "Producto"
    ADD CONSTRAINT "PK_Producto" PRIMARY KEY ("IdProducto");
 B   ALTER TABLE ONLY public."Producto" DROP CONSTRAINT "PK_Producto";
       public         dba    false    178    178            �           2606    18297    PK_Recibo_Leche 
   CONSTRAINT     s   ALTER TABLE ONLY "Recibo_Leche"
    ADD CONSTRAINT "PK_Recibo_Leche" PRIMARY KEY ("IdPlanta", "IdTambo", "Fecha");
 J   ALTER TABLE ONLY public."Recibo_Leche" DROP CONSTRAINT "PK_Recibo_Leche";
       public         dba    false    173    173    173    173            �           1259    18218    FKI_Almacen    INDEX     F   CREATE INDEX "FKI_Almacen" ON "Produccion" USING btree ("IdAlmacen");
 !   DROP INDEX public."FKI_Almacen";
       public         dba    false    174            �           1259    18256    FKI_AlmacenDestino    INDEX     S   CREATE INDEX "FKI_AlmacenDestino" ON "Despacho" USING btree ("IdAlmacen_Destino");
 (   DROP INDEX public."FKI_AlmacenDestino";
       public         dba    false    176            �           1259    18245    FKI_AlmacenI    INDEX     G   CREATE INDEX "FKI_AlmacenI" ON "Inventario" USING btree ("IdAlmacen");
 "   DROP INDEX public."FKI_AlmacenI";
       public         dba    false    175            �           1259    18206    FKI_Lote    INDEX     @   CREATE INDEX "FKI_Lote" ON "Produccion" USING btree ("IdLote");
    DROP INDEX public."FKI_Lote";
       public         dba    false    174            �           1259    18273 	   FKI_LoteD    INDEX     ?   CREATE INDEX "FKI_LoteD" ON "Despacho" USING btree ("IdLote");
    DROP INDEX public."FKI_LoteD";
       public         dba    false    176            �           1259    18289 
   FKI_LoteDE    INDEX     L   CREATE INDEX "FKI_LoteDE" ON "Despacho_Exportacion" USING btree ("IdLote");
     DROP INDEX public."FKI_LoteDE";
       public         dba    false    177            �           1259    18234 	   FKI_LoteI    INDEX     A   CREATE INDEX "FKI_LoteI" ON "Inventario" USING btree ("IdLote");
    DROP INDEX public."FKI_LoteI";
       public         dba    false    175            �           1259    18295    FKI_Pais    INDEX     J   CREATE INDEX "FKI_Pais" ON "Despacho_Exportacion" USING btree ("IdPais");
    DROP INDEX public."FKI_Pais";
       public         dba    false    177            �           1259    18212 
   FKI_Planta    INDEX     D   CREATE INDEX "FKI_Planta" ON "Produccion" USING btree ("IdPlanta");
     DROP INDEX public."FKI_Planta";
       public         dba    false    174            �           1259    18262    FKI_Producto    INDEX     F   CREATE INDEX "FKI_Producto" ON "Despacho" USING btree ("IdProducto");
 "   DROP INDEX public."FKI_Producto";
       public         dba    false    176            �           2606    18213 
   FK_Almacen    FK CONSTRAINT     {   ALTER TABLE ONLY "Produccion"
    ADD CONSTRAINT "FK_Almacen" FOREIGN KEY ("IdAlmacen") REFERENCES "Almacen"("IdAlmacen");
 C   ALTER TABLE ONLY public."Produccion" DROP CONSTRAINT "FK_Almacen";
       public       dba    false    1946    179    174            �           2606    18240 
   FK_Almacen    FK CONSTRAINT     {   ALTER TABLE ONLY "Inventario"
    ADD CONSTRAINT "FK_Almacen" FOREIGN KEY ("IdAlmacen") REFERENCES "Almacen"("IdAlmacen");
 C   ALTER TABLE ONLY public."Inventario" DROP CONSTRAINT "FK_Almacen";
       public       dba    false    1946    179    175            �           2606    18251    FK_AlmacenDestino    FK CONSTRAINT     �   ALTER TABLE ONLY "Despacho"
    ADD CONSTRAINT "FK_AlmacenDestino" FOREIGN KEY ("IdAlmacen_Destino") REFERENCES "Almacen"("IdAlmacen");
 H   ALTER TABLE ONLY public."Despacho" DROP CONSTRAINT "FK_AlmacenDestino";
       public       dba    false    1946    179    176            �           2606    18246    FK_AlmacenOrigen    FK CONSTRAINT     �   ALTER TABLE ONLY "Despacho"
    ADD CONSTRAINT "FK_AlmacenOrigen" FOREIGN KEY ("IdAlmacen_Origen") REFERENCES "Almacen"("IdAlmacen");
 G   ALTER TABLE ONLY public."Despacho" DROP CONSTRAINT "FK_AlmacenOrigen";
       public       dba    false    1946    179    176            �           2606    18201    FK_Lote    FK CONSTRAINT     o   ALTER TABLE ONLY "Produccion"
    ADD CONSTRAINT "FK_Lote" FOREIGN KEY ("IdLote") REFERENCES "Lote"("IdLote");
 @   ALTER TABLE ONLY public."Produccion" DROP CONSTRAINT "FK_Lote";
       public       dba    false    180    174    1948            �           2606    18229    FK_Lote    FK CONSTRAINT     o   ALTER TABLE ONLY "Inventario"
    ADD CONSTRAINT "FK_Lote" FOREIGN KEY ("IdLote") REFERENCES "Lote"("IdLote");
 @   ALTER TABLE ONLY public."Inventario" DROP CONSTRAINT "FK_Lote";
       public       dba    false    1948    180    175            �           2606    18268    FK_Lote    FK CONSTRAINT     m   ALTER TABLE ONLY "Despacho"
    ADD CONSTRAINT "FK_Lote" FOREIGN KEY ("IdLote") REFERENCES "Lote"("IdLote");
 >   ALTER TABLE ONLY public."Despacho" DROP CONSTRAINT "FK_Lote";
       public       dba    false    1948    180    176            �           2606    18284    FK_Lote    FK CONSTRAINT     y   ALTER TABLE ONLY "Despacho_Exportacion"
    ADD CONSTRAINT "FK_Lote" FOREIGN KEY ("IdLote") REFERENCES "Lote"("IdLote");
 J   ALTER TABLE ONLY public."Despacho_Exportacion" DROP CONSTRAINT "FK_Lote";
       public       dba    false    177    180    1948            �           2606    18290    FK_Pais    FK CONSTRAINT     y   ALTER TABLE ONLY "Despacho_Exportacion"
    ADD CONSTRAINT "FK_Pais" FOREIGN KEY ("IdPais") REFERENCES "Pais"("IdPais");
 J   ALTER TABLE ONLY public."Despacho_Exportacion" DROP CONSTRAINT "FK_Pais";
       public       dba    false    181    177    1950            �           2606    18191 	   FK_Planta    FK CONSTRAINT     y   ALTER TABLE ONLY "Recibo_Leche"
    ADD CONSTRAINT "FK_Planta" FOREIGN KEY ("IdPlanta") REFERENCES "Planta"("IdPlanta");
 D   ALTER TABLE ONLY public."Recibo_Leche" DROP CONSTRAINT "FK_Planta";
       public       dba    false    172    173    1922            �           2606    18207 	   FK_Planta    FK CONSTRAINT     w   ALTER TABLE ONLY "Produccion"
    ADD CONSTRAINT "FK_Planta" FOREIGN KEY ("IdPlanta") REFERENCES "Planta"("IdPlanta");
 B   ALTER TABLE ONLY public."Produccion" DROP CONSTRAINT "FK_Planta";
       public       dba    false    174    1922    172            �           2606    18196    FK_Producto    FK CONSTRAINT        ALTER TABLE ONLY "Produccion"
    ADD CONSTRAINT "FK_Producto" FOREIGN KEY ("IdProducto") REFERENCES "Producto"("IdProducto");
 D   ALTER TABLE ONLY public."Produccion" DROP CONSTRAINT "FK_Producto";
       public       dba    false    174    178    1944            �           2606    18219    FK_Producto    FK CONSTRAINT        ALTER TABLE ONLY "Inventario"
    ADD CONSTRAINT "FK_Producto" FOREIGN KEY ("IdProducto") REFERENCES "Producto"("IdProducto");
 D   ALTER TABLE ONLY public."Inventario" DROP CONSTRAINT "FK_Producto";
       public       dba    false    175    1944    178            �           2606    18257    FK_Producto    FK CONSTRAINT     }   ALTER TABLE ONLY "Despacho"
    ADD CONSTRAINT "FK_Producto" FOREIGN KEY ("IdProducto") REFERENCES "Producto"("IdProducto");
 B   ALTER TABLE ONLY public."Despacho" DROP CONSTRAINT "FK_Producto";
       public       dba    false    1944    178    176            �           2606    18274    FK_Producto    FK CONSTRAINT     �   ALTER TABLE ONLY "Despacho_Exportacion"
    ADD CONSTRAINT "FK_Producto" FOREIGN KEY ("IdProducto") REFERENCES "Producto"("IdProducto");
 N   ALTER TABLE ONLY public."Despacho_Exportacion" DROP CONSTRAINT "FK_Producto";
       public       dba    false    1944    178    177            "      x������ � �            x������ � �             x������ � �            x������ � �      #      x������ � �      $      x������ � �            x������ � �            x������ � �      !      x������ � �            x������ � �     
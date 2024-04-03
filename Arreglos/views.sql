USE vehicledbs;

-- SIMPLE SINTAXIS 
/*
Estas vistas me permiten ingresar a informacion que frecuentemente consulto y que algunas de ellas pueden ser compartidas con el cliente. 
En este caso y como la base de datos es pequeña, he creado una vista para: brand, engine, engine_variant, feature, variant, variant_feature and
drescription_id_model_id_brand
*/


CREATE OR REPLACE VIEW VW_DRESCRIPTION_ID_MODEL_ID_BRAND AS (
select 
distinct
b.id_brand, m.id_model, v.description
from variant as v join model as m join brand as b
on v.id_variant = m.id_model
and m.id_model = b.id_brand
where v.id_variant in (1,2)
);

select b.id_brand, m.id_model, v.description from VIEW VW_DRESCRIPTION_ID_MODEL_ID_BRAND; 

-- original sintaxis 
select count(*) from model; 
select count(*) from variant; 
select count(*) from fuel; 
select count(*) from engine; 



CREATE OR REPLACE VIEW VW_engine AS (
select * from engine 
where transmission like 'A%'
and id_engine = 49
);

-- select * from VW_engine;


CREATE OR REPLACE VIEW vw_brands_with_model_count AS

SELECT b.id_brand, b.description AS brand_description, COUNT(m.id_model) AS model_count

FROM brand b

LEFT JOIN model m ON b.id_brand = m.id_brand

GROUP BY b.id_brand;

-- select * from vw_brands_with_model_count
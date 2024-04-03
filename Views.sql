USE vehicledb;

-- SIMPLE SINTAXIS 
/*
Estas vistas me permiten ingresar a informacion que frecuentemente consulto y que algunas de ellas pueden ser compartidas con el cliente. 
En este caso y como la base de datos es pequeña, he creado una vista para: brand, engine, engine_variant, feature, variant, variant_feature and
drescription_id_model_id_brand
*/

/*
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
-- No funciona 
-- DROP VIEW vehicledb.VW_DRESCRIPTION_ID_MODEL_ID_BRAND;

*/
/*
select count(*) from model; 
select count(*) from variant; 
select count(*) from fuel; 
select count(*) from engine; 
*/


-- CREATE VIEW
 /*
CREATE OR REPLACE VIEW VW_brand

AS SELECT * FROM BRAND;

-- SELECT * FROM VW_brand;
*/

/* CREATE OR REPLACE VIEW VW_engine_variant
AS select * from engine_variant;

-- select * from VW_engine_variant;
*/

/*
CREATE OR REPLACE VIEW VW_feature

AS Select * from feature;

-- Select * from VW_feature;
*/

/*
CREATE OR REPLACE VIEW  VW_variant

AS select * from variant;

-- select * from VW_varian;
*/

 /*

CREATE OR REPLACE VIEW VW_engine AS (
select * from engine 
where transmission like 'A%'
and id_engine = 49
);

-- select * from VW_engine;
*/


 /*
CREATE OR REPLACE VIEW VW_fuel

AS select * from fuel;

-- select * from fuel;
*/

 /*
CREATE OR REPLACE VW_model

AS select * from model; 

-- select * from model; 
*/

 /*
CREATE OR REPLACE VIEW VW_fuel AS 
            (select  id_fuel, description FROM fuel);

-- select * from model; 
*/

-- NOTA PARA LA TUTORA: ninguno de los create funcionan. En los sensillos no me deja crearlos como create remplace me da error de syntaxis 


/* All tables */
/*
Origial syntaxis 
select * 
from brand
left join model on brand.id_brand = model.id_brand 
left join variant on model.id_model = variant.id_model
left join engine_variant on engine_variant.id_variant = variant.id_variant
left join engine on engine.id_engine = engine_variant.id_engine
left join fuel on fuel.id_fuel = engine.id_fuel
left join variant_feature on variant_feature.id_variant = variant.id_variant
left join feature on feature.id_feature = variant_feature.id_feature
ORDER BY variant.id_variant;
/*

/*
select id_engine, transmission, power, capacity, cylinders
from engine
where brand = 'Aston Martin';
*/

-- DELETE SINTAXIS 

/*delete from fuel 
where id_fuel != 1; */

/*DELETE FROM engine
WHERE id_engine BETWEEN 58 AND 72;*/

/*DELETE FROM brand
WHERE id_brand BETWEEN 5 AND 17
AND description = 'Lamborghini'; */

/*DELETE FROM engine
WHERE id_engine in (4, 3, 7, 8, 23, 26, 27, 29);

/* -- drop view VW_engine;*/

/*USING ALTER: change int to varcaher puede ser un view */
 
-- ALTER TABLE engine
-- MODIFY COLUMN capacity VARCHAR(10);

-- ALTER TABLE engine
-- MODIFY COLUMN transmission  varchar(70)


/* RELEATE TABLE */ 
-- ALTER TABLE COMMENT ADD CONSTRAINT FK_id_model FOREIGN KEY FK_id_model (id_model, description, id_brand)
-- REFERENCES MODEL (id_model)
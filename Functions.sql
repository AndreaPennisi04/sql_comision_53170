USE vehicledb; 
/*
Function fue creada para traer un valor. 
1. FN_EXPECIFIC_fuel_description: pasando los parametros correspondientes puedo saber cual de los tipos de fuel existen en mi tabla 
2. FN_variant_description: enviando el numero de id de la variante y el modelo puedo saber que variante de modelo esta listado. 
3. FN_by_model_name: por el nombre del modelo, puedo consultar cuantos tengo listado segun el parametro que le pase. 
*/
-- First Function 
DROP FUNCTION IF EXISTS FN_EXPECIFIC_fuel_description;
DELIMITER // 
create function FN_EXPECIFIC_fuel_description (P_1 INT)

returns varchar(45)
deterministic
begin
declare fuel_description_name varchar(45);

select  description
into  fuel_description_name
from fuel
where id_fuel = p_1;


 return fuel_description_name;
  end//
  delimiter ;
-- NOTA: EL REQUEST ORIGINAL ME TRAE MODELOS DB PERO CUANDO LO APLICO EN LA FUNCION, SOLO ME DEVUELVE UN "OK"
-- 11:05:35	SELECT FN_EXPECIFIC_MODEL('DBS coupe', 18) AS v_especific_model	Error Code: 1318. Incorrect number of arguments for FUNCTION vehicledb.FN_EXPECIFIC_MODEL; expected 1, got 2	0.00062 sec
-- Invocacion de la funcion 
SELECT FN_EXPECIFIC_fuel_description(17) AS fuel_description_name;

-- Original request
select * from fuel
where description like 'Electric'
and id_fuel = 17;

-- -- Segunda funcion  
DROP FUNCTION IF EXISTS FN_variant_description;
delimiter // 
create function FN_variant_description (p_id_variant int, p_id_model int)

returns varchar(50) 
deterministic
begin  
declare v_result varchar(50);
-- ---
select description 
into v_result
from variant
where id_variant < p_id_variant
and id_model = p_id_model;  

return v_result;
end //

-- Invocacion de la funcion 
select FN_variant_description(5, 74) as v_result;

-- Original request
select description  -- AS v_result
-- , FN_description(7,9) as v_result_funcion
from variant
WHERE id_variant < 5 
AND id_model = 75

-- Tercera consulta
DROP FUNCTION IF EXISTS FN_by_model_name;
delimiter // 
create function FN_by_model_name (p__model_name varchar(45))

returns varchar(45) 
deterministic
begin  
declare v_model_name varchar(45);
-- ---
Select count(*)
into v_model_name
from model
where description like p__model_name;

return v_model_name;
end //

select FN_by_model_name('%DB_%');

-- Original syntaxis 
Select count(*) from model
where description like '%DB_%'

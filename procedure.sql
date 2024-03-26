USE vehicledb; 

-- First Procedures: Lenght of MODEL
DROP PROCEDURE IF EXISTS SP_model;
DELIMITER $$

CREATE PROCEDURE SP_model(in p_letter char(3), out p_number int)
BEGIN
SELECT count(*) 
INTO p_number
FROM model
WHERE description like concat('%',p_letter,'%');
END$$

DELIMITER ;

-- Call procedure
CALL SP_model('ave',@quantity_ave);	
CALL SP_model('DB',@quantity_DB);	
CALL SP_model('GT',@quantity_GT);	
CALL SP_model('ur',@quantity_ur);	
select @quantity_ave as model_name_with_ave,@quantity_DB,@quantity_GT,@quantity_ur;

-- -------------------------------------
-- Second Procedures: SQL dinamico

DROP PROCEDURE IF EXISTS  SP_order_by_engine;

DELIMITER $$
CREATE PROCEDURE SP_order_by_engine (IN p_transmission char(45), out p_out char(45))
BEGIN
set @p_out= concat(
'SELECT * 
FROM engine
ORDER BY  ', p_transmission , ' ', p_asc_desc ) ;

END$$

DELIMITER ;

CALL SP_order_by_engine('Automatic', @p_out); 
select @p_out; 
-- 19:11:01	CALL SP_order_by_engine('Automatic', @p_out)	Error Code: 1054. Unknown column 'p_asc_desc' in 'field list'	0.0026 sec
-- Nota para la tutora: este no me anda me trae null

select * from engine
order by transmission;
/*if p_asc_desc = 'ASC' then 
select *  from engine order by p_transmission ASC;
else
select * from engine order by p_transmission DESC;
end if;*/
-- ------

-- Tercer prueba: usada como test 
DROP PROCEDURE IF EXISTS SP_general_information;
DELIMITER // 
CREATE PROCEDURE SP_general_information (in c char(10), in p int, ca int)
BEGIN
select c as cylinder, p as power, ca as capacity;
end//
delimiter // 

call SP_general_information(10, 552, 4961);


-- Forth Procedures:
DELIMITER $$
DROP PROCEDURE IF EXISTS calcular_max_min_media$$
CREATE PROCEDURE calcular_max_min_media(
  IN capacity int(10),
    OUT maximo int(255),
  OUT minimo varchar(50),
    OUT media int(100)
)
BEGIN
  SET maximo = (
    SELECT MAX(id_engine)
    FROM engine
        WHERE transmission = capacity);
  
  SET minimo = (
    SELECT MIN(id_engine)
    FROM engine
        WHERE transmission  = capacity);
  
  SET media = (
    SELECT AVG(id_engine)
    FROM engine
        WHERE transmission  = capacity);
END
$$

DELIMITER ;
-- NOTA para la tutora: este no me trae ningun valor. Lo que quier es ordenar de menos a mayo o vice versa la columna capacidad
CALL calcular_max_min_media(6498,@maximo, @minimo, @media);
SELECT @maximo, @minimo, @media;

-- Consulta
select capacity
from engine;
-- -----


-- NOTA: para la tutora, este no pude crear un procedure, me da error al usar el * y leght 
select *,
LENGTH(id_model) AS LengthOfName
FROM model;
-- DROP PROCEDURE SP_LENGHT_AMOUNT_PER_MODEL;




/*
-- Origial syntaxis 

select * 
from brand
left join model on brand.id_brand = model.id_brand 
left join variant on model.id_model = variant.id_model
left join engine_variant on engine_variant.id_variant = variant.id_variant
left join engine on engine.id_engine = engine_variant.id_engine
left join fuel on fuel.id_fuel = engine.id_fuel
left join variant_feature on variant_feature.id_variant = variant.id_variant
-- left join feature on feature.id_feature = variant_feature.id_feature
ORDER BY variant.id_variant;

*/ 
-- ---------------------------------------------------

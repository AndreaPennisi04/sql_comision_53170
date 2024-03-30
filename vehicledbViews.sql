create view vw_brand_model_variant_engine_variant_engine /*_fuel_variant_feature_feature*/ as (
select 
-- distinct 
 m.model, v.variant, ev.engine_variant, E.engine
from brand as b join model as m join variant as v join engine_variant as ev
on b.id_brand = mo.id_brand
and v.id_model = mo.id_model

and ev.id_variant = v.id_variant

and e.id_engine = ev.id_engine
-- left join fuel as fu on fu.id_fuel = e.id_fuel
-- left join variant_feature as vf on vf.id_variant = v.id_variant
-- left join feature as f on f.id_feature = vf.id_feature
order by v.id_variant desc
-- limit 10
);
select count(*) from brand; -- 1
select count(*) from model; -- 6
select count(*) from variant; -- 23
select count(*) from engine; -- 20
select count(*) from engine_variant; -- 23


/*CREATE VIEW VW_VALUE_DESCRIPTION_COMMENTARY AS (
SELECT 
V.value, u.description, c.commentary, COUNT(*)
FROM commentary AS C join comment AS CO join system_user AS S join play AS P 
JOIN vote AS V join user_type AS U
ON C.id_game = CO.id_game
AND C.id_system_user = CO.id_system_user
AND CO.id_system_user = S.id_system_user
AND S.id_system_user = CP.id_system_user
AND P.ID_GAME = V.ID_GAME
AND P.id_systme_user = v.id_systme_user
and u.id_user_type = s.id_user_type
WHERE VALUE IN (2, 4, 6, 8, 10, 12)
GROUP BY V.value, u.description, c.commentary
HAVING COUNT(*) >1
);
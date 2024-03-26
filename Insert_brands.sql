/* Insert Brand */

-- INSERT INTO brand (description) VALUES ('AstonMartin'); -- 18
-- INSERT INTO brand (description) VALUES ('Bentley'); -- 19
-- INSERT INTO brand (description) VALUES ('Ferrari'); -- 20
-- INSERT INTO brand (description) VALUES ('Lamborghini'); -- 4



/* All tables */
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
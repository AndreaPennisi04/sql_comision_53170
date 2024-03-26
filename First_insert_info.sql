use vehicledb;

-- Insert brand
-- INSERT INTO brand (description) VALUES ('Lamborghini');

-- Insert Fuel
-- INSERT INTO fuel (description) VALUES ('Petrol');

-- Insert Feature
-- INSERT INTO feature (description) VALUES ('3D Navigation');



-- Insert Variant
select  * from fuel;
select  * from engine;
select  * from variant;
select  * from model;
select  description, id_model (description) from variant;
/*
INSERT INTO variant (description, id_model) VALUES ('Centenario Roadster', 79);
INSERT INTO variant (description, id_model) VALUES ('Heritage', 78);
INSERT INTO variant (description, id_model) VALUES ('Gallardo Spyder', 77);
INSERT INTO variant (description, id_model) VALUES ('Gallardo', 77);
INSERT INTO variant (description, id_model) VALUES ('Aventator LP 780-4 Ultimate', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ Roadster', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator SV Roadster', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator SV', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator S', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator Roadster', 75);
INSERT INTO variant (description, id_model) VALUES ('Aventator', 75);
INSERT INTO variant (description, id_model) VALUES ('Urus Performante', 74);
INSERT INTO variant (description, id_model) VALUES ('Urus', 74);
INSERT INTO variant (description, id_model) VALUES ('Urus S', 74);
*/

-- Consulta
select  * from variant;
select  * from model;


select  description,description from model;
select  id_variant (description),id_model (description) from model;
select  * from variant;

-- Inser model 
/*
INSERT INTO model (description, id_brand) VALUES ('Limited Series', 4);
INSERT INTO model (description, id_brand) VALUES ('Heritage', 4);
INSERT INTO model (description, id_brand) VALUES ('Gallardo', 4);
INSERT INTO model (description, id_brand) VALUES ('Huracan', 4);
INSERT INTO model (description, id_brand) VALUES ('Aventator', 4);
INSERT INTO model (description, id_brand) VALUES ('Urus', 4);
INSERT INTO model (description, id_brand) VALUES ('Limited Series', 4);

select  * from model;
DELETE FROM model;
DELETE FROM variant;
DELETE FROM model;
select  * from model;
*/ 

-- Insert engine variant description 
/*
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1); --1 petrol fuel
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'DCT', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Automatic Tiptronic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '580', 'Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '780', 'Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '566', 'Automatic Tiptronic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '750', 'Semi-Automatic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Automatic Tiptronic', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1);
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '378', 'Automatic', 1);
*/

-- Consulta
select * 
from brand as b
left join model as m on b.id_brand = m.id_brand
left join variant as v on v.id_model = m.id_model
left join engine_variant as ev on ev.id_variant = v.id_variant
left join engine as E ON e.id_engine = ev.id_engine
left join fuel as fu on fu.id_fuel = e.id_fuel
left join variant_feature as vf on vf.id_variant = v.id_variant
left join feature as f on f.id_feature = vf.id_feature
order by v.id_variant;

select * from variant;
select * from engine;
select * from engine_variant;



-- Insert engine variant
/*
insert into engine_variant (id_engine, id_variant) values (2,4); -- Urus S
insert into engine_variant (id_engine, id_variant) values (1,5); -- Urus
insert into engine_variant (id_engine, id_variant) values (2,6); -- Urus Performante 
insert into engine_variant (id_engine, id_variant) values (1,7); -- Aventator
insert into engine_variant (id_engine, id_variant) values (6,8); -- Aventator Roadster
insert into engine_variant (id_engine, id_variant) values (6,9); -- Aventator S
insert into engine_variant (id_engine, id_variant) values (5,10); -- Aventator  SV 
insert into engine_variant (id_engine, id_variant) values (9,11); -- Aventator SV Roadster 
insert into engine_variant (id_engine, id_variant) values (11,12); -- Aventator SVJ 
insert into engine_variant (id_engine, id_variant) values (25,13); -- Aventator SVJ Roadster 
insert into engine_variant (id_engine, id_variant) values (13,14); -- Aventator LP 780-4 Ultimate 
insert into engine_variant (id_engine, id_variant) values (16,15); -- Huracán 
insert into engine_variant (id_engine, id_variant) values (20,16); -- Huracán Spyder
insert into engine_variant (id_engine, id_variant) values (14,17); -- Huracán RWD 
insert into engine_variant (id_engine, id_variant) values (18,18); -- Huracán Performante 
insert into engine_variant (id_engine, id_variant) values (17,19); -- Huracán EVO 
insert into engine_variant (id_engine, id_variant) values (17,20); -- Huracán EVO STO 
insert into engine_variant (id_engine, id_variant) values (20,21); -- Huracán Sterrato 
insert into engine_variant (id_engine, id_variant) values (24,22); -- Gallardo  
insert into engine_variant (id_engine, id_variant) values (22,23); -- Gallardo Spyder 
insert into engine_variant (id_engine, id_variant) values (28,24);-- Heritage 
insert into engine_variant (id_engine, id_variant) values (25,25); -- Centenario Roadster 
insert into engine_variant (id_engine, id_variant) values (25,26); -- Sián FKP 37 
*/

-- Consultas
select * 
from brand
left join model on brand.id_brand = model.id_brand;
insert into engine_variant (id_engine, id_variant) values (1,5);


select * 
from brand as b
left join model as m on b.id_brand = m.id_brand;
insert into engine_variant (id_engine, id_variant) values (1,5); 


select * 
from brand b
left join model m on b.id_brand = m.id_brand;


DELETE FROM model
WHERE description NOT IN (
    SELECT MIN(description)
    FROM model
    GROUP BY Urus
);

select  * from variant;
select  * from model;
select  count(*) from model;
select  * from model;

DELETE FROM mode
WHERE id_model NOT IN (
    SELECT MIN(id_model)
    FROM model
    GROUP BY description 
);
select  * from model;
select  * from vehicledb;
select  * from vehicledb;
select  * from brand;
select  description, id_model (description) from variant;

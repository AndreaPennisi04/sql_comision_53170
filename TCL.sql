USE vehicledb;
select @@sql_safe_updates;
select @@foreign_key_checks; 
select @@autocommit; 

set autocommit = 0;
set sql_safe_updates = 0;
set foreign_key_checks = 0;

-- Esto es para la primer tabla: eliminar eliminar reagistros ya ingresados usar engine
SELECT COUNT(*) FROM engine INTO @count;
-- Eliminacion de 3 registros
START TRANSACTION;

DELETE  from engine where id_engine =  1;
-- INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '650', 'Semi-Automatic', 1); -- URUS

DELETE  from engine where id_engine is null;
-- '19', 'Bentley', '89', 'Bentayga', '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL -- ID_engine null Benteiga,
-- '4', 'Lamborghini', '75', 'Aventator', '4', '13', 'Aventator SVJ Roadster', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '75', 'Aventator', '4', '12', 'Aventator SVJ', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '75', 'Aventator', '4', '11', 'Aventator SV Roadster', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '75', 'Aventator', '4', '8', 'Aventator Roadster', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '75', 'Aventator', '4', '14', 'Aventator LP 780-4 Ultimate', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '15', 'Huracán', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '16', 'Huracán Spyder', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '17', 'Huracán RWD', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '18', 'Huracán Performante', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '19', 'Huracán EVO', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '20', 'Huracán EVO STO', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '76', 'Huracan', '4', '21', 'Huracán Sterrato', '76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '77', 'Gallardo', '4', '22', 'Gallardo', '77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '77', 'Gallardo', '4', '23', 'Gallardo Spyder', '77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '78', 'Heritage', '4', '24', 'Heritage', '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '79', 'Limited Series', '4', '26', 'Sián FKP 37', '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
-- '4', 'Lamborghini', '79', 'Limited Series', '4', '25', 'Centenario Roadster', '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL

DELETE  from engine where id_engine =  73;
-- INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2.9-liter ', '830', 'F1 DCT 8-SPEED', 15); -- 296 GTB, 94 
-- '20', 'Ferrari', '94', 'GTB', '20', '59', '296 GTB', '94', '59', '73', '73', NULL, '15', 'F1 DCT 8-SPEED', '2.9-liter ', '830', 'V6', '15', 'Hybrid', NULL, NULL -- ID_engine 73 ferrari

-- Validar registros eliminados 
select * from engine;

-- Comitear mis deletes en los registros mencionados en cada delete 
-- commit
-- Revertir la eliminacion de los registros 
-- ROLLBACK;



-- Esto es para la segunda tabla: insertar 8 nuevos registros inisiando con transacction 
/* Realizar un INSERT*/
/* Aston Martin*/ 
start transaction;
INSERT INTO feature (description) VALUES ('Hood Primary Colour, Wind Deflector, Bonnet Mesh in Black, Exterior Bodypack in Gloss Black
Exterior Door Handles in Body Colour, Mirror Caps in Gloss Black, Side Strakes in Gloss Black, Window Surround Finishers in Black
Windscreen Surround Finisher in Black, Sports Plus Seats'); -- DB11 V8 Volante id_feature 20
savepoint sp_1;
insert into feature (description) values ('Exterior Door Handles in Body Colour, Front Grille in Dark Finish, 
Side Strakes in Gloss Black, Wings Badges in Bright Chrome and Green, Brake Callipers in Dark Anodised Finish, Sports Seats, 
Matched Stitching, Monotone Trim, Seat Backs in Leather, Armrest with Powered Lid');-- DB11 V8 Coupe id_feature 21
savepoint sp_2;
insert into feature (description) values ('Roof Finished in Black, Exterior Black Pack, Exterior Bodypack in Gloss Black
Exterior Door Handles in Body Colour, Front Grille in Dark Finish, Wings Badges in Bright Chrome and Green
Roof Strakes in Gloss Black, Tail Lights in Red Finish, Sports Seats, Monotone Trim
Seat Backs in Leather, Armrest with Powered Lid, Jewellery Pack in Satin Dark Chrome, Black Boot Carpet, Headlining in Alcantara
Seatbelts in Warm Charcoal, Treadplates in Anodised Black, 360 Camera System, Steering Wheel in Obsidian Black
Headlining in Tailors Grey Alcantara'); -- DB11 V12 AMR Coupe id_feature 22
savepoint sp_3;
insert into feature (description) values ('Quad Stainless Steel Exhaust in Matt Black, Roof Finished in Body Colour
Bonnet Vents in Carbon Fibre, Mirror Caps in Carbon Fibre, Side Gills in Louvered Carbon, Under Bonnet Cross Brace in Silver
Window Surround Finishers in Gloss Black, Wings Badges in Bright Chrome and Green, Seat Adjustment in 16 Ways, 
Sports Plus Seats');-- Vantage V8 Coupe Vantage Coupe id_feature 23
savepoint sp_4;
/* Bentley*/

insert into feature (description) values ('Battery Charger, Bentley Rear Entertainment, Bentley Signature Audio System
Bluetooth Telephone Connectivity with Wireless Charging Pad and External Antenna, Connected Services, Digital Radio
Head Up Display, Navigation System, Online Services, Traffic Assist, Traffic Sign Recognition'); -- BENTAYGA EWB AZURE V8 id_feature 24

insert into feature (description) values ('Alarm System, Bentley GPS Tracking System'); -- BENTAYGA EWB AZURE FIRST EDITION V8 id_feature 25
 savepoint sp_5;
insert into feature (description) values ('Battery Charger, Bentley Rotating Display, Connected Services, Digital Radio
DVD Player, Head Up Display, Naim for Bentley Premium Audio System, Navigation System, Online Services, Traffic Assist
USB Sockets, Wireless Phone Charging Pad'); -- CONTINENTAL GT MULLINER W12 id_feature 26

insert into feature (description) values ('Battery Charger, Bentley Rotating Display, Connected Services, Digital Radio, DVD Player
Head Up Display, Naim for Bentley Premium Audio System, Navigation System, Online Services, Traffic Assist, USB Sockets
Valet Key, Wireless Phone Charging Pad'); -- CONTINENTAL GT S V8 id_feature 27
savepoint sp_6;
/*Ferrari*/ 

insert into feature (description) values ('Bi-xenon headlamps with LED DRL lights and turn indicators
Integrated vehicle dynamic control system selector (Race Manettino), 20" alloy wheels, Tyre temperature and pressure monitoring system
Engine Start button on steering wheel, Car cover, Vehicle remote key fob with keyless start function
Infotainment system, Bluetooth audio streaming, DAB digital radio, Driver and passenger front airbags, ASR, ABS
Evolved electronic differential (E-Diff3), F1-Trac, CST (stability and traction control)'); -- 488 Spider id_feature 28
 
insert into feature (description) values ('Front driver and passenger side dual stage airbags, ABS/EBD - Performance biased anti-lock brake system with electronic brake force distribution
F1-Trac traction control, Bi-xenon headlamps with DRL function, Rain and dusk sensors, Dual zone climate control, Anti-theft system
Head protection side curtain airbags in door panel, Infotainment system with map based navigation, USB port on centre tunnel, 6.5" touch screen, with Bluetooth audio streaming and DAB radio
Tyre repair kit, 19" alloy wheels with paint finish, Integrated vehicle dynamic control system selector (Race Manettino)
Battery conditioner, Tail lights with LED modules'); -- Ferrari California T id_feature 29
savepoint sp_7;
/*Lamborghini*/

insert into feature (description) values ('4 Standard Speakers, Anti-Theft System, Bluetooth, Board Computer, Brake Calipers In Yellow
Branding Package With Alcantara, Branding Package With Lamborghini Shield Embossed, Dione Forged Rims 20/21 High Gloss Black Diamond Finished
Electrical Seats Adjustment, Electronically Controlled Rear Spoiler With Manual Activation, Exterior Style Package
Front Carbon Ceramic Brake With Yellow Caliper, Fully Electric And Heated Seats, Heated Seats,Interior Carbon Fiber Package'
); -- Aventator S id_feature 30
savepoint sp_8; 
insert into feature (description) values ('Anti-Theft System, Bluetooth, Board Computer, Branding Package, Branding Package With Alcantara
Dianthus Forged 20/21 High Gloss Black With Red Central Locking, Dianthus Forged Rims 20/21 High Gloss Black, Engine Bay In Aluminium
Exterior Details In Matt Carbon Fiber, Fire Extinguisher, Fixed Rear Air Intake In Visible Carbon Fiber, Front Carbon Ceramic
Brake With Black Caliper'); -- Aventator SV id_feature 31

/*Validar los resgistros insertados*/ 
select * from feature;

/* Rollback del save point sp_4*/
-- rollback to sp_4
/* O eliminar el registro ingresado en sp_4*/ 
/*delete from feature where description = 'Quad Stainless Steel Exhaust in Matt Black, Roof Finished in Body Colour
Bonnet Vents in Carbon Fibre, Mirror Caps in Carbon Fibre, Side Gills in Louvered Carbon, Under Bonnet Cross Brace in Silver
Window Surround Finishers in Gloss Black, Wings Badges in Bright Chrome and Green, Seat Adjustment in 16 Ways, 
Sports Plus Seats'; */



/*Confirmacion*/ 
-- commit; 

-- agregar en una linea comentada la sentencia de eliminacion del savepoint de los primeros 4 registros insertados
-- Eliminar save point
-- ROLLBACK TO SAVEPOINT sp_after_4;
-- ROLLBACK TO SAVEPOINT sp_after_8;

/*Confirmacion*/ 
-- commit; 
/* Realiza in insert en la tabla engine donde no hay description asociada
insert into engine (description, id_variant, id_model) value ('4.0-liter, twin turbo V8', 39, 85);
update engine
set description = '4.0-liter, twin turbo V8'
where id_engine = 39;*/


-- Validacion
select * from feature;

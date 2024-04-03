USE vehicledbs;

/* Insert Brand */

INSERT INTO brand (description) VALUES ('AstonMartin'); 
INSERT INTO brand (description) VALUES ('Bentley'); 
INSERT INTO brand (description) VALUES ('Ferrari'); 
INSERT INTO brand (description) VALUES ('Lamborghini');


/* Insert Models */ 

-- Aston Martin

INSERT INTO model (description, id_brand) VALUES ('DBS Coupe', 1); -- 80
INSERT INTO model (description, id_brand) VALUES ('DBS Volante', 1); -- 81
INSERT INTO model (description, id_brand) VALUES ('DB11 coupe', 1); -- 82
INSERT INTO model (description, id_brand) VALUES ('DB11 Volante', 1); -- 83
INSERT INTO model (description, id_brand) VALUES ('Vantage V8 Coupe', 1); -- 84
INSERT INTO model (description, id_brand) VALUES ('Vantage V8 Roadster', 1); -- 85
INSERT INTO model (description, id_brand) VALUES ('Vantage V12 Coupe', 1); -- 86
INSERT INTO model (description, id_brand) VALUES ('Vantage V12 Roadster', 1); -- 87
INSERT INTO model (description, id_brand) VALUES ('DBX', 1); -- 88 


-- Bentley
INSERT INTO model (description, id_brand) VALUES ('Bentayga EWB', 2); -- 90
INSERT INTO model (description, id_brand) VALUES ('Continental GT', 2); -- 91
INSERT INTO model (description, id_brand) VALUES ('Continental GTC', 2); -- 92
INSERT INTO model (description, id_brand) VALUES ('Flyng Spur', 2); -- 93

-- Ferrari
INSERT INTO model (description, id_brand) VALUES ('GTB', 3); -- 94
INSERT INTO model (description, id_brand) VALUES ('Spider', 3); -- 95
INSERT INTO model (description, id_brand) VALUES ('F8 Tributo', 3); -- 96
INSERT INTO model (description, id_brand) VALUES ('GTS', 3); -- 97
INSERT INTO model (description, id_brand) VALUES ('Aperta', 3); -- 98
INSERT INTO model (description, id_brand) VALUES ('GTC4', 3); -- 99
INSERT INTO model (description, id_brand) VALUES ('Speciale A', 3); -- 100
INSERT INTO model (description, id_brand) VALUES ('Ferrari California', 3); -- 101
INSERT INTO model (description, id_brand) VALUES ('GTO', 3); -- 102



-- Lamborghini
INSERT INTO model (description, id_brand) VALUES ('Urus', 4); -- 74
INSERT INTO model (description, id_brand) VALUES ('Aventator', 4); -- 75
INSERT INTO model (description, id_brand) VALUES ('Huracan', 4); -- 76
INSERT INTO model (description, id_brand) VALUES ('Gallardo', 4); -- 77 
INSERT INTO model (description, id_brand) VALUES ('Heritage', 4); -- 78
INSERT INTO model (description, id_brand) VALUES ('Limited Series', 4); -- 79


/* Insert variants */

-- Aston Martin
INSERT INTO variant (description, id_model) VALUES ('DBS Coupe', 1);
INSERT INTO variant (description, id_model) VALUES ('DBS Superleggera', 1);
INSERT INTO variant (description, id_model) VALUES ('DBS Superleggera Volante', 2);
INSERT INTO variant (description, id_model) VALUES ('DBS Volante', 2);
INSERT INTO variant (description, id_model) VALUES ('DB11 V12 AMR Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V12 Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V8 Coupe', 3);
INSERT INTO variant (description, id_model) VALUES ('DB11 V8 Volante', 4);
INSERT INTO variant (description, id_model) VALUES ('Vantage 007 Edition Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage AMR Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage F1 Edition Coupe', 5);
INSERT INTO variant (description, id_model) VALUES ('Vantage F1 Edition Roadster', 6);
INSERT INTO variant (description, id_model) VALUES ('Vantage Roadster', 6);
INSERT INTO variant (description, id_model) VALUES ('V12 Vantage Coupe', 7);
INSERT INTO variant (description, id_model) VALUES ('Vantage V12 Roadster', 8);
INSERT INTO variant (description, id_model) VALUES ('DBX SUV', 9);
INSERT INTO variant (description, id_model) VALUES ('DBX 707 SUV', 9);


-- Benltey
INSERT INTO variant (description, id_model) VALUES ('Bentayga EWB Azure V8', 10);
INSERT INTO variant (description, id_model) VALUES ('Bentayga EWB Azure First Edition V8', 10);
INSERT INTO variant (description, id_model) VALUES ('Continental GT Azure V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT W12', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT Mulliner W12', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GT S V8', 11);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Azure V8', 12);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Speed W12', 12);
INSERT INTO variant (description, id_model) VALUES ('Continental GTC Mulliner V8', 12);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Azure V6 hybrid', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Azure V8', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur S V6 Hybrid', 13);
INSERT INTO variant (description, id_model) VALUES ('Flying Spur Speed W12', 13);


-- Ferrari 
INSERT INTO variant (description, id_model) VALUES ('296 GTB', 14);
INSERT INTO variant (description, id_model) VALUES ('488 GTB', 14);
INSERT INTO variant (description, id_model) VALUES ('488 Spider', 15);
INSERT INTO variant (description, id_model) VALUES ('SF900 Spider', 15);
INSERT INTO variant (description, id_model) VALUES ('F8 Tributo', 16);
INSERT INTO variant (description, id_model) VALUES ('812 GTS', 17);
INSERT INTO variant (description, id_model) VALUES ('LaFerrari Aperta', 18);
INSERT INTO variant (description, id_model) VALUES ('SA Aperta', 18);
INSERT INTO variant (description, id_model) VALUES ('GTC4Lusso', 19);
INSERT INTO variant (description, id_model) VALUES ('GTC4Lusso T', 19);
INSERT INTO variant (description, id_model) VALUES ('458 Speciale A', 20);
INSERT INTO variant (description, id_model) VALUES ('Ferrari California', 21);
INSERT INTO variant (description, id_model) VALUES ('Ferrari California T', 21);
INSERT INTO variant (description, id_model) VALUES ('599 GTO', 22);


-- Lamborghini
INSERT INTO variant (description, id_model) VALUES ('Urus S', 23);  
INSERT INTO variant (description, id_model) VALUES ('Urus', 23); 
INSERT INTO variant (description, id_model) VALUES ('Urus Performante', 23); 
INSERT INTO variant (description, id_model) VALUES ('Aventator', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator Roadster', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator S', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator SV', 24); 
INSERT INTO variant (description, id_model) VALUES ('Aventator SV Roadster', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator SVJ Roadster', 24);
INSERT INTO variant (description, id_model) VALUES ('Aventator LP 780-4 Ultimate', 24);
INSERT INTO variant (description, id_model) VALUES ('Huracán', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Spyder', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán RWD', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Performante', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán EVO', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán EVO STO', 25);
INSERT INTO variant (description, id_model) VALUES ('Huracán Sterrato', 25);
INSERT INTO variant (description, id_model) VALUES ('Gallardo', 26);
INSERT INTO variant (description, id_model) VALUES ('Gallardo Spyder', 26);
INSERT INTO variant (description, id_model) VALUES ('Heritage', 27);
INSERT INTO variant (description, id_model) VALUES ('Centenario Roadster', 28);
INSERT INTO variant (description, id_model) VALUES ('Sián FKP 37', 28);



/* Insert Fuel */ 

 INSERT INTO fuel (description) VALUES ('Petrol');
 INSERT INTO fuel (description) VALUES ('Hybrid');
INSERT INTO fuel (description) VALUES ('Diesel');
INSERT INTO fuel (description) VALUES ('Electric');

-- Select * from fuel;
-- 1 petrol, 
-- 15 hybrid, 
-- 16 diesel, 
-- 17 Electric


/* Insert Engine */ 

-- Aston Martin
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5935', '715', 'Automatic', 1); -- DBS coupe 80, 81 -- 30
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5204', '715', 'Automatic', 1); -- DBS Superleggera, 81 -- 31
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '502', 'Automatic', 1); -- DB11 V8 coupe 82, -- 32
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5024', '630', 'Automatic', 1); -- DB11 V12 AMR Coupe, 82 -- 33
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); -- DB11 V8 Volante, 83 -- 34
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); -- Vantage 007 Edition Coupe, 84. -- 35
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); -- Vantage AMR Coupe, 84. -- 36
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); -- Vantage Coupe, 84 -- 37
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '528', 'Automatic', 1); -- Vantage F1 Edition Coupe, 84. --38
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '528', 'Automatic', 1); -- Vantage F1 Edition Roadster, 85.-- 39
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '503', 'Automatic', 1); -- Vantage Roadster, 85.-- 40
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '5204', '690', 'Automatic', 1); -- V12 Vantage Coupe, 86. --41
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '3982', '503', 'Automatic', 1); -- Vantage V12 Roadster, 87. -- 42
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '542', 'Automatic', 1); -- DBX SUV, 88. -- 43
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8',  '3982', '697', 'Automatic', 1); -- DBX 707 SUV, 88. -- 44
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5204', '715', 'Automatic', 1); -- DBS superleggera volante, 81 -- 89
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5935', '715', 'Automatic', 1); -- DBS Volante', 81, 88
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12',  '5204', '630', 'Automatic', 1); -- DB11 V12 coupe, 82 -- 90




-- Bentley 

INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Bentayga EWB Azure V8, 90 -- 45 19
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Bentayga EWB Azure First Edition V8', 90 -- 46 20
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Continental GT Azure V8', 91 -- 47 21
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); -- Continental GT W12', 91 -- 48 22
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); -- Continental GT Mulliner W12', 91 -- 48 23
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Continental GT V8', 91 -- 49 24
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '5950', '542', 'Automatic', 1); -- Continental GT S V8', 91 -- 50 25
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Continental GTC Azure V8', 92 -- 51 26
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '650', 'Automatic', 1); -- Continental GTC Speed W12', 92 -- 52 27
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Continental GTC Mulliner V8', 92 -- 53 28
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2900', '536', 'Automatic', 2); -- Flying Spur Azure V6 hybrid', 93 -- 54 29
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3996', '542', 'Automatic', 1); -- Flying Spur Azure V8', 93 -- 55 30
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2995', '536', 'Automatic', 2); -- Flying Spur S V6 Hybrid', 93 -- 56 31
 INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('W12', '5950', '626', 'Automatic', 1); -- Flying Spur Speed W12', 93 -- 57 32


-- Ferrari
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V6', '2.9-liter ', '830', 'F1 DCT 8-SPEED', 2); -- 296 GTB, 94 -- 73
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '492', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1); -- 488 GTB, 94 -- 74
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '670', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1); -- 488 Spider, 95 -- 75
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.0-liter', '780', '9-speed dual clutch F1 gearbox', 4); -- SF90 Spider, 95 -- 76
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '720', '7-SPEED DUAL CLUTCH F1 GEARBOX', 1); -- F8 Tributo, 96 -- 77
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.5-liter', '800', '7-speed dual clutch F1 gearbox', 1); -- 812 GTS, 97 -- 78
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.3-liter', '708', 'Automatic (Dual-clutch), 7-speed', 1); -- LaFerrari Aperta, 98 -- 79
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.0-liter', '670', 'manual', 1); -- SA Aperta, 98 -- 80
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.3-liter', '507', '4RM EVO / 4WS / 7-SPEED DUAL CLUTCH F1 GEARBOX / E - DIFF', 1); -- GTC4Lusso, 99 -- 86
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '449', 'F1 DUAL CLUTCH, 7-SPEED', 1); -- GTC4Lusso T, 99 -- 81
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.5-liter', '605', 'Automatic (Dual-clutch) 7-speed', 1 ); -- 458 Speciale A, 100 -- 82
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '4.3-liter', '338', 'F1 DUAL CLUTCH, 7-SPEED' , 1); -- Ferrari California, 101 -- 83
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V8', '3.9-liter', '412', 'Dual clutch F1 gearbox with 7 speeds + rev.', 1); -- Ferrari California T, 101 -- 84
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES ('V12', '6.0L' , '493', 'F1 gearbox with 6 speeds + Rev', 1); -- 599 GTO, 102 -- 85


-- Lamborghini (First inserts)
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '650', 'Semi-Automatic', 1); -- URUS
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1); -- Urus S
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (8, '3996', '666', 'Semi-Automatic', 1); -- Urus Performante
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '378', 'Automatic', 1); -- Aventator
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1); -- Aventator Roadster
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Manual', 1); -- Aventator S
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '740', 'Automatic Tiptronic', 1); -- Aventator SV
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '750', 'Semi-Automatic', 1); -- Aventator SV Roadster
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '566', 'Automatic Tiptronic', 1); -- Aventator SVJ
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); -- Aventator SVJ Roadster
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '780', 'Automatic', 1); -- Aventator LP 780-4 Ultimate
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '580', 'Automatic', 1); -- Huracán
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1); -- Huracán Spyder
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Automatic Tiptronic', 1); -- Huracán RWD
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'DCT', 1); -- Huracán Performante
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '640', 'Automatic', 1); -- Huracán EVO
INSERT INTO engine (description, cylinders, capacity, power, transmission, id_fuel ) VALUES ('V10, 90°, MPI + Direct Stratified Injection', 10, '5204', '630', 'DCT', 1); -- Huracán EVO STO
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '5204', '610', 'Semi-Automatic', 1); -- Huracán Sterrato
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1); -- Gallardo
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Semi-Automatic', 1); -- Gallardo Spyder
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (10, '4961', '552', 'Automatic', 1); -- Heritage
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); -- Centenario Roadster
INSERT INTO engine (cylinders, capacity, power, transmission, id_fuel ) VALUES (12, '6498', '770', 'Semi-Automatic', 1); -- Sián FKP 37


/* RENATIONAL TABLES: ENGINE AND VARIANT*/ 

-- Aston Martin
insert into engine_variant (id_engine, id_variant) values (1, 1); -- DBS coupe, id_model: 80 -- id_variant:27
insert into engine_variant (id_engine, id_variant) values (2, 2); -- DBS Superleggera',80 -- 28
insert into engine_variant (id_engine, id_variant) values (16, 3); -- DBS superleggera volante, 81 -- 29
insert into engine_variant (id_engine, id_variant) values (17, 4); -- DBS Volante', 81, 30
insert into engine_variant (id_engine, id_variant) values (4, 5); -- DB11 V12 AMR Coupe  82 -- 31
insert into engine_variant (id_engine, id_variant) values (18, 6); -- DB11 V12 coupe, 82 -- 32
insert into engine_variant (id_engine, id_variant) values (3, 7); -- DB11 V8 coupe, 82, 33
insert into engine_variant (id_engine, id_variant) values (5, 8); -- DB11 V8 Volante, 83 -- 34
insert into engine_variant (id_engine, id_variant) values (6, 9); -- Vantage 007 Edition Coupe, 84. -- 35
insert into engine_variant (id_engine, id_variant) values (7, 10); -- Vantage AMR Coupe, 84. -- 36
insert into engine_variant (id_engine, id_variant) values (8, 11); -- Vantage Coupe, 84 -- 37
insert into engine_variant (id_engine, id_variant) values (9, 12); -- Vantage F1 Edition Coupe, 84. --38
insert into engine_variant (id_engine, id_variant) values (10, 13); -- Vantage F1 Edition Roadster, 85.-- 39
insert into engine_variant (id_engine, id_variant) values (11, 14); -- Vantage Roadster, 85.-- 40
insert into engine_variant (id_engine, id_variant) values (12, 15); -- V12 Vantage Coupe, 86. --41
insert into engine_variant (id_engine, id_variant) values (13, 16); -- Vantage V12 Roadster, 87. -- 42
insert into engine_variant (id_engine, id_variant) values (14, 17); -- DBX SUV, 88. -- 43
insert into engine_variant (id_engine, id_variant) values (15, 18); -- DBX 707 SUV, 88. -- 44

-- Bentley
insert into engine_variant (id_engine, id_variant) values (19, 19); -- Bentayga EWB Azure V8, 90 
insert into engine_variant (id_engine, id_variant) values (20, 20); -- Bentayga EWB Azure First Edition V8, 90 
insert into engine_variant (id_engine, id_variant) values (21, 21); -- Continental GT Azure V8, 91 
insert into engine_variant (id_engine, id_variant) values (22, 22); -- Continental GT W12, 91 
insert into engine_variant (id_engine, id_variant) values (23, 23); -- Continental GT Mulliner W12, 91 
insert into engine_variant (id_engine, id_variant) values (24, 24); -- Continental GT V8, 91 
insert into engine_variant (id_engine, id_variant) values (25, 25); -- Continental GT S V8, 91 
insert into engine_variant (id_engine, id_variant) values (26, 26); -- Continental GTC Azure V8, 92 
insert into engine_variant (id_engine, id_variant) values (27, 27); -- Continental GTC Speed W12, 92 
insert into engine_variant (id_engine, id_variant) values (28, 28); -- Continental GTC Mulliner V8, 92 
insert into engine_variant (id_engine, id_variant) values (29, 29); -- Flying Spur Azure V6 hybrid, 93 
insert into engine_variant (id_engine, id_variant) values (30, 30); -- Flying Spur Azure V8, 93 
insert into engine_variant (id_engine, id_variant) values (31, 31); -- Flying Spur S V6 Hybrid, 93 
insert into engine_variant (id_engine, id_variant) values (32, 32); -- Flying Spur Speed W12, 93 

-- Ferrari
insert into engine_variant (id_engine, id_variant) values (33, 33); -- 296 GTB, 94 
insert into engine_variant (id_engine, id_variant) values (34, 34); -- 488 GTB, 94 
insert into engine_variant (id_engine, id_variant) values (35, 35); -- 488 Spider, 95 
insert into engine_variant (id_engine, id_variant) values (36, 36); -- SF90 Spider, 95 
insert into engine_variant (id_engine, id_variant) values (37, 37); -- F8 Tributo, 96 
insert into engine_variant (id_engine, id_variant) values (38, 38); -- 812 GTS, 97 
insert into engine_variant (id_engine, id_variant) values (39, 39); -- LaFerrari Aperta 98 
insert into engine_variant (id_engine, id_variant) values (40, 40); -- SA Aperta 98 
insert into engine_variant (id_engine, id_variant) values (41, 41); -- GTC4Lusso 99 
insert into engine_variant (id_engine, id_variant) values (42, 42); -- GTC4Lusso T 99 
insert into engine_variant (id_engine, id_variant) values (43, 43); -- 458 Speciale A 100 
insert into engine_variant (id_engine, id_variant) values (44, 44); -- Ferrari California 101 
insert into engine_variant (id_engine, id_variant) values (45, 45); -- Ferrari California T 101 
insert into engine_variant (id_engine, id_variant) values (46, 46); -- 599 GTO 102


-- Lamborghini
insert into engine_variant (id_engine, id_variant) values (47,48); -- URUS
insert into engine_variant (id_engine, id_variant) values (48,47); -- Urus S
insert into engine_variant (id_engine, id_variant) values (48,49); -- Urus Performante
insert into engine_variant (id_engine, id_variant) values (51,50); -- 7 Aventator
insert into engine_variant (id_engine, id_variant) values (52,52); -- 9 Aventator S
insert into engine_variant (id_engine, id_variant) values (55,53); -- 10 Aventator SV
insert into engine_variant (id_engine, id_variant) values (47,54); -- 11 Aventator SV Roadster
insert into engine_variant (id_engine, id_variant) values (47,55); -- 12 Aventator SVJ 
insert into engine_variant (id_engine, id_variant) values (47,56); -- 13 Aventator SVJ Roadster
insert into engine_variant (id_engine, id_variant) values (47,57); -- 14 Aventator LP 780-4 Ultimate
insert into engine_variant (id_engine, id_variant) values (47,58); -- 15 Huracán
insert into engine_variant (id_engine, id_variant) values (47,59); -- 16 Huracán Spyder
insert into engine_variant (id_engine, id_variant) values (47,60); -- 17 Huracán RWD
insert into engine_variant (id_engine, id_variant) values (47,61); -- 18 Huracán Performante
insert into engine_variant (id_engine, id_variant) values (47,62); -- 19 Huracán EVO 
insert into engine_variant (id_engine, id_variant) values (47,63); -- 20 Huracán EVO STO
insert into engine_variant (id_engine, id_variant) values (47,64); -- 21 Huracán Sterrato
insert into engine_variant (id_engine, id_variant) values (47,65); -- 22 Gallardo
insert into engine_variant (id_engine, id_variant) values (47,66); -- 23 Gallardo Spyder
insert into engine_variant (id_engine, id_variant) values (47,67); -- 24 Heritage
insert into engine_variant (id_engine, id_variant) values (47,68); -- 25 Centenario Roadster
insert into engine_variant (id_engine, id_variant) values (47,69); -- 26 Sián FKP 37


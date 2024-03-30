DROP SCHEMA IF EXISTS
vehicledb;

CREATE SCHEMA IF NOT EXISTS
vehicledb;

USE vehicledb;
-- DROP TABLE IF EXISTS brand;
CREATE TABLE brand (
id_brand INT NOT NULL AUTO_INCREMENT 
, description VARCHAR(50) NOT NULL 
, PRIMARY KEY (id_brand));

-- DROP TABLE IF EXISTS model;
create table model (
id_model INT NOT NULL AUTO_INCREMENT
, description varchar(45) not null
, id_brand int not null 
, primary key (id_model)
, foreign key (id_brand) references brand (id_brand)
);

-- DROP TABLE IF EXISTS variant;
create table variant (
id_variant INT NOT NULL AUTO_INCREMENT
, description varchar(45) not null
, id_model int not null 
, primary key (id_variant)
, foreign key (id_model) references model (id_model)
);

-- DROP TABLE IF EXISTS feature;
CREATE TABLE feature (
id_feature INT NOT NULL AUTO_INCREMENT 
, description varchar(45) not null
, PRIMARY KEY (id_feature));


-- DROP TABLE IF EXISTS variant_feature;
create table variant_feature(
id_variant INT NOT NULL 
, id_feature INT NOT NULL 
, primary key (id_variant, id_feature)
, foreign key (id_variant) references variant (id_variant)
, foreign key (id_feature) references feature (id_feature)
);
	 
-- DROP TABLE IF EXISTS fuel; 
CREATE TABLE fuel (
id_fuel INT NOT NULL AUTO_INCREMENT 
, description varchar(45) not null
, PRIMARY KEY (id_fuel));

-- DROP TABLE IF EXISTS engine;
CREATE TABLE engine (
id_engine INT NOT NULL AUTO_INCREMENT 
, description varchar(75)
, id_fuel int not null 
, transmission  varchar(45)
, capacity int not null
, power  int not null
, cylinders int not null
, PRIMARY KEY (id_engine)
, FOREIGN KEY (id_fuel) references fuel (id_fuel));

-- DROP TABLE IF EXISTS engine_variant;
Create table engine_variant (
id_variant INT NOT NULL
, id_engine INT NOT NULL  
, primary key (id_variant, id_engine)
, foreign key (id_variant) references variant (id_variant)
, foreign key (id_engine) references engine (id_engine)
);


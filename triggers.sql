USE vehicledb;

-- Personal notes
-- Insert: Used to enter new records
-- Update: Contains both previous and new records. Update is the only one that shows new and old simultaneously.
-- Delete: Contains old records because the information has been deleted

DROP TABLE IF EXISTS LOG_AUDIT;
CREATE TABLE IF NOT EXISTS LOG_AUDIT
(
id_log INT AUTO_INCREMENT ,
insert_variant VARCHAR(10) ,
variant_table VARCHAR(50) ,
user VARCHAR(100) , 
date_ins DATE ,
PRIMARY KEY (id_log)
)
;

DROP TABLE IF EXISTS LOG_AUDIT_2;
CREATE TABLE IF NOT EXISTS LOG_AUDIT_2 
(
id_log INT AUTO_INCREMENT ,
newInsert_oldInsert VARCHAR(200),
insert_variant VARCHAR(10) ,
variant_table VARCHAR(50) ,
user VARCHAR(100) , 
date_ins DATE ,
PRIMARY KEY (id_log)
)
;
SELECT * FROM variant;

-- CREATE TRIGGER INSERT
-- Primer trigger
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT 
BEFORE INSERT ON vehicledb.variant
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDIT (insert_variant , variant_table , user, date_ins)
VALUES ('INSERT' , 'variant' , CURRENT_USER() , NOW());

END//
DELIMITER //

SELECT * FROM variant ;
SELECT * FROM log_audit;
SELECT * FROM log_audit_2;

-- Second trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_2; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_2 
BEFORE INSERT ON vehicledb.variant
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDIT_2 (newInsert_oldInsert, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT('newInsert:', NEW.description, '- oldInsert:', 'variant'), 'INSERT', 'variant', CURRENT_USER(), NOW());
END//
DELIMITER ; 


-- SYNTAX 
SELECT * FROM log_audit ;
SELECT * FROM log_audit_2 ;
SELECT CURRENT_DATE();
SELECT CURRENT_TIMESTAMP();
SELECT CURRENT_DATETIME();
SELECT * FROM model;

-- CREATE TRIGGER UPDATE
-- Third trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_3;
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_3
BEFORE UPDATE ON vehicledb.variant
FOR EACH ROW 
BEGIN
INSERT INTO LOG_AUDIT_2 (newInsert_oldInsert, insert_variant , variant_table , user, date_ins)
VALUES (CONCAT('New field:',NEW.description, '- Old field:',OLD.description), 'UPDATE', 'VARIANT', CURRENT_USER(), NOW());
END//
DELIMITER //

SELECT * FROM variant ;
UPDATE vehicledb.variant 
SET DESCRIPTION = 'Aventator Roadster' 
WHERE ID_VARIANT = 8;
SELECT * FROM LOG_AUDIT_2 ;

-- Fourth trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_4; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_4 
AFTER UPDATE ON vehicledb.variant
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDIT_2 (id_variant, description, insert_variant , variant_table , user, date_ins)
VALUES CONCAT('New field:',NEW.description, '- Old field:',OLD.description),
        NEW.id_variant, 
        'UPDATE',
        'VARIANT' ,
        CURRENT_USER() , 
        NOW());
END//
DELIMITER ; 

UPDATE vehicledb.variant 
SET VARIANT = '' 
WHERE ID_VARIANT = ; --  ID_VARIANT_NUMBER;
SELECT * FROM log_audit_2;

-- CREATE TRIGGER delete
-- Fifth trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_5;
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_5
BEFORE DELETE ON vehicledb.variant
FOR EACH ROW 
BEGIN
INSERT INTO LOG_AUDIT_2 (description, id_variant, insert_variant , variant_table , user, date_ins)
VALUES ( CONCAT(',old.description,', OLD.description),
         OLD.id_variant, 
        'delete' , 
        'variant' ,
        CURRENT_USER() , 
        CURRENT_TIMESTAMP());
END//
DELIMITER //

SELECT * FROM vehicledb.variant WHERE id_variant = -- ;
DELETE FROM vehicledb.variant WHERE id_variant = -- ;
SELECT * FROM log_audit_2;


-- Sixth trigger 
DROP TRIGGER IF EXISTS TRG_LOG_VARIANT_6; 
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT_6 
AFTER DELETE ON vehicledb.variant
FOR EACH ROW
BEGIN
INSERT INTO LOG_AUDIT_2 (description, id_variant, insert_variant , variant_table , user, date_ins)
VALUES ( CONCAT(',old.description,', OLD.description),
         OLD.id_variant, 
        'delete' , 
        'variant' ,
        CURRENT_USER() , 
        CURRENT_TIMESTAMP());
END//
DELIMITER ; 

USE vehicledb;
-- Personal notes
-- Insert: es para ingresar registros nuevos 
-- Update: Tiene registros anteriores y registros nuevos. Update es el unico que muestra new y old al mismo tiempo
-- Delete: Tiene registros viejos pq se elimino la informacion 


-- CREATE AUDITS LOGS
drop table if  exists LOG_AUDIT;
CREATE TABLE IF NOT EXISTS LOG_AUDIT
(
ID_LOG INT AUTO_INCREMENT ,-- pk de la tabla 
action_name VARCHAR(10) ,-- iria si es insert , update ,delete
table_name VARCHAR(50) ,-- la tabal en donde quiero hacer el trigger..
user VARCHAR(100) , -- quien ejecuta la sentencia DML
date_upd_ins_del DATE , -- momento exacto en el que se genera DML
PRIMARY KEY (ID_LOG)
)
;


drop table if  exists LOG_AUDIT_2;
CREATE TABLE IF NOT EXISTS LOG_AUDIT_2 
(
ID_LOG INT AUTO_INCREMENT ,
-- description varchar(50) DEFAULT NULL,
-- id_model int NOT NULL ,
newfield_oldfield VARCHAR(200),
action_name VARCHAR(10) ,
table_name VARCHAR(50) ,
user VARCHAR(100) ,
date_upd_ins_del DATE    ,
PRIMARY KEY (ID_LOG)
)
;

-- CREATE TRIGGER INSERT
DELIMITER //
CREATE TRIGGER TRG_LOG_VARIANT AFTER INSERT ON vehicledb.variant
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDIT (action_name , table_name , user, date_upd_ins_del)
VALUES ( 'INSERT' , 'variant' ,CURRENT_USER() , NOW());

END//
delimiter //


-- DROP TRIGGER IF EXISTS TRG_LOG_variant;

SELECT * FROM variant ;
SELECT * FROM log_audit;


DELIMITER //
create trigger TRG_LOG_VARIANT_2 after insert on vehicledb.variant
for each row
begin
insert into LOG_AUDIT_2 (action_name, table_name, user, date_upd_ins_del)
values ( new.description, new.id_model, 'INSERT', 'variant', CURRENT_USER() , NOW());
end//
DELIMITER ; 
-- DROP TRIGGER IF EXISTS TRG_LOG_VARIANT;


-- DROP TRIGGER IF EXISTS TRG_before_variant_insert;
SELECT * FROM log_audit ;
SELECT * FROM log_audit_2 ;
SELECT CURRENT_DATE();
SELECT TIMESTAMP();
select * from model;
-- heritage brnad 4 (lambo), description: heritage, id_model: 78, id_variant: 24


-- INSERT INFO INTO TRIGGER: NO PUEDO INGRESAR LOS NUEVOS DATOS 
INSERT INTO variant (`DESCRIPTION`, `ID_MODEL`) VALUES ();
INSERT INTO variant (description, id_model) VALUES ('Countach LPI 800-4', 78);



-- ------------------------------
-- I can't create this since the data was not inserted 
/*DROP TRIGGER IF EXISTS TRG_log_audit_3;
DELIMITER //
CREATE TRIGGER TRG_log_audit_3 BEFORE UPDATE ON vehicledb.variant
FOR EACH ROW 
BEGIN

INSERT INTO log_audit_3 (newfield_oldfield, action_name, table_name, user, date_upd_ins_del)
VALUES ( CONCAT('New field : ', NEW.description,'Old field : ',OLD.description ) , 'UPDATE' , 'descrioption' , NOW());

END//
DELIMITER */

-- select * from variant;

-- To do an update in fiels already exist 
/*UPDATE vehicle.variant SET description = 'x' 
WHERE id_description  = x ; 
SELECT * FROM LOG_audit_2 ;*/
-- -----------

/*DROP TRIGGER IF EXISTS TRG_log_audit_4 ;
DELIMITER //
CREATE TRIGGER TRG_log_audit_4  AFTER  UPDATE ON vehicledb.variant
FOR EACH ROW 
BEGIN


INSERT INTO log_audit_2 (description,id_model, action_name, table_name, user, date_upd_ins_del)
VALUES ( CONCAT('Old field : ',OLD.description ,'New field : ', NEW.description),
		NEW.id_model ,
		'UPDATE' , 
        'DESCRIPTION' ,
         NOW()
        );

END//
DELIMITER ;
-- UPDATE vehicledb.variant SET description = 'x' WHERE id_model = x; 

SELECT * FROM log_audit_2 ;

-- ------------
DROP TRIGGER IF EXISTS TRG_log_audit_5 ;
DELIMITER //
CREATE TRIGGER TRG_log_audit_5 BEFORE  DELETE  ON vehicledb.variant
 FOR EACH ROW 
BEGIN


INSERT INTO log_audit_2 (description,id_model, action_name, table_name, user, date_upd_ins_del)
VALUES ( CONCAT('', OLD.description ,'' , OLD.description ),
		OLD.id_model ,
		'DELETE' , 
        'description' ,
         NOW()
        );

END//
DELIMITER ;


SELECT * FROM log_audit_2 ;
*/
/*SELECT * FROM vehicledb.variant WHERE id_model = X ;
DELETE FROM vehicledb.variant
WHERE id_model = x ;*/

-- ---------
-- UPDATE


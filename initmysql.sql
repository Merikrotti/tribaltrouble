START TRANSACTION;
DROP TABLE IF EXISTS registrations;
DROP TABLE IF EXISTS profiles;
DROP TABLE IF EXISTS game_reports;
DROP TABLE IF EXISTS connections;
DROP TABLE IF EXISTS deleted_profiles;
DROP TABLE IF EXISTS settings;
DROP TABLE IF EXISTS games;

CREATE TABLE registrations (
   rid        	INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT, 
   username     VARCHAR(128)  NULL,
   email	  	VARCHAR(128)  NULL,
   password 	VARCHAR(128)  NULL,
   reg_key     	VARCHAR(128)  NOT NULL
);
INSERT INTO registrations VALUES('test','test@domain.local','password',"key");

COMMIT;
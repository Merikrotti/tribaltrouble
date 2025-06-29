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
   last_used_profile 	VARCHAR(128)  NULL,
   reg_key     	VARCHAR(128)  NOT NULL,
   disabled		BOOL	DEFAULT FALSE,
   banned		BOOL	DEFAULT FALSE
);
INSERT INTO registrations VALUES('test','test@domain.local','password', "testprofile", "key");


CREATE TABLE profiles (
   pid        	INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT,
   reg_id		INTEGER		  NOT NULL,
   nick     	VARCHAR(128)  NULL,
   rating 		INTEGER		  NULL,
   wins 		INTEGER		  NULL,
   losses 		INTEGER		  NULL,
   invalid 		INTEGER		  NULL
);


CREATE TABLE games (
   gid        	INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT,
   game_id     	INTEGER  	  NOT NULL,
   tick     	INTEGER  	  NOT NULL,
   team1     	INTEGER  	  NOT NULL,
   team2     	INTEGER  	  NOT NULL,
   team3     	INTEGER  	  NOT NULL,
   team4     	INTEGER  	  NOT NULL,
   team5     	INTEGER  	  NOT NULL,
   team6     	INTEGER  	  NOT NULL
);


CREATE TABLE connections (
   cid        	INTEGER  NOT NULL PRIMARY KEY AUTO_INCREMENT,
   game_id     	INTEGER  	  NOT NULL,
   nick1     	VARCHAR(128)  NOT NULL,
   nick2    	VARCHAR(128)  NOT NULL,
   priority   	INTEGER  	  NOT NULL
);

COMMIT;
-- Create New Table
CREATE TABLE customer (
   customer_id serial PRIMARY KEY,
   first_name character varying(100) NOT NULL,
   last_name character varying(100) NOT NULL,
   email character varying(255) UNIQUE NOT NULL,
   created_date timestamp with time zone NOT NULL DEFAULT now(),
   updated_date timestamp with time zone
);

-- Drop Table
DROP TABLE IF EXISTS customer;

-- Add New Column
ALTER TABLE customer ADD COLUMN active boolean;

-- Drop New Column
ALTER TABLE customer DROP COLUMN active;

-- After Delete Column - Select Statement
SELECT * from customer

-- Rename Existing Column
ALTER TABLE customer RENAME COLUMN email TO email_address;

-- After Rename Column - Select Statement
SELECT * from customer

ALTER TABLE customer RENAME COLUMN email_address TO email;

-- Rename table name
ALTER TABLE customer RENAME TO users;

-- Insert Multiple Customer Records	
INSERT INTO customer (first_name, last_name, email, created_date, updated_date,active) VALUES
  ('John', 'Doe', 'johndoe@example.com', NOW(), NULL,true),
  ('Alice', 'Smith', 'alicesmith@example.com', NOW(), NULL,true),
  ('Bob', 'Johnson', 'bjohnson@example.com', NOW(), NULL,true),
  ('Emma', 'Brown', 'emmabrown@example.com', NOW(), NULL,true),
  ('Michael', 'Lee', 'michaellee@example.com', NOW(), NULL,false),
  ('Sarah', 'Wilson', 'sarahwilson@example.com', NOW(), NULL,true),
  ('David', 'Clark', 'davidclark@example.com', NOW(), NULL,true),
  ('Olivia', 'Martinez', 'oliviamartinez@example.com', NOW(), NULL,true),
  ('James', 'Garcia', 'jamesgarcia@example.com', NOW(), NULL,false),
  ('Sophia', 'Lopez', 'sophialopez@example.com', NOW(), NULL,false),
  ('Jennifer', 'Davis', 'jennifer.davis@example.com', NOW(), NULL,true),
  ('Jennie', 'Terry', 'jennie.terry@example.com', NOW(), NULL,true),
  ('JENNY', 'SMITH', 'jenny.smith@example.com', NOW(), NULL,false),
  ('Hiren', 'Patel', 'hirenpatel@example.com', NOW(), NULL,false);

-- Select Statement
SELECT customer_id, first_name, last_name, email, created_date, updated_date, active
FROM customer;
  
-- Update Statement
UPDATE customer
SET first_name='Hiren',
last_name='Parejiya', 
email='hiren.parejiya@tatvasoft.com'
WHERE customer_id = 1;
	
-- Delete Statement
DELETE FROM customer
WHERE customer_id = 11;


--Using PostgreSQL ORDER BY clause to sort rows by one column in descending order

SELECT
       first_name,
       last_name
FROM
       customer
ORDER BY
       last_name DESC;

--Using WHERE clause with the AND operator example

SELECT
	customer_id,
	first_name,
	last_name
FROM
	customer
WHERE
	first_name = 'Hiren' AND last_name = 'Parejiya';


--CREATING NEW TABLE Country


CREATE TABLE country (
   country_id serial PRIMARY KEY,
   country_name character varying(255) NOT NULL
);
--INSERTING VALUES TO TABLE COUNTRY
INSERT INTO country (country_id,country_name) VALUES
(2,'USA'),
(1,'INDIA'),
(5,'CANADA'),
(7,'GERMANY'),
(9,'UK'),
(11,'FRANCE'),
(4,'MEXICO');

select * from country;

--CREATING NEW TABLE CITY
CREATE TABLE city (
	city_id int primary key,
   country_id serial,
   city_name character varying(255) NOT NULL
);


INSERT INTO city (city_id,country_id,city_name) VALUES
(1,2,'NEW YORK'),
(2,1,'MUMBAI'),
(3,5,'TORONTO'),
(4,7,'BERLIN'),
(5,9,'LONDON'),
(6,11,'PARIS');

--CREATING NEW TABLE mission application

create table MissionApplication(Id	int,
MissionId	int,
UserId	int,
AppliedDate	timestamp with time zone,
Status	bool,
Sheet	int)

insert into MissionApplication(Id,MissionId,UserId,AppliedDate,Status,Sheet) values

(1,34,544,NOW(),false,54),
(2,23,547,NOW(),true,58),
(3,53,549,NOW(),true,94),
(4,32,564,NOW(),false,21),
(5,38,587,NOW(),true,70);

select * from MissionApplication;

--CRRATE NEW TABLE MISSION
create table Missions(
	Id	int,
MissionTitle	character varying(255),
MissionDescription	character varying(255),
MissionOrganisationName	character varying(255),
MissionOrganisationDetail	character varying(255),
CountryId	int,
CityId	int,
StartDate	Date,
EndDate	Date,
MissionType	character varying(255),
TotalSheets	int,
RegistrationDeadLine	Date,
MissionThemeId	character varying(255),
MissionSkillId	character varying(255),
MissionImages	character varying(255),
MissionDocuments	character varying(255),
MissionAvilability	character varying(255),
MissionVideoUrl	character varying(255)
);

insert into Missions (Id,MissionTitle,MissionDescription,MissionOrganisationName,
	MissionOrganisationDetail,CountryId,CityId,StartDate,EndDate,MissionType,TotalSheets,
	RegistrationDeadLine,MissionThemeId,MissionSkillId,MissionImages,MissionDocuments,
	MissionAvilability,MissionVideoUrl) VALUES

(1,'write','write as fast as possible','fergh','fgtgg',43,6,now(),null,'easy',45,null,'vg566',
	'65','65gbgh6','345','ferf','wrgetg');

select * from Missions;

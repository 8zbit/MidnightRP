USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_cardealer2','Concessionnaire',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_cardealer2','Concesionnaire',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('cardealer2','car dealer')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('cardealer2',0,'recruit','Recrue',10,'{}','{}'),
	('cardealer2',1,'novice','Novice',25,'{}','{}'),
	('cardealer2',2,'experienced','experienced',40,'{}','{}'),
	('cardealer2',3,'boss','boss',0,'{}','{}')
;

CREATE TABLE `cardealer2_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `vehicle2_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);


CREATE TABLE `rented2_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `vehicle2_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `vehicle2_categories` (name, label) VALUES

	('muscle','Muscle')
	
;

CREATE TABLE `vehicles2` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);

INSERT INTO `vehicles2` (name, model, price, category) VALUES
	
	('Hustler', 'hustler', 625000, 'muscle')
;

CREATE TABLE `strandsatt_fishing` (
	`fish` varchar(30) NOT NULL,
	`data` longtext,
	PRIMARY KEY (`fish`)
);

INSERT INTO `strandsatt_fishing` (`fish`) VALUES
    ('salmon'),
    ('trout'),
    ('char'),
    ('pike'),
    ('goldfish'),
    ('whitefish'),
    ('roach'),
    ('mackerel'),
    ('lobster'), 
    ('crawfish')
;

INSERT INTO `items` (name, label, `limit`) VALUES
	('fishingrod','fishingrod', 5),
	('bait', 'bait', 25),
    ('fishingpermit','fishingpermit', 5),
    ('salmon', 'salmon', 20),
    ('trout', 'trout', 20),
    ('char', 'char', 20),
    ('pike', 'pike', 20),
    ('goldfish', 'goldfish', 20),
    ('whitefish', 'whitefish', 20),
    ('roach', 'roach', 20),
    ('mackerel', 'mackerel', 20),
    ('lobster', 'lobster', 20), 
    ('crawfish','crawfish', 20)
;
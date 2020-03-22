INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('yusuf', 'Weapon Skin', 1, 0, 1),
('grip', 'Grip', 1, 0, 1),
('flashlight', 'Flashlight', 1, 0, 1),
('suppressor', 'Suppressor', 1, 0, 1);

INSERT INTO `shops` ( `store`, `item`, `price`) VALUES
( 'police', 'yusuf', 400),
( 'police', 'grip', 250),
( 'police', 'flashlight', 100),
( 'police', 'suppressor', 5000);

INSERT INTO `hiddenshops` ( `store`, `item`, `price`) VALUES
( 'hacker', 'yusuf', 400),
( 'hacker', 'grip', 250),
( 'hacker', 'flashlight', 100),
( 'hacker', 'suppressor', 5000);
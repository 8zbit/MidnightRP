USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_midnightclub','midnightclub',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_midnightclub','midnightclub',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('midnightclub','midnightclub')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('midnightclub',0,'recrue','Recruit',12,'{}','{}'),
  ('midnightclub',1,'novice','Novice',24,'{}','{}'),
  ('midnightclub',2,'experimente','Experienced',36,'{}','{}'),
  ('midnightclub',3,'chief','Leader',48,'{}','{}'),
  ('midnightclub',4,'boss','Boss',0,'{}','{}')



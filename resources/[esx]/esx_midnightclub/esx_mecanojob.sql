USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_mecano','midnightActions',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_mecano','midnightActions',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('midnightActions','midnightActions')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('midnightActions',0,'recrue','Recrue',12,'{}','{}'),
  ('midnightActions',1,'novice','Novice',24,'{}','{}'),
  ('midnightActions',2,'experimente','Experimente',36,'{}','{}'),
  ('midnightActions',3,'chief','Chef d\équipe',48,'{}','{}'),
  ('midnightActions',4,'boss','Patron',0,'{}','{}')

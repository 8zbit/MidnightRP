SET @job_name = 'pearls';
SET @society_name = 'society_pearls';
SET @job_Name_Caps = 'pearls';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_pearls_fridge', 'pearls ', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'barman', 'Barman', 300, '{}', '{}'),
  (@job_name, 1, 'reception', 'reception', 300, '{}', '{}'),
  (@job_name, 2, 'manager', 'manager', 500, '{}', '{}'),
  (@job_name, 3, 'boss', 'boss', 600, '{}', '{}')
;

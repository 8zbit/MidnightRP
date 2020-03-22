INSERT INTO `jobs` (name, label) VALUES
  ('offpolice','Off-Duty'),
  ('offambulance','Off-Duty'),
  ('offmecano','Off-Duty')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('offpolice',0,'recruit','Cadet',50,'{}','{}'),
  ('offpolice',1,'officer','Officier',50,'{}','{}'),
  ('offpolice',2,'sergeant','Corporal',50,'{}','{}'),
  ('offpolice',3,'intendent','Sergeant',50,'{}','{}'),
  ('offpolice',4,'lieutenant','Lieutenant',50,'{}','{}'),
   ('offpolice',5,'chef','Captain',50,'{}','{}'),
  ('offpolice',6,'boss','Chief of police',50,'{}','{}'),
  ('offambulance',0,'ambulance','Ambulance',50,'{}','{}'),
  ('offambulance',1,'doctor','Doctor',50,'{}','{}'),
  ('offambulance',2,'chief_doctor','Chief Doctor',50,'{}','{}'),
  ('offambulance',3,'boss','Boss',50,'{}','{}'),
  ('offmecano',0,'recrue','Technician',50,'{}','{}'),
  ('offmecano',1,'novice','Technician',50,'{}','{}'),
  ('offmecano',2,'experimente','Technician',50,'{}','{}'),
  ('offmecano',3,'chief','Lead Tech',50,'{}','{}'),
  ('offmecano',4,'boss','Boss',50,'{}','{}')
;
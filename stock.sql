use stock;
CREATE table branche(
 id SMALLINT AUTO_INCREMENT,
 adresse varchar(255),
 PRIMARY KEY(id)
);
--@block
SELECT*FROM branche
--@block
CREATE TABLE catigorie(
   id SMALLINT AUTO_INCREMENT,
   nom varchar(255),
   discription text ,
   PRIMARY KEY(id)
);
--@block
CREATE TABLE activities(
  id INT AUTO_INCREMENT,
  category smallint,
  branch smallint,
  disponibilité ENUM(
    "removed",
    "added"
  )DEFAULT "added",
  timestp  DATETIME  DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id),
  FOREIGN KEY(branch) REFERENCES branche(id),
  FOREIGN KEY(category) REFERENCES catigorie(id)


);
--@block 
SELECT*FROM activities;

--@block
CREATE TABLE product(
  id int,
  category SMALLINT,
  qantity int,
  tag VARCHAR(255),

  PRIMARY key(id),
  FOREIGN key (category) REFERENCES catigorie(id)



);
--@block

SELECT*FROM product;
--@block
CREATE TABLE logs(
  id int,
  product SMALLINT,
  direction VARCHAR(255),
  quantity int,
  branchs SMALLINT,
  PRIMARY key(id),
  FOREIGN KEY(branch) REFERENCES branches(id)

);
--@block
UPDATE branche
SET adresse = 
  CASE 
    WHEN id = 1 THEN 'centre commercial de bab elzouar'
    WHEN id = 2 THEN 'bazar hamza'
    WHEN id = 3 THEN 'bazar taiba'
    WHEN id = 4 THEN 'centre de rouiba'
    WHEN id = 5 THEN 'centre de cheraga'
    WHEN id = 6 THEN 'centre de hassiba'
    WHEN id = 7 THEN 'centre de 1er mai'
  END;
--@block
SELECT*FROM branche;
--@block
INSERT INTO catigorie (nom, discription)
VALUES 
  ('champoin', ' 5 marque  '),
  ('aprés champoin ', '5 marque'),
  ('parfum original', '5 marque'),
  ('jel douche', '5 marque'),
  ('jel netoiyan', '5 marque'),
  ('masque de visage', '5 marque');
  --@block
  SELECT*FROM catigorie;

--@block 
INSERT INTO activities(disponibilité, timestp )
VALUES
("added",'2023-11-11 14:30:00'),
("added",'2023-11-12 17:30:00'),
("removed",'2023-11-09 14:30:00');

--@block
SELECT*FROM activities;
--@block
INSERT INTO product(id,qantity, tag)
VALUES
(1,1000,'f5kll'),
(2,2500,'ln!:253'),
(3,3353,'n:b,n,:nv'),
(4,23245,'bn,bkv5');
--@block
SELECT*FROM product;

--@block
INSERT into logs(id,product,direction,quantity)
VALUES
(1,1,'bajrah',150),
(2,2,'bab elzouar',250),
(3,3,'cheraga',350),
(4,4,'rouiba',450),
(6,5,'hassiba',52);
--@block
SELECT*FROM logs;






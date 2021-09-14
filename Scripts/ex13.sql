DROP SCHEMA IF EXISTS ex13;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex13` DEFAULT CHARACTER SET utf8mb4 ;
USE ex13;

-- Tabelen erstellen
CREATE TABLE `firmenwagen` (
`fwnr` INTEGER(11) NOT NULL,
`kennzeichen` VARCHAR(45) NOT NULL,
`anschaffungskosten` FLOAT(15) NOT NULL,
`anschaffungsdatum` DATE NOT NULL,
`fmnr`INTEGER(11)NOT NULL,
`vtnr`INTEGER(11)NOT NULL,
PRIMARY KEY (`fwnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fahrzeugmodel` (
`fmnr` INTEGER(11) NOT NULL,
`model` VARCHAR(45) NOT NULL,
`hersteller` VARCHAR(45) NOT NULL,
`kraftstoff` VARCHAR(45) NOT NULL,
`verbrauch` decimal(4,1) NOT NULL,
PRIMARY KEY (`fmnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `instandhaltung` (
`ihnr` INTEGER(11) NOT NULL,
`kosten` FLOAT(11) NOT NULL,
`kilometerstand` FLOAT(10) NOT NULL,
`datum` DATE NOT NULL,
`beschreibung` VARCHAR(200),
`fwnr`INTEGER(11)NOT NULL,
PRIMARY KEY (`ihnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `vertrag` (
`vtnr` INTEGER(11) NOT NULL,
`versicherungsnr` INTEGER(20) NOT NULL,
`kasko` VARCHAR(45) NOT NULL,
`jahreskosten` FLOAT(15)NOT NULL,
`vnr`INTEGER(11)NOT NULL,
PRIMARY KEY (`vtnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `versicherung` (
`vnr` INTEGER(11) NOT NULL,
`geschäftsname` VARCHAR(45) NOT NULL,
`strasse` VARCHAR(45) NOT NULL,
`hnr` INTEGER(11) NOT NULL,
`ort` VARCHAR(10)NOT NULL,
`plz` INTEGER(11) NOT NULL,
`land` VARCHAR(10)NOT NULL,
`telefonnr` INTEGER(15) NOT NULL,
PRIMARY KEY (`vnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `reservierung` (
`rnr` INTEGER(11) NOT NULL,
`zweck` VARCHAR(45) NOT NULL,
`beginn` DATE NOT NULL,
`ende` DATE NOT NULL,
`mnr` INTEGER (11)NOT NULL,
`fwnr`INTEGER (11)NOT NULL,
PRIMARY KEY (`rnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `mitarbeiter`(
`mnr` INTEGER(11) NOT NULL,
`personalnr`INTEGER(20) NOT NULL,
`name` VARCHAR(45) NOT NULL,
`vorname` VARCHAR(10)NOT NULL,
PRIMARY KEY (`mnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- tabellen befüllen

INSERT INTO firmenwagen (fwnr ,kennzeichen ,anschaffungskosten,anschaffungsdatum,fmnr,vtnr)
VALUES(1 , 'BL 423 245', '80000','2020.04.30',1,3),
(2 , 'BL 543 145', '61000','2010.10.21',2,2),
(3 , 'BL 100 369', '25000','2015.04.11',3,4),
(4 , 'BL 165 498', '50000','2018.06.01',4,1);

INSERT INTO fahrzeugmodel (fmnr ,model ,hersteller,kraftstoff,verbrauch)
VALUES(1 , '3er', 'BMW','Diesel',8.9),
(2 , 'Toutneo', 'Ford','Diesel',9.4),
(3 , 'Scudo', 'Fiat','Bleifrei 95',4.2),
(4 , 'Leon', 'SEAT','Bleifrei 98',4.6);

INSERT INTO instandhaltung (ihnr,kosten ,kilometerstand ,datum,beschreibung,fwnr)
VALUES(1 , 2100, 21000,'2019.02.05','Neue Bremsbelege',3),
(2 , 900, 10025,'2018.02.05','Grosser Service',3),
(3 , 1200, 2356,'2011.03.11','Kleiner Service',2),
(4 , 800, 5000,'2017.04.24','Kleiner Service',3),
(5 , 1500, 45200,'2017.05.29','Neuer Keilriemen',2),
(6 , 900, 6000,'2021.01.05','Kleiner Service',1),
(7 , 904, 10250,'2019.02.05','Grrosser Service',4),
(8 , 750, 25000,'2020.08.14','Grosser Service',2);

INSERT INTO vertrag (vtnr ,versicherungsnr ,kasko,jahreskosten,vnr)
VALUES(1 , 20154856, 'Voll kasko',1500,1),
(2 , 89542200, 'Teil Kasko',1020,2),
(3 , 89544412, 'Voll Kasko',2100,1),
(4 , 20154876, 'Teil Kasko',1200,2);

INSERT INTO versicherung (vnr ,geschäftsname ,strasse,hnr,ort,plz,land,telefonnr)
VALUES(1 , 'Basler', 'Singerstr.',4,'Basel',4050,'Schweiz',0793452859),
(2 , 'Alianz', 'Mannheimerstr.',12,'Zürich',3860,'Schweiz',0791452369);

INSERT INTO reservierung (rnr,zweck,beginn,ende,mnr,fwnr)
VALUES(1 , 'Geschäftsmeeting','2020.09.14','2020.09.15',1,2),
(2 , 'Urlaub','2015.06.04','2015.06.14',2,3),
(3 , 'Kundenbesuch','2019.02.24','2019.02.25',3,4),
(4 , 'Kundenbesuch','2011.03.04','2011.03.05',4,1),
(5 , 'Weiterbildung','2016.12.01','2016.12.02',1,4),
(6 , 'Urlaub','2021.02.24','2021.02.25',2,3),
(7 , 'Geschäftsreise','2017.02.24','2017.02.25',3,2);

INSERT INTO mitarbeiter (mnr ,personalnr,name ,vorname)
VALUES(1 , 015, 'Schmid','Urs'),
(2 , 016, 'Meier','Franz'),
(3 , 017, 'Müllero','Lukas'),
(4 , 018, 'Leimgruber','Peter');

ALTER TABLE ex13.reservierung ADD CONSTRAINT reservierung_FK_ma FOREIGN KEY (mnr) REFERENCES ex13.mitarbeiter(mnr);
ALTER TABLE ex13.reservierung ADD CONSTRAINT reservierung_FK_fw FOREIGN KEY (fwnr) REFERENCES ex13.firmenwagen(fwnr);
ALTER TABLE ex13.vertrag ADD CONSTRAINT vertrag_FK FOREIGN KEY (vnr) REFERENCES ex13.versicherung(vnr);
ALTER TABLE ex13.firmenwagen ADD CONSTRAINT firmenwagen_FK_vt FOREIGN KEY (vtnr) REFERENCES ex13.vertrag(vtnr);
ALTER TABLE ex13.firmenwagen ADD CONSTRAINT firmenwagen_FK_fm FOREIGN KEY (fmnr) REFERENCES ex13.fahrzeugmodel(fmnr);
ALTER TABLE ex13.instandhaltung ADD CONSTRAINT instandhaltung_FK FOREIGN KEY (fwnr) REFERENCES ex13.firmenwagen(fwnr);

-- Views

create or replace view reservierungsview
as select
    r.rnr,
    r.zweck,
    r.beginn,
    r.ende,
    m.mnr,
    m.personalnr,
    m.vorname,
    m.name,
    f.fwnr,
    f.kennzeichen,
    f.anschaffungsdatum,
    f.anschaffungskosten,
    f2.fmnr,
    f2.model,
    f2.hersteller,
    f2.kraftstoff,
    f2.verbrauch
from
    ex13.reservierung r
inner join ex13.mitarbeiter m on
    r.mnr = m.mnr
inner join ex13.firmenwagen f on
    r.fwnr = f.fwnr
inner join ex13.fahrzeugmodel f2 on
    f.fmnr = f2.fmnr;
 
  select*from reservierungsview;
  
create or replace view instandhaltungsview
as select
    i.ihnr,
    i.datum,
    i.kilometerstand,
    i.kosten,
    i.beschreibung,
    f.fwnr,
    f.kennzeichen,
    f.anschaffungsdatum,
    f.anschaffungskosten,
    f2.fmnr,
    f2.model,
    f2.hersteller,
    f2.kraftstoff,
    f2.verbrauch
from
    ex13.instandhaltung i
inner join ex13.firmenwagen f on
    i.fwnr = f.fwnr
inner join ex13.fahrzeugmodel f2 on
    f.fmnr = f2.fmnr;
 
  select*from instandhaltungsview;
 
 create or replace view versicherungsantragview 
as select
    v.vtnr,
    v.versicherungsnr,
    v.kasko,
    v.jahreskosten,
    v2.vnr,
    v2.geschäftsname,
    v2.strasse,
    v2.hnr,
    v2.ort,
    v2.plz
from
    ex13.vertrag v
inner join ex13.versicherung v2 on
    v.vnr = v2.vnr;
 
  select*from versicherungsantragview;
  

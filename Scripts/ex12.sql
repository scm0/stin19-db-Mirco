DROP SCHEMA IF EXISTS ex12;
-- In MySQL, the schema is the synonym for the database
-- DROP DATABASE [IF EXISTS] database_name;

CREATE SCHEMA `ex12` DEFAULT CHARACTER SET utf8mb4 ;
USE ex12;

-- Tabelen erstellen

CREATE TABLE `kunde` (
`knr` INTEGER(11) NOT NULL,
`name` VARCHAR(45) NOT NULL,
`vorname` VARCHAR(45) NOT NULL,
PRIMARY KEY (`knr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `mietvertrag` (
`mnr` INTEGER(11) NOT NULL,
`abschlussdatum` DATE NOT NULL,
`mietbeginn` DATE NOT NULL,
`mietdauer` INTEGER(11) NOT NULL,
`kunde_id` INTEGER(11) NOT NULL,
PRIMARY KEY (`mnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fahrradtyp` (
`ftnr` INTEGER(11) NOT NULL,
`typ` VARCHAR(45) NOT NULL,
`kennung` VARCHAR(45) NOT NULL,
PRIMARY KEY (`ftnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fahrrad` (
`fnr` INTEGER(11) NOT NULL,
`marke` VARCHAR(45) NOT NULL,
`grösse` VARCHAR(45) NOT NULL,
`kaufdatum` date NOT NULL,
`anschaffungskosten` FLOAT NOT NULL,
`fahrradtyp_id` INTEGER(11) NOT NULL,
PRIMARY KEY (`fnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `mietvertrag_fahrrad` (
`mfnr` INTEGER(11) NOT NULL,
`fahrradnr` INTEGER(11) NOT NULL,
`mietvertragnr` INTEGER(11) NOT NULL,
PRIMARY KEY (`mfnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tabellen füllen

INSERT INTO kunde (knr ,name ,vorname)
VALUES(1 ,'Schmid','Urs'),
(2 , 'Meier','Franz'),
(3 , 'Müllero','Lukas'),
(4 , 'Leimgruber','Peter');

INSERT INTO mietvertrag (mnr ,abschlussdatum ,mietbeginn,mietdauer,kunde_id)
VALUES(1 ,'2020.04.03','2020.05.01',4,1),
(2 ,'2020.06.03','2020.08.01',2,2),
(3 ,'2021.04.03','2021.07.01',1,3),
(4 ,'2021.01.21','2021.02.06',14,4);

INSERT INTO fahrradtyp (ftnr ,typ ,kennung)
VALUES(1 ,'Rennrad','Renn#'),
(2 ,'Mountainbike','Cross#'),
(3 ,'Trekkingrad','Trek#'),
(4 ,'E-Nike','Elektro#');

INSERT INTO fahrrad (fnr ,marke,grösse ,kaufdatum,anschaffungskosten,fahrradtyp_id)
VALUES(1 ,'Scott','m','2016.05.20',2500.20,1),
(2 ,'KTM','l','2016.06.20',1500.15,2),
(3 ,'Flyer','xl','2016.04.20',4600,4),
(4 ,'Pegeasus','m','2016.05.22',1800.20,3),
(5 ,'Scott','m','2016.07.20',2800.20,2),
(6 ,'Scott','l','2017.09.04',3500.90,4),
(7 ,'Kalkhoff','s','2019.05.24',1100,3);

INSERT INTO mietvertrag_fahrrad (mfnr ,fahrradnr,mietvertragnr)
VALUES(1 ,2,1),
(2 ,2,2),
(3 ,1,1),
(4 ,1,3),
(5 ,3,3),
(6 ,4,3),
(7 ,4,4);

-- FK

ALTER TABLE ex12.fahrrad ADD CONSTRAINT fahrrad_FK FOREIGN KEY (fahrradtyp_id) REFERENCES ex12.fahrradtyp(ftnr);
ALTER TABLE ex12.mietvertrag ADD CONSTRAINT mietvertrag_FK FOREIGN KEY (kunde_id) REFERENCES ex12.kunde(knr);
ALTER TABLE ex12.mietvertrag_fahrrad ADD CONSTRAINT mietvertrag_fahrrad_FK_f FOREIGN KEY (fahrradnr) REFERENCES ex12.fahrrad(fnr);
ALTER TABLE ex12.mietvertrag_fahrrad ADD CONSTRAINT mietvertrag_fahrrad_FK_m FOREIGN KEY (mietvertragnr) REFERENCES ex12.mietvertrag(mnr);
-- View

create or replace view ex12_all
as select
    k.knr,
    k.name,
    k.vorname,
    m.mnr,
    m.abschlussdatum,
    m.mietbeginn,
    m.mietdauer,
    f.marke,
    f.grösse,
    f.kaufdatum,
    f.anschaffungskosten,
    f2.typ,
    f2.kennung,
    f.fnr
from
    ex12.mietvertrag_fahrrad mf
inner join ex12.mietvertrag m on
    mf.mietvertragnr = m.mnr
inner join ex12.kunde k on
    m.kunde_id = k.knr
inner join ex12.fahrrad f on
    mf.fahrradnr = f.fnr
inner join ex12.fahrradtyp f2 on
    f.fahrradtyp_id = f2.ftnr;
 
  select*from ex12_all;

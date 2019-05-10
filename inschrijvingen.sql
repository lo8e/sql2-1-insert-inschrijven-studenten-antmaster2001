USE `lo8e_sql2`;

INSERT INTO klassen (klas_code, slb_code, cohort, opleiding_code)
VALUES  ("lo9e-amo1", "vlt03", 2019, "amo"),
		("lo9e-amo2", "rs001", 2019, "amo"),
        ("lo9e-amo3", "bkr02", 2019, "amo");
        
INSERT INTO studenten (ov_nummer, achternaam, tussenvoegsel, voornaam, geboortedatum, postcode, plaats, gewicht, lengte, inschrijvings_datum)
VALUES  (90000,'Sixx','','Nikki','1962-07-27','2200 SG','Los Angeles', 75, 1.86, 07-01-2015),
		(90500,'Hudson','','Saul','1963-07-27','2203 SG','Hollywood', 70, 1.75, 05-01-2011),
        (90050,'Richards','','Keith','1954-07-27','2209 SG','London', 67.2, 1.56, 05-01-2013),
        (95000,'Vaughan','Ray','Stevie','1971-07-27','2218 SG','Texas', 78.2, 1.66, 04-01-2012);

INSERT INTO klassen_studenten(ov_nummer, klas_code) VALUES
	(90000,'lo8e-amo1'),
	(90500,'lo8e-amo2'),
	(90050,'lo8e-amo3'),
	(95000,'lo8e-amo4');
    
UPDATE studenten
SET geboortedatum = "1962-06-27"
WHERE ov_nummer = 90000;

# werkt niet vanwegen safe update mode
UPDATE studenten
SET actief = false
WHERE inschrijvings_datum <= "1-1-2017";

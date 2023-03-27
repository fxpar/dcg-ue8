
CREATE TABLE IF NOT EXISTS "Abonnement"(
	"idAbo" INTEGER,
	"idTypeAbo" NUMERIC,
	"idCli" NUMERIC,
	PRIMARY KEY("idAbo" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Client"(
	"idCli" INTEGER,
	"nomCli" TEXT,
	"rueCli" NUMERIC,
	"villeCli" TEXT,
	"telCli" NUMERIC,
	"courrielCli" NUMERIC,
	PRIMARY KEY("idCli" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Collecte"(
	"idCollecte" NUMERIC,
	"idAbo" NUMERIC,
	"dateCollecte" DATETIME
);

CREATE TABLE IF NOT EXISTS "Concerner"(
	"idTypeDechets" NUMERIC,
	"idTypeAbo" NUMERIC
);

CREATE TABLE IF NOT EXISTS "Detail_Collecte"(
	"idCollecte" NUMERIC,
	"idAbo" NUMERIC,
	"Colonne1" NUMERIC,
	"idTypeDechets" NUMERIC,
	"poidsCollecte" NUMERIC
);

CREATE TABLE IF NOT EXISTS "Type_Abonnement"(
	"idTypeAbo" INTEGER,
	"libelleTypeAbo" TEXT,
	"tarifAbo" NUMERIC,
	PRIMARY KEY("idTypeAbo" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Type_Dechets"(
	"idTypeDechets" INTEGER,
	"libelleTypeDechets" TEXT,
	"contientDonnees" TEXT,
	PRIMARY KEY("idTypeDechets" AUTOINCREMENT)
);


INSERT INTO Abonnement VALUES
(1,3,2),
(2,2,1),
(3,5,3),
(4,5,1),
(5,5,2),
(6,1,4),
(7,3,5),
(8,5,212),
(9,2,213)
;
INSERT INTO Client VALUES
(1,'Hogwarts',Null,'London',Null,Null),
(2,'Beaubâtons',Null,'Bordeaux',Null,Null),
(3,'Durmstrang',Null,'Sofia',Null,Null),
(4,'Mahoutokoro',Null,'Tokyo',Null,Null),
(5,'Hôtel du nord',Null,'Dijon',Null,Null),
(212,'Uagadou',Null,'Kampala',Null,Null),
(213,'Sinapis Fleuri',Null,'Dijon',Null,Null)
;
INSERT INTO Collecte VALUES
(1,2,'2018-02-27'),
(1,3,'2018-03-07'),
(2,3,'2018-03-13'),
(1,1,'2018-03-22'),
(2,1,'2018-03-23'),
(3,3,'2018-04-11'),
(2,2,'2018-05-05'),
(3,1,'2018-07-26'),
(4,1,'2018-07-29'),
(3,2,'2018-08-11'),
(4,2,'2018-09-05'),
(4,3,'2018-11-04'),
(5,1,'2018-11-11'),
(1,7,'2019-12-08'),
(1,6,'2019-04-18'),
(2,4,'2019-07-10'),
(3,4,'2019-03-30'),
(4,6,'2019-03-02'),
(2,9,'2019-09-11'),
(5,4,'2019-12-31'),
(1,8,'2019-12-05'),
(1,5,'2019-02-11'),
(2,1,'2019-08-13'),
(6,1,'2019-09-14'),
(3,6,'2019-06-09'),
(4,9,'2019-12-19'),
(5,4,'2019-06-22'),
(6,1,'2019-07-10'),
(3,1,'2019-04-22'),
(7,8,'2019-01-02'),
(4,5,'2019-03-08'),
(2,5,'2019-01-12'),
(5,9,'2019-01-03'),
(8,1,'2019-03-22'),
(7,1,'2019-01-11'),
(5,7,'2019-11-24'),
(9,5,'2019-01-12'),
(6,1,'2019-04-17'),
(10,6,'2019-03-05'),
(6,9,'2019-10-07'),
(11,9,'2019-05-19'),
(3,7,'2019-04-22'),
(4,7,'2019-04-13'),
(8,4,'2019-06-19'),
(5,7,'2019-08-08'),
(12,9,'2019-12-31'),
(6,8,'2019-06-27'),
(7,8,'2019-04-09')
;
INSERT INTO Concerner VALUES
(3,3),
(1,2),
(2,1),
(5,3),
(8,3),
(1,5),
(2,5),
(3,5),
(4,5),
(5,5),
(6,5),
(7,5),
(8,5)
;
INSERT INTO Detail_Collecte VALUES
(3,7,3,5,195),
(6,8,5,5,136),
(7,8,5,3,43),
(3,1,3,8,142),
(2,2,2,1,79),
(3,2,2,1,87),
(1,6,1,2,33),
(2,4,5,8,59),
(1,6,1,2,158),
(5,4,5,7,106),
(5,4,5,1,100),
(1,2,2,1,26),
(5,4,5,4,174),
(5,4,5,6,142),
(7,8,5,5,137),
(3,3,5,5,24),
(1,6,1,2,110),
(5,7,3,8,198),
(5,1,3,5,93),
(4,1,3,5,185),
(5,7,3,5,157),
(1,2,2,1,89),
(2,5,5,6,165),
(7,1,3,5,142),
(1,2,2,1,113),
(6,1,3,5,67),
(5,1,3,1,186),
(6,1,3,1,61),
(2,4,5,3,129),
(4,9,2,1,21),
(2,5,5,4,155),
(1,5,5,2,140),
(5,4,5,8,175),
(2,5,5,6,130),
(6,9,2,1,134),
(9,5,5,6,57),
(2,4,5,6,57),
(6,1,3,8,61),
(4,3,5,2,184),
(4,2,2,1,59),
(3,7,3,8,19),
(7,8,5,3,69),
(3,4,5,1,85),
(8,1,3,8,75),
(4,7,3,8,195),
(6,8,5,4,132),
(1,6,1,2,137),
(4,1,3,1,122)
;
INSERT INTO Type_Abonnement VALUES
(1,'Recycle Papier',50),
(2,'Recycle Cartouche',60),
(3,'Recycle Data',300),
(4,'Total Recycle',500)
;
INSERT INTO Type_Dechets VALUES
(1,'Cartouches','non'),
(2,'Papier','non'),
(3,'Ordi portable','oui'),
(4,'Piles','non'),
(5,'Clés usb','oui'),
(6,'Luminaires','non'),
(7,'Boissons','non'),
(8,'Unités Centrale','oui')
;
-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2020 at 12:08 AM
-- Server version: 5.7.11
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dcg_ue8_annale_2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `concerner`
--

DROP TABLE IF EXISTS `concerner`;
CREATE TABLE `concerner` (
  `#NumSecteur` decimal(2,1) NOT NULL,
  `#NumHotel` decimal(3,1) NOT NULL,
  `#CodeEmp` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `concerner`:
--   `#CodeEmp`
--       `permanent` -> `#CodeEmpPerm`
--   `#NumHotel`
--       `hotel` -> `NumHotel`
--   `#NumSecteur`
--       `secteur` -> `NumSecteur`
--

--
-- Dumping data for table `concerner`
--

INSERT INTO `concerner` (`#NumSecteur`, `#NumHotel`, `#CodeEmp`) VALUES
('1.0', '5.0', '1.0'),
('7.0', '8.0', '4.0'),
('3.0', '15.0', '5.0'),
('4.0', '9.0', '7.0'),
('2.0', '13.0', '8.0'),
('2.0', '14.0', '8.0'),
('7.0', '1.0', '12.0'),
('5.0', '16.0', '13.0'),
('5.0', '6.0', '16.0'),
('2.0', '10.0', '19.0'),
('6.0', '11.0', '22.0'),
('2.0', '3.0', '24.0'),
('3.0', '12.0', '28.0'),
('6.0', '5.0', '29.0'),
('6.0', '13.0', '31.0'),
('6.0', '14.0', '31.0'),
('3.0', '4.0', '37.0'),
('7.0', '4.0', '39.0'),
('1.0', '1.0', '40.0'),
('3.0', '13.0', '41.0'),
('3.0', '14.0', '41.0'),
('3.0', '8.0', '43.0'),
('6.0', '10.0', '46.0'),
('7.0', '9.0', '48.0'),
('6.0', '3.0', '51.0');

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE `employe` (
  `CodeEmp` tinyint(4) NOT NULL,
  `NomEmp` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PrénomEmp` varchar(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `RueEmp` varchar(0) CHARACTER SET utf8mb4 DEFAULT NULL,
  `VilleEmp` varchar(0) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CodePostalEmp` varchar(0) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Salaire` decimal(5,1) DEFAULT NULL,
  `Saisonnier` varchar(3) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Permanent` varchar(3) CHARACTER SET utf8mb4 DEFAULT NULL,
  `#NumSecteur` int(11) NOT NULL,
  `#NumHotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `employe`:
--   `#NumHotel`
--       `hotel` -> `NumHotel`
--   `#NumSecteur`
--       `secteur` -> `NumSecteur`
--

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`CodeEmp`, `NomEmp`, `PrénomEmp`, `RueEmp`, `VilleEmp`, `CodePostalEmp`, `Salaire`, `Saisonnier`, `Permanent`, `#NumSecteur`, `#NumHotel`) VALUES
(1, 'B.', 'Gabriel', '', '', '', '1911.0', '', 'oui', 0, 0),
(2, 'P.', 'Raphaël', '', '', '', '1597.0', 'oui', '', 0, 0),
(3, 'O.', 'Léo', '', '', '', '1411.0', '', 'oui', 0, 0),
(4, 'U.', 'Louis', '', '', '', '1469.0', '', 'oui', 0, 0),
(5, 'M.', 'Emma', '', '', '', '1291.0', '', 'oui', 0, 0),
(6, 'C.', 'Lucas', '', '', '', '1845.0', 'oui', '', 0, 0),
(7, 'D.', 'Jade', '', '', '', '1027.0', '', 'oui', 0, 0),
(8, 'A.', 'Adam', '', '', '', '1249.0', '', 'oui', 0, 0),
(9, 'U.', 'Louise', '', '', '', '1255.0', 'oui', '', 0, 0),
(10, 'T.', 'Arthur', '', '', '', '1165.0', 'oui', '', 0, 0),
(11, 'L.', 'Jules', '', '', '', '1673.0', '', 'oui', 0, 0),
(12, 'G.', 'Hugo', '', '', '', '1605.0', '', 'oui', 0, 0),
(13, 'Ë.', 'Maël', '', '', '', '2698.0', '', 'oui', 0, 0),
(14, 'H.', 'Ethan', '', '', '', '1078.0', 'oui', '', 0, 0),
(15, 'I.', 'Alice', '', '', '', '1564.0', 'oui', '', 0, 0),
(16, 'L.', 'Chloé', '', '', '', '2710.0', '', 'oui', 0, 0),
(17, 'A.', 'Liam', '', '', '', '1541.0', 'oui', '', 0, 0),
(18, 'È.', 'Inès', '', '', '', '2997.0', 'oui', '', 0, 0),
(19, 'U.', 'Paul', '', '', '', '1987.0', '', 'oui', 0, 0),
(20, 'T.', 'Nathan', '', '', '', '1537.0', 'oui', '', 0, 0),
(21, 'N.', 'Lina', '', '', '', '1926.0', 'oui', '', 0, 0),
(22, 'A.', 'Léa', '', '', '', '2255.0', '', 'oui', 0, 0),
(23, 'B.', 'Gabin', '', '', '', '1432.0', 'oui', '', 0, 0),
(24, 'C.', 'Sacha', '', '', '', '2693.0', '', 'oui', 0, 0),
(25, 'S.', 'Rose', '', '', '', '1781.0', 'oui', '', 0, 0),
(26, 'A.', 'Noah', '', '', '', '2179.0', 'oui', '', 0, 0),
(27, 'N.', 'Léna', '', '', '', '1863.0', 'oui', '', 0, 0),
(28, 'N.', 'Anna', '', '', '', '1381.0', '', 'oui', 0, 0),
(29, 'L.', 'Mila', '', '', '', '2402.0', '', 'oui', 0, 0),
(30, 'M.', 'Tom', '', '', '', '1041.0', 'oui', '', 0, 0),
(31, 'H.', 'Mohamed', '', '', '', '2364.0', '', 'oui', 0, 0),
(32, 'A.', 'Mia', '', '', '', '1975.0', 'oui', '', 0, 0),
(33, 'B.', 'Ambre', '', '', '', '1124.0', 'oui', '', 0, 0),
(34, 'E.', 'Elena', '', '', '', '1414.0', 'oui', '', 0, 0),
(35, 'L.', 'Julia', '', '', '', '1183.0', 'oui', '', 0, 0),
(36, 'É.', 'Théo', '', '', '', '1356.0', 'oui', '', 0, 0),
(37, 'R.', 'Aaron', '', '', '', '2515.0', '', 'oui', 0, 0),
(38, 'E.', 'Eden', '', '', '', '1242.0', 'oui', '', 0, 0),
(39, 'É.', 'Noé', '', '', '', '1814.0', '', 'oui', 0, 0),
(40, 'M.', 'Timéo', '', '', '', '2656.0', '', 'oui', 0, 0),
(41, 'N.', 'Manon', '', '', '', '1347.0', '', 'oui', 0, 0),
(42, 'L.', 'Juliette', '', '', '', '2120.0', 'oui', '', 0, 0),
(43, 'C.', 'Victor', '', '', '', '1384.0', '', 'oui', 0, 0),
(44, 'R.', 'Martin', '', '', '', '2192.0', 'oui', '', 0, 0),
(45, 'T.', 'Mathis', '', '', '', '1831.0', 'oui', '', 0, 0),
(46, 'U.', 'Lou', '', '', '', '1168.0', '', 'oui', 0, 0),
(47, 'É.', 'Zoé', '', '', '', '1901.0', 'oui', '', 0, 0),
(48, 'L.', 'Nolan', '', '', '', '1914.0', '', 'oui', 0, 0),
(49, 'Z.', 'Enzo', '', '', '', '2436.0', 'oui', '', 0, 0),
(50, 'M.', 'Camille', '', '', '', '1522.0', 'oui', '', 0, 0),
(51, 'Lordino', 'Jean', '', '', '', '1500.0', '', 'oui', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `NumHotel` tinyint(4) NOT NULL,
  `NomHotel` varchar(22) CHARACTER SET utf8mb4 DEFAULT NULL,
  `NbEtoiles` decimal(2,1) DEFAULT NULL,
  `RueHotel` varchar(24) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CPHotel` varchar(0) CHARACTER SET utf8mb4 DEFAULT NULL,
  `VilleHotel` varchar(15) CHARACTER SET utf8mb4 DEFAULT NULL,
  `PaysHotel` varchar(7) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `hotel`:
--

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`NumHotel`, `NomHotel`, `NbEtoiles`, `RueHotel`, `CPHotel`, `VilleHotel`, `PaysHotel`) VALUES
(1, 'Les flots bleus', '2.0', 'rue des aigles', '', 'Argelès-sur-Mer', 'France'),
(2, 'Les portes de Bretagne', '1.0', 'impasse des albatros', '', 'Saint-Malo', 'France'),
(3, 'La Plage', '4.0', 'rue des aras', '', 'Toulon', 'France'),
(4, 'Les Bégonias', '3.0', 'rue des cacatoès', '', 'Étretat', 'France'),
(5, 'Les Anémones', '2.0', 'allées des canaris', '', 'Honfleur', 'France'),
(6, 'Les Bleuets', '4.0', 'avenue des chouettes', '', 'Bréhal', 'France'),
(7, 'Les Campanules', '1.0', 'terrasse du faucon', '', 'Trégastel', 'France'),
(8, 'Les Capucines', '1.0', 'rue des cigognes', '', 'La palmyre', 'France'),
(9, 'Les Églantines', '1.0', 'boulevard des goélands', '', 'Seignosse', 'France'),
(10, 'Les Géraniums', '5.0', 'chemin des bécasses', '', 'Ciboure', 'France'),
(11, 'Les Criques du Porbail', '2.0', 'rue du coq', '', 'Colioure', 'France'),
(12, 'Les Jacinthes', '3.0', 'Rue des cygnes', '', 'Narbonne', 'France'),
(13, 'Les Ibiscus', '4.0', 'rue des hirondelles', '', 'Antibes', 'France'),
(14, 'Les Genêts', '3.0', 'rue des ibis', '', 'Antibes', 'France'),
(15, 'Les Hortensias', '3.0', 'chemin des mouettes', '', 'Calvi', 'France'),
(16, 'Les Jasmins', '1.0', 'rue du serin', '', 'Cassis', 'France'),
(17, 'Los girasoles', '3.0', 'calle de los cisnes', '', 'Girona', 'Espagne'),
(18, 'Las rosas', '4.0', 'calle de las golondrinas', '', 'Figueres', 'Espagne');

-- --------------------------------------------------------

--
-- Table structure for table `lodge`
--

DROP TABLE IF EXISTS `lodge`;
CREATE TABLE `lodge` (
  `NumLodge` smallint(6) NOT NULL,
  `NomLodge` varchar(14) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CapaciteAccueil` decimal(2,1) DEFAULT NULL,
  `NbPieces` decimal(2,1) DEFAULT NULL,
  `NbLitsSimples` decimal(2,1) DEFAULT NULL,
  `NbLitsDoubles` decimal(2,1) DEFAULT NULL,
  `#NumHotel` decimal(3,1) DEFAULT NULL,
  `#CodeType` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `lodge`:
--   `#CodeType`
--       `type` -> `CodeType`
--   `#NumHotel`
--       `hotel` -> `NumHotel`
--

--
-- Dumping data for table `lodge`
--

INSERT INTO `lodge` (`NumLodge`, `NomLodge`, `CapaciteAccueil`, `NbPieces`, `NbLitsSimples`, `NbLitsDoubles`, `#NumHotel`, `#CodeType`) VALUES
(1, 'Abricotier', '6.0', '2.0', '2.0', '2.0', '2.0', '2.0'),
(2, 'Acacia', '7.0', '3.0', '1.0', '3.0', '12.0', '3.0'),
(3, 'Acajou', '8.0', '4.0', '2.0', '3.0', '13.0', '3.0'),
(4, 'Agave', '2.0', '3.0', '0.0', '1.0', '17.0', '3.0'),
(5, 'Amandier', '8.0', '2.0', '2.0', '3.0', '12.0', '3.0'),
(6, 'Arbousier', '5.0', '5.0', '1.0', '2.0', '6.0', '4.0'),
(7, 'Aubépine', '7.0', '3.0', '1.0', '3.0', '13.0', '1.0'),
(8, 'Aulne', '4.0', '3.0', '2.0', '1.0', '5.0', '1.0'),
(9, 'Avocatier', '7.0', '4.0', '1.0', '3.0', '2.0', '1.0'),
(10, 'Bambou', '4.0', '5.0', '2.0', '1.0', '3.0', '1.0'),
(11, 'Bananier', '6.0', '5.0', '0.0', '3.0', '2.0', '2.0'),
(12, 'Baobab', '6.0', '2.0', '0.0', '3.0', '14.0', '3.0'),
(13, 'Bougainvillier', '5.0', '5.0', '1.0', '2.0', '10.0', '3.0'),
(14, 'Bouleau', '3.0', '3.0', '1.0', '1.0', '4.0', '2.0'),
(15, 'Buis', '8.0', '3.0', '2.0', '3.0', '16.0', '1.0'),
(16, 'Cacaoyer', '7.0', '4.0', '1.0', '3.0', '15.0', '1.0'),
(17, 'Caféier', '5.0', '4.0', '1.0', '2.0', '8.0', '4.0'),
(18, 'Camélia', '6.0', '2.0', '0.0', '3.0', '7.0', '3.0'),
(19, 'Camphrier', '7.0', '2.0', '1.0', '3.0', '4.0', '4.0'),
(20, 'Câprier', '2.0', '2.0', '0.0', '1.0', '3.0', '3.0'),
(21, 'Caroubier', '4.0', '3.0', '2.0', '1.0', '16.0', '3.0'),
(22, 'Cassissier', '2.0', '2.0', '0.0', '1.0', '12.0', '3.0'),
(23, 'Cèdre', '3.0', '5.0', '1.0', '1.0', '5.0', '1.0'),
(24, 'Cerisier', '6.0', '5.0', '2.0', '2.0', '6.0', '4.0'),
(25, 'Charme', '4.0', '3.0', '2.0', '1.0', '14.0', '1.0'),
(26, 'Châtaignier', '6.0', '5.0', '2.0', '2.0', '6.0', '4.0'),
(27, 'Chêne', '8.0', '5.0', '2.0', '3.0', '9.0', '2.0'),
(28, 'Chèvrefeuille', '3.0', '5.0', '1.0', '1.0', '18.0', '2.0'),
(29, 'Citronnier', '4.0', '2.0', '2.0', '1.0', '18.0', '1.0'),
(30, 'Cocotier', '4.0', '3.0', '0.0', '2.0', '6.0', '1.0'),
(31, 'Cognassier', '4.0', '3.0', '2.0', '1.0', '8.0', '4.0'),
(32, 'Cormier', '4.0', '3.0', '2.0', '1.0', '14.0', '1.0'),
(33, 'Cornouiller', '3.0', '4.0', '1.0', '1.0', '14.0', '2.0'),
(34, 'Cotonnier', '6.0', '4.0', '0.0', '3.0', '12.0', '1.0'),
(35, 'Cyprès', '6.0', '5.0', '2.0', '2.0', '5.0', '4.0'),
(36, 'Eglantier', '6.0', '5.0', '2.0', '2.0', '3.0', '3.0'),
(37, 'Epicéa', '4.0', '5.0', '2.0', '1.0', '7.0', '3.0'),
(38, 'Erable', '5.0', '2.0', '1.0', '2.0', '12.0', '2.0'),
(39, 'Eucalyptus', '6.0', '3.0', '2.0', '2.0', '3.0', '3.0'),
(40, 'Févier', '8.0', '2.0', '2.0', '3.0', '3.0', '4.0'),
(41, 'Figuier', '3.0', '5.0', '1.0', '1.0', '14.0', '3.0'),
(42, 'Forsythia', '2.0', '4.0', '0.0', '1.0', '6.0', '1.0'),
(43, 'Framboisier', '6.0', '4.0', '0.0', '3.0', '14.0', '3.0'),
(44, 'Frangipanier', '8.0', '5.0', '2.0', '3.0', '10.0', '3.0'),
(45, 'Frêne', '6.0', '4.0', '2.0', '2.0', '3.0', '1.0'),
(46, 'Genévrier', '8.0', '4.0', '2.0', '3.0', '9.0', '4.0'),
(47, 'Ginkgo biloba', '5.0', '5.0', '1.0', '2.0', '12.0', '1.0'),
(48, 'Giroflier', '6.0', '3.0', '2.0', '2.0', '13.0', '2.0'),
(49, 'Glycine', '8.0', '4.0', '2.0', '3.0', '6.0', '4.0'),
(50, 'Gommier', '5.0', '2.0', '1.0', '2.0', '7.0', '1.0'),
(51, 'Grenadier', '6.0', '2.0', '2.0', '2.0', '16.0', '2.0'),
(52, 'Griottier', '7.0', '4.0', '1.0', '3.0', '13.0', '3.0'),
(53, 'Groseillier', '8.0', '5.0', '2.0', '3.0', '16.0', '3.0'),
(54, 'Henné', '4.0', '4.0', '0.0', '2.0', '14.0', '4.0'),
(55, 'Hêtre', '3.0', '4.0', '1.0', '1.0', '7.0', '2.0'),
(56, 'Hévéa', '7.0', '5.0', '1.0', '3.0', '18.0', '4.0'),
(57, 'Hibiscus', '6.0', '3.0', '2.0', '2.0', '5.0', '1.0'),
(58, 'Houx', '6.0', '4.0', '0.0', '3.0', '14.0', '2.0'),
(59, 'If', '4.0', '3.0', '2.0', '1.0', '9.0', '4.0'),
(60, 'Jacquier', '6.0', '3.0', '0.0', '3.0', '3.0', '2.0'),
(61, 'Jojoba', '6.0', '3.0', '2.0', '2.0', '13.0', '4.0'),
(62, 'Jujubier', '4.0', '2.0', '0.0', '2.0', '12.0', '2.0'),
(63, 'Kaki', '8.0', '4.0', '2.0', '3.0', '11.0', '2.0'),
(64, 'Kiwi', '6.0', '5.0', '0.0', '3.0', '18.0', '2.0'),
(65, 'Kumquat', '2.0', '4.0', '0.0', '1.0', '7.0', '4.0'),
(66, 'Laurier', '3.0', '4.0', '1.0', '1.0', '13.0', '3.0'),
(67, 'Magnolia', '4.0', '4.0', '2.0', '1.0', '8.0', '2.0'),
(68, 'Mandarinier', '6.0', '5.0', '2.0', '2.0', '3.0', '2.0'),
(69, 'Marronnier', '4.0', '4.0', '2.0', '1.0', '16.0', '3.0'),
(70, 'Mélèze', '4.0', '5.0', '2.0', '1.0', '15.0', '1.0'),
(71, 'Merisier', '8.0', '4.0', '2.0', '3.0', '9.0', '1.0'),
(72, 'Mimosa', '5.0', '3.0', '1.0', '2.0', '14.0', '3.0'),
(73, 'Murier blanc', '6.0', '5.0', '0.0', '3.0', '7.0', '2.0'),
(74, 'Myrte', '2.0', '2.0', '0.0', '1.0', '2.0', '2.0'),
(75, 'Nectarinier', '5.0', '5.0', '1.0', '2.0', '2.0', '2.0'),
(76, 'Noisetier', '2.0', '5.0', '0.0', '1.0', '8.0', '1.0'),
(77, 'Noyer', '6.0', '2.0', '2.0', '2.0', '1.0', '4.0'),
(78, 'Olivier', '4.0', '3.0', '2.0', '1.0', '3.0', '4.0'),
(79, 'Oranger', '4.0', '3.0', '2.0', '1.0', '15.0', '4.0'),
(80, 'Orme', '4.0', '5.0', '0.0', '2.0', '15.0', '2.0'),
(81, 'Pacanier', '6.0', '3.0', '0.0', '3.0', '14.0', '1.0'),
(82, 'Palétuvier', '3.0', '3.0', '1.0', '1.0', '12.0', '3.0'),
(83, 'Palmier', '2.0', '5.0', '0.0', '1.0', '15.0', '2.0'),
(84, 'Pamplemoussier', '6.0', '3.0', '0.0', '3.0', '4.0', '1.0'),
(85, 'Papayer', '6.0', '4.0', '2.0', '2.0', '6.0', '2.0'),
(86, 'Pêcher', '6.0', '5.0', '0.0', '3.0', '3.0', '1.0'),
(87, 'Peuplier', '2.0', '4.0', '0.0', '1.0', '6.0', '4.0'),
(88, 'Pin', '4.0', '2.0', '0.0', '2.0', '7.0', '2.0'),
(89, 'Pin parasol', '2.0', '4.0', '0.0', '1.0', '8.0', '3.0'),
(90, 'Pistachier', '2.0', '3.0', '0.0', '1.0', '4.0', '1.0'),
(91, 'Platane', '2.0', '5.0', '0.0', '1.0', '4.0', '4.0'),
(92, 'Poirier', '5.0', '4.0', '1.0', '2.0', '9.0', '2.0'),
(93, 'Pommier', '5.0', '2.0', '1.0', '2.0', '1.0', '2.0'),
(94, 'Prunier', '5.0', '3.0', '1.0', '2.0', '3.0', '4.0'),
(95, 'Ramboutan', '4.0', '4.0', '0.0', '2.0', '18.0', '3.0'),
(96, 'Sapin', '6.0', '5.0', '0.0', '3.0', '18.0', '3.0'),
(97, 'Saule', '6.0', '2.0', '2.0', '2.0', '13.0', '3.0'),
(98, 'Saule pleureur', '3.0', '4.0', '1.0', '1.0', '2.0', '3.0'),
(99, 'Séquoia', '6.0', '4.0', '0.0', '3.0', '15.0', '3.0'),
(100, 'Seringat', '4.0', '5.0', '2.0', '1.0', '3.0', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `permanent`
--

DROP TABLE IF EXISTS `permanent`;
CREATE TABLE `permanent` (
  `DateEmbauche` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `#CodeEmpPerm` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `permanent`:
--   `#CodeEmpPerm`
--       `concerner` -> `#CodeEmp`
--

--
-- Dumping data for table `permanent`
--

INSERT INTO `permanent` (`DateEmbauche`, `#CodeEmpPerm`) VALUES
('2010-09-13', '1.0'),
('2012-10-08', '3.0'),
('2013-10-26', '4.0'),
('2003-06-20', '5.0'),
('2016-01-17', '7.0'),
('1993-12-20', '8.0'),
('1995-12-02', '11.0'),
('2007-10-13', '12.0'),
('1994-04-10', '13.0'),
('2004-01-12', '16.0'),
('2008-04-14', '19.0'),
('2007-10-15', '22.0'),
('2013-08-16', '24.0'),
('2018-01-18', '28.0'),
('2016-01-11', '29.0'),
('2011-05-26', '31.0'),
('2015-12-21', '37.0'),
('2008-10-13', '39.0'),
('1993-03-26', '40.0'),
('1993-12-18', '41.0'),
('2006-06-24', '43.0'),
('2015-08-06', '46.0'),
('2016-10-12', '48.0'),
('2010-04-01', '51.0');

-- --------------------------------------------------------

--
-- Table structure for table `saisonnier`
--

DROP TABLE IF EXISTS `saisonnier`;
CREATE TABLE `saisonnier` (
  `DateDebutMission` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `DateFinMission` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Prime` decimal(5,1) DEFAULT NULL,
  `#CodeEmpSais` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `saisonnier`:
--   `#CodeEmpSais`
--       `employe` -> `CodeEmp`
--

--
-- Dumping data for table `saisonnier`
--

INSERT INTO `saisonnier` (`DateDebutMission`, `DateFinMission`, `Prime`, `#CodeEmpSais`) VALUES
('2019-02-01', '2019-07-31', '610.0', '2.0'),
('2019-04-01', '2019-07-31', '620.0', '6.0'),
('2019-06-01', '2019-12-31', '1080.0', '9.0'),
('2019-02-01', '2019-04-30', '510.0', '10.0'),
('2019-04-01', '2019-06-30', '550.0', '14.0'),
('2019-06-01', '2019-07-31', '1010.0', '15.0'),
('2019-04-01', '2019-07-31', '900.0', '17.0'),
('2019-07-01', '2019-09-30', '700.0', '18.0'),
('2019-04-01', '2019-06-30', '960.0', '20.0'),
('2019-02-01', '2019-06-30', '860.0', '21.0'),
('2019-05-01', '2019-08-31', '770.0', '23.0'),
('2019-02-01', '2019-08-31', '810.0', '25.0'),
('2019-06-01', '2019-12-31', '870.0', '26.0'),
('2019-02-01', '2019-06-30', '640.0', '27.0'),
('2019-07-01', '2019-08-31', '650.0', '30.0'),
('2019-07-01', '2019-10-31', '660.0', '32.0'),
('2019-04-01', '2019-09-30', '560.0', '33.0'),
('2019-02-01', '2019-03-31', '710.0', '34.0'),
('2019-04-01', '2019-10-31', '580.0', '35.0'),
('2019-05-01', '2019-10-31', '840.0', '36.0'),
('2019-02-01', '2019-06-30', '730.0', '38.0'),
('2019-02-01', '2019-04-30', '860.0', '42.0'),
('2019-04-01', '2019-08-31', '840.0', '44.0'),
('2019-02-01', '2019-06-30', '760.0', '45.0'),
('2019-03-01', '2019-09-30', '780.0', '47.0'),
('2019-07-01', '2019-10-31', '800.0', '49.0'),
('2019-04-01', '2019-10-31', '670.0', '50.0');

-- --------------------------------------------------------

--
-- Table structure for table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
CREATE TABLE `secteur` (
  `NumSecteur` tinyint(4) NOT NULL,
  `NomSecteur` varchar(27) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `secteur`:
--

--
-- Dumping data for table `secteur`
--

INSERT INTO `secteur` (`NumSecteur`, `NomSecteur`) VALUES
(1, 'administratif'),
(2, 'sécurité'),
(3, 'restauration'),
(4, 'animation'),
(5, 'entretien des espaces verts'),
(6, 'technique intérieure'),
(7, 'technique extérieure');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `CodeType` tinyint(4) NOT NULL,
  `LibelléType` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `TarifSemaine` decimal(5,1) DEFAULT NULL,
  `TarifNuitée` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONS FOR TABLE `type`:
--

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`CodeType`, `LibelléType`, `TarifSemaine`, `TarifNuitée`) VALUES
(1, 'Réduit', '600.0', '90.0'),
(2, 'Normal', '700.0', '110.0'),
(3, 'Luxe', '1300.0', '200.0'),
(4, 'Grand luxe', '1600.0', '250.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`#NumSecteur`,`#NumHotel`),
  ADD KEY `#CodeEmp` (`#CodeEmp`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`CodeEmp`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`NumHotel`);

--
-- Indexes for table `lodge`
--
ALTER TABLE `lodge`
  ADD PRIMARY KEY (`NumLodge`);

--
-- Indexes for table `permanent`
--
ALTER TABLE `permanent`
  ADD PRIMARY KEY (`#CodeEmpPerm`);

--
-- Indexes for table `saisonnier`
--
ALTER TABLE `saisonnier`
  ADD PRIMARY KEY (`#CodeEmpSais`);

--
-- Indexes for table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`NumSecteur`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`CodeType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

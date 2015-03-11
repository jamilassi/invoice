-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mer 11 Mars 2015 à 14:57
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `company`
--

-- --------------------------------------------------------

--
-- Structure de la table `Customers`
--

CREATE TABLE `Customers` (
`PkCustomer` int(11) NOT NULL,
  `Title` varchar(12) DEFAULT NULL,
  `Firstname` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Lastname` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Company` varchar(256) DEFAULT NULL,
  `Email` varchar(123) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Cellphone` varchar(32) DEFAULT NULL,
  `Address` varchar(128) DEFAULT NULL,
  `City` varchar(128) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Country` char(2) DEFAULT NULL,
  `ZipCode` varchar(6) DEFAULT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Trashed` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Customers`
--

INSERT INTO `Customers` (`PkCustomer`, `Title`, `Firstname`, `Lastname`, `Company`, `Email`, `Phone`, `Cellphone`, `Address`, `City`, `State`, `Country`, `ZipCode`, `DateCreated`, `Trashed`) VALUES
(2, '', 'Jean', 'Valjean', NULL, 'Jean.Valjean@cinema.fr', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-24 15:07:37', b'1'),
(3, '', 'John', 'Doe', NULL, 'John.doe@anonymous.mail', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-24 15:08:17', b'1'),
(4, '', 'David', 'Gaucher', NULL, 'David.Gaucher@gmail.com', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-24 15:08:58', b'1'),
(5, '', 'Eric', 'Droitier', NULL, 'Eric.Droitier@gmail.com', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-24 15:09:26', b'1'),
(6, '', 'Pinpin', 'Merlin', NULL, 'merlin@magie.ici', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-24 15:10:37', b'1'),
(7, '', 'Harry', 'Potier', NULL, 'harry.potier003@artisan.gb', '5144445555', '', NULL, 'Poudre L''art', NULL, 'UK', NULL, '2015-02-24 15:11:14', b'1'),
(14, '', 'Jamil', 'Assi', NULL, 'Jamil.Assi@xn--h9g.org', NULL, '', NULL, '', NULL, NULL, NULL, '2015-02-28 16:09:38', b'1');

-- --------------------------------------------------------

--
-- Structure de la table `OrderRows`
--

CREATE TABLE `OrderRows` (
`PkOrderRow` int(11) NOT NULL,
  `FkOrder` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `FkProduct` int(10) DEFAULT NULL,
  `SoldPrice` double(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `OrderRows`
--

INSERT INTO `OrderRows` (`PkOrderRow`, `FkOrder`, `Quantity`, `FkProduct`, `SoldPrice`) VALUES
(1, 1, 25, 1, 2.00),
(2, 1, 80, 2, 5.00),
(3, 1, 125, 3, 24.00);

-- --------------------------------------------------------

--
-- Structure de la table `Orders`
--

CREATE TABLE `Orders` (
`PkOrder` int(11) NOT NULL,
  `FkCustomer` int(11) NOT NULL,
  `OrderStatus` tinyint(4) NOT NULL DEFAULT '0',
  `PaymentMethod` tinyint(4) NOT NULL,
  `SubTotal` double(11,2) NOT NULL DEFAULT '0.00',
  `Total` double(11,2) NOT NULL DEFAULT '0.00',
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Orders`
--

INSERT INTO `Orders` (`PkOrder`, `FkCustomer`, `OrderStatus`, `PaymentMethod`, `SubTotal`, `Total`, `DateCreated`) VALUES
(1, 7, 0, 1, 3450.00, 3966.64, '2015-03-10 01:02:36');

-- --------------------------------------------------------

--
-- Structure de la table `Products`
--

CREATE TABLE `Products` (
`PkProduct` int(11) NOT NULL,
  `Code` char(6) DEFAULT NULL,
  `Brand` varchar(128) DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `Description` text,
  `Price` double(11,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Products`
--

INSERT INTO `Products` (`PkProduct`, `Code`, `Brand`, `Name`, `Description`, `Price`) VALUES
(1, NULL, 'Gaga Gola', 'Chougar', 'Life shorter', 2.00),
(2, NULL, 'Mag Dounade', 'Big Bourg Heure', 'Massive Population Genetic Modifier', 5.00),
(3, NULL, 'Monsanté', 'Bif Zigot', 'Dioxine Source', 24.00);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Customers`
--
ALTER TABLE `Customers`
 ADD PRIMARY KEY (`PkCustomer`), ADD UNIQUE KEY `email` (`Email`);

--
-- Index pour la table `OrderRows`
--
ALTER TABLE `OrderRows`
 ADD PRIMARY KEY (`PkOrderRow`);

--
-- Index pour la table `Orders`
--
ALTER TABLE `Orders`
 ADD PRIMARY KEY (`PkOrder`);

--
-- Index pour la table `Products`
--
ALTER TABLE `Products`
 ADD PRIMARY KEY (`PkProduct`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Customers`
--
ALTER TABLE `Customers`
MODIFY `PkCustomer` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `OrderRows`
--
ALTER TABLE `OrderRows`
MODIFY `PkOrderRow` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Orders`
--
ALTER TABLE `Orders`
MODIFY `PkOrder` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `Products`
--
ALTER TABLE `Products`
MODIFY `PkProduct` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

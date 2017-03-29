-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Mars 2017 à 00:17
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `AdminName` varchar(50) NOT NULL,
  `AdminPass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`AdminName`, `AdminPass`) VALUES
('admin', 'admin'),
('Youssouf', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `PruductID` int(11) NOT NULL,
  `PruductName` varchar(55) NOT NULL,
  `ProductQuant` int(11) NOT NULL,
  `ProductCAT` varchar(55) NOT NULL,
  `ProductPrice` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`PruductID`, `PruductName`, `ProductQuant`, `ProductCAT`, `ProductPrice`) VALUES
(1, 'PS4', 15, 'Jeux', '399,99 €'),
(2, 'XBOX ONE', 25, 'Jeux', '350,99 €'),
(3, 'Voiture télécommandée', 35, 'Jouets', '35,90 €'),
(4, 'Chaise IKEA', 125, 'Meubles', '29,99 €'),
(5, 'MSI Apache pro', 5, 'Ordinateur portable', '849,99 €'),
(6, 'Switch', 33, 'Console', '199,99 €'),
(7, '3DS', 45, 'Console', '150,99 €'),
(8, 'Wii U', 21, 'Console', '279,90 €'),
(9, 'PS VITA', 78, 'Console', '299,99 €'),
(10, 'iPad', 78, 'Tablette', '499,99 €'),
(11, 'Sony Xperia XA double SIM', 60, 'Smartphone', '229 €'),
(12, 'Samsung S7 32 Go Or + Gear VR', 11, 'Smartphone + VR', '799 => 599 €'),
(13, 'iPhone 7 32 Go', 23, 'Smartphone', '769 €'),
(14, 'Apple McBook Air', 8, 'Ordinateur portable', '999,99'),
(15, 'Microsoft 3500', 158, 'Souris', '28,99 €'),
(16, 'Mercedes Classe B', 6, 'Voiture', '22.999 €'),
(17, 'Bugatti Chiron', 4, 'Voiture de sport', '1.200.000 €');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `CustID` int(11) NOT NULL,
  `CustName` varchar(55) NOT NULL,
  `CustEmail` varchar(100) NOT NULL,
  `CustAdress` varchar(100) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CustPhone` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`CustID`, `CustName`, `CustEmail`, `CustAdress`, `ProductID`, `CustPhone`) VALUES
(1, 'Youssouf', 'y.elouazzani95@gmail.com', 'Nanterre', 1, '06xx258478'),
(2, 'Ali', 'abdelhamid@laposte.net', 'Colombes', 3, '06xx252565'),
(3, 'Hicham', 'chahour@gmail.com', 'Nanterre', 2, '06xx454458');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`PruductID`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`CustID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `PruductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `CustID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

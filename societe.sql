-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 mars 2021 à 13:14
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `societe`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien_immobilier`
--

DROP TABLE IF EXISTS `bien_immobilier`;
CREATE TABLE IF NOT EXISTS `bien_immobilier` (
  `code_bien` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_bien` text,
  `num_enregistrement` int(11) DEFAULT NULL,
  `superficie` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code_quartier` int(11) DEFAULT NULL,
  `date_construction` date DEFAULT NULL,
  PRIMARY KEY (`code_bien`),
  KEY `code_qartier` (`code_quartier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien_immobilier`
--

INSERT INTO `bien_immobilier` (`code_bien`, `adresse_bien`, `num_enregistrement`, `superficie`, `type`, `code_quartier`, `date_construction`) VALUES
(1, 'mk@gmail.com', 45, 'kzoe', 'epe', 45, '2003-02-23');

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `nummcontrat` int(11) NOT NULL AUTO_INCREMENT,
  `prix_mensuel` double DEFAULT NULL,
  `code_bien` int(11) DEFAULT NULL,
  `code_syndic` int(11) DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `date_contrat` date DEFAULT NULL,
  PRIMARY KEY (`nummcontrat`),
  KEY `code_bien` (`code_bien`),
  KEY `code_syndic` (`code_syndic`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`nummcontrat`, `prix_mensuel`, `code_bien`, `code_syndic`, `etat`, `date_contrat`) VALUES
(1, 2000, 39, 69, 'KELCKE', NULL),
(2, 34, 56, 67, 'jol', '2001-12-03'),
(3, 34, 56, 67, 'jol', '2001-12-03');

-- --------------------------------------------------------

--
-- Structure de la table `quartier`
--

DROP TABLE IF EXISTS `quartier`;
CREATE TABLE IF NOT EXISTS `quartier` (
  `code_quartier` int(11) NOT NULL AUTO_INCREMENT,
  `nom_quartier` varchar(20) DEFAULT NULL,
  `pupulation_quartier` varchar(30) DEFAULT NULL,
  `code_ville` int(11) DEFAULT NULL,
  `total_quartier` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_quartier`),
  KEY `code_ville` (`code_ville`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quartier`
--

INSERT INTO `quartier` (`code_quartier`, `nom_quartier`, `pupulation_quartier`, `code_ville`, `total_quartier`) VALUES
(1, 'quartier1', '45', 56, 53);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `code_region` int(11) NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(20) DEFAULT NULL,
  `population_region` varchar(20) DEFAULT NULL,
  `total_region` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`code_region`, `nom_region`, `population_region`, `total_region`) VALUES
(1, 'region1', '100', 300),
(2, 'region2', '29k', 341),
(3, 'region3', '567k', 60);

-- --------------------------------------------------------

--
-- Structure de la table `syndic`
--

DROP TABLE IF EXISTS `syndic`;
CREATE TABLE IF NOT EXISTS `syndic` (
  `code_syndic` int(11) NOT NULL AUTO_INCREMENT,
  `nom_syndic` varchar(20) DEFAULT NULL,
  `prenom_syndic` varchar(20) DEFAULT NULL,
  `telephon_syndic` int(11) DEFAULT NULL,
  `mot_depasse` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`code_syndic`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `syndic`
--

INSERT INTO `syndic` (`code_syndic`, `nom_syndic`, `prenom_syndic`, `telephon_syndic`, `mot_depasse`) VALUES
(1, 'syndicnm1', 'syndicpr1', 623455656, 'kskkdlkkdk'),
(2, 'syndicnm2', 'syndicpr2', 745455656, 'ijefijeo34'),
(3, 'syndicnm3', 'syndicpr3', 656787345, 'ZDZC');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `code_ville` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ville` varchar(10) DEFAULT NULL,
  `code_region` int(11) DEFAULT NULL,
  `total_ville` int(11) DEFAULT NULL,
  PRIMARY KEY (`code_ville`),
  KEY `code_region` (`code_region`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`code_ville`, `nom_ville`, `code_region`, `total_ville`) VALUES
(1, 'ville1', 45, 56);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

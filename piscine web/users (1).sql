-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : mar. 24 mai 2022 à 07:58
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
-- Base de données : `users`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Name` text NOT NULL,
  `first _name` text NOT NULL,
  `ID` int(255) NOT NULL,
  `ID_M` int(255) NOT NULL,
  `fk_user` int(11) NOT NULL,
  KEY `fk_user` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `edt`
--

DROP TABLE IF EXISTS `edt`;
CREATE TABLE IF NOT EXISTS `edt` (
  `ID_M` int(255) NOT NULL,
  `ID_P` int(255) NOT NULL,
  `DATE` date NOT NULL,
  `DISPO` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `med`
--

DROP TABLE IF EXISTS `med`;
CREATE TABLE IF NOT EXISTS `med` (
  `ID_M` int(255) NOT NULL,
  `first_name` text NOT NULL,
  `name` text NOT NULL,
  `age` int(255) NOT NULL,
  `edt` date NOT NULL,
  `city` text NOT NULL,
  `tel` int(255) NOT NULL,
  `CV` blob NOT NULL,
  `mail` text NOT NULL,
  `spé` text NOT NULL,
  `fk_user` int(11) NOT NULL,
  PRIMARY KEY (`ID_M`),
  UNIQUE KEY `ID_M` (`ID_M`),
  KEY `fk_user` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `first_name` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `file_med` text NOT NULL,
  `city` text NOT NULL,
  `tel` int(255) NOT NULL,
  `RDV` text NOT NULL,
  `vital_card` int(255) NOT NULL,
  `adress` text NOT NULL,
  `ID_P` int(255) NOT NULL,
  `user_fk` int(255) NOT NULL,
  PRIMARY KEY (`ID_P`),
  KEY `fk` (`user_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `login` text NOT NULL,
  `mdp` int(255) UNSIGNED NOT NULL,
  `ID` int(255) NOT NULL,
  `type` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`fk_user`) REFERENCES `users` (`ID`);

--
-- Contraintes pour la table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_fk`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

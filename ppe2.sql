-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 16 mai 2019 à 06:50
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ppe2`
--

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mdp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `nom`, `prenom`, `pseudo`, `mdp`) VALUES
(1, 'durand', 'hugo', 'hdurand', '$2y$10$YIvykWWK4hyhV/r9KtTe6uGK7OodwuzKXzXGfZtEzv1k3TGy9.16a');

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

DROP TABLE IF EXISTS `rapport`;
CREATE TABLE IF NOT EXISTS `rapport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cout` varchar(255) NOT NULL,
  `temps` varchar(255) NOT NULL,
  `reparer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rapport`
--

INSERT INTO `rapport` (`id`, `cout`, `temps`, `reparer`) VALUES
(1, '3.50', '2h30', 1),
(2, '3.50', '2h30', 1),
(18, '250', '2h30', 1),
(4, '666', '55h', 1),
(5, '3.50', '5h', 1),
(6, '3.50', '5h', 1),
(7, '3.50', '5h', 1),
(8, '3.50', '2h30', 1),
(9, '3.50', '2h30', 1),
(10, '3.50', '2h30', 1),
(11, '3.50', '2h30', 1),
(12, '3.50', '2h30', 1),
(13, '3.50', '2h30', 1),
(14, '3.50', '2h30', 1),
(15, '3.50', '2h30', 1),
(16, '3.50', '2h30', 1),
(17, '3.50', '2h30', 1),
(19, '250', '2h30', 1),
(20, '250', '2h30', 1),
(21, '666', '52', 1),
(22, '350', '1h30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `signaler`
--

DROP TABLE IF EXISTS `signaler`;
CREATE TABLE IF NOT EXISTS `signaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typepbl` varchar(255) NOT NULL,
  `orgpbl` varchar(255) NOT NULL,
  `numSalle` varchar(255) NOT NULL,
  `nomOrdi` varchar(255) NOT NULL,
  `dateSignal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `technicien`
--

DROP TABLE IF EXISTS `technicien`;
CREATE TABLE IF NOT EXISTS `technicien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `mdp` text NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `technicien`
--

INSERT INTO `technicien` (`id`, `pseudo`, `nom`, `mdp`, `prenom`) VALUES
(1, 'apere', 'Alan', '12345', 'Pere');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

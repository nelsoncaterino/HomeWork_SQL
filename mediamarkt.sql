-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le : mar. 27 oct. 2026 à 16:34
-- Version du serveur : 8.4.11
-- Version de PHP : 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphone`
--

CREATE TABLE `smartphone` (
  `Nom_de_smartphone` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Marque_de_smartphone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_de_sortie` date DEFAULT NULL,
  `id_smartphone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphone`
--

INSERT INTO `smartphone` (`Nom_de_smartphone`, `Marque_de_smartphone`, `date_de_sortie`, `id_smartphone`) VALUES
('Mate ultimate XT 2', ' Huawei', '2026-10-31', 1),
('Tank pro 3', ' 8849', '2024-03-18', 2),
('A069', 'Nothing', '2026-03-27', 3);

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

CREATE TABLE `tvs` (
  `Nom_de_tv` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `Marque_de_tv` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Taille` decimal(20,0) NOT NULL,
  `id_tvs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`Nom_de_tv`, `Marque_de_tv`, `Taille`, `id_tvs`) VALUES
('Signature oled t', 'Lg', 77, 1),
('diplace pro tv', 'Displace Tv', 55, 2),
('N1', 'Cseed', 165, 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int NOT NULL,
  `Nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Age` int NOT NULL,
  `Date_de_Naissance` date NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `Nom`, `Prenom`, `Age`, `Date_de_Naissance`, `address`, `email`) VALUES
(1, 'Dunia', 'Julien', 38, '1988-11-18', 'Rue de l\'Eglise Sainte-Anne 63, 1081 Koekelberg', 'jdunia@cfitech.be'),
(2, 'Madalin', 'Pierre', 35, '1991-05-22', 'Boulevard Auguste Rayers 32, 1030 Schaerbeek', 'pierre.madalin@gmail.com'),
(3, 'Leonis', 'Thierry', 56, '1980-09-06', 'Avenue Louise 500, 1050 ixelles', 'thierry.leonis@bxfm.be');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `smartphone`
--
ALTER TABLE `smartphone`
  ADD PRIMARY KEY (`id_smartphone`);

--
-- Index pour la table `tvs`
--
ALTER TABLE `tvs`
  ADD PRIMARY KEY (`id_tvs`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `smartphone`
--
ALTER TABLE `smartphone`
  MODIFY `id_smartphone` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tvs`
--
ALTER TABLE `tvs`
  MODIFY `id_tvs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

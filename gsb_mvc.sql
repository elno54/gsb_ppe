-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 08 avr. 2020 à 11:26
-- Version du serveur :  10.3.17-MariaDB-0+deb10u1
-- Version de PHP :  7.3.4-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gsb_mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `date_commande` date NOT NULL,
  `id_consommateur` int(11) NOT NULL,
  `id_pharmacie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `id_produit` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `quantite_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `consommateur`
--

CREATE TABLE `consommateur` (
  `id_consommateur` int(11) NOT NULL,
  `nom_consommateur` varchar(50) NOT NULL,
  `prenom_consommateur` varchar(50) NOT NULL,
  `tel_consommateur` varchar(50) NOT NULL,
  `date_commande` date DEFAULT NULL,
  `mdp_consommateur` varchar(255) DEFAULT NULL,
  `email_consommateur` varchar(255) DEFAULT NULL,
  `ville_consommateur` varchar(255) DEFAULT NULL,
  `cp_consommateur` varchar(6) DEFAULT NULL,
  `adresse_consommateur` varchar(255) DEFAULT NULL,
  `pseudo_consommateur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `consommateur`
--

INSERT INTO `consommateur` (`id_consommateur`, `nom_consommateur`, `prenom_consommateur`, `tel_consommateur`, `date_commande`, `mdp_consommateur`, `email_consommateur`, `ville_consommateur`, `cp_consommateur`, `adresse_consommateur`, `pseudo_consommateur`) VALUES
(13, 'Ozkok2', 'Ozan', '0619333186', NULL, '0550002D', 'ozan.ozkok3@hotmail.com', 'FAULQUEMONT', '57380', '7 azzsedfwx', 'oozkok'),
(17, 'ilias', 'Salah', '0678451223', NULL, 'root', 'slhilias@gmail.com', 'commercy la street ', '55200', 'qvb', 'izilais'),
(22, 'SALAH', 'Ilias', '0783453268', NULL, 'root', 'slhilias@gmail.com', 'commercy la street', '55200', 'qvb', 'izilias'),
(23, 'LUCAS', 'Elno', '0645131759', NULL, '055', 'elno54@outlook.fr', 'JArny', '54800', 'on sen fou', 'nono'),
(24, 'toto', '9845456465546', 'toto', NULL, 'toto', 'toto', 'toto', 'toto', 'toto', 'toto');

-- --------------------------------------------------------

--
-- Structure de la table `pharmacie`
--

CREATE TABLE `pharmacie` (
  `id_pharmacie` int(11) NOT NULL,
  `nom_pharmacie` varchar(50) NOT NULL,
  `codepostal_pharmacie` varchar(5) NOT NULL,
  `ville_pharmacie` varchar(50) NOT NULL,
  `rue_pharmacie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pharmacie`
--

INSERT INTO `pharmacie` (`id_pharmacie`, `nom_pharmacie`, `codepostal_pharmacie`, `ville_pharmacie`, `rue_pharmacie`) VALUES
(1, 'Pharmacie55', '55000', 'Bar-Le-Duc', 'rue du Bourg'),
(2, 'Pharmacie54', '54000', 'Nancy', 'rue du gros');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `nom_produit` varchar(50) NOT NULL,
  `prix_produit` float NOT NULL,
  `photo_produit` varchar(255) DEFAULT NULL,
  `desc_produit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `prix_produit`, `photo_produit`, `desc_produit`) VALUES
(1, 'doliprane', 1.95, 'doliprane.png', 'Son action anti-inflammatoire se manifeste à forte dose. Elle peut être utile en cas de douleurs musculaires ou articulaires                                             '),
(2, 'efferalgan', 1.38, 'paracetamol.png', 'Le paracétamol, aussi appelé acétaminophène, est un composé chimique utilisé comme antalgique et antipyrétique.'),
(3, 'spasfon', 2.03, 'spasfon.png', 'Ce médicament est un antispasmodique. Il lutte contre les contractions anormales et douloureuses de l\'intestin, des voies biliaires, des voies urinaires et de l\'utérus.\r\n'),
(4, 'aspirine', 2.9, 'aspirine.png', 'L\'aspirine possède de nombreuses propriétés : antalgique (contre la douleur), antipyrétique (contre la fièvre), anti-inflammatoire à forte dose et antiagrégant plaquettaire (fluidifiant du sang).'),
(5, 'Smecta', 2, 'smecta.png', 'Ce médicament est un pansement digestif.\r\n\r\nIl est utilisé dans le traitement symptomatique :\r\ndes diarrhées aiguës chez l\'enfant de plus de 2 ans en complément de la réhydradation et chez l\'adulte,\r\ndes diarrhées chroniques '),
(6, 'Fervex', 6, 'fervex.png', 'Ce médicament est indiqué dans le traitement au cours des rhumes, rhinites, rhinopharyngites et des états grippaux de l’adulte (à partir de 15 ans) :\r\nde l’écoulement nasal clair et des larmoiements,\r\ndes maux de tête et/ou fièvre.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `commande_consommateur_FK` (`id_consommateur`),
  ADD KEY `commande_pharmacie0_FK` (`id_pharmacie`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`id_produit`,`id_commande`),
  ADD KEY `commander_commande0_FK` (`id_commande`);

--
-- Index pour la table `consommateur`
--
ALTER TABLE `consommateur`
  ADD PRIMARY KEY (`id_consommateur`);

--
-- Index pour la table `pharmacie`
--
ALTER TABLE `pharmacie`
  ADD PRIMARY KEY (`id_pharmacie`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `consommateur`
--
ALTER TABLE `consommateur`
  MODIFY `id_consommateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `pharmacie`
--
ALTER TABLE `pharmacie`
  MODIFY `id_pharmacie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_consommateur_FK` FOREIGN KEY (`id_consommateur`) REFERENCES `consommateur` (`id_consommateur`),
  ADD CONSTRAINT `commande_pharmacie0_FK` FOREIGN KEY (`id_pharmacie`) REFERENCES `pharmacie` (`id_pharmacie`);

--
-- Contraintes pour la table `commander`
--
ALTER TABLE `commander`
  ADD CONSTRAINT `commander_commande0_FK` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`),
  ADD CONSTRAINT `commander_produit_FK` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

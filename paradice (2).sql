-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 10 mai 2024 à 16:43
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `paradice`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidatures`
--

DROP TABLE IF EXISTS `candidatures`;
CREATE TABLE IF NOT EXISTS `candidatures` (
  `poste` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` bigint NOT NULL,
  `adresse` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `candidatures`
--

INSERT INTO `candidatures` (`poste`, `nom`, `email`, `telephone`, `adresse`) VALUES
('vendeur', 'Zakaria Rebei', 'zikourebei1003@gmail.com', 50222608, 'cité el kadhra'),
('vendeur', 'jhjbb', 'zikourebei1003@gmail.com', 50558636, 'Tunisie');

-- --------------------------------------------------------

--
-- Structure de la table `flavors`
--

DROP TABLE IF EXISTS `flavors`;
CREATE TABLE IF NOT EXISTS `flavors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `prix` float NOT NULL,
  `id_produit` bigint NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=813 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `flavors`
--

INSERT INTO `flavors` (`id`, `nom`, `description`, `image`, `prix`, `id_produit`, `category`) VALUES
(1, 'Praliné noir', 'Crème glacée chocolat noir avec du praliné noisette.', 'https://www.paradice.tn/sites/default/files/2022-09/praline-noir-detail_0.png', 7500, 800, 'CHOCOLAT / FRUITS SECS'),
(2, 'Cremino chocolat', 'Crème glacée chocolat et noisette avec une couche de cremino chocolat, amandes et noisettes et une petite touche de chocolat blanc.', 'https://www.paradice.tn/sites/default/files/2022-09/cremino-chocolat-detail.png', 0, 541, 'CHOCOLAT / FRUITS SECS'),
(3, 'Chocolat amandes caramélisées salées', 'Crème glacée chocolat au lait avec des éclats d’amandes caramélisées salées.', 'https://www.paradice.tn/sites/default/files/2022-09/chocolat-amandes-caamelises-sales-detail.png', 0, 145, 'CHOCOLAT / FRUITS SECS'),
(4, 'Snickers', 'Crème glacée au chocolat au lait avec du caramel fondant et des éclats de cacahuètes.', 'https://www.paradice.tn/sites/default/files/2022-09/snickers-detail1.png', 0, 452, 'CHOCOLAT / FRUITS SECS'),
(5, 'Ferrero Rocher', 'Crème glacée au chocolat et noisettes avec des éclats de noisettes', 'https://www.paradice.tn/sites/default/files/2022-09/ferrero-detail.png', 0, 2250, 'CHOCOLAT / FRUITS SECS'),
(6, 'Chocolat Noir', 'Crème glacée au chocolat noir monorogine 74 %', 'https://www.paradice.tn/sites/default/files/2022-09/chocolat-noir-detail.png', 0, 55220, 'CHOCOLAT'),
(7, 'Chocolat Croquant Beurre Salé', 'Crème glacée au chocolat et à la noisette avec du cremino croquant aux éclats de noisettes', 'https://www.paradice.tn/sites/default/files/2022-09/chocolat-croquant-beurre-sale-detail.png', 0, 5522, 'CHOCOLAT / FRUITS SECS'),
(8, 'Chocolat Blanc Fruits Rouges', 'Crème glacée au chocolat blanc avec des fruits rouges croquants\r\n\r\n', 'https://www.paradice.tn/sites/default/files/2022-09/chocolat-blanc-fruits-rouges-detail.png', 0, 2252, 'CHOCOLAT'),
(9, 'Chocolat au Lait', 'Crème glacée au chocolat\r\n\r\n', 'https://www.paradice.tn/sites/default/files/2022-09/chocolat-au-lait-detail.png', 0, 56, 'CHOCOLAT'),
(10, 'Pistache royale', 'Crème glacée à la pistache', 'https://www.paradice.tn/sites/default/files/2022-09/pistache-royale-detail.png', 0, 220, 'FRUITS SECS'),
(11, 'Rose pistache', 'Crème glacée chocolat blanc parfumée à l’eau de rose avec des éclats de pistache.', 'https://www.paradice.tn/sites/default/files/2022-09/rose-pistache-detail_0.png', 0, 8585, 'FRUITS SECS'),
(12, 'Cremino Noisette Bianca', 'Crème glacée chocolat blanc et noisette avec une couche de cremino chocolat blanc et noisette et des éclats de noisette caramélisée salée.', 'https://www.paradice.tn/sites/default/files/2023-01/noisette-bianca-detail.png', 0, 522, 'FRUITS SECS'),
(13, 'Snickers White', 'Meilleure combinaison de chocolat blanc, caramel et peanuts avec notre nouvelle glace : Snickers White', 'https://www.paradice.tn/sites/default/files/2022-09/Snickers-White-detail_0.png', 0, 252, 'FRUITS SECS'),
(14, 'Banana Nut', 'Crème glacée banane avec des éclats de noix caramélisée.', 'https://www.paradice.tn/sites/default/files/2022-09/banana-nut-detail.png', 0, 25515, 'FRUITS SECS'),
(19, 'Crispy Vanille', 'Crème glacée à la vanille avec des éclats d\'amandes torréfiées et du caramel', 'https://www.paradice.tn/sites/default/files/2022-09/crispy-vanille-detail.png', 0, 2518, 'FRUITS SECS'),
(15, 'Noisette Pralinée', 'Crème glacée aux noisettes avec du praliné noisette', 'https://www.paradice.tn/sites/default/files/2022-09/noisette-pralinee-detail.png', 0, 5285, 'FRUITS SECS'),
(16, 'Noisette', 'Crème glacée aux noisettes.', 'https://www.paradice.tn/sites/default/files/2022-09/noisette-detail.png', 0, 185, 'FRUITS SECS'),
(17, 'Kinder Bueno', 'Crème glacée au chocolat au lait avec des gaufrettes et des éclats de noisettes grillées', 'https://www.paradice.tn/sites/default/files/2023-02/kinder-bueno-detail.png', 0, 596, 'FRUITS SECS'),
(18, 'Café Caraïbes', 'Crème glacée au café et noisette avec du caramel beurre salé', 'https://www.paradice.tn/sites/default/files/2022-09/cafe-craibes-detail.png', 0, 6995, 'FRUITS SECS'),
(20, 'Noisette light\r\n', 'Crème glacée sans sucre à la noisette (avec l’édulcorant stevia)', 'https://www.paradice.tn/sites/default/files/2022-09/noisette-light-detail.png', 0, 99, 'FRUITS SECS'),
(21, 'Granada', 'Sorbet à la grenade', 'https://www.paradice.tn/sites/default/files/2023-02/granada-detail.png', 0, 2985, 'SORBETS'),
(22, 'Kibana', 'Sorbet de kiwi et de banane.', 'https://www.paradice.tn/sites/default/files/2022-09/kibana-detail.png', 0, 9598, 'SORBETS'),
(23, 'Fraise menthe', 'Sorbet de fraise avec des feuilles de menthe.', 'https://www.paradice.tn/sites/default/files/2022-09/fraise-menthe-detail.png', 0, 8892, 'SORBETS'),
(24, 'Menthe Citron', 'Sorbet menthe citron', 'https://www.paradice.tn/sites/default/files/2022-09/menthe-citron-detail.png', 0, 8556, 'SORBETS'),
(25, 'Fraise', 'Sorbet fraise', 'https://www.paradice.tn/sites/default/files/2022-09/fraise-detail.png', 0, 4988, 'SORBETS'),
(26, 'Framboise\r\n', 'Sorbet framboise', 'https://www.paradice.tn/sites/default/files/2022-09/framboise-detail_1.png', 0, 4654, 'SORBETS'),
(27, 'Citron', 'Sorbet citron\r\n\r\n', 'https://www.paradice.tn/sites/default/files/2022-09/citron-detail.png', 0, 151, 'SORBETS'),
(28, 'Framboise', 'Sorbet framboise', 'https://www.paradice.tn/sites/default/files/2022-09/framboise-detail_1.png', 0, 4516, 'SORBETS'),
(29, 'Mangue passion', 'Crème glacée passion fruit et mangue avec un coulis de passion fruit.', 'https://www.paradice.tn/sites/default/files/2023-02/mangue-passion-detail.png', 0, 4986, 'AUTRES'),
(30, 'Cremino caramel', 'Crème glacée mascarpone avec du croquant caramel et une couche de caramel beurre salé croquant.', 'https://www.paradice.tn/sites/default/files/2023-02/cremino-caramel-detail.png', 0, 4456, 'AUTRES'),
(31, 'Oreo', 'Crème glacée Oreo', 'https://www.paradice.tn/sites/default/files/2022-09/oreo-detail.png', 0, 65, 'AUTRES'),
(32, 'Licorne', 'Trio de crème glacée fraise, citron et chewing-gum.', 'https://www.paradice.tn/sites/default/files/2022-09/licorne-detail1.png', 0, 59, 'AUTRES'),
(33, 'Vanille\r\n', 'Crème glacée à la vanille', 'https://www.paradice.tn/sites/default/files/2022-09/vanille-detail.png', 0, 15, 'AUTRES'),
(34, 'Tiramisu', 'Crème glacée au tiramisu', 'https://www.paradice.tn/sites/default/files/2022-09/tiramisu-detail.png', 0, 784, 'AUTRES'),
(35, 'Raffaello', 'Crème glacée chocolat blanc et coco avec des gaufrettes et des flocons de coco.', 'https://www.paradice.tn/sites/default/files/2022-09/reffaello-detail.png', 0, 9589, 'AUTRES'),
(36, 'Nutella Banane', 'Crème glacée à la banane mélangée avec une crème au Nutella', 'https://www.paradice.tn/sites/default/files/2022-09/nutella-banane-detail.png\r\n', 0, 4878, 'AUTRES'),
(37, 'Hawaï', 'Crème glacée ananas avec des morceaux de cerises', 'https://www.paradice.tn/sites/default/files/2022-09/hawai-detail.png', 0, 848, 'AUTRES'),
(38, 'Key lime pie', 'Crème glacée au citron avec du crunchy fin et des zestes de citron', 'https://www.paradice.tn/sites/default/files/2022-09/key-lime-pie-detail.png', 0, 84, 'AUTRES'),
(39, 'Cookies', 'Crème glacée cookies avec du chocolat et des brisures de biscuits croquants.', 'https://www.paradice.tn/sites/default/files/2022-09/cookies-detail.png', 0, 6565, 'AUTRES'),
(40, 'Crème Brûlée', 'Crème glacée au caramel avec des morceaux de caramel croquant', 'https://www.paradice.tn/sites/default/files/2022-09/creme-brulee-detail.png', 0, 9228, 'AUTRES'),
(41, 'Caramel Beurre Salé', 'Crème glacée au caramel beurre salé', 'https://www.paradice.tn/sites/default/files/2022-09/caramel-beurre-sale-detail.png', 0, 5995, 'AUTRES'),
(42, 'Chewing-gum', 'Crème glacée parfum chewing-gum', 'https://www.paradice.tn/sites/default/files/2022-09/chewing-gum-detail.png', 0, 87, 'AUTRES'),
(43, 'Café', 'Crème glacée au café', 'https://www.paradice.tn/sites/default/files/2022-09/cafe-detail.png', 10, 829, 'AUTRES'),
(44, 'Spéculoos', 'Crème glacée mascarpone, légèrement vanillée avec des biscuits spéculoos.', 'https://www.paradice.tn/sites/default/files/2022-09/speculoos-detail_1.png', 0, 999, 'AUTRES');

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` varchar(50) NOT NULL,
  `id_produit` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `nom`, `description`, `image`, `prix`, `id_produit`) VALUES
(1, 'Trésor Impérial', 'Explorez les trésors de goût, d\'intensité et d\'originalité de cette bûche honorant la noisette dans tous ses états.', 'https://www.paradice.tn/sites/default/files/2023-12/tresor-imperial-detail1.jpg', '129 DT', 564),
(2, 'Sensation Éclair', 'Appréciez chaque bouchée de ce parfait mélange entre la vanille des îles, le café corsé et notre caramel crunchy et son cœur fondant de caramel beurre salé incrusté de noix caramélisée.', 'https://www.paradice.tn/sites/default/files/2023-12/sensation-eclair-detail1.jpg', '86 DT', 45),
(3, 'Lune de miel', 'Plongez dans la douceur du caramel beurre salé et de la crème brûlée, vous serez ravis par la pointe de fleur de sel du crunchy fin, dissimulée derrière les étoiles.', 'https://www.paradice.tn/sites/default/files/2023-01/lune-de-miel-detail3.jpg', '99 DT', 3350),
(4, 'Hiver tropical\r\n', 'Savourez les goûts du fruit de la passion et de la mangue qui s’entremêlent en douceur sous les éclats de pistache pour illuminer la saison hivernale de rêves d’escapade tropicale.', 'https://www.paradice.tn/sites/default/files/2023-01/hiver-tropical-detail1.jpg', '99 DT', 1543),
(5, 'Joyaux de pistache', 'Couronnez votre table de fête avec ce bijou qui associe votre parfum préféré au chocolat blanc incrusté d\'éclats de pistache pralinée.', 'https://www.paradice.tn/sites/default/files/2022-11/buche-joyaux-de-pistache-detail3.jpg', '129 DT', 511),
(6, 'Casse noisette', 'Succombez à ce mélange d’amandes et de noisettes craquant et croquant, terriblement irrésistible.\r\nCette bûche vous envoûtera tel le ballet dont elle porte le nom.', 'https://www.paradice.tn/sites/default/files/2022-11/buche-casse-noisette-detail3.jpg', '95 DT', 156),
(7, 'Noces d’ébène', 'Epatez votre palais avec l\'heureux mariage entre Monsieur chocolat et Madame noisette.\r\nUne union parfaite scellée par un cœur praliné et une base croquante à souhait.', 'https://www.paradice.tn/sites/default/files/2022-11/buche-noces-debene-detail3.jpg', '99 DT', 51),
(8, 'Passion chocolat', 'Si vous êtes adepte du chocolat noir haute couture, cette bûche fera votre bonheur. Un chocolat noir mono-origine à 74 % sublimé par un croquant aux noisettes renversant !', 'https://www.paradice.tn/sites/default/files/2022-11/buche-passion-chocolat-detail1.jpg', '99 DT', 56),
(9, 'Nostalgie de forêt noire', 'Savourez notre interprétation glacée du plus grand classique de nos fêtes d’antan. Nous avons associé nos glaces chocolat noir et tiramisu avec du biscuit croquant et de l’amarena (cerise).', 'https://www.paradice.tn/sites/default/files/2022-11/buche-nostalgie-de-foret-noire-detail1.jpg', '99 DT', 66),
(10, 'Pluie de perles', 'Découvrez ce duo chocolat au lait et caramel beurre salé dans lequel se glissent des peanuts caramélisées salées et qui cache un cœur de tendre caramel à la fleur de sel.', 'https://www.paradice.tn/sites/default/files/2022-11/buche-pluie-de-perles-detail1.jpg', '83', 46);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `nom` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`nom`, `email`, `message`) VALUES
('Zakaria Rebei', 'zikourebei1003@gmail.com', 'xxxxxx'),
('jhjbb', 'zikourebei1003@gmail.com', 'n  j jnjn'),
('jhggggggg', 'zikourebei1003@gmail.com', '100000000');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`) VALUES
(1, '0', 'zikourebei1003@gmail.com', '0000'),
(2, '0', 'zikourebei1003@gmail.com', '000000'),
(3, 'zak', 'zikourebei1003@gmail.com', '785'),
(4, 'yousef', 'zikourebei1003@gmail.com', '07'),
(5, 'zikou', 'zikourebei1003@gmail.com', '7894');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

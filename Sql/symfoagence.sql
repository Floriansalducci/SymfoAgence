-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 07 juil. 2020 à 19:44
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfoagence`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200512170302', '2020-05-12 17:04:36'),
('20200512171037', '2020-05-12 17:10:44'),
('20200512171420', '2020-05-12 17:14:40'),
('20200604141551', '2020-06-04 14:16:25'),
('20200605154625', '2020-06-05 15:46:39'),
('20200605222804', '2020-06-05 22:28:30'),
('20200605223705', '2020-06-05 22:37:12');

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE IF NOT EXISTS `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `name`) VALUES
(1, 'Balcone'),
(2, 'Adapaté PMR'),
(3, 'Ascenseur'),
(5, 'Piscine');

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `title`, `description`, `surface`, `rooms`, `bedrooms`, `floor`, `price`, `heat`, `city`, `adress`, `postal_code`, `sold`, `created_at`, `filename`, `updated_at`) VALUES
(7, 'Marseille maison', 'Reprehenderit similique nulla totam qui omnis. Commodi accusamus aspernatur est nemo qui. Voluptatem aut omnis quae aliquid quidem in quibusdam molestiae.', 299, 6, 4, 1, 718257, 0, 'Marseille', '15 Impasse des Romans', '13012', 0, '2020-06-04 15:48:58', 'POUWELS_HAB_FB_piscine_naturelle_maison_cubique.jpg', '2020-06-05 22:40:56'),
(8, 'officiis similique nihil', 'Numquam id eum fuga dolor adipisci veritatis vel laudantium. Sint cumque dignissimos harum enim atque. Et distinctio maiores magnam consequatur.', 21, 2, 5, 3, 146612, 0, 'HuetVille', '436, avenue de Ferreira\n33332 Toussaint-sur-Mer', '03974', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(9, 'cupiditate quia sit', 'Reprehenderit est deserunt saepe iusto aut nam. Temporibus facilis tempora consectetur eos eius non facere. Illo explicabo consectetur ea consequatur et.', 93, 4, 6, 4, 960255, 0, 'Schmitt', '5, boulevard Benoit\n46 876 Andre-sur-Mer', '73 333', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(10, 'possimus aspernatur optio', 'Possimus totam incidunt minima cupiditate voluptas. Culpa cupiditate dolorem et et quia a harum expedita. In consequatur dicta omnis perspiciatis aut et in.', 264, 2, 4, 0, 648887, 0, 'Renault', 'place Evrard\n30893 Perez-sur-Paris', '83 983', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(11, 'rerum quae enim', 'Est in consequatur aspernatur dolor officiis veniam. Ut ipsam modi non qui. Recusandae autem error quisquam ut voluptatem impedit.', 174, 6, 1, 1, 321605, 1, 'Peron', '66, avenue Charles Barbe\n12 513 Navarro', '56293', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(12, 'possimus est architecto', 'Numquam quaerat dolorem quia. Quia aut quaerat ut laudantium commodi veniam. Voluptatem amet quia deserunt dignissimos et.', 215, 5, 4, 2, 837658, 1, 'Raynaud', '16, impasse Michel Henry\n23594 Alexandre', '23 734', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(13, 'itaque sed illum', 'Voluptatem voluptates rerum ut iure molestias qui eius rerum. Minima perferendis quidem possimus explicabo veritatis nihil. Id totam ut vel repellendus impedit id deserunt.', 241, 3, 5, 3, 830277, 1, 'Michel', '88, boulevard Julien Legrand\n40 107 Lebreton-sur-Mer', '18888', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(14, 'harum nulla ipsam', 'Enim facilis est et qui minima. Voluptatum dicta enim rerum commodi. Et aliquid eveniet ut repellat aut aut saepe.', 260, 2, 5, 2, 789271, 0, 'Garcia', '43, place Stéphanie Moreno\n88725 PagesVille', '36318', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(15, 'doloribus deleniti dolor', 'Voluptas id nemo est repellat. Soluta cupiditate consequatur omnis quaerat optio voluptatum quis. Mollitia ratione provident voluptatem velit qui.', 348, 2, 6, 0, 547972, 0, 'Leclercq', 'rue de Schneider\n45963 Pages', '54022', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(16, 'ad amet esse', 'Quia nemo aliquam magni laborum voluptatem aut. Facilis debitis ullam non non dignissimos. Ut consequuntur expedita repudiandae quod hic ea.', 143, 3, 3, 3, 534013, 1, 'MoulinBourg', '78, place de Dijoux\n46283 Adam', '15290', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(17, 'neque aliquam sapiente', 'Maxime mollitia sunt qui unde tempore voluptas. Ratione quaerat quisquam libero ut aut in. Nam illum sint temporibus.', 186, 4, 3, 1, 510424, 1, 'Caron', '68, rue Fischer\n36 987 Rodrigues', '68001', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(18, 'vero et numquam', 'Quis hic quo architecto voluptatem dolor ipsum aliquam eos. Optio aut nam enim voluptatem. Quasi vero fuga repellat sit amet quisquam libero.', 210, 3, 4, 0, 183385, 0, 'Lopez-sur-Chauvet', '27, rue Danielle Dupre\n76 639 Faivredan', '53 286', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(19, 'dolorem pariatur aut', 'Velit non quis rerum quae. Nam dolor voluptas omnis. Placeat id incidunt non nam atque in.', 99, 6, 1, 3, 470102, 0, 'Le Gall-sur-Martin', '64, boulevard Normand\n65706 Pierre', '87 374', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(20, 'placeat odit omnis', 'Esse qui reiciendis quibusdam nihil. Alias iusto vero exercitationem et perferendis. Sit ipsam est aut.', 250, 4, 1, 2, 587992, 0, 'Blanchard', '62, chemin de Gallet\n74467 Moreno', '96 389', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(21, 'ab odit necessitatibus', 'Odio eos sed placeat eos nesciunt ad. Dolorem aut blanditiis voluptates animi quo. Sit mollitia ipsam itaque adipisci.', 83, 3, 4, 3, 311742, 0, 'Traore', '66, chemin de Cousin\n51235 Pottier', '44283', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(22, 'perferendis omnis deserunt', 'Ea debitis in sed voluptate in magni sit. Eveniet est vero id aut. Ea non placeat ut in ducimus blanditiis.', 313, 6, 2, 3, 234413, 1, 'Bernard', '74, impasse Goncalves\n36 170 Roy-la-Forêt', '70369', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(23, 'sit dolorem quod', 'Aut iste possimus assumenda molestiae ad nulla et. Quisquam qui officiis et id qui ullam officia. Architecto at id voluptas commodi ut tenetur ipsa.', 86, 3, 3, 3, 528543, 1, 'Potier-sur-Vincent', '2, impasse de Julien\n27 073 Meuniernec', '59 029', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(24, 'quia officiis quia', 'Tempora voluptatum eum totam occaecati saepe nobis distinctio. Ducimus provident autem magnam dolor culpa et reiciendis. Commodi sapiente dolorem id itaque.', 155, 2, 4, 0, 577112, 1, 'Fournier', '29, rue de Vallee\n31415 JacobBourg', '66 622', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(25, 'placeat aspernatur ratione', 'Enim sit natus quod reiciendis ab repudiandae. Expedita nihil dolores autem nam. Et consequatur a eligendi impedit ea non.', 287, 5, 2, 0, 996060, 0, 'MartinBourg', '59, chemin Adèle Collin\n53 437 Poirier-les-Bains', '30499', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(26, 'sequi dolor alias', 'Esse nemo optio animi. Voluptatibus dolore autem dignissimos beatae. Amet optio ut veritatis autem.', 104, 4, 5, 0, 901683, 1, 'Garcianec', '4, boulevard de Renault\n80 564 Bernier', '98756', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(27, 'beatae repellendus non', 'Voluptas aperiam eius laboriosam atque dolore cum. Beatae qui cum est sapiente quia ipsum hic. Eum qui quia autem id.', 177, 2, 2, 4, 855909, 1, 'Juliendan', '54, impasse de Simon\n69977 Francois', '26123', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(28, 'amet vitae cum', 'Sed minus dolores doloribus et dolorem. Molestias quo voluptatem id consequatur. Et voluptatem ab tempora doloremque debitis labore quasi.', 254, 4, 2, 0, 142180, 0, 'Laurent', '70, boulevard Vidal\n49765 Couturiernec', '63390', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(29, 'esse soluta et', 'Ab dolore minima quis. Consequatur harum architecto non possimus consequatur est temporibus. Minus et libero occaecati et.', 302, 5, 2, 0, 212222, 1, 'GerardBourg', '12, rue de Laine\n98 661 Lombarddan', '77 891', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(30, 'distinctio laboriosam sed', 'Rerum et quia rerum dignissimos. Eum minima impedit consectetur quia. Ad a itaque similique deserunt dolorem quia.', 183, 5, 5, 2, 124076, 0, 'DuvalBourg', '63, place de Rousseau\n21 385 BuissonBourg', '32624', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(31, 'necessitatibus quo rem', 'Molestiae cupiditate quis voluptatibus et quo porro. Aliquam autem quasi alias sunt ratione. Corporis qui est iure eum occaecati reprehenderit.', 241, 5, 5, 3, 357388, 1, 'Piresnec', '881, impasse Juliette Baudry\n17 400 Meyernec', '10 988', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(32, 'omnis est officia', 'Asperiores illum similique et ut. Quam laudantium qui voluptatem cum. Sint odit harum omnis.', 88, 6, 6, 4, 317684, 0, 'Guillou-sur-Mer', '97, avenue de Hoarau\n59 780 Meyer-sur-Godard', '98 354', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(33, 'excepturi quos id', 'Ut nemo dolorem occaecati cumque facere id. Aut ut fuga cum quos dolor tempora atque iure. Placeat repellat numquam minima nihil omnis et facere.', 159, 4, 6, 0, 664550, 1, 'Riviereboeuf', '93, place Joseph Hamon\n67146 Goncalvesdan', '77 893', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(34, 'autem id incidunt', 'Eaque vel ducimus labore enim qui dolore. Est quo eligendi vitae porro iste. Aut sed alias quo cum sed.', 257, 4, 2, 3, 776371, 1, 'Descamps', '30, place Martineau\n67040 Chauvet', '08 580', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(35, 'quod officiis ab', 'Consequuntur distinctio similique ut aut ducimus dolore vel. Sed magni magnam illo dolorem cum reiciendis. Rerum officiis sit ratione nihil et et.', 327, 3, 5, 1, 906899, 0, 'Da Silva', '52, impasse Margaux Teixeira\n55 853 Bonnet-les-Bains', '84433', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(36, 'nihil officia quis', 'Voluptas iure ipsum totam. Et omnis eius debitis corrupti omnis harum. Molestiae voluptatem et unde inventore officiis magnam aut.', 274, 4, 1, 2, 861065, 1, 'Diaz', '21, avenue Dijoux\n43641 Leger', '36 319', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(37, 'vel error officiis', 'Tempora aut tempore minima voluptatem porro. Labore provident iure nesciunt vel non consequatur. Adipisci excepturi consequatur aut error quaerat et nisi.', 58, 6, 6, 4, 608609, 0, 'DupuyVille', '59, chemin de Masse\n23550 Barthelemy', '37034', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(38, 'soluta omnis explicabo', 'Eveniet sint soluta voluptatem eveniet. Sed voluptates vero ipsa voluptatem optio nulla. Aperiam deleniti qui vero fugit voluptas fuga ut.', 218, 2, 3, 1, 835902, 0, 'Monnier', '27, avenue de Rodrigues\n95953 Da Silva', '14 850', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(39, 'consectetur fugiat dolorem', 'Laboriosam et distinctio rerum. Non reprehenderit laudantium qui id neque similique nihil. Dolores ea excepturi dolorum sed dignissimos est.', 68, 3, 5, 2, 678449, 1, 'Gilbert', '37, avenue Hélène Techer\n37 118 Cousin-sur-Gomez', '38565', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(40, 'animi quis autem', 'Soluta quas dolorum sint culpa. Quo molestiae nihil explicabo molestias cupiditate occaecati voluptatibus. Est omnis soluta assumenda deserunt sed magnam ab.', 116, 3, 6, 0, 951216, 1, 'Lambert', '563, rue Mercier\n72 437 Marindan', '51015', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(41, 'commodi temporibus quo', 'Est qui explicabo consequatur soluta est et. Et nostrum neque perferendis ut et tenetur. Laboriosam aut unde in eos est debitis ipsum.', 337, 2, 5, 4, 274582, 0, 'Tanguy-sur-Colin', '13, boulevard de Bernard\n95 136 Delmas-la-Forêt', '91277', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(42, 'provident iste voluptatem', 'Repellat quasi qui voluptates qui. Delectus id aut ea aliquid illum. Neque et ullam dolore placeat et at.', 202, 4, 3, 4, 550071, 0, 'AllardVille', '12, rue Susan Adam\n01 590 Lemonnierboeuf', '69 144', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(43, 'quis quia et', 'Molestiae quis rerum non expedita accusantium perspiciatis error. Delectus possimus aut labore. Sed sed natus distinctio deserunt nisi.', 298, 3, 4, 4, 314838, 1, 'Maury', '915, place de Lombard\n00981 Martins', '13 199', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(44, 'dolor et est', 'Atque repellat qui quo unde. Ullam blanditiis quia minus architecto dolor repudiandae nobis corporis. Vitae molestias vero nam esse quis sed laboriosam est.', 342, 4, 3, 0, 140116, 0, 'Vincent-les-Bains', '68, avenue Élisabeth Menard\n29 419 Pons-les-Bains', '16644', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(45, 'velit inventore qui', 'Quisquam dolorum reprehenderit sapiente consectetur optio officia. Harum ab quia quam. Maxime sed quas modi voluptatum.', 239, 5, 1, 2, 985288, 0, 'Bodin-sur-Marchand', 'impasse Thibault Chauveau\n55 373 Dupre', '35011', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(46, 'quam deleniti non', 'Iusto ipsam nihil distinctio dolorem ipsa. Maiores dolorem enim eos quas dolores porro. Animi vitae doloremque ad.', 197, 6, 6, 4, 413653, 1, 'Michel', '9, place de Lemoine\n03 952 Boulanger-sur-Faivre', '63 782', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(47, 'consectetur id saepe', 'Nihil maiores voluptatem nam et vitae. Sit nihil earum culpa. Beatae ipsam est magni possimus alias quae eaque.', 330, 3, 1, 1, 821447, 1, 'MartinBourg', '495, rue de Boulanger\n11 325 Louis', '09 266', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(48, 'debitis iusto quidem', 'Ab laborum deleniti eveniet vero et consectetur vel cupiditate. Id quia assumenda perferendis et ea. Est vitae dicta enim sit vel maiores voluptates.', 294, 2, 1, 3, 537197, 0, 'Chauveauboeuf', '42, rue Madeleine Guillaume\n19 308 Costa-les-Bains', '73027', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(49, 'voluptatem eum sunt', 'Explicabo debitis et sapiente autem aspernatur ad. Libero est temporibus architecto quasi perferendis. Aperiam animi et rerum voluptatibus qui aliquid.', 247, 3, 1, 4, 832769, 1, 'Labbe', '39, impasse de Francois\n69228 Maurice', '32 656', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(50, 'et eum vitae', 'At delectus molestiae inventore sed non dolore voluptatem est. Odit vel vel voluptates odit corrupti et expedita. Dolorum natus doloribus nostrum quae cumque id.', 279, 5, 3, 3, 668487, 1, 'Ribeiro', '15, place Lamy\n52345 Meyer', '66771', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(51, 'voluptatem recusandae blanditiis', 'Quia qui iste ducimus perferendis sint non aut ipsa. Vero enim deleniti eos et reiciendis. Praesentium quas aspernatur vitae aliquam.', 214, 5, 2, 0, 294035, 0, 'Jacob-la-Forêt', '68, place André Faure\n34 611 Maillot-les-Bains', '07 106', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(52, 'animi facere cum', 'Corrupti nam itaque facere quam ex accusamus. Minima delectus aperiam cum aut. Qui laboriosam asperiores hic quam sed illum.', 122, 6, 3, 4, 891641, 1, 'Thomas-sur-Mer', '33, place de Tessier\n19901 Aubert', '42 689', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(53, 'laboriosam dolore natus', 'Minus non iusto sint cupiditate. Et expedita et eos. Eligendi id et quia dolores labore numquam non.', 90, 3, 4, 2, 953248, 1, 'Legrand', '1, chemin de Coulon\n89 211 Navarro-la-Forêt', '56636', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(54, 'itaque aut dolor', 'Est earum qui soluta cupiditate voluptatem molestias nihil. Cum aliquam qui delectus laborum. Iusto iste ut reprehenderit non dolorum sunt.', 134, 3, 4, 0, 492536, 0, 'Nicolas', '91, impasse Émile Dubois\n20 251 Delaunaynec', '79 222', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(55, 'possimus dolorem consequatur', 'Perferendis architecto minima sed beatae voluptates officiis officia et. Voluptas esse ipsum sit autem repellendus veniam harum. Laborum asperiores amet eveniet fugiat pariatur cupiditate.', 66, 4, 6, 4, 980402, 0, 'Leroyboeuf', '31, rue Chauvin\n05 299 Lefort', '66 407', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(56, 'eum blanditiis quasi', 'Quod officia ad aut molestiae. Id enim qui rerum laboriosam qui. Excepturi blanditiis et quia excepturi quidem veritatis dolores.', 275, 2, 3, 3, 538367, 1, 'Mahe', '35, rue de Hoareau\n44 290 Garcia', '22 367', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(57, 'totam numquam laborum', 'At asperiores saepe distinctio labore necessitatibus et. Sint dolores corporis est. Veniam est iure reiciendis molestiae facere qui rerum.', 99, 3, 3, 0, 403284, 0, 'Martin', 'place de Foucher\n28 804 Seguin', '83 933', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(58, 'ut ut totam', 'Exercitationem maiores explicabo animi deleniti voluptatibus et qui. Non porro quis excepturi magni sunt aut ea iure. Officiis in ipsa non molestiae laudantium blanditiis illum qui.', 107, 4, 3, 0, 126248, 1, 'Bouviernec', '13, avenue Benoît Meunier\n31 057 Hoareau', '21826', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(59, 'doloribus facilis omnis', 'Quo ut repellat autem eaque at fugiat. Molestias qui odio illum quasi nam et optio. Vitae sed rerum adipisci sed.', 279, 3, 2, 4, 425024, 0, 'Labbe', '383, boulevard Thibaut Thibault\n77 088 Lenoirboeuf', '81999', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(60, 'neque corrupti accusantium', 'Voluptatum et dolor voluptatem sunt fuga quos voluptas. In nihil dolor sed. Provident sed cumque quia et.', 62, 5, 2, 1, 883220, 0, 'Traore', '26, rue Lebreton\n22430 Mahe', '82501', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(61, 'eum eaque facere', 'Voluptate aut dolores nemo voluptatem dolore omnis. Nisi totam sunt rem facilis esse enim omnis. Blanditiis dignissimos accusantium et corrupti dolor perspiciatis.', 165, 3, 6, 3, 513441, 1, 'Berthelot', 'impasse Pichon\n80 403 Blanchetnec', '65 213', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(62, 'alias qui veritatis', 'Dignissimos rerum distinctio perspiciatis eum dolores. Distinctio consequatur qui natus ut libero porro. Nostrum porro et dolore illo dolores et quisquam.', 209, 5, 5, 3, 788130, 1, 'Gonzalez', '4, place Guerin\n79229 Aubert', '14328', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(63, 'officiis id voluptas', 'A aut quasi amet voluptas nulla. Ea voluptatem beatae numquam. Facere doloribus corporis sit ducimus minus.', 47, 4, 5, 3, 320869, 1, 'Pichon', '88, place Célina Lemonnier\n69363 Clercnec', '51 489', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(64, 'est rerum hic', 'Nostrum suscipit ut iure consequatur. Quae distinctio qui provident adipisci autem dolor et. Et maiores officia et aperiam sunt numquam eveniet.', 336, 6, 1, 4, 889983, 1, 'Lecomte', '45, boulevard de Renaud\n80 724 Colas', '29658', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(65, 'atque provident sint', 'Id deserunt quas blanditiis molestiae. Tenetur officiis neque nesciunt officia quos dolorem ut. Laudantium ea illo voluptatem libero.', 20, 6, 4, 3, 328964, 1, 'Lemaitre', '3, rue de Pons\n56883 Michel-sur-Mer', '12 831', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(66, 'minima illo debitis', 'Aliquid modi veniam aut totam ipsam cupiditate. Voluptas cum amet nulla illum. Omnis voluptatem ipsum cumque architecto.', 41, 4, 1, 4, 674162, 1, 'Jacquot', '96, rue de Lopez\n57 616 Evrard-sur-Vincent', '72709', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(67, 'inventore nemo velit', 'Animi nobis quasi eum assumenda. Dolor ab quis et ea cupiditate dolores. Repellendus hic qui neque distinctio dolorum.', 52, 2, 3, 3, 303572, 0, 'Payet-sur-Mer', '4, avenue de Potier\n26 987 Bonneauboeuf', '26793', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(68, 'iure esse est', 'Quidem omnis consectetur sed expedita quia tempore. Et hic voluptatum sint magni perspiciatis est. Similique sequi consequatur ut soluta veniam.', 249, 5, 4, 4, 656964, 1, 'Moreau', '14, boulevard Raymond\n74 235 Garnier', '38 309', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(69, 'sunt fuga rerum', 'Non itaque et odio nam similique quia. Unde voluptatum dolorem odio esse eum sed. Omnis debitis ad unde ducimus quos corrupti.', 225, 5, 4, 4, 268572, 0, 'Peltier-sur-Roux', '99, boulevard de Descamps\n82 599 Pereira', '09 395', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(70, 'ducimus aperiam sed', 'Tenetur quo odio sed soluta. Neque non eos ea id. Et laboriosam vel possimus qui.', 203, 5, 4, 2, 502937, 0, 'Martineau', '92, avenue William Costa\n78318 Teixeiraboeuf', '97719', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(71, 'sunt expedita qui', 'Nam autem saepe voluptates dignissimos. Libero consequuntur a ut modi aspernatur. Quam dolores error voluptatem veniam.', 26, 3, 5, 0, 969996, 0, 'Sanchez-sur-Schmitt', '7, place Colette Chauvin\n87 075 Raymond-les-Bains', '90332', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(72, 'qui enim sit', 'Et commodi alias maiores dolor deleniti harum impedit. Quae eaque reiciendis officia. Repellendus magni vel doloribus et perspiciatis temporibus porro.', 304, 4, 5, 3, 952888, 1, 'Baron', '72, avenue de Loiseau\n86930 Bonneau-sur-Munoz', '31654', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(73, 'saepe praesentium mollitia', 'Veritatis fugiat iure quasi quia. Molestias dicta aut velit. Sed nihil sed quasi.', 122, 3, 3, 0, 209004, 0, 'Rossi-sur-Nguyen', '401, impasse David Blin\n12686 Benoit', '11 869', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(74, 'mollitia earum natus', 'Officiis reiciendis autem repudiandae consequuntur. Ut minima dolores minima natus eius laborum est. Rerum omnis ut eligendi tempora earum iure ut.', 70, 2, 3, 0, 992339, 0, 'Martins-sur-Mer', '308, place Richard Jacques\n90 317 Gilbert', '09 554', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(75, 'atque modi occaecati', 'Reprehenderit totam necessitatibus mollitia est vitae. Laboriosam commodi officiis voluptatem possimus. Consequuntur architecto omnis perspiciatis similique.', 251, 2, 2, 2, 320288, 0, 'Tessier-sur-Martinez', '87, chemin Lemoine\n47651 Gros-sur-Neveu', '52 349', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(76, 'atque ratione perferendis', 'Et eveniet aperiam et aut eligendi asperiores. Est doloribus quam quasi unde unde possimus iure. Sequi dolores veritatis quibusdam.', 309, 4, 6, 1, 953133, 1, 'Parent', '6, rue de Prevost\n99 706 Duhamel', '99970', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(77, 'eius dolorum doloribus', 'Sunt repellendus neque unde dolore et ducimus. Recusandae rerum est tempore totam unde iste. Possimus quis eos ut ducimus.', 119, 6, 2, 2, 796878, 1, 'Tanguy-sur-Mer', '585, boulevard Michel Masse\n40 542 Royer', '72 876', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(78, 'qui dolorem ut', 'Officiis doloribus quaerat debitis quae voluptatem. Excepturi debitis aut at iure est et. Quo ipsum fuga repellat omnis aperiam.', 60, 4, 6, 2, 247900, 0, 'Joly', '61, rue de Menard\n75 354 Grondin', '74 552', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(79, 'velit modi quibusdam', 'Est facere fugit sapiente assumenda inventore reiciendis. Dolores in aut quia. Quo dolores rerum veniam.', 264, 4, 6, 1, 453318, 1, 'Sanchez', '61, impasse de Allard\n86185 MichaudBourg', '85 639', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(80, 'nulla est molestiae', 'Sunt veniam perferendis reprehenderit assumenda nesciunt accusamus. Voluptatem voluptatibus nulla nam commodi ullam veritatis fuga accusantium. Aperiam nesciunt quisquam quia cumque qui est impedit.', 58, 4, 3, 2, 778951, 0, 'Perrotnec', 'rue Jérôme Bertin\n30 803 Collet-les-Bains', '61 797', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(81, 'consequatur corporis nemo', 'Voluptas nesciunt eius rem minima. Et cupiditate praesentium quam ab optio. Non esse pariatur fugit reprehenderit laboriosam est.', 84, 6, 3, 2, 771210, 1, 'Couturier', '534, rue Antoine Clerc\n44 549 WeberBourg', '23 513', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(82, 'fugiat saepe excepturi', 'Quo fuga porro repudiandae excepturi autem cumque. Est earum harum expedita odio aspernatur. Sapiente aut pariatur consequatur facilis doloremque.', 164, 5, 5, 4, 863829, 1, 'Gillet', '15, rue Paul Muller\n30740 Bretonnec', '71890', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(83, 'nihil aut distinctio', 'At aut quod sed amet qui placeat. Ut aut iste tempora alias ullam aut neque. Fugiat architecto rerum laudantium.', 37, 6, 1, 3, 202058, 1, 'Barbe', 'avenue de Jacquet\n14 230 Martel-sur-Garnier', '10673', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(84, 'nihil quis tempore', 'Est et veniam ut explicabo laborum maiores a harum. Optio vel dolorem id sequi et dicta aut. Quia dolor animi et in delectus sed.', 115, 4, 5, 4, 590464, 0, 'Allainboeuf', '39, rue Céline Hardy\n44904 Maillet', '11 905', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(85, 'blanditiis et rerum', 'Voluptas enim ratione corrupti eum et. Consequuntur ipsum voluptas placeat est. Ut ut sapiente deserunt adipisci.', 206, 4, 6, 1, 127671, 1, 'Navarronec', '65, rue Leclerc\n67774 Lambert-sur-Maury', '01575', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(86, 'mollitia perferendis quo', 'Distinctio quis corporis veritatis quos illo aspernatur ea. Consequatur sit ipsam consequatur similique doloribus blanditiis nihil sint. Dolorum voluptatibus sint adipisci ex velit sed rerum.', 51, 5, 2, 3, 799772, 0, 'Bernard', '83, chemin Lemaire\n63 124 Guibert', '90 484', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(87, 'deleniti dolor autem', 'Quo voluptatem ducimus sed. Pariatur officia libero voluptas et omnis quam. Quas optio in minus architecto quia cum.', 183, 2, 4, 1, 859729, 0, 'Berger', 'chemin Perrot\n05877 Mendes', '11093', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(88, 'error asperiores aut', 'Error debitis quo nesciunt est perferendis. Dignissimos fugit ex qui. Expedita nihil ratione et quam voluptates culpa nihil.', 74, 3, 5, 0, 837953, 0, 'Delahaye-la-Forêt', '78, impasse Gautier\n96828 Vincent', '91654', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(89, 'quod aspernatur rerum', 'Libero rerum eos consectetur iste libero. Aut error sed rem nemo. Quam corporis nobis nemo est consequatur tempora labore.', 139, 4, 5, 4, 816973, 1, 'Launay', '912, rue Nath Hoareau\n82943 Colin', '16 887', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(90, 'similique ullam cupiditate', 'Perferendis ad sed nihil voluptatem dolorem dolorem et. Impedit culpa veritatis aut. Dignissimos qui sit dolor quia eos.', 282, 3, 6, 4, 769260, 1, 'SchmittVille', '708, rue Alix Caron\n99926 Bailly', '75 155', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(91, 'soluta ducimus doloribus', 'Aut sit dolor non architecto dolor. Ea eligendi molestias est eveniet delectus iure maiores odio. Perspiciatis doloremque mollitia at.', 267, 2, 3, 1, 976600, 0, 'Valentin', 'impasse Margot Gauthier\n32143 MathieuBourg', '44 367', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(92, 'accusamus porro accusamus', 'Libero et porro voluptas sed. Est sapiente minus qui possimus autem tenetur consequuntur qui. Voluptatem et consequatur aut voluptate commodi molestiae.', 296, 2, 1, 0, 487020, 0, 'Besson', '6, rue Maggie Durand\n83527 Poirier', '98252', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(93, 'quaerat molestias ut', 'Doloremque veritatis nesciunt error ipsam ducimus laboriosam. Enim id culpa cumque sequi consectetur et ducimus. In cumque rerum quae vero aut nostrum.', 126, 5, 6, 1, 497820, 1, 'Rossi', '38, place André Lebon\n87 477 Etienne', '28 413', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(94, 'neque nihil ullam', 'Possimus reiciendis esse et excepturi voluptatibus quos maiores iusto. Esse eveniet repellendus officiis qui harum eos. Et voluptatibus ea qui cumque modi et et consequuntur.', 99, 6, 4, 4, 778867, 1, 'Reynaud', '8, chemin Thibaut Renault\n04 935 DijouxVille', '12 565', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(95, 'et esse praesentium', 'Cum minima pariatur deserunt. Ullam omnis ullam veritatis sint illum maxime quo non. At ex dicta ut ducimus sed sit minus facere.', 305, 2, 1, 4, 220769, 0, 'Morvan', '72, chemin Morvan\n47798 Alves-sur-Mendes', '11419', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(96, 'facilis suscipit mollitia', 'Perferendis facilis ullam aperiam praesentium. Inventore doloribus minima reiciendis dolorem. Dolorem molestiae rerum laborum atque.', 63, 5, 3, 3, 664861, 1, 'Marin', '74, rue de Jacquot\n11 931 Gaudin-sur-Mer', '66965', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(97, 'numquam harum hic', 'Aut beatae doloribus suscipit aut. Ut eveniet eos exercitationem tempora distinctio a perspiciatis. Tenetur nulla commodi hic non laudantium modi dolores.', 145, 2, 1, 0, 628908, 1, 'Ruiz-sur-Mer', 'boulevard Gilbert Hamel\n37 837 Mallet', '22719', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(98, 'et quod nam', 'Incidunt facilis saepe et vitae placeat nulla quidem. Modi recusandae reprehenderit voluptatem tenetur maiores laboriosam autem. Repellendus aspernatur itaque accusantium sint ducimus excepturi fugiat.', 185, 2, 1, 1, 217058, 1, 'Mathieu-les-Bains', '19, boulevard Joseph\n93 296 RodriguesVille', '77076', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(99, 'quam aliquid est', 'Sint voluptatem aut eveniet quis sit minima. Magnam aut animi itaque inventore id dignissimos et. Ut nihil eum numquam.', 106, 4, 6, 3, 243926, 1, 'Berger', '50, place Vasseur\n79 585 Robert', '03 334', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(100, 'nihil deserunt qui', 'Velit in accusamus voluptatem sed assumenda in. Voluptas iure occaecati illum harum fugit cumque sit et. Consequatur et dolorem tempore quisquam ipsam mollitia.', 325, 4, 4, 1, 548817, 1, 'Fernandez', '474, chemin de Lopez\n37259 Richarddan', '39990', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(101, 'et consectetur veniam', 'Qui aperiam fugit atque assumenda. Natus voluptates saepe beatae. Rerum blanditiis qui et consequatur asperiores et nostrum.', 55, 5, 5, 4, 874466, 0, 'MarechalVille', '95, impasse de Blanchet\n39455 Roche', '68700', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(102, 'tempore alias earum', 'Inventore molestiae ut in cupiditate. In dolores ut dignissimos quia. Ut velit accusantium in quia ea aut sit.', 34, 2, 6, 1, 417781, 0, 'Dupontdan', '2, rue de Berthelot\n71787 NormandBourg', '06550', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(103, 'molestias quos quo', 'Et nihil ratione sed labore officia atque. Et aut modi incidunt ipsa autem alias. Culpa magni iusto blanditiis ea recusandae cumque laborum.', 134, 6, 3, 2, 679984, 0, 'Raymondboeuf', 'rue de Buisson\n93 140 Lebreton', '67 099', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(104, 'et quaerat aut', 'Sunt ut reiciendis hic ea enim. Quibusdam debitis qui accusantium autem adipisci quia. Saepe minima aut deserunt id.', 184, 5, 2, 0, 694545, 1, 'Vasseur', '67, boulevard Lagarde\n40808 Tessier', '66 055', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(105, 'blanditiis non sit', 'Molestiae ipsam expedita earum. Vel ea minima qui deserunt architecto. Nisi animi eligendi natus magnam non.', 259, 4, 4, 0, 832101, 0, 'Hoareau', 'place Duval\n85 880 Faivre', '44 997', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00'),
(106, 'eveniet cumque quo', 'Quia quam ut occaecati qui facere. Sint beatae vel est ratione. Sit quis in maiores aut neque.', 93, 2, 3, 2, 264846, 1, 'Perez', 'rue Klein\n90420 Dias', '97861', 0, '2020-06-04 15:48:58', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `property_option`
--

DROP TABLE IF EXISTS `property_option`;
CREATE TABLE IF NOT EXISTS `property_option` (
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`property_id`,`option_id`),
  KEY `IDX_24F16FCC549213EC` (`property_id`),
  KEY `IDX_24F16FCCA7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property_option`
--

INSERT INTO `property_option` (`property_id`, `option_id`) VALUES
(7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'Florian', '$2y$12$OH7/8E7DEXw4WJcb31T.veYLZhwkdUrgc0Gb/xd5Vku1A6uYsSEGW');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `property_option`
--
ALTER TABLE `property_option`
  ADD CONSTRAINT `FK_24F16FCC549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_24F16FCCA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `option` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2018 at 02:45 
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bonbon`
--

-- --------------------------------------------------------

--
-- Table structure for table `liste`
--

CREATE TABLE IF NOT EXISTS `liste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `prixpromo` int(11) NOT NULL,
  `quantite` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `etatpromo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `liste`
--

INSERT INTO `liste` (`id`, `designation`, `description`, `prix`, `prixpromo`, `quantite`, `photo`, `etatpromo`) VALUES
(1, 'Bonbon-Violette', 'Nos bonbons cassés à la Violette vous transportent dans ce monde de saveurs et de douceurs en quelques instants… \r\nC’est un retour au cœur de vos souvenirs d’enfance. \r\n', 2.5, 0, 100, 'assets/imagecenter/bonbon1.png', 0),
(2, 'Bonbon-Anais', 'Nos berlingots cassés à l’Anis renferment un mélange subtil de réglisse, de fenouil et d’anis.\r\nLes amateurs de pétanque se souviendront des parties passionnées et trop souvent arrosées de Pastis ! ', 4.5, 0, 50, 'assets/imagecenter/bonbon2.png', 0),
(3, 'Bonbon-Framboise', 'Prolonger le plaisir de la cueillette de vos framboises du jardin par la dégustation de nos bonbons à la Framboise. Aux extraits naturels de fruits, nos confiseries à l’ancienne ne vous procureront que du plaisir. \r\n', 3.5, 0, 100, 'assets/imagecenter/bonbon3.png', 0),
(4, 'Bonbon-Cerise', 'Croquer un bonbon cassé à la Cerise vous donne l’envie de fredonner ce refrain. Son goût rafraichissant mêlé à la douceur du fruit, séduiront vos papilles qui seront assurément « en fête ».   ', 4.8, 0, 200, 'assets/imagecenter/bonbon4.png', 0),
(5, 'Bonbon-Melon', 'Un fruit tendre, juteux et généreux gorgé de soleil, souvent partagé entre amis ou en famille sur une terrasse ensoleillée. Retrouvez cette ambiance et ses saveurs dans nos bonbons cassés au Melon, confiseries de fabrication artisanale.', 3.8, 0, 120, 'assets/imagecenter/bonbon5.png', 0),
(6, 'Bonbon-Melon', 'Les bonbons cassés à la Mandarine vous font revivre votre enfance et cette nuit magique, durant laquelle nous rêvions de tous les cadeaux que le Grand-Saint avec son âne, allait nous apporter.', 5, 0, 80, 'assets/imagecenter/bonbon6.png', 0),
(7, 'Bonbon-Fraise', 'La fraise a pour nous une saveur toute particulière liée au fait que notre Grand-Père était producteur de fraises à Vottem, en région liégeoise. ', 10, 0, 100, '', 0),
(13, 'Bonbon-test2', 'Bonbontest', 10, 1, 500.4, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `titre`, `contenu`) VALUES
(1, 'Salut', 'Buna ce faci'),
(2, 'Gruss got', 'Mein name ist Amariei Iulian');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `titre`, `contenu`, `photo`) VALUES
(1, 'Bonjour!Tout ce que vous devrez savoir sur les bonbons', '', 'assets/imagecenter/bonbonc.PNG'),
(2, 'Ici vous pouvez nous contacter...', '<form class="formc" method="post"  action="redirect.php">\r\n<fieldset>\r\n<p>\r\nQuel est votre nom ?<br/><input value="nom" placeholder="Votre nom"><br/></label>\r\nQuel est votre prenom?<br/><input value="prenom" placeholder="Votre prenom"> <br/></label>\r\nQuel est votre adresse?<br/><input class="adresse1" id="adresse" placeholder="(rue, ville, pays)"><br/>\r\nTéléphone :<input   placeholder="(téléphone)"> <br/>\r\nemail :<input value="email" type="email" placeholder="(email)"><br/>\r\n </fieldset>\r\n  <fieldset>\r\n Vous pouvez ecrire votre avis!<br/>\r\n <textarea  value=”text” placeholder="type your text">Bonjour,</textarea></p>\r\n</p>\r\n</fieldset>\r\n  <fieldset>\r\n<input type="submit"  value="Envoyer" class="bouton1"</p>\r\n<input type="button" onclick="window.location.reload(false)" value="Annuler" class="bouton1">\r\n  </fieldset>\r\n</form>', 'assets/imagecenter/logobonbon1.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `login` varchar(250) NOT NULL,
  `pwd` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`login`, `pwd`) VALUES
('iuli', 'iuli');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

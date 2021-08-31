-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 04, 2020 at 05:30 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `star_wars`;
CREATE TABLE IF NOT EXISTS `star_wars` (
    `id` int(255) NOT NULL,
    `FirstName` varchar(128) NOT NULL,
    `LastName` varchar(128) NOT NULL,
    `Species` varchar(128) NOT NULL,
    `Affiliation` varchar(128) NOT NULL,
    `Image` varchar(250) NOT NULL,
    `Homeworld` varchar(250) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `star_wars`
--

INSERT INTO `star_wars` (`id`,`FirstName`, `LastName`, `Species`, `Affiliation`, 'Image', `Homeworld`) VALUES
(1, 'Ahsoka', 'Tano', 'Togruta', 'Jedi Order','<img src=\'img/anakin.png'>', 'Shili'),
(2, 'Anakin', 'Skywalker', 'Human', 'Sith','<img src=\'img/anakin.png'>', 'Tatooine'),
(3, 'Ben', 'Solo', 'Human', 'Jedi Order','<img src=\'img/anakin.png'>', 'Chandrila');
(4, 'Bo-Katan', 'Kryze', 'Human', 'Mandalorian Resistance', '<img src=\'img/bo-katan.png'>', 'Mandalore');
(20, 'Obi-Wan', 'Kenobi', 'Human', 'Jedi Order', '<img src=\'img/obi-wan.png'>', 'Stewjon');
(19, 'Maul','','Zabrak','Sith','<img src=\'img/maul.png'>', 'Dathomir');
(24, 'Sheev', 'Palpatine','Human' ,'Sith', '<img src=\'img/palpatine.png'>', 'Naboo');
(13, 'Jango', 'Fett', 'Human', 'Confederacy of Independent Systems', '<img src=\'img/jango.png'>', 'Concord Dawn');
(10, 'Grievous', '', 'Kaleesh', 'Confederacy of Independent Systems', '<img src=\'img/grievous.png'>','Kalee');
(7, 'Dooku', '', 'Human', 'Sith', '<img src=\'img/dooku.png'>', 'Serenno');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 28 nov 2013 om 14:32
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `am1b-fotosjaak`
--
CREATE DATABASE IF NOT EXISTS `am1b-fotosjaak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1b-fotosjaak`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userrole` enum('customer','administrator','root','photographer','developer') NOT NULL DEFAULT 'customer',
  `isactivated` enum('yes','no') NOT NULL DEFAULT 'no',
  `registerdate` datetime NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(300) NOT NULL,
  `address` varchar(200) NOT NULL,
  `addresnumber` varchar(12) NOT NULL,
  `city` varchar(300) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `country` varchar(300) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `mobilephonenumber` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` char(150) NOT NULL,
  `infix` char(100) NOT NULL,
  `surname` char(200) NOT NULL,
  `city` char(150) NOT NULL,
  `zip_code` varchar(6) NOT NULL,
  `street` char(150) NOT NULL,
  `house_number` int(100) NOT NULL,
  `birthday` date NOT NULL,
  `sex` char(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(50) NOT NULL,
  `game_type` char(9) NOT NULL,
  `favo_game` varchar(50) NOT NULL,
  `userrole` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `city`, `zip_code`, `street`, `house_number`, `birthday`, `sex`, `email`, `password`, `game_type`, `favo_game`, `userrole`) VALUES
(3, 'Mick', '', 'Andreas', 'IJsselstein', '3490DH', 'voorbeeldlaan', 4, '1986-04-03', 'male', 'voorbeeld@dingetje.nl', 'utrecht', 'puzzle', 'fifa 14', 0),
(4, 'Jason', '', 'Uiterwijk', 'IJsselstein', '3490DH', 'Vincent van Goghlaan', 6, '1996-07-12', 'male', 'voorbeeld@dingetje.nl', 'mboutrecht', 'sport', 'fifa 14', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

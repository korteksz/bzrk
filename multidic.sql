-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2018. Jan 04. 14:38
-- Kiszolgáló verziója: 5.7.19
-- PHP verzió: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `multidic`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t_dictionary`
--

DROP TABLE IF EXISTS `t_dictionary`;
CREATE TABLE IF NOT EXISTS `t_dictionary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_TYPE` varchar(255) NOT NULL,
  `C_NAME` varchar(255) NOT NULL,
  `DELETED` varchar(1) NOT NULL DEFAULT 'F',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `t_dictionary`
--

INSERT INTO `t_dictionary` (`ID`, `C_TYPE`, `C_NAME`, `DELETED`) VALUES
(1, 'language', 'hungarian', 'F'),
(2, 'language', 'english', 'F'),
(3, 'tense', 'simple present', 'F');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t_foreign_words`
--

DROP TABLE IF EXISTS `t_foreign_words`;
CREATE TABLE IF NOT EXISTS `t_foreign_words` (
  `ID` int(11) NOT NULL,
  `C_LANGUAGE` int(11) NOT NULL,
  `C_WORD` varchar(255) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t_language`
--

DROP TABLE IF EXISTS `t_language`;
CREATE TABLE IF NOT EXISTS `t_language` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_LANGUAGE` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t_user`
--

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_NAME` varchar(255) NOT NULL,
  `C_PASSWORD` varchar(255) NOT NULL,
  `DELETED` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `t_words`
--

DROP TABLE IF EXISTS `t_words`;
CREATE TABLE IF NOT EXISTS `t_words` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `C_WORD` varchar(255) NOT NULL,
  `C_TYPE` int(11) NOT NULL,
  `C_USERID` int(11) NOT NULL,
  `DELETED` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

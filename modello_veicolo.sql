-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 22, 2021 alle 15:57
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_societa`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `casa_automobilistica`
--

CREATE TABLE `casa_automobilistica` (
  `nomeCasa` varchar(30) NOT NULL,
  `annoFondazione` year(4) NOT NULL,
  `nomeFondatore` varchar(30) NOT NULL,
  `nazionalita` enum('afghana','albanese','algerina','andorrana','angolana','argentina','armena','australiana','austriaca','azera','bahamense','bahreinita','barbadiana','belga','bengalese','beninese','bhutanese','bielorussa','birmana','boliviana','bosniaca','botswana','brasiliana','britannica','bruneiana','bulgara','burkinabÃ©','burundese','cambogiana','camerunense','canadese','capoverdiana','ceca','centrafricana','ciadiana','cilena','cinese','cingalese','cipriota','colombiana','comoriana','congolese','costaricana','croata','cubana','danese','dominicana','ecuadoregna','egiziana','emiratina','eritrea','estone','etiope','figiana','filippina','finlandese','francese','gabonese','gambiana','georgiana','ghanese','giamaicana','giapponese','gibutiana','giordana','greca','grenadina','guatemalteca','guineana','guyanese','haitiana','honduregna','indiana','indonesiana','	irachena','iraniana','irlandese','islandese','israeliana','italiana','ivoriana','	kazka','	keniana','kirgisa','	kosovara','kuatiana','laotiana','lesothiana','lettone','libanese','liberiana','libica','liechtensteiniana','lituana','lussemburghese','macedone','malawiana','maldiviana','malesiana','malgascia','maliana','maltese','marocchina','marshallese','mauritana','mauriziana','messicana','micronesiana','moldava','monegasca','mongola','montenegrina','mozambicana','namibiana','nauruana','neozelandese','nepalese','nigeriana','nigerina','nordcoreana','norvegese','olandese','	omanita','pachistana','palestinese','panamense','papuana','paraguaiana','peruviana','polacca','portoghese','qatariota','romena','ruandese','russa','salvadoregna','samoana','sanmarinese','saudita','senegalese','serba','sierraleonese','singaporiana','siriana','slovacca','slovena','somala','spagnola','statunitense','sudafricana','sudanese','sudcoreana','svedese','svizzera','tagika','tailandese','taiwanese','tanzaniana','tedesca','togolese','tongana','tunisina','turca','turkmena','ucraina','ugandese','ungherese','uruguaiana','uzbeka','vanuatuana','vaticana','venezuelana','vietnamita','	yemenita','zambese','zimbabwese') NOT NULL,
  `mail` varchar(30) NOT NULL,
  `sitoWeb` varchar(30) NOT NULL,
  `descrizione` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

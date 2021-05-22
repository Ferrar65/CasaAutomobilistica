-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 22, 2021 alle 18:01
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
-- Database: `societa`
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

-- --------------------------------------------------------

--
-- Struttura della tabella `modello_veicolo`
--

CREATE TABLE `modello_veicolo` (
  `nomeModello` varchar(30) NOT NULL,
  `annoInizioProduz` year(4) NOT NULL,
  `annoFineProduz` year(4) NOT NULL,
  `descrizione` varchar(250) NOT NULL,
  `casaAutomobilistica` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `veicolo`
--

CREATE TABLE `veicolo` (
  `targa` varchar(30) NOT NULL,
  `annoImmatricolazione` year(4) NOT NULL,
  `cilindtrata` int(4) NOT NULL,
  `alimentazione` varchar(30) NOT NULL,
  `prezzo` float NOT NULL,
  `colore` varchar(30) NOT NULL,
  `numPorte` int(1) NOT NULL,
  `note` varchar(250) NOT NULL,
  `modello` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `vendere`
--

CREATE TABLE `vendere` (
  `veicolo` varchar(30) NOT NULL,
  `venditore` int(10) NOT NULL,
  `dataInserimento` date NOT NULL,
  `dataVendita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `venditore`
--

CREATE TABLE `venditore` (
  `idVenditore` int(10) NOT NULL,
  `tipoVenditore` varchar(30) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `codFiscale` varchar(20) NOT NULL,
  `ragioneSociale` varchar(30) NOT NULL,
  `pIVA` int(11) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `casa_automobilistica`
--
ALTER TABLE `casa_automobilistica`
  ADD PRIMARY KEY (`nomeCasa`);

--
-- Indici per le tabelle `modello_veicolo`
--
ALTER TABLE `modello_veicolo`
  ADD PRIMARY KEY (`nomeModello`),
  ADD KEY `casaAutomobilistica` (`casaAutomobilistica`);

--
-- Indici per le tabelle `veicolo`
--
ALTER TABLE `veicolo`
  ADD PRIMARY KEY (`targa`),
  ADD KEY `modello` (`modello`);

--
-- Indici per le tabelle `vendere`
--
ALTER TABLE `vendere`
  ADD PRIMARY KEY (`veicolo`,`venditore`),
  ADD KEY `venditore` (`venditore`);

--
-- Indici per le tabelle `venditore`
--
ALTER TABLE `venditore`
  ADD PRIMARY KEY (`idVenditore`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `modello_veicolo`
--
ALTER TABLE `modello_veicolo`
  ADD CONSTRAINT `modello_veicolo_ibfk_1` FOREIGN KEY (`casaAutomobilistica`) REFERENCES `casa_automobilistica` (`nomeCasa`);

--
-- Limiti per la tabella `veicolo`
--
ALTER TABLE `veicolo`
  ADD CONSTRAINT `veicolo_ibfk_1` FOREIGN KEY (`modello`) REFERENCES `modello_veicolo` (`nomeModello`);

--
-- Limiti per la tabella `vendere`
--
ALTER TABLE `vendere`
  ADD CONSTRAINT `vendere_ibfk_1` FOREIGN KEY (`venditore`) REFERENCES `venditore` (`idVenditore`),
  ADD CONSTRAINT `vendere_ibfk_2` FOREIGN KEY (`veicolo`) REFERENCES `veicolo` (`targa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

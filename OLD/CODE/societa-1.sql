-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 22, 2021 alle 18:55
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
  `descrizione` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `casa_automobilistica`
--

INSERT INTO `casa_automobilistica` (`nomeCasa`, `annoFondazione`, `nomeFondatore`, `nazionalita`, `mail`, `sitoWeb`, `descrizione`) VALUES
('Lamborghini', 1963, 'Ferruccio Lamborghini', 'italiana', 'info@lamborghini.com', 'lamborghini.com', 'Ferruccio Lamborghini , un magnate manifatturiero italiano , ha fondato Automobili Ferruccio Lamborghini SpA nel 1963 per competere con marchi affermati, tra cui Ferrari . L\'azienda è stata notata per l\'utilizzo di un motore posteriore centrale, layout di trazione posteriore . Lamborghini è cresciuta rapidamente durante il suo primo decennio, ma le vendite sono crollate sulla scia della crisi finanziaria mondiale del 1973 e della crisi petrolifera'),
('Mercedes-Benz', 1926, 'Karl Benz', 'tedesca', 'info@mercedes-benz.it', 'mercedes-benz.it', 'Mercedes-Benz, comunemente chiamata Mercedes, è sia un marchio automobilistico tedesco che, dalla fine del 2019 in poi, una sussidiaria - come Mercedes-Benz AG - di Daimler AG. Mercedes-Benz è nota per la produzione di veicoli di lusso e veicoli commerciali.'),
('Tesla', 2003, 'Elon Musk', 'statunitense', 'info@tesla.com', 'tesla.com', 'Tesla, Inc. è una società americana di veicoli elettrici e di energia pulita con sede a Palo Alto, in California. I prodotti attuali di Tesla includono auto elettriche, accumulo di energia della batteria dalla casa alla rete, pannelli solari e tegole solari, nonché altri prodotti e servizi correlati.');

-- --------------------------------------------------------

--
-- Struttura della tabella `modello_veicolo`
--

CREATE TABLE `modello_veicolo` (
  `nomeModello` varchar(30) NOT NULL,
  `annoInizioProduz` year(4) NOT NULL,
  `annoFineProduz` year(4) DEFAULT NULL,
  `descrizione` varchar(500) NOT NULL,
  `casaAutomobilistica` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `modello_veicolo`
--

INSERT INTO `modello_veicolo` (`nomeModello`, `annoInizioProduz`, `annoFineProduz`, `descrizione`, `casaAutomobilistica`) VALUES
('300 CE-24 Cabrio', 1992, 1994, 'La gamma di modelli della station wagon comprende inizialmente motorizzazioni con una fascia di potenza che spazia dai 53 kW (72 CV) della 200 TD fino ai 138 kW (182 CV) della 300 TE. La gamma di modelli si differenzia in dettaglio dalle berline come segue: per quanto riguarda la Serie 124, per esempio, il modello 300 TD TURBO, equipaggiato con il sei cilindri turbodiesel OM 603 D 30 A da 3,0 litri con 105 kW (143 CV) di potenza, è disponibile esclusivamente nella versione station wagon.', 'Mercedes-Benz'),
('Classe A AMG 45S', 2019, NULL, 'La Mercedes-AMG A 45 S è la prima compatta con la mascherina a dodici lamelle verticali con profilo che si allarga nella parte bassa: un segno distintivo sinora riservato ai modelli superiori della gamma Performance AMG, che, assieme ai parafanghi dal profilo più ampio e tornito, aumenta la “presenza” della vettura.', 'Mercedes-Benz'),
('Huracan spider', 2014, NULL, 'Lamborghini Huracán è iniziata nel 2014, con la variante coupé a trazione integrale mossa dal motore a benzina 5.2 V10 aspirato da 610 CV di potenza. L’anno successivo è stata introdotta la Lamborghini Huracán Spyder, seguita nel 2016 dalla versione RWD a trazione posteriore da 580 CV di potenza.', 'Lamborghini'),
('Model X', 2015, NULL, 'La Tesla Model X è un crossover di lusso completamente elettrico di medie dimensioni realizzato da Tesla, Inc. Il veicolo è notevole in quanto utilizza porte ad ala di falco per l\'accesso dei passeggeri.  Il modello X è stato sviluppato dal full-size sedan piattaforma della Tesla Model S.', 'Tesla');

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
  `note` varchar(500) NOT NULL,
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

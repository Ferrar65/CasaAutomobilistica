-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 24, 2021 alle 18:32
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
('Bentley', 1919, 'Walter Owen Bentley', 'britannica', 'info@bentley.com', 'bentley.com', 'La Bentley è una storica azienda automobilistica britannica di autovetture di prestigio fondata nel 1919 da Walter Owen Bentley a Cricklewood, nei dintorni di Londra, nonché uno dei principali fornitori della Casa Reale inglese e vincitrice della 24 Ore di Le Mans nel 1924, 1927, 1928, 1929, 1930 e 2003.'),
('Chevrolet', 1911, 'Louis Chevrolet', 'statunitense', 'info@chevrolet.com', 'chevrolet.com', 'L\'azienda viene fondata nel Michigan nel 1911 da Louis Chevrolet, pilota svizzero, e da William C. Durant, fondatore della General Motors dalla quale era stato estromesso a causa dei debiti. '),
('Ford', 1903, 'Henry Ford', 'statunitense', 'info@ford.com', 'ford.com', 'Ford Motor Company è una casa automobilistica statunitense, fondata da Henry Ford a Dearborn nel 1903. È nota per aver utilizzato per la prima volta la catena di montaggio e il nastro trasportatore, in seguito adottati da numerose altre aziende e tuttora usati nelle industrie moderne. '),
('Lamborghini', 1963, 'Ferruccio Lamborghini', 'italiana', 'info@lamborghini.com', 'lamborghini.com', 'Ferruccio Lamborghini , un magnate manifatturiero italiano , ha fondato Automobili Ferruccio Lamborghini SpA nel 1963 per competere con marchi affermati, tra cui Ferrari . L\'azienda è stata notata per l\'utilizzo di un motore posteriore centrale, layout di trazione posteriore . Lamborghini è cresciuta rapidamente durante il suo primo decennio, ma le vendite sono crollate sulla scia della crisi finanziaria mondiale del 1973 e della crisi petrolifera'),
('Maserati', 1914, 'Alfieri Maserati', 'italiana', 'info@maserati.com', 'maserati.com', 'Maserati è un\'azienda italiana produttrice di automobili sportive di lusso fondata a Bologna, oggi con sede a Modena e per lungo tempo impegnata in differenti categorie automobilistiche grazie alla propria Squadra Corse.'),
('Mercedes-Benz', 1926, 'Karl Benz', 'tedesca', 'info@mercedes-benz.it', 'mercedes-benz.it', 'Mercedes-Benz, comunemente chiamata Mercedes, è sia un marchio automobilistico tedesco che, dalla fine del 2019 in poi, una sussidiaria - come Mercedes-Benz AG - di Daimler AG. Mercedes-Benz è nota per la produzione di veicoli di lusso e veicoli commerciali.'),
('Nissan', 1933, 'Yoshisuke Aikawa', 'giapponese', 'info@nissan.it', 'nissan.it', 'La Nissan Motor Corporation, Ltd. abbreviato in Nissan, è una casa automobilistica multinazionale giapponese con sede a Nishi-ku, Yokohama. L\'azienda è presente sul mercato automobilistico con i marchi Nissan, Infiniti e Datsun.'),
('Porsche', 1931, 'Ferdinand Porsche', 'tedesca', 'info@porsche.com', 'porsche.com', 'Porsche è una casa automobilistica tedesca con sede presso il quartiere Zuffenhausen della città di Stoccarda. Il capitale sociale dal 2012 è interamente posseduto da Volkswagen.'),
('Subaru', 1953, 'Kenji Kita', 'giapponese', 'info@subaru.com', 'subaru.com', 'Subaru è la parola giapponese per l\'ammasso stellare delle Pleiadi che sono anche raffigurate nel logo della compagnia. Le Pleiadi, note anche come \"Le sette sorelle\", conglobano sette stelle principali dell\'ammasso visibili a occhio nudo.\r\nLe stelle del marchio Subaru sono solo sei (una grande e cinque piccole), e rappresentano le cinque aziende che dopo la seconda guerra mondiale si unirono per formare un\'unica grande compagnia.'),
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
('911 GT3', 2011, NULL, 'La Porsche 911 GT3 è la versione “corsaiola”, con motore aspirato da 476 CV, trazione posteriore, assetto ribassato con sospensioni attive e peso ridotto rispetto alle sorelle: è efficacissima anche in pista, ma per sfruttarla a fondo bisogna essere piloti esperti.', 'Porsche'),
('Bentayga', 2016, NULL, 'La Bentley Bentayga è un SUV di lusso prodotto dalla casa automobilistica inglese Bentley a partire dal 2016. Senza contare la fuoriserie Dominator del 1996, si tratta del primo SUV realizzato dalla casa britannica, e prende il nome da una particolare formazione rocciosa nelle Isole Canarie, la Roque Bentayga.', 'Bentley'),
('Camaro', 1967, NULL, 'La Chevrolet Camaro è una \"pony car\" costruita nel nord America dalla casa automobilistica statunitense Chevrolet, facente parte del gruppo General Motors, presentata il 26 settembre 1966 come modello del 1967, fu progettata per competere con la Ford Mustang.', 'Chevrolet'),
('Classe A AMG 45S', 2019, NULL, 'La Mercedes-AMG A 45 S è la prima compatta con la mascherina a dodici lamelle verticali con profilo che si allarga nella parte bassa: un segno distintivo sinora riservato ai modelli superiori della gamma Performance AMG, che, assieme ai parafanghi dal profilo più ampio e tornito, aumenta la “presenza” della vettura.', 'Mercedes-Benz'),
('Continental GT', 2003, NULL, 'La Bentley Continental GT è una coupé gran turismo 2+2 prodotta dalla Bentley dal maggio 2003. Nel 2011 ne è stata presentata la seconda serie e nel 2018 la terza.', 'Bentley'),
('F-150', 1948, NULL, 'Ford F-150 è il pick-up full-size best-seller nella sua categoria che vanta oltre 10 milioni di test effettuati da parte di tutti coloro che l’hanno guidato nel corso dei decenni. Oggi, Ford F-150 è migliorato in termini di potenza, efficienza, comfort, funzionalità e tecnologia, per qualsiasi necessità di lavoro e di viaggio. Il Gruppo Cavauto importa e distribuisce Ford F-150 in Italia.', 'Ford'),
('Fiesta', 1976, NULL, 'Ford Motor Company è una casa automobilistica statunitense, fondata da Henry Ford a Dearborn nel 1903. È nota per aver utilizzato per la prima volta la catena di montaggio e il nastro trasportatore, in seguito adottati da numerose altre aziende e tuttora usati nelle industrie moderne.', 'Ford'),
('Focus', 1998, NULL, 'La Ford Focus è un\'autovettura di segmento C prodotta dalla casa automobilistica statunitense Ford a partire dal 1998, in sostituzione della Ford Escort. Nel 2018 è giunta alla quarta serie ed è stata prodotta soprattutto in versione berlina, familiare e crossover.', 'Ford'),
('Granturismo', 2007, 2020, 'La Maserati GranTurismo è un\'autovettura coupé presentata dalla casa automobilistica italiana Maserati durante il Salone dell\'automobile di Ginevra 2007 e prodotta dal medesimo anno.', 'Maserati'),
('GTR R34', 1999, 2002, 'La Nissan Skyline GT-R è un\'autovettura prodotta dalla casa automobilistica nipponica Nissan a partire dal 1969 sino al 1973 e in seguito dal 1989 al 2002 quando è stata sostituita dalla Nissan GT-R. Fa parte della serie Skyline, nome utilizzato dalla Nissan sin dal 1957 e comprendente vari tipi di automobile di classe \"media\".', 'Nissan'),
('Huracan spider', 2014, NULL, 'Lamborghini Huracán è iniziata nel 2014, con la variante coupé a trazione integrale mossa dal motore a benzina 5.2 V10 aspirato da 610 CV di potenza. L’anno successivo è stata introdotta la Lamborghini Huracán Spyder, seguita nel 2016 dalla versione RWD a trazione posteriore da 580 CV di potenza.', 'Lamborghini'),
('Levante', 2016, NULL, 'La Maserati Levante (codice progetto M161) è la prima autovettura di tipo SUV di lusso prodotta a partire dal 2016 dalla casa automobilistica italiana Maserati, inoltre è il primo SUV costruito in assoluto in tutta la sua storia.', 'Maserati'),
('Model 3', 2017, NULL, 'La Model 3 è progettata per garantire massime prestazioni, con Dual Motor AWD, accelerazione rapida, autonomia elevata e ricarica veloce.', 'Tesla'),
('Model X', 2015, NULL, 'La Tesla Model X è un crossover di lusso completamente elettrico di medie dimensioni realizzato da Tesla, Inc. Il veicolo è notevole in quanto utilizza porte ad ala di falco per l\'accesso dei passeggeri.  Il modello X è stato sviluppato dal full-size sedan piattaforma della Tesla Model S.', 'Tesla'),
('Model Y', 2020, NULL, 'La Tesla Model Y è una Crossover SUV a 5 porte di segmento J a propulsione elettrica dotata di batteria agli ioni di litio ricaricabile, prodotta dall\'azienda californiana Tesla da gennaio 2020.', 'Tesla'),
('Qashqai', 2006, NULL, 'Questa Nissan Qashqai col frontale dai tratti marcati, dominato dalla mascherina a “U” che entra nel paraurti e dagli spigolosi fari a led, continua a essere una delle più apprezzate crossover, per l’abitacolo accogliente e rifinito con apprezzabile cura, la buona capienza del baule, specie col divano abbattuto (1598 litri), e l’elevato livello di comfort.', 'Nissan'),
('Spark', 2009, 2016, 'La Chevrolet Spark è un\'utilitaria compatta, prodotta dal 2009 al 2016, dalla divisione coreana della casa automobilistica americana Chevrolet, come erede del modello Matiz.', 'Chevrolet'),
('Taycan', 2019, NULL, 'Alla vista della nuova Taycan Cross Turismo, si mostra con un sorriso che esprime il massimo ... Porsche - background Porsche - Taycan 4 Cross Turismo.', 'Porsche'),
('Urus', 2018, NULL, 'Lamborghini Urus è il primo Super Sport Utility Vehicle del mondo, creato per unire l\'anima di una supersportiva con le funzionalità di un SUV.', 'Lamborghini'),
('WRX STI', 1994, NULL, 'La Subaru WRX STI è una vistosa berlina sportiva con tanto di “ala” sul cofano posteriore, grazie al 2.5 turbo da 300 CV e alla sofisticata trazione integrale offre prestazioni, tenuta di strada e guidabilità di primo piano; da sportiva “dura e pura” anche il cambio manuale (un po\' troppo contrastato negli innesti)', 'Subaru');

-- --------------------------------------------------------

--
-- Struttura della tabella `veicolo`
--

CREATE TABLE `veicolo` (
  `targa` varchar(30) NOT NULL,
  `annoImmatricolazione` year(4) NOT NULL,
  `cilindtrata` int(4) DEFAULT NULL,
  `alimentazione` varchar(30) NOT NULL,
  `prezzo` float NOT NULL,
  `colore` varchar(30) NOT NULL,
  `numPorte` int(1) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `modello` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `veicolo`
--

INSERT INTO `veicolo` (`targa`, `annoImmatricolazione`, `cilindtrata`, `alimentazione`, `prezzo`, `colore`, `numPorte`, `note`, `modello`) VALUES
('GK555RE', 2020, NULL, 'elettrico', 86471, 'rosa', 4, 'nuova', 'Taycan'),
('HG013LC', 2020, 3500, 'benzina', 45230, 'nero', 4, 'nuovo', 'F-150'),
('HO436PQ', 1987, 2962, 'benzina', 65678, 'azzurro opaco', 2, 'interamente pezzi originali', '300 CE-24 Cabrio'),
('JJ007JB', 2020, 1991, 'benzina', 61140, 'rosso scarlatto', 5, 'nuova', 'Classe A AMG 45S'),
('JK576QW', 2015, 1400, 'gasolio', 27700, 'grigio', 5, 'usata, come nuova', 'Qashqai'),
('JS995HT', 2020, 2980, 'gasolio', 82400, 'bianco', 5, 'nuovo', 'Levante'),
('KZ035CX', 2015, NULL, 'elettrico', 99990, 'bianco', 5, 'graffio sul cofano', 'Model X'),
('LA333SF', 2017, 5950, 'benzina', 217500, 'beige', 5, 'nuovo', 'Bentayga'),
('LF164GD', 2019, 4244, 'benzina', 120000, 'grigio', 2, 'tutti pezzi originali', 'Granturismo'),
('LG242CC', 2016, NULL, 'elettrico', 100000, 'nero opaco', 5, 'nuova', 'Model X'),
('LY457PC', 2012, 3996, 'benzina', 134500, 'bianco', 2, 'usata, qualche graffio.', '911 GT3'),
('MM454JK', 2021, 3500, 'benzina', 50600, 'blu', 4, 'nuovo', 'F-150'),
('MV402OA', 2019, 1500, 'gasolio', 24500, 'blu elettrico', 5, 'nuovo', 'Focus'),
('NE245PK', 2014, 1000, 'gasolio', 4000, 'bianco', 5, 'usata', 'Focus'),
('QQ349PL', 2020, 1400, 'gasolio', 35600, 'bianco', 5, 'nuova', 'Qashqai'),
('RC997GA', 2019, NULL, 'elettrico', 86471, 'arancione', 4, 'usata, come nuovo', 'Taycan'),
('RQ989AB', 1999, 2560, 'benzina', 95000, 'bianco', 2, 'usata, come nuova', 'GTR R34'),
('RT005FG', 2020, NULL, 'elettrico', 48990, 'verde lime', 5, 'nuova', 'Model 3'),
('RY068LL', 2015, 2400, 'benzina', 46590, 'blu', 5, 'usata, come nuova.', 'WRX STI'),
('SB204LE', 2017, 5950, 'benzina', 203000, 'beige', 5, 'usato, come nuovo', 'Bentayga'),
('SF202CA', 2012, 1000, 'benzina', 3500, 'blu', 5, 'usata', 'Spark'),
('TP445YP', 2018, NULL, 'elettrico', 45690, 'grigio', 5, 'un cerchione rigato', 'Model 3'),
('TT909HF', 2019, 1991, 'benzina', 63140, 'grigio metallizzato', 5, 'usata, come nuova', 'Classe A AMG 45S'),
('UI003LA', 2016, 1000, 'benzina', 20000, 'rosso porpora', 5, 'usata', 'Fiesta'),
('UT333HF', 2019, 3996, 'benzina', 207999, 'giallo', 5, 'nuova', 'Urus'),
('VC266LC', 2017, 2440, 'benzina', 51300, 'bianco', 5, 'con adesivi', 'WRX STI'),
('VD245LL', 2015, 6160, 'benzina', 42300, 'giallo', 2, 'usato, come nuovo', 'Camaro'),
('VV567CA', 2018, 5950, 'benzina', 220000, 'blu', 2, 'nuovo', 'Continental GT'),
('WE456TG', 2016, 3996, 'benzina', 176855, 'nero', 2, 'usato, come nuovo', '911 GT3'),
('YT606BG', 2021, NULL, 'elettrico', 63000, 'blu elettrico', 5, 'nuova', 'Model Y'),
('YY867ZZ', 2020, 3996, 'benzina', 195000, 'grigio', 5, 'graffio sullo specchietto', 'Urus'),
('ZF444AA', 2020, 6160, 'benzina', 62400, 'grigio', 2, 'nuovo', 'Camaro'),
('ZF678CT', 2017, 5204, 'benzina', 229591, 'rosso', 2, 'nuova', 'Huracan spider'),
('ZG932SS', 2020, 4244, 'benzina', 125000, 'blu', 2, 'nuovo', 'Granturismo'),
('ZZ999ZZ', 2017, 2980, 'gasolio', 73900, 'nero', 5, 'graffio sul fianco destro', 'Levante');

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

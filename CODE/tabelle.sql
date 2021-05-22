CREATE TABLE CASA_AUTOMOBILISTICA (
  nomeCasa varchar(30) NOT NULL,
  annoFondazione year(4) NOT NULL,
  nomeFondatore varchar(30) NOT NULL,
  nazionalita enum('afghana','albanese','algerina','andorrana','angolana','argentina','armena','australiana','austriaca','azera','bahamense','bahreinita','barbadiana','belga','bengalese','beninese','bhutanese','bielorussa','birmana','boliviana','bosniaca','botswana','brasiliana','britannica','bruneiana','bulgara','burkinabÃ©','burundese','cambogiana','camerunense','canadese','capoverdiana','ceca','centrafricana','ciadiana','cilena','cinese','cingalese','cipriota','colombiana','comoriana','congolese','costaricana','croata','cubana','danese','dominicana','ecuadoregna','egiziana','emiratina','eritrea','estone','etiope','figiana','filippina','finlandese','francese','gabonese','gambiana','georgiana','ghanese','giamaicana','giapponese','gibutiana','giordana','greca','grenadina','guatemalteca','guineana','guyanese','haitiana','honduregna','indiana','indonesiana','	irachena','iraniana','irlandese','islandese','israeliana','italiana','ivoriana','	kazka','	keniana','kirgisa','	kosovara','kuatiana','laotiana','lesothiana','lettone','libanese','liberiana','libica','liechtensteiniana','lituana','lussemburghese','macedone','malawiana','maldiviana','malesiana','malgascia','maliana','maltese','marocchina','marshallese','mauritana','mauriziana','messicana','micronesiana','moldava','monegasca','mongola','montenegrina','mozambicana','namibiana','nauruana','neozelandese','nepalese','nigeriana','nigerina','nordcoreana','norvegese','olandese','	omanita','pachistana','palestinese','panamense','papuana','paraguaiana','peruviana','polacca','portoghese','qatariota','romena','ruandese','russa','salvadoregna','samoana','sanmarinese','saudita','senegalese','serba','sierraleonese','singaporiana','siriana','slovacca','slovena','somala','spagnola','statunitense','sudafricana','sudanese','sudcoreana','svedese','svizzera','tagika','tailandese','taiwanese','tanzaniana','tedesca','togolese','tongana','tunisina','turca','turkmena','ucraina','ugandese','ungherese','uruguaiana','uzbeka','vanuatuana','vaticana','venezuelana','vietnamita','	yemenita','zambese','zimbabwese') NOT NULL,
  mail varchar(30) NOT NULL,
  sitoWeb varchar(30) NOT NULL,
  descrizione varchar(500) NOT NULL,
  PRIMARY KEY (nomeCasa)
)

CREATE TABLE MODELLO_VEICOLO (
  nomeModello varchar(30) NOT NULL,
  annoInizioProduz year(4) NOT NULL,
  annoFineProduz year(4) NOT NULL,
  descrizione varchar(500) NOT NULL,
  casaAutomobilistica VARCHAR(30) NOT NULL,
  PRIMARY KEY (nomeModello),
  FOREIGN KEY (casaAutomobilistica) REFERENCES CASA_AUTOMOBILISTICA(nomeCasa)
)

CREATE TABLE VEICOLO (
  targa varchar(30) NOT NULL,
  annoImmatricolazione year(4) NOT NULL,
  cilindtrata int(4) NOT NULL,
  alimentazione varchar(30) NOT NULL,
  prezzo float(7) NOT NULL,
  colore varchar(30) NOT NULL,
  numPorte int(1) NOT NULL,
  note VARCHAR(500) NOT NULL,
  modello VARCHAR(30) NOT NULL,
  PRIMARY KEY (targa),
  FOREIGN KEY (modello) REFERENCES MODELLO_VEICOLO(nomeModello)
)


CREATE TABLE VENDITORE (
  idVenditore INT(10) NOT NULL,
  tipoVenditore VARCHAR(30) NOT NULL,
  nome VARCHAR(30) NOT NULL,
  cognome VARCHAR(30) NOT NULL,
  codFiscale VARCHAR(20) NOT NULL,
  ragioneSociale VARCHAR(30) NOT NULL,
  pIVA INT(11) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  PRIMARY KEY (idVenditore)
)

CREATE TABLE VENDERE (
  veicolo VARCHAR(30) NOT NULL,
  venditore int(10) NOT NULL,
  dataInserimento DATE NOT NULL,
  dataVendita DATE NOT NULL,
  PRIMARY KEY (veicolo, venditore),
  FOREIGN KEY (venditore) REFERENCES VENDITORE(idVenditore),
  FOREIGN KEY (veicolo) REFERENCES VEICOLO(targa)
)

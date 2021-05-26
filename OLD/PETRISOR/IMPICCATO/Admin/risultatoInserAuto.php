<?php
include "funzioni.php";
$dati=[
  'casaA' => $_POST['casaA'],
  'annoFond'=> $_POST['annoFond'],
  'nomeFond'=>$_POST['nomeFond'],
  'Nazionalita'=>$_POST['Nazionalita'],
  'email'=>$_POST['email'],
  'sito'=>$_POST['sito'],
  'desc'=>$_POST['desc']
  ];

  $sql = "  INSERT INTO CASA_AUTOMOBILISTICA(nomeCasa, annoFondazione, nomeFondatore, nazionalita, mail, sitoWeb, descrizione) VALUES('$dati[casaA]', '$dati[annoFond]','$dati[nomeFond]', '$dati[Nazionalita]', '$dati[email]', '$dati[sito]', '$dati[desc]'); ";
 $risultato=inserisciDati($sql);
 ?>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/IMPICCATO/styles.css">
    <title>Risultato inserimento</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if ($risultato=="true") {
            echo "Inserimento avvenuto con successso!!";
          }else {
            echo "Inserimento non avvenuto;(";
          } ?>
        </div>

      </div>

    </div>

  </body>
</html>

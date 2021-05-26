<?php
include "funzioni.php";
$dati = [
    'casaA' => $_POST['casaA'],
    'annoFond' => $_POST['annoFond'],
    'nomeFond' => $_POST['nomeFond'],
    'Nazionalita' => $_POST['Nazionalita'],
    'email' => $_POST['email'],
    'sito' => $_POST['sito'],
    'desc' => $_POST['desc'],
];

$sql = "  INSERT INTO CASA_AUTOMOBILISTICA(nomeCasa, annoFondazione, nomeFondatore, nazionalita, mail, sitoWeb, descrizione) VALUES('$dati[casaA]', '$dati[annoFond]','$dati[nomeFond]', '$dati[Nazionalita]', '$dati[email]', '$dati[sito]', '$dati[desc]'); ";
$risultato = inserisciDati($sql);
?>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="/SOCIETA/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SOCIETA/styles.css">
    <title>Risultato inserimento</title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if ($risultato == "true") {
              echo "<H1><center>Inserimento avvenuto con successso!!</h1></center>";
          } else {
              echo "<br><br><H1><center>Inserimento non avvenuto!!</h1></center>";
          } ?>
        </div>

      </div>

    </div>

  </body>
</html>

<!DOCTYPE html>
<?php
include "funzioni.php";
  $sql1 = "SELECT modello_veicolo.casaAutomobilistica, modello_veicolo.nomeModello, veicolo.targa , veicolo.prezzo FROM modello_veicolo, veicolo, vendere WHERE modello_veicolo.nomeModello = veicolo.modello AND veicolo.targa = vendere.veicolo AND vendere.dataVendita IS NULL ORDER BY modello_veicolo.casaAutomobilistica ASC";
  $datiEstratti = estraiDati($sql1);
?>

<html>
  <head>
    <title>Risultato richiesta</title>
    <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/IMPICCATO/styles.css">

  </head>
  <body>
    <h1><center>Risultato</h1><hr>
      <div class="container">
        <div class="row">
          <div class="col">
            <form  action="visualDett.php" method="post">
            <?php stampaDati($datiEstratti);//stampa dati ?>
            </form>
            <form action="/IMPICCATO/index.php" method="post">
              <br><br><button class="btn btn-primary" type="submit" name="submit" value="res" >Torna Home</button> <!--bottone per tornare alla pagina iniziale-->
            </form>
          </div>
        </div>
      </div>
  </body>
</html>

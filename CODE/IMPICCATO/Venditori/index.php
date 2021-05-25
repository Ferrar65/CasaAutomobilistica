<?php
include "funzioni.php";
$sql1 = "SELECT * FROM venditore ";
$datiEstratti = estraiDati($sql1);
   ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
      <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="/IMPICCATO/styles.css">
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col">
          <form  action="modificaVend.php" method="post">
            <center><h3>Seleziona il venditore da modificare</h3></center>
          <?php stampaDatiVend($datiEstratti);//stampa dati ?>
          </form>
          <form action="/IMPICCATO/index.php" method="post">
            <br><br><button class="btn btn-primary" type="submit" name="submit" value="res" >Torna Home</button> <!--bottone per tornare alla pagina iniziale-->
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

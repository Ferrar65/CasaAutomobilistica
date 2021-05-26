<!DOCTYPE html>
<?php
include "funzioni.php";
$sql1 =
    "SELECT modello_veicolo.casaAutomobilistica, modello_veicolo.nomeModello, veicolo.targa , veicolo.prezzo FROM modello_veicolo, veicolo, vendere WHERE modello_veicolo.nomeModello = veicolo.modello AND veicolo.targa = vendere.veicolo AND vendere.dataVendita IS NULL ORDER BY modello_veicolo.casaAutomobilistica ASC";
$datiEstratti = estraiDati($sql1);
?>

<html>
  <head>
    <title>Risultato richiesta</title>
    <link rel="stylesheet" href="/SOCIETA/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SOCIETA/styles.css">

    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <div class="container-fluid">
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
          <ul class="navbar-nav me-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/SOCIETA/index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/SOCIETA/credits.php
              ">Crediti</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/SOCIETA/venditaVeicoli/index.php">Shop</a>
            </li>
          </ul>
        </div>
        <div class="mx-auto order-0">
          <a class="navbar-brand mx-auto" href="/SOCIETA/index.php">SHOP AUTOMOBILI ONLINE</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="/SOCIETA/Admin/index.php">Admin</a>
            </li>
            </li>
          </ul>
        </div>
      </div>
    </nav>

  </head>
  <body>
      <div class="container">
        <div class="row">
          <div class="col">
            <form  action="visualDett.php" method="post">
            <?php stampaDati($datiEstratti);
//stampa dati
?>
            </form>
          </div>
        </div>
      </div>
  </body>
</html>

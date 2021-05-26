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
      <link rel="stylesheet" href="/SOCIETA/bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="/SOCIETA/styles.css">
  </head>
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
  <body>
    <div class="container">
      <div class="row">
        <div class="col">
          <form  action="modificaVend.php" method="post"><br><br>
          <?php stampaDatiVend($datiEstratti);
//stampa dati
?>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

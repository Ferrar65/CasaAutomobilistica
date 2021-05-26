<?php
include "funzioni.php"; ?>

<!DOCTYPE html>
<html>
  <head>

    <title>Ciao mondo</title>
    <link rel="stylesheet" href="/SOCIETA/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SOCIETA/styles.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <div class="container-fluid">
        <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
          <ul class="navbar-nav me-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">Home</a>
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
          <a class="navbar-brand mx-auto" href="index.php">SHOP AUTOMOBILI ONLINE</a>
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
    <?php
    $targa = $_POST['val'];

    $sql = "SELECT modello_veicolo.casaAutomobilistica, modello_veicolo.nomeModello, veicolo.targa , veicolo.prezzo, veicolo.annoImmatricolazione, veicolo.cilindrata, veicolo.alimentazione, veicolo.numPorte, veicolo.note FROM modello_veicolo, veicolo WHERE modello_veicolo.nomeModello = veicolo.modello AND veicolo.targa ='$targa'";
    $datiEstratti = estraiDati($sql);
    $sql1 = "SELECT immagini FROM veicolo WHERE targa = '$targa'";
    $immagine = estraiDati($sql1);
    ?>
     <div class="container">
       <div class="row">
         <div class="col">
           <style>
#borderimg {
  border: 10px solid transparent;
  padding: 15px;
  border-image: url(border.png) 30 stretch;
}
</style>

           <?php stampaDatisimp($datiEstratti);
//stampa dati
?>
           <br>
           <?php echo '<center><img width="900" height="600" src="data:image/jpeg;base64 ,' .
               base64_encode($immagine[0]['immagini']) .
               '"/></center>'; ?>
           <form action="index.php" method="post">
           </form>
         </div>
       </div>
     </div>

  </body>
</html>

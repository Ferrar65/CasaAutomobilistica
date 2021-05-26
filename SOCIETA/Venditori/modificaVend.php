<?php
include "funzioni.php"; ?>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="/SOCIETA/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/SOCIETA/styles.css">
    <meta charset="utf-8">
    <title></title>
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
          <br><center><h3>Venditore Scelto</h3></center>
          <?php
          $prova = $_POST['val'];
          $sql1 = "SELECT * FROM venditore WHERE idVenditore = '$prova'";
          $datiEstratti = estraiDati($sql1);
          stampaDatisimp($datiEstratti);
          ?>
           <br>
           </div>
        </div>
           <div class="row">
              <center><h3>Modifica venditore</h3></center>
             <div class="col">


               <style>
               .button {
                 border: none;
                 color: white;
                 padding: 15px 32px;
                 text-align: center;
                 text-decoration: none;
                 display: inline-block;
                 font-size: 16px;
                 margin: 4px 2px;
                 cursor: pointer;
               }

               .button3 {width: 100%;}
               * {
                 box-sizing: border-box;
               }
               .column {
                 float: left;
                 width: 50%;
                 padding: 10px;
                 height: 300px;
               }
               .row:after {
                 content: "";
                 display: table;
                 clear: both;
               }

               </style>



              <form method="post" action="RisultatoAggi.php">
            <h3 >tipoVenditore</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="tipoVend" required=" ">
            <h3 >nome venditore</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="nomeVend" required=" ">
            <h3 >cognome venditore</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="cognomeVend" required=" ">
            <h3 >codFiscale</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="codFisc" required=" ">
            <h3 >ragioneSociale</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="ragSoc" required=" ">
            <h3 >pIva</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="pIva" required=" ">
            <h3 >telefono</h3>
            <input placeholder="Inserisci nome" class="form-control" type="text" name="tel" required=" ">
            <br><br>

             <?php echo "<button class=\"btn btn-primary\"  type=\"submit\" name=\"submit\" value=\"$prova\" >Invia</button>"; ?>
               <input class="btn btn-primary" type="reset" name="reset">
            </form>
             </div>
             <div class="col">
             </div>

           </div>

    </div>




  </body>
</html>

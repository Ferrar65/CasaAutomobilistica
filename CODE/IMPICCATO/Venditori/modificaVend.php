<?php
include "funzioni.php";
 ?>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/IMPICCATO/styles.css">
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col">
          <h3>Venditore Scelto</h3>
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
            
              <form method="post" action="RisultatoAggi.php">
            <h3 >idVenditore</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="idVend" required=" ">
            <h3 >tipoVenditore</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="tipoVend" required=" ">
            <h3 >nome venditore</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="nomeVend" required=" ">
            <h3 >cognome venditore</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="cognomeVend" required=" ">
            <h3 >codFiscale</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="codFisc" required=" ">
            <h3 >ragioneSociale</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="ragSoc" required=" ">
            <h3 >pIva</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="pIva" required=" ">
            <h3 >telefono</h3>
            <input placeholder="Inserisci nome" class="rounded" type="text" name="tel" required=" ">
            <br><br>

             <?php echo "<button class=\"rounded\"  type=\"submit\" name=\"submit\" value=\"$prova\" >Invia</button>"; ?>
               <input class="rounded" type="reset" name="reset">
            </form>
             </div>
             <div class="col">
               <form action="/IMPICCATO/Venditori/index.php" method="post">
                 <br><br><button class="btn btn-primary" type="submit" name="submit" value="res" >Torna ai Venditori</button> <!--bottone per tornare alla pagina iniziale-->
               </form>
             </div>

           </div>

    </div>




  </body>
</html>

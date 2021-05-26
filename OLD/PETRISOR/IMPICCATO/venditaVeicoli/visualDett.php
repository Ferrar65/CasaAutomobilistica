<?php
include "funzioni.php";

 ?>

<!DOCTYPE html>
<html>
  <head>

    <title>Ciao mondo</title>
    <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/IMPICCATO/styles.css">
  </head>
  <body>
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
           <?php   stampaDatisimp($datiEstratti);//stampa dati ?>
           <br>
           <?php
          // var_dump(base64_encode($immagine['immagini']));
          // echo "<img src=".$immagine['immagini']."/>";
          // var_dump($immagine);
          echo '<img src="data:image/jpeg;base64,'.base64_encode( $immagine[0]['immagini'] ).'"/>';




            ?>
           <form action="index.php" method="post">
             <button class="btn btn-primary" type="submit" name="submit" value="res" >Torna indietro</button><!--bottone per tornare alla pagina iniziale-->
           </form>
         </div>
       </div>
     </div>

  </body>
</html>

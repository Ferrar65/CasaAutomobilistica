<?php
include "funzioni.php";

$dati=[
  'idVend' => $_POST['idVend'],
  'tipoVend'=> $_POST['tipoVend'],
  'nomeVend'=>$_POST['nomeVend'],
  'cognomeVend'=>$_POST['cognomeVend'],
  'codFisc'=>$_POST['codFisc'],
  'ragSoc'=>$_POST['ragSoc'],
  'pIva'=>$_POST['pIva'],
  'tel'=>$_POST['tel']

  ];
  $prova1 = $_POST["submit"];
  $prova2 = $_POST["idVend"];
  $sql = "UPDATE VENDITORE SET idVenditore = '$dati[idVend]',tipoVenditore = '$dati[tipoVend]', nome = '$dati[nomeVend]',cognome = '$dati[cognomeVend]',codFiscale = '$dati[codFisc]',ragioneSociale = '$dati[ragSoc]',pIVA = '$dati[pIva]', telefono = '$dati[tel]' WHERE idVenditore = '$prova1'";
 inserisciDati($sql);
 $sql1 = "SELECT * FROM VENDITORE WHERE idVenditore = '$prova2'";
 $datiEstratti = estraiDati($sql1);

 ?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
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
          <?php stampaDatisimp($datiEstratti);//stampa dati ?>
          </form>

        </div>
        <div class="row">
          <div class="col">
            <form action="/IMPICCATO/Venditori/index.php" method="post">
              <br><br><button class="btn btn-primary" type="submit" name="submit" value="res" >Torna ai Venditori</button> <!--bottone per tornare alla pagina iniziale-->
            </form>
          </div>

        </div>
      </div>
    </div>
  </body>
</html>

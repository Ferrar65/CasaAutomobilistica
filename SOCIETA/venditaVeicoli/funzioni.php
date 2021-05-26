<?php
function estraiDati($sql)
{
    //funzione estrazione dati

    //connessione db
    $connessione = mysqli_connect("localhost", "root", "", "societa");
    //esecuzione query
    $risultatoQ = mysqli_query($connessione, $sql);
    while ($riga = mysqli_fetch_assoc($risultatoQ)) {
        $datiEstratti[] = $riga;
    }
    mysqli_close($connessione);
    return $datiEstratti;
}

function stampaDati($dati)
{
    //funzione stampa datti in tabella
    $tot = "";
    echo "<hr><table class=\"table table-dark\">";
    echo "<thead><tr>";
    foreach ($dati as $chiave => $elemento) {
        //stampa nomi tabelle
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            echo "<th class=\" text-info\"> $key </th>";
        }
        echo "<td></td>";
        echo "</tr>";
        break;
    }

    foreach ($dati as $chiave => $elemento) {
        //stampa valori
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            if (!isset($value)) {
                echo "<td class=\" text-success\"> - </td>";
            } else {
                echo "<td class=\" text-success\"> $value </td>";
            }
            if ($key == "targa") {
                $tot = $value;
            }
        }

        echo "<td><button class=\"btn btn-primary\"  class=\"w3-btn w3-round-xlarge\" type=\"submit\" name=\"val\" value=" .
            $tot .
            "><i class=\"fas fa-book-open\" style=\"color: Mediumslateblue;\"></i></button></td>";
    }
    echo "</table><hr>";
}
function stampaDatiVend($dati)
{
    //funzione stampa datti in tabella
    $tot = "";
    echo "<hr><table class=\"table table-dark\">";
    echo "<thead><tr>";
    foreach ($dati as $chiave => $elemento) {
        //stampa nomi tabelle
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            echo "<th class=\" text-info\"> $key </th>";
        }
        echo "<td></td>";
        echo "</tr>";
        break;
    }

    foreach ($dati as $chiave => $elemento) {
        //stampa valori
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            if (!isset($value)) {
                echo "<td class=\" text-success\"> - </td>";
            } else {
                echo "<td class=\" text-success\"> $value </td>";
            }
            if ($key == "idVenditore") {
                $tot = $value;
            }
        }

        echo "<td><button class=\"btn btn-primary\"  class=\"w3-btn w3-round-xlarge\" type=\"submit\" name=\"val\" value=" .
            $tot .
            "></button></td>";
    }
    echo "</table><hr>";
}
function stampaDatisimp($dati)
{
    //funzione stampa datti in tabella

    echo "<hr><table class=\"table table-dark\">";
    echo "<thead><tr>";
    foreach ($dati as $chiave => $elemento) {
        //stampa nomi tabelle
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            echo "<th class=\" text-info\"> $key </th>";
        }
        echo "</tr>";
        break;
    }

    foreach ($dati as $chiave => $elemento) {
        //stampa valori
        echo "<tr>";
        foreach ($elemento as $key => $value) {
            if (!isset($value)) {
                echo "<td class=\" text-success\"> - </td>";
            } else {
                echo "<td class=\" text-success\"> $value </td>";
            }
        }
    }
    echo "</table><hr>";
}
function inserisciDati($sql)
{
    //connessione db
    $connessione = mysqli_connect("localhost", "root", "", "societa");
    //esecuzione query
    $risultatiQ = mysqli_query($connessione, $sql);
    //chiusura connessione
    mysqli_close($connessione);
    if ($risultatiQ) {
        return true;
    } else {
        return false;
    }
}

?>

<?php
session_start();
// SET SESSION START WHEN NO SESSION AND VARIABLES
if (!isset($_SESSION['word'])) $_SESSION['word'] = '';
if (!isset($_SESSION['try'])) $_SESSION['try'] = [];
if (!isset($_SESSION['errors'])) $_SESSION['errors'] = 0;
if (!isset($_SESSION['result'])) $_SESSION['result'] = '';
if (!isset($_SESSION['alert'])) $_SESSION['alert'] = [];

$builtWord = '';

$authorizedCharacter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '-', ' '];

$unauthorizedCharacterWhenTry = [' ', '$'];

// FUNCTION FOR RESET ALL SESSIONS
function resetAll()
{
    $_SESSION['word'] = '';
    $_SESSION['try'] = [];
    $_SESSION['errors'] = 0;
    $_SESSION['result'] = '';
    $_SESSION['alert'] = [];
}

// FUNCTION TO SET HEADER OF PAGE
function headerLocation()
{
    header('location: game.php');
    exit();
}

//RESET ALL SESSIONS WHEN CHANGE WORD
if (isset($_GET['reset'])) {
    $word = $_SESSION['word'];
    resetAll();
    $_SESSION['word'] = $word;
    $_SESSION['alert'] = ['dark' => 'Reset completato !'];
    headerLocation();
}

if (isset($_GET['changeWord'])) {
    resetAll();
    $_SESSION['word'] = strtoupper($_POST['changeWord']);
    $_SESSION['alert'] = [];
    headerLocation();
}

// REPLACE THE WORD WITH _
$word = str_split(strtoupper($_SESSION['word']));
$try = $_SESSION['try'];

foreach ($word as $key => $letter) {
    if (in_array($letter, $try) OR $letter === '-') {
        $builtWord .= $letter;
    } elseif ($letter === ' ') {
        $builtWord .= '&emsp;';
    } else {
        $builtWord .= ' _ ';
    }
}

// IF NO _ IN RESULT, IS WIN ("HAI VINTO IMAGE")
if (strpos($builtWord, '_') === false) $_SESSION['result'] = 'win';
// IF MORE THAN 5 ERRORS IS LOST ("HAI PERSO MESSAGE")
if ($_SESSION['errors'] > 5) $_SESSION['result'] = 'lost';

if ($_SESSION['result'] === 'win') {
    $_SESSION['alert'] = ['img' => "youwin.png"];
} elseif ($_SESSION['result'] === 'lost') {
    $_SESSION['alert'] = ['img' => "gameover.png"];
}

if (!empty($_POST) && isset($_POST['try'])) {

    $letterPost = strtoupper($_POST['letter']);

    if (strlen($letterPost) > 1 OR strlen($letterPost) <= 0 OR !in_array($letterPost, $authorizedCharacter) OR $letterPost === ' ' OR $letterPost === '-') {
        // IF MORE LETTERS
        $_SESSION['alert'] = ['warning' => '<strong class="text-warning">' . $letterPost. '</strong> - Questo carattere  non è consentito, oppure hai inserito più lettere.'];
        headerLocation();
    }

    if (in_array($letterPost, $_SESSION['try'])) {
        // IF LETTER ALREADY RETURNED
        $_SESSION['alert'] = ['warning' => 'Attenzione Hai inserito questa lettera! Non ti ho rimosso punti XD'];
        headerLocation();
    } elseif (in_array($letterPost, $word)) {
        $_SESSION['try'][] = $letterPost;
        $_SESSION['alert'] = ['success' => '<strong>BRAVO</strong>, Hai trovato una nuova Lettera!'];
        headerLocation();
    } else {
        $_SESSION['try'][] = $letterPost;
        $_SESSION['alert'] = ["danger" => '<strong class="text-danger">' . $letterPost. '</strong> - Questa lettere non è presente, Sei vicino alla Morte...'];
        $_SESSION['errors']++;
        headerLocation();
    }
}

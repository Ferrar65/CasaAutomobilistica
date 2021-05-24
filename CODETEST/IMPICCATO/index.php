<html>
   <head>
      <title>Il Gioco dell'impiccato</title>
      <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
      <link href="css/style.css" rel="stylesheet">
   </head>
   <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="index.php">Il Gioco Dell'Impiccato</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarExtra" aria-controls="navbarExtra" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarExtra">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item active">
                  <a class="nav-link" href="index.php">Gioca</a>
               </li>
               <li class="nav-item ">
                  <a class="nav-link" href="rules.php">Regole</a>
               </li>
               <li class="nav-item ">
                  <a class="nav-link" href="credits.php">Crediti</a>
               </li>
            </ul>
         </div>
         <form class="form-inline">
         </form>
      </nav>
      <form method="POST" action="game.php" style="display: none" id="submitGame">
         <input type="text" id="gamemode" name="gamemode">
         <input type="text" id="phrase" name="phrase">
      </form>
      <div class="container welcome">
         <div class="row">
            <div class="col-sm">
               <br><br><br>
               <h2 class="welcome__title">IL GIOCO DELL'IMPICCATO</h2>
            </div>
         </div>
         <br><br><br>
         <div class="row">
            <div class="col-sm">
               <img class="img-fluid" src="images/logo.png">
            </div>
            <div class="col-sm">
               <h2>Regole Dell'Impiccato:</h2>
               <br>
               <p>
               <h4><strong>
                  MultiPlayer:
               </h4>
               </strong>
               L'impiccato è un gioco dove Uno dei giocatori sceglie segretamente una parola.
               L'altro tenta di indovinare la parola dichiarando una lettera a ogni turno. Se la lettera compare nella parola,
               il giocatore non perde punti, Invece se non compare perde un punto e compare la linea che tracia l'impicatto, i punti ad ogni partita sono 6, una volta terminati la partita si conclude con la perdita.
               </p>
               <h4><strong>
                  SinglePlayer:
               </h4>
               </strong>
               Se viene scelta la modalità SinglePlayer le regole rimangono invariate, ad eccezioneche la  parola viene selezionata in modo randomico da una lista di parole e non da un giocatore.
            </div>
         </div>
         <br><br><br>
         <div align="center">
            <div class="row">
               <div class="col welcome__button welcome__button--lefnwnt">
                  <a href="public/game.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">SinglePlayer</a>
               </div>
               <div class="col welcome__button welcome__button--right">
                  <a href="public/game.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">MultiPlayer</a>
               </div>
            </div>
         </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="bootstrap/js/bootstrap.min.js"></script>
      <script src="js/welcome.js"></script>
   </body>
</html>

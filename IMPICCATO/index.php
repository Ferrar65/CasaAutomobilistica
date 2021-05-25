<html>
   <head>
      <title>SHOP AUTOMOBILI ONLINE</title>
      <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="styles.css">
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
                <a class="nav-link" href="credits.php
                ">Crediti</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="tendenza.php">Shop</a>
              </li>
            </ul>
          </div>
          <div class="mx-auto order-0">
            <a class="navbar-brand mx-auto" href="#">SHOP AUTOMOBILI ONLINE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
          <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="Admin/index.html">Admin</a>
              </li>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <form method="POST" action="game.php" style="display: none" id="submitGame">
         <input type="text" id="gamemode" name="gamemode">
         <input type="text" id="phrase" name="phrase">
      </form>
      <div class="container welcome">
         <div class="row">
            <div class="col-sm">
               <br><br><br>
               <h2 class="welcome__title">Ecommerce Veicoli</h2>
            </div>
         </div>
         <br><br><br>
         <div class="row">
            <div class="col-sm">
               <img class="img-fluid" src="images/logo.png">
            </div>
            <div class="col-sm">
               <h2>Sezioni:</h2>
               <br>
               <p>
               <h4><strong>
                  Inserimento:
               </h4>
               </strong>
              Nella sezione "Inserimento" è possibile aggiungere una nuova Casa Automobilistica mediante un apposito Form.
               </p>
               <h4><strong>
                  Visualizzazione:
               </h4>
               </strong>
               Se viene scelta la modalità SinglePlayer le regole rimangono invariate, ad eccezioneche la  parola viene selezionata in modo randomico da una lista di parole e non da un giocatore.s
            </div>
         </div>
         <br><br><br>
         <div align="center">
            <div class="row">
               <div class="col welcome__button welcome__button--right">
                  <a href="public/game.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Veicoli in vendita</a>
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

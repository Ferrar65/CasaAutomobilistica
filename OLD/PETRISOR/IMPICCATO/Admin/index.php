

<?php
include "funzioni.php";
 ?>


<html>
   <head>
      <title>SHOP AUTOMOBILI ONLINE</title>
      <link rel="stylesheet" href="/IMPICCATO/bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="/IMPICCATO/styles.css">
   </head>
   <body>
      <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
          <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav me-auto">
              <li class="nav-item active">
                <a class="nav-link" href="/IMPICCATO/index.php">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/IMPICCATO/credits.php ">Crediti</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/IMPICCATO/tendenza.php">Shop</a>
              </li>
            </ul>
          </div>
          <div class="mx-auto order-0">
            <a class="navbar-brand mx-auto" href="#">SHOP AUTOMOBILI ADMIN</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
          <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="/Admin.php">Admin</a>
              </li>

            </ul>
          </div>
        </div>
      </nav>



      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



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
      </style>


      <div class="container welcome">
         <div class="row">
            <div class="col-sm">
               <br><br><br>
               <center><h2 class="welcome__title">Ecommerce Veicoli</h2></center>
            </div>
         </div>
         <br><br><br>
         <div class="row">
            <div class="col-sm">
               <img class="img-fluid" src="image/logo.jpg">


               <form action="/IMPICCATO/Venditori/index.php" method="post">
                 <br><br><br> <center><button class="btn btn-primary" type="submit" name="submit" value="res" >Modifica Venditori</button> </center><!--bottone per tornare alla pagina iniziale-->
               </form>




            </div>
            <div class="col-sm">
               <h4><strong>
                  Inserisci dati casa Automobilistica:
               </h4><br><br>
               <form action="risultatoInserAuto.php" method="post" >
                 <div class="form-row">
                   <div class="col-md-6 mb-3">
                     <label>Nome Casa:</label>
                     <input placeholder="es. Tesla" class="form-control" type="text" name="casaA" required=" ">
                     <div class="valid-feedback">
                       Il nome inserito &egrave corretto!
                     </div>
                   </div>
                   <div class="col-md-6 mb-3">
                     <label>Nome Fondatore</label>
                     <input type="text" class="form-control" name="nomeFond" placeholder="es. Giovanni Pirelli" required>
                     <div class="valid-feedback">
                       Nome fondatore &egrave corretto!
                     </div>
                   </div>
                 </div>


                 <div class="form-row">
                   <div class="col-md-6 mb-3">
                     <label>Mail</label>
                     <input type="email" placeholder="es. info@gmail.com" class="form-control" name="email" required>
                     <div class="invalid-feedback">
                       Inserisci una Email corretta.
                     </div>
                   </div>
                   <div class="col-md-3 mb-3">
                     <label>Nazionalit&agrave</label>
                     <select class="custom-select" name="Nazionalita" required>
                       <option selected disabled value="">Select</option>
                     <option value="italiana">Italiana</option>
                     <option value="statunitense">Statunitense</option>
                     <option value="tedesca">Tedesca</option>
                     <option value="francese">Francese</option>
                     <option value="britannica">Britannica</option>
                     </select>
                     <div class="invalid-feedback">
                       Inserisci una nazionalit&agrave corretta.
                     </div>
                   </div>
                   <div class="col-md-3 mb-3">
                     <label>Anno Fondazione:</label>
                     <input type="number" class="form-control" name="annoFond" min="1700" max="2021" required>
                     <div class="invalid-feedback">
                       Inserisci un'anno di fondazione valido.
                     </div>
                   </div>
                 </div>




                 <div class="form-row">
                   <div class="col-md-12 mb-3">
                     <label >Sito Web:</label>
                     <input type="url" class="form-control" name="sito" placeholder="https://www.pirelli.com/" required>
                     <div class="valid-feedback">
                       Il sito web &egrave corretto!
                     </div>
                     <div class="invalid-feedback">
                       Assicurati di inserire un link Http/Https
                     </div>
                   </div>
                 </div>

                <h3 >Descrizione</h3>
                <textarea placeholder="Inserisci descrizione" class="form-control" type="text" name="desc" required=" "></textarea>
                <p></p>
                 <center><button class="btn btn-primary" type="submit">Carica Dati</button></center>
               </form>






               <script>
               // Example starter JavaScript for disabling form submissions if there are invalid fields
               (function() {
                 'use strict';
                 window.addEventListener('load', function() {
                   // Fetch all the forms we want to apply custom Bootstrap validation styles to
                   var forms = document.getElementsByClassName('needs-validation');
                   // Loop over them and prevent submission
                   var validation = Array.prototype.filter.call(forms, function(form) {
                     form.addEventListener('submit', function(event) {
                       if (form.checkValidity() === false) {
                         event.preventDefault();
                         event.stopPropagation();
                       }
                       form.classList.add('was-validated');
                     }, false);
                   });
                 }, false);
               })();
               </script>
               </div>
            </div>
         </div>








    <!--  <div class="container">
            		<div id="carouselThreeColumn" class="carousel slide" data-ride="carousel">
            		  <ol class="carousel-indicators">
            			<li data-target="#carouselThreeColumn" data-slide-to="0" class="active"></li>
            			<li data-target="#carouselThreeColumn" data-slide-to="1"></li>
            			<li data-target="#carouselThreeColumn" data-slide-to="2"></li>
            		  </ol>
            		  <div class="carousel-inner">
            			<div class="carousel-item active">
            				<div class="row">
                      <div class="col-xl-4 p-1">
                      <div class="card">
                      <img src="image/1.jpg" class="w-100">
                      <div class="card-body">
                      <h5 class="card-title">   Product Name   </h5>
                    <p class="card-text">   Product Description   </p>
                    <a href="image/1.jpg" class="btn btn-outline-primary w-100">Show</a>
                      </div></div></div>
            				</div>
            			</div>
                </div>
              </div>
            </div>-->












          <!-- Optional JavaScript -->
          <!-- jQuery first, then Popper.js, then Bootstrap JS -->
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </body>
      </html>








      <form method="POST" action="game.php" style="display: none" id="submitGame">
         <input type="text" id="gamemode" name="gamemode">
         <input type="text" id="phrase" name="phrase">
      </form>


      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="bootstrap/js/bootstrap.min.js"></script>
      <script src="js/welcome.js"></script>

   </body>
</html>

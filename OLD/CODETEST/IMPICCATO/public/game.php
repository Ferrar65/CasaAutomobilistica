<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>IL GIOCO DELL'IMPICCATO</title>
   </head>
   <body>
      <body style="background-color: #343a40;">
         <link rel="stylesheet" href="css/bootstrap.min.css">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta http-equiv="X-UA-Compatible" content="ie=edge">
         </head>
         <body>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
               <a class="navbar-brand" href="../index.php">Il Gioco Dell'Impiccato</a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarExtra" aria-controls="navbarExtra" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="navbarExtra">
                  <ul class="navbar-nav mr-auto">
                     <li class="nav-item active">
                        <a class="nav-link" href="../index.php">Gioca</a>
                     </li>
                     <li class="nav-item ">
                        <a class="nav-link" href="../rules.php">Regole</a>
                     </li>
                     <li class="nav-item ">
                        <a class="nav-link" href="../credits.php">Crediti</a>
                     </li>
                  </ul>
               </div>
               <form class="form-inline">
               </form>
            </nav>
            <br><br>
   </body>
</html>
<?php include 'header.php';

    if (!empty($_SESSION['result'])):   //CHECK GAME POSITION

        include 'result.php';

    elseif (!empty($_SESSION['word'])):

        include 'hangmanGame.php';

    else:

        include 'chooseWord.php';

    endif;

include 'footer.php'; ?>

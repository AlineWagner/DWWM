<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou - Tableau</title>
</head>
<body>
    <div class="container">
    <header>
        <div class="d-none d-lg-block">
        <nav class="navbar navbar-light bg-light pl-0">
            <img src="../jarditou/img/jarditou_logo.jpg" height="50" class="d-inline-block">
            <div class="mr-5">
                <h2 class="display-4"><small><small>Tout le jardin</small></small></h2>
            </div>
        </nav>
    </div>
    </header>
        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <a class="navbar-brand" href="#">Jarditou.com</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
            </button>   
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <div class="navbar-nav">
                    <a class="nav-item nav-link" href="../jarditou/index.html">Accueil</a>
                    <a class="nav-item nav-link active" href="../jarditou/tableau.php">Tableau <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="../jarditou/contact.html">Contact</a>
                </div>
            </div> 
                <form class="form-inline d-none d-lg-block">
                  <input class="form-control mr-sm-2" type="search" placeholder="Votre promotion" aria-label="search">
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
                </form>
        </nav>



        <img src="../jarditou/img/promotion.jpg" class="img-fluid" alt="Promotion sur les lames de terrasse">

    <br><br>
    <a class="btn btn-success" href="../jarditou/addform.php" role="button">Ajouter un produit</a>
    <br><br>

        <div class="row m-auto shadow">

        
        

            <table class="table table-bordered table-striped table-responsive-md">
                <thead>
                  <tr>
                    <th scope="col" class="h4"><strong>Photo</strong></th>
                    <th scope="col" class="h4"><strong>ID</strong></th>
                    <th scope="col" class="h4"><strong>Référence</strong></th>
                    <th scope="col" class="h4"><strong>Libellé</strong></th>
                    <th scope="col" class="h4"><strong>Prix</strong></th>
                    <th scope="col" class="h4"><strong>Stock</strong></th>
                    <th scope="col" class="h4"><strong>Couleur</strong></th>
                    <th scope="col" class="h4"><strong>Ajout</strong></th>
                    <th scope="col" class="h4"><strong>Modif</strong></th>
                    <th scope="col" class="h4"><strong>Bloqué</strong></th>
                  </tr>
                </thead>


                <tbody>
                <?php
                require "log.php";
                $requete = "SELECT * FROM produits";
                $result = $db->query($requete);
                $nbLigne = $result->rowCount();
                    if ($nbLigne >1) {
                        while ($row = $result->fetch(PDO::FETCH_OBJ))
                    {
                ?>
                    <tr>
                        <td class="table-warning"><img src="src/img/7.jpg" alt="Barbecue Aramis brun" width="100" height="100"></td>
                        <td class=""><?php echo $row->pro_id; ?></td>
                        <td class=""><?php echo $row->pro_ref; ?></td>  
                        <td class="table-warning"><a href="details.php?pro_id=<?php echo $row->pro_id ?>"><?php echo $row->pro_libelle; ?></a></td>
                        <td class=""><?php echo $row->pro_prix; ?></td>
                        <td class=""><?php echo $row->pro_stock; ?></td>
                        <td class=""><?php echo $row->pro_couleur; ?></td>
                        <td class=""><?php echo $row->pro_d_ajout; ?></td>
                        <td class=""><?php echo $row->pro_d_modif; ?></td>
                        <td class=""><?php echo $row->pro_bloque; ?></td>
                    </tr>
                <?php            
                }
                $result->closeCursor();
                }
                ?>
                </tbody>
              </table>
        </div>
        
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark mt-3 rounded">
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="#">mentions légales</span>
                </a>
                <a class="nav-item nav-link" href="#">horaires</a>
                <a class="nav-item nav-link" href="#">plan du site</a>
            </div>
        </div>
    </nav>
    </div>  


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
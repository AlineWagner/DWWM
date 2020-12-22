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
            <img src="img/jarditou_logo.jpg" height="50" class="d-inline-block">
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
        <img src="img/promotion.jpg" class="img-fluid" alt="Promotion sur les lames de terrasse">

        <br><br>
        <h1>Détails du produit</h1>
        <br>


<?php
require "log.php";
?>

<?php
try {
    $pro_id = $_GET["pro_id"];        //Récup ID

    $requete = "SELECT * FROM produits JOIN categories ON pro_cat_id = cat_id WHERE pro_id = $pro_id";
    $result = $db->query($requete);

    $row = $result->fetch(PDO::FETCH_OBJ);      //Récup result query

    $result->closeCursor();         //Free connexion
}

catch (Exception $e) {
    echo "Erreur : " . $e->getMessage() . "<br>";
    echo "N° : " . $e->getCode() . "<br>";
    die("Fin du script.");
}
?>


    <form action ="" method="post">


    <div class="container text-center">
        <img src="img/<?php echo $row->pro_id ?>.<?php echo $row->pro_photo ?>" alt="<?php $row->pro_libelle ?>" class="img-fluid" width="300px">
    </div>

        
    <div class="form-group">
        <label for="proid">ID :</label><br>
        <input type="text" class="form-control" value="<?php echo $row->pro_id ?>" name="proid" id="proid" disabled>
    </div>
    
    <div class="form-group">
        <label for="catid">Catégorie :</label><br>
        <select class="form-control" name="catid" id="catid" disabled>
            <option value="select" selected><?php echo $row->cat_nom ?></option>
        </select>
    </div>

    <div class="form-group">
        <label for="ref">Référence :</label><br>
        <input type="text" class="form-control" value="<?php echo $row->pro_ref ?>" name="ref" id="ref" disabled>
    </div>

    <div class="form-group">
        <label for="libel">Libellé :</label><br>
        <input type="text" class="form-control" value="<?php echo $row->pro_libelle ?>" name="libel" id="libel" disabled>
    </div>

    <div class="form-group">
        <label for="desc">Description :</label><br>
        <textarea class="form-control" value="" name="desc" id="desc" disabled><?php echo $row->pro_description ?></textarea>
    </div>

    <div class="form-group">
        <label for="prix">Prix :</label><br>
        <input type="text" class="form-control" class="form-control" value="<?php echo $row->pro_prix ?>" name="prix" id="prix" disabled>
    </div>
        
    <div class="form-group">
        <label for="stock">Stock :</label><br>
        <input type="text" class="form-control" class="form-control" value="<?php echo $row->pro_stock ?>" name="stock" id="stock" disabled>
    </div>
            
    <div class="form-group">
        <label for="couleur">Couleur :</label><br>
        <input type="text" class="form-control" class="form-control" value="<?php echo $row->pro_couleur ?>" name="couleur" id="couleur" disabled>
    </div>

    <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="blockcb" disabled>
        <label class="custom-control-label" for="blockcb">Produit bloqué</label><br>
    </div>
    
    <div class="form-group">
        <label for="addate">Date d'ajout :</label><br>
        <input type="text" class="form-control" value="<?php echo $row->pro_d_ajout ?>" name="addate" id="addate" disabled>
    </div>

    <div class="form-group">
        <label for="moddate">Date de modification :</label><br>
        <input type="text" class="form-control" value="<?php echo $row->pro_d_modif ?>" name="moddate" id="moddate" disabled>
    </div>
        

    <br>
    <a class="btn btn-secondary" href="../jarditou/tableau.php" role="button">Retour au tableau</a>
    <a class="btn btn-warning" href="../jarditou/modform.php" role="button">Modifier</a>
    <a class="btn btn-danger" href="../jarditou/script_del.php" role="button">Supprimer</a>
    <br>
    


    <br>
    <br>
    </form>

        




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
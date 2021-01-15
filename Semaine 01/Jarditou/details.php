<?php
require("./header.php");
?>



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
        <img src="img/<?php echo $row->pro_id ?>.<?php echo $row->pro_photo ?>" alt="<?php $row->pro_libelle ?>" class="img-fluid" height="250px">
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
    <a class="btn btn-secondary" href="tableau.php" role="button">Retour au tableau</a>
    <a class="btn btn-warning" href="modform.php?pro_id=<?php echo $row->pro_id ?>" role="button">Modifier</a>
    <a class="btn btn-danger" href="script_del.php?pro_id=<?php echo $row->pro_id ?>" role="button">Supprimer</a>
    <br>
    


    <br>
    <br>
    </form>



<?php
require("./footer.php");
?>
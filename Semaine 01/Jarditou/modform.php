<?php
require("./header.php");
?>



    <form action ="script_mod.php" method="post" enctype="multipart/form-data">
        
    <div class="form-group">
        <label for="proid">ID :</label><br>
        <input type="text" class="form-control" value="" name="proid" id="proid" readonly>
        <span id="error"></span>
    </div>
    
    <div class="form-group">
        <label for="catid">Catégorie :</label><br>
        <select class="form-control" name="catid" id="catid">
            <option value="select" selected disabled>-</option>
            
            <?php
            require "log.php";

            $requete = "SELECT cat_id, cat_nom FROM categories ORDER BY cat_nom";

            foreach ($db->query($requete) as $row)
            {
            echo "<option value='$row[cat_id]'>$row[cat_nom]</option>";
            }
            ?>

        </select>
        <span id="error"></span><br>
    </div>

    <div class="form-group">
        <label for="ref">Référence :</label><br>
        <input type="text" class="form-control" value="" name="ref" id="ref">
        <span id="error"></span><br>
    </div>

    <div class="form-group">
        <label for="libel">Libellé :</label><br>
        <input type="text" class="form-control" value="" name="libel" id="libel">
        <span id="error"></span><br>
    </div>

    <div class="form-group">
        <label for="desc">Description :</label><br>
        <textarea class="form-control" value="" name="desc" id="desc"></textarea>
        <span id="error"></span><br>
    </div>

    <div class="form-group">
        <label for="prix">Prix :</label><br>
        <input type="text" class="form-control" class="form-control" value="" name="prix" id="prix">
        <span id="error"></span><br>
    </div>
        
    <div class="form-group">
        <label for="stock">Stock :</label><br>
        <input type="text" class="form-control" class="form-control" value="" name="stock" id="stock">
        <span id="error"></span><br>
    </div>
            
    <div class="form-group">
        <label for="couleur">Couleur :</label><br>
        <input type="text" class="form-control" class="form-control" value="" name="couleur" id="couleur">
        <span id="error"></span><br>
    </div>


    <label for="blockcb">Produit bloqué :</label><br>
    <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" name="block" id="blockcbY" value="1" >
        <label for="blockcbY" class="form-check-label">Oui</label>
    </div>
    <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" name="block" id="blockcbN">
        <label for="blockcbN" class="form-check-label">Non</label>
    </div><br><br>

    <div class="form-group">
        <label for="addate">Date d'ajout :</label><br>
        <input type="text" class="form-control" value="" name="addate" id="addate">
        <span id="error"></span><br>
    </div>

    <div class="form-group">
        <label for="moddate">Date de modification :</label><br>
        <input type="text" class="form-control" value="" name="moddate" id="moddate">
        <span id="error"></span><br>
    </div>
        
    <label for="img">Photo :</label>
    <div class="form-group col-sm-5">
        <label class="custom-file-label" for="img">Choisissez un fichier</label>
        <input type="file" class="custom-file-input" id="img" name="img">
        <span id="error"></span><br>
    </div>
        
    <br>
    <a class="btn btn-secondary" href="../jarditou/tableau.php" role="button">Annuler</a>
    <input type= "submit" class="btn btn-success" name="submit" value="Valider">
    <a class="btn btn-danger" href="../jarditou/script_del.php" role="button">Supprimer</a>
    <br>

    <br>
    <br>
    </form>



<?php
require("./footer.php");
?>
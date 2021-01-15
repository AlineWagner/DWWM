<?php
require("./header.php");
?>



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
                    <td class="table-warning"><img src="img/<?php echo $row->pro_id; ?>.<?php echo $row->pro_photo; ?>" alt="<?php echo $row->pro_ref; ?>" width="150"></td>
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



<?php
require("./footer.php");
?>
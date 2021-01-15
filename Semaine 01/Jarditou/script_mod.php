<?php 
$pro_id = $pro_cat_id = $pro_ref = $pro_libelle = $pro_description = $pro_prix = $pro_stock = $pro_couleur = $pro_photo = $pro_d_ajout = $pro_d_modif = $pro_bloque = "";

$pro_id=$_POST['proid'];
$pro_cat_id=$_POST['catid'];
$pro_ref=$_POST['ref'];
$pro_libelle=$_POST['libel'];
$pro_description=$_POST['desc'];
$pro_prix=$_POST['prix'];
$pro_stock=$_POST['stock'];
$pro_couleur=$_POST['couleur'];
$pro_photo=$_POST['img'];
$pro_d_ajout=$_POST['addate'];
$pro_d_modif=$_POST['moddate'];
$pro_bloque=$_POST['blockcb'];

if (!empty($_POST["submit"]))
{
    
    if (empty($_POST["catid"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $catid=$_POST["catid"];
    }

    if (empty($_POST["ref"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $ref=$_POST["ref"];
    }
    
    if (empty($_POST["libel"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $libel=$_POST["libel"];
    }
    
    if (empty($_POST["desc"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $desc=$_POST["desc"];
    }
    
    if (empty($_POST["prix"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $prix=$_POST["prix"];
    }
    
    if (empty($_POST["stock"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $stock=$_POST["stock"];
    }
    
    if (empty($_POST["couleur"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else
    {
        $couleur=$_POST["couleur"];
    }
    
    if (empty($_POST["addate"]))
    {
        echo "Le champ doit être renseigné.";
    }
    else

    
    if (empty($_POST["moddate"]))
    {
        echo "Le champ doit être renseigné.";
    }
    
    if (empty($_POST["img"]))
    {
        echo "Le champ doit être renseigné.";
    }
    
    if (!isset($_POST["blockcb"]))
    {
        echo "Le champ doit être renseigné."; 
    }
}

require "log.php";

try {
$requete = $db->prepare("UPDATE produits SET pro_cat_id=:pro_cat_id, pro_ref=:pro_ref, pro_libelle=:pro_libelle, pro_description=:pro_description, pro_prix=:pro_prix, pro_stock=:pro_stock, pro_couleur=:pro_couleur, pro_photo=:pro_photo, pro_d_ajout=:pro_d_ajout, pro_d_modif=:pro_d_modif, pro_bloque=:pro_bloque WHERE pro_id=:pro_id");

$requete->bindValue(':pro_id', $pro_id, PDO::PARAM_INT);
$requete->bindValue(':pro_cat_id', $pro_cat_id, PDO::PARAM_INT);
$requete->bindValue(':pro_ref', $pro_ref, PDO::PARAM_STR);
$requete->bindValue(':pro_libelle', $pro_libelle, PDO::PARAM_STR);
$requete->bindValue(':pro_description', $pro_description, PDO::PARAM_STR);
$requete->bindValue(':pro_prix', $pro_prix, PDO::PARAM_STR);
$requete->bindValue(':pro_stock', $pro_stock, PDO::PARAM_INT);
$requete->bindValue(':pro_couleur', $pro_couleur, PDO::PARAM_STR);
$requete->bindValue(':pro_photo', $pro_photo, PDO::PARAM_STR);
$requete->bindValue(':pro_d_ajout', $pro_d_ajout, PDO::PARAM_STR);
$requete->bindValue(':pro_d_modif', $pro_d_modif, PDO::PARAM_STR);
$requete->bindValue(':pro_bloque', $pro_bloque, PDO::PARAM_INT);

$requete->execute();

$requete->closeCursor();
}

catch (Exception $e) {
        echo "Erreur : " . $e->getMessage() . "<br>";
        echo "N° : " . $e->getCode() . "<br>";
        die("Fin du script");
}

header("Location: tableau.php");
exit;
?>
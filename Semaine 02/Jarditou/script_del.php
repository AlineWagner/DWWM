<?php

require "log.php";

if (isset($_GET['pro_id'])) {
    $pro_id=$_GET['pro_id'];
}

$requete = $db->prepare('DELETE FROM produits WHERE pro_id=:pro_id');

$requete->bindValue(':pro_id', $pro_id, PDO::PARAM_STR);

$requete->execute();

$requete->closeCursor();

header('Location: tableau.php');
exit;

?>
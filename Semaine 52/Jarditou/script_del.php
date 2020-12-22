<a href="script_del.php?pro_id=<?php echo $row->pro_id ?>">

<?php
$pro_id=$_GET['pro_id'];
require "log.php";

$requete = $db->prepare('DELETE FROM produits WHERE pro_id=:pro_id');

$requete->bindValue(':pro_id', $pro_id, PDO::PARAM_INT);

$requete->execute();

$requete->cloceCursor();
header('Location: tableau.php');
exit;
?>
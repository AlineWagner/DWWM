<?php

try
{
    $db = new PDO('mysql:host=localhost;dbname=jarditou;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch (Exception $e)
{
    echo "La connexion à la base de données a échoué ! <br><br>";
    echo 'Erreur : ' . $e->getMessage() . '<br>';
    echo 'N° : ' . $e->getCode() . '<br><br>';
    die('Fin du script');
}

?>
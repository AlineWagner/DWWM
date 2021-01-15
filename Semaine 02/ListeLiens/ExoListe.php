<?php

    $linklist = fopen("ListeLiens.txt", "r");
    echo fread($linklist, filesize("ListeLiens.txt"));
    fclose($linklist);

?>

<br>
<br>
<br>

<?php

    $linklist = "ListeLiens.txt";
    $lines = file($linklist);

    $lineNum = 1;
    foreach($lines as $line) {
        ?>
        <a href="<?php echo $line; ?>">Lien n°<?php echo $lineNum ?></a>
        <?php
        $lineNum++;
    }

?>
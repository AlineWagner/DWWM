<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <title>PHP Exos</title>
</head>

<body>
  <div class="container">
    <h1>Exercices PHP</h1>

    <hr>

    <h2><u>Les boucles</u></h2>

<br>

    <h4>--- Exercice 1 ---</h4>

      <?php
        for ($n = 1; $n <= 150; $n+=2)
        {
            echo $n . " ";
        }
      ?>

    <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>for ($n = 1; $n <= 150; $n+=2)
              {
              echo $n . " ";
              }</pre>
        </div>
    </div>

    <br>

    <h4>--- Exercice 2 ---</h4>

      <?php
        echo str_repeat("Je dois faire des sauvegardes régulières de mes fichiers. <br>", 5);
      ?>

    <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>echo str_repeat("Je dois faire des sauvegardes régulières de mes fichiers. < br>", 500);
        </pre>
        </div>
    </div>

    <br>

    <h4>--- Exercice 3 ---</h4>

      <?php
        for ($a = 0; $a <= 12; $a++) {
            for ($b = 0; $b <= 12; $b++) {
              if ($b == 0) {
                echo str_pad($a*$b, 4, " ", STR_PAD_LEFT);
              } else {
                echo str_pad($a*$b, 4, " ", STR_PAD_LEFT);
              }
            }
            echo nl2br("\n");
        }
        ?>

    <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>for ($a = 0; $a <= 12; $a++) {
                for ($b = 0; $b <= 12; $b++) {
                  if ($b == 0) {
                    echo str_pad($a*$b, 2, " ", STR_PAD_LEFT);
                  } else {
                    echo str_pad($a*$b, 4, " ", STR_PAD_LEFT);
                  }
                }
                echo nl2br("\n");
            }
          </pre>
        </div>
    </div>

<br>
<hr>
    <h2><u>Les tableaux</u></h2>

<br>

  <h4>--- Exercice 1 ---</h4>

      <?php
        $a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
          "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
          "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
        );

        $val002 = $a["19002"];

        echo ('La semaine de validation du groupe 19002 est la ' . array_search("Validation", $val002) . 'ième du programme.');
      ?>

  <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
"19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
"19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
);

$val002 = $a["19002"];

echo ('La semaine de validation du groupe 19002 est la ' . array_search("Validation", $val002) . 'ième du programme.');
          </pre>
        </div>
    </div>

<br>

  <h4>--- Exercice 2 ---</h4>

      <?php
        $a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
          "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
            "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
        );
          
        $val001 = array_flip($a["19001"]);

        echo ('La dernière semaine de stage du groupe 19001 sera la ' . $val001['Stage'] . 'ième du programme.');
        
        //$val001 = $a["19001"];

        //echo ('La position de la dernière semaine de stage du groupe 19001 est la ' . array_search('Stage', array_reverse($val001, true)) . 'ième du programme.');
        ?>


  <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
"19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
"19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
);
          
$val001 = array_flip($a["19001"]);

echo ('La dernière semaine de stage du groupe 19001 sera la ' . $val001['Stage'] . 'ième du programme.');
          
//$val001 = $a["19001"];

//echo ('La position de la dernière semaine de stage du groupe 19001 est la ' . array_search('Stage', array_reverse($val001, true)) . 'ième du programme.');
          </pre>
        </div>
    </div>

<br>

  <h4>--- Exercice 3 ---</h4>

      <?php
        $a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
          "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
            "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
        );

            $b = array_keys($a);
            var_dump($b);

            // $b = [];
            // array_push($b, array_keys($a));
            // var_dump($b);

      ?>

  <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
"19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
"19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
);

$b = array_keys($a);
var_dump($b);

// $b = [];
// array_push($b, array_keys($a));
// var_dump($b);
          </pre>
        </div>
    </div>

<br>

  <h4>--- Exercice 4 ---</h4>

      <?php
        $a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
          "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
            "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
        );

        $b = array_count_values($a["19003"]);
        echo ('Le stage du groupe 19003 durera ' . $b['Stage'] . ' semaines.');
      ?>

  <div class="spoiler"><br>
      <input onclick="showSpoiler(this);" value="Code" type="button">
        <div class="coSpo" style="display: none;">
          <pre>$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
"19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
"19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
);

$b = array_count_values($a["19003"]);
echo ('Le stage du groupe 19003 durera ' . $b['Stage'] . ' semaines.');
          </pre>
        </div>
    </div>



<br>
<hr>
<h2><u>Les fonctions</u></h2>

<br>

  <h4>--- Calculette ---</h4>

      <?php

        $nbr1 = $nbr2 = $ope = $span = "";

        if(!empty($_POST["submit"]))
          {
          if(!empty($_POST["nbr1"]))
          {
            $nbr1 = $_POST['nbr1'];
          }
          if(!empty($_POST["nbr2"]))
          {
            $nbr2 = $_POST['nbr2'];
          }
          if(!empty($_POST["ope"]))
          {
            $ope = $_POST['ope'];
          }


        if ($ope == '+')
          {
            $add = $nbr1 + $nbr2;
            $span = "Résultat de l'addition: " . $add;
          }
          else if ($ope == '-')
          {
            $sub = $nbr1 - $nbr2;
            $span = "Résultat de la soustraction: " . $sub;
          }
          else if ($ope == '*')
          {
            $mul = $nbr1 * $nbr2;
            $span = "Résultat de la multiplication: " . $mul;
          }
          else if ($ope == '/')
          {
            $div = $nbr1 / $nbr2;
            $span = "Résultat de la division: " . $div;
          }
          else if ($nbr1 == '' OR $nbr2 == '' OR $ope == '')
          {
                $span = "Calcul impossible.";
          }
          }
          else
          {
          $span = "";
          }
      ?>


  <form name="test" method="POST" action="">
    <input type="text" name="nbr1" placeholder="Premier nombre">
    <input type="text" name="ope" placeholder="Opérateur">
    <input type="text" name="nbr2" placeholder="Deuxième nombre">
    <input type="submit" name="submit">
  </form>
  <span name="span"><?php echo $span ?></span>


  <div class="spoiler"><br>
  <input onclick="showSpoiler(this);" value="Code" type="button">
    <div class="coSpo" style="display: none;">
      <pre>$nbr1 = $nbr2 = $ope = $span = "";

          if(!empty($_POST["submit"]))
          {
            if(!empty($_POST["nbr1"]))
            {
              $nbr1 = $_POST['nbr1'];
            }
            if(!empty($_POST["nbr2"]))
            {
              $nbr2 = $_POST['nbr2'];
            }
            if(!empty($_POST["ope"]))
            {
              $ope = $_POST['ope'];
            }
            
            
            if ($ope == '+')
            {
              $add = $nbr1 + $nbr2;
              $span = "Résultat de l'addition: " . $add;
            }
            else if ($ope == '-')
            {
              $sub = $nbr1 - $nbr2;
              $span = "Résultat de la soustraction: " . $sub;
            }
            else if ($ope == '*')
            {
              $mul = $nbr1 * $nbr2;
              $span = "Résultat de la multiplication: " . $mul;
            }
            else if ($ope == '/')
            {
              $div = $nbr1 / $nbr2;
              $span = "Résultat de la division: " . $div;
            }
            else if ($nbr1 == '' OR $nbr2 == '' OR $ope == '')
            {
                  $span = "Calcul impossible.";
            }
          }
          else
          {
            $span = "";
          }
          ?>
      </pre>
    </div>
  </div>

<br>




</div>
<br><br>

<script src="js.js"></script>
</body>

</html>
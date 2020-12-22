<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Jarditou - Contact</title>
</head>
<body>
    <div class="container">
    <header>
        <div class="d-none d-lg-block">
        <nav class="navbar navbar-light bg-light">
            <img src="src/img/jarditou_logo.jpg" height="100" class="d-inline-block">
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
                    <a class="nav-item nav-link" href="../jarditou/tableau.html">Tableau</a>
                    <a class="nav-item nav-link active" href="../jarditou/contact.html">Contact <span class="sr-only">(current)</span></a>
                </div>
              </div> 
              <form class="form-inline d-none d-lg-block">
                <input class="form-control mr-sm-2" type="search" placeholder="Votre promotion" aria-label="search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
              </form>
            </nav>
            <div class="container">
              <img src="src/img/promotion.jpg" class="img-fluid" alt="Promotion sur les lames de terrasse">
              <form action="" method="POST" id="Form"><br> * Ces zones sont obligatoires.<br><br>
                <h1>Vos Coordonnées</h1>
                <div class="form-group">
                  <label for="FormControlInput">Nom *</label>
                  <input type="text" class="form-control" id="FCIName" placeholder="Veuillez saisir votre nom">
                  <span class="error" id="NameError"></span>
                  </div>
                  <div class="form-group">
                    <label for="FormControlInput">Prénom *</label>
                    <input type="text" class="form-control" id="FCIFName" placeholder="Veuillez saisir votre prénom">
                    <span class="error" id="FNameError"></span>
                  </div>
                  <div class="form-group">
                  <label for="sexe">Sexe *</label><br>
                  <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" id="CustomRadio1" name="CustomRadio" class="custom-control-input">
                    <label class="custom-control-label" for="CustomRadio1">Féminin</label>
                  </div>
                  <div class="custom-control custom-radio custom-control-inline">
                    <input type="radio" id="CustomRadio2" name="CustomRadio" class="custom-control-input">
                    <label class="custom-control-label" for="CustomRadio2">Masculin</label>
                  </div><br>
                  <span class="error" id="SexError"></span>
                  </div>
                  <div class="form-group">
                    <label for="data">Date de naissance *</label>
                    <input class="form-control" type="text" id="FCIDoB" placeholder="dd/mm/yyyy">
                    <span id="DoBError"></span>
                  </div>
                  <div class="form-group">
                    <label for="cp">Code postal *</label>
                    <input type="text" class="form-control" id="FCICp" placeholder="Veuillez saisir votre code postal">
                    <span class="error" id="CPError"></span>
                  </div>
                  <div class="form-group">
                    <label for="adresse">Adresse</label>
                    <input type="text" class="form-control" id="FCIAddress" placeholder="Facultatif">
                  </div>
                  <div class="form-group">
                    <label for="ville">Ville</label>
                    <input type="text" class="form-control" id="FCICity" placeholder="Facultatif">
                  </div>
                  <div class="form-group">
                    <label for="FormControlInput1">Email *</label>
                    <input type="text" class="form-control" id="FCIMail" placeholder="dave.loper@afpa.fr">
                    <span class="error" id="MailError"></span>
                  </div>
                  <h1>Votre demande</h1>
                  <div class="form-group">
                    <label for="FormControlSelect1">Sujet *</label>
                    <select class="form-control" id="FCISub">
                      <option value="select" disabled selected>Veuillez sélectionner un sujet</option>
                      <option>Mes commandes</option>
                      <option>Question sur un produit</option>
                      <option>Réclamation</option>
                      <option>Autre</option>
                    </select>
                    <span class="error" id="SubError"></span>
                  </div>
                  <div class="form-group">
                    <label for="FormControlTextarea1">Votre question *</label>
                    <textarea class="form-control" id="FCIQuest" rows="2"></textarea>
                    <span class="error" id="QuestError"></span>
                  </div>
                  <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="CustomCheck1">
                    <label class="custom-control-label" for="CustomCheck1">J'accepte le traitement informatique de ce formulaire</label><br>
                    <span class="error" id="CheckError"></span>
                  </div>
                  <br>
                  <input type="submit" class="btn btn-primary bg-dark" id="submit" value="Envoyer">
                  <button type="reset" class="btn btn-primary bg-dark">Annuler</button>
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
    </div>  


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="assets/js/js.js"></script>
</body>
</html>
<?php
require("./header.php");
?>



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



<?php
require("./footer.php");
?>
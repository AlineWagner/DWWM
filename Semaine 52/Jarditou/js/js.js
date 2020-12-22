let formValid = document.getElementById("submit");
let Form = document.getElementById("Form");


Form.addEventListener("submit", function (event){


let Name = document.getElementById("FCIName");
var NameValid = new RegExp("^[a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+([-'\s][a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+)?$");
var NameRes = NameValid.test(Name.value);
let NameErr = document.getElementById("NameError");

let FName = document.getElementById("FCIFName");
let FNameValid = new RegExp("^[a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+([-'\s][a-zA-ZéêèëàîïçÉÊÈËÀÎÏÇ]+)?$");
let FNameRes = FNameValid.test(FName.value);
let FNameErr = document.getElementById("FNameError");

let Sex1 = document.getElementById("CustomRadio1");
let Sex2 = document.getElementById("CustomRadio2");
let SexErr = document.getElementById("SexError");

let DoB = document.getElementById("FCIDoB");
//let DoBValid = new RegExp("^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$");
//let DoBValid = new RegExp("^((0[13578]|1[02])[\/.]31[\/.](19|20)[0-9]{2})|((01|0[3-9]|1[1-2])[\/.](29|30)[\/.](19|20)[0-9]{2})|((0[1-9]|1[0-2])[\/.](0[1-9]|1[0-9]|2[0-8])[\/.](19|20)[0-9]{2})|((02)[\/.]29[\/.](((19|20)(04|08|[2468][048]|[13579][26]))|2000))$");
let DoBValid = new RegExp("^[0-9]{2}/[0-9]{2}/[0-9]{4}$");
let DoBRes = DoBValid.test(DoB.value);
let DoBErr = document.getElementById("DoBError");

let CP = document.getElementById("FCICp");
let CPValid = new RegExp("^[0-9]{5}$");
let CPRes = CPValid.test(CP.value);
let CPErr = document.getElementById("CPError");

let Mail = document.getElementById("FCIMail");
let MailValid = new RegExp("^[a-zA-Z0-9]+([-\_\.a-zA-Z0-9]*)?@[a-zA-Z0-9]+.[a-zA-Z]{2,3}$");
let MailRes = MailValid.test(Mail.value);
let MailErr = document.getElementById("MailError");

let Sub = document.getElementById("FCISub");
let SubValid = Sub.options[Sub.selectedIndex].value;
let SubErr = document.getElementById("SubError");

let Quest = document.getElementById("FCIQuest");
let QuestValid = Quest.value;
let QuestErr = document.getElementById("QuestError");

let Check = document.getElementById("CustomCheck1");
let CheckErr = document.getElementById("CheckError");



    //Nom ------>
    if (NameRes == false)
    {
        event.preventDefault();
        NameErr.textContent = "Veuillez entrer un nom valide.";
        NameErr.style.color = "red";

    }
    else
    {
        NameErr.textContent = "";

    }

    //Prénom ------>
    if (FNameRes == false)
    {
        event.preventDefault();
        FNameErr.textContent = "Veuillez entrer un prénom valide.";
        FNameErr.style.color = "red";
    }
    else
    {
        NameErr.textContent = "";
    }

    //Sexe ------>
    if (Sex1.checked)
    {
        SexErr.textcontent = "";
    }
    else if (Sex2.checked)
    {
        SexErr.textcontent = "";
    }
    else
    {
        event.preventDefault();
        SexErr.textContent = "Veuillez choisir votre sexe.";
        SexErr.style.color = "red";
    }

    //DoB ------>
    if (DoBRes == false)
    {
        event.preventDefault();
        DoBErr.textContent = "Veuillez entrer une date de naissance valide.";
        DoBErr.style.color = "red";
    }
    else
    {
        DoBErr.textContent = "";
    }

    //Code Postal ------>
    if (CPRes == false)
    {
        event.preventDefault();
        CPErr.textContent = "Veuillez entrer un code postal valide.";
        CPErr.style.color = "red";
    }
    else
    {
        NameErr.textContent = "";

    }

    //Mail ------>
    if (MailRes == false)
    {
        event.preventDefault();
        MailErr.textContent = "Veuillez entrer un mail valide.";
        MailErr.style.color = "red";
    }
    else
    {
        NameErr.textContent = "";

    }

    //Sujet ------>
    if (SubValid == "select")
    {
        event.preventDefault();
        SubErr.textContent = "Veuillez sélectionner le sujet de votre problème.";
        SubErr.style.color = "red";
    }
    else
    {
        SubErr.textContent = "";
    }

    //Question ------>
    if (QuestValid == "")
    {
        event.preventDefault();
        QuestErr.textContent = "Veuillez écrire votre question."
        QuestErr.style.color = "red";
    }
    else
    {
        QuestErr.textContent = "";
    }

    //Checkbox ------>
    if (!Check.checked)
    {
        CheckErr.textContent = "Veuillez accepter le traitement informatique de ce formulaire.";
        CheckErr.style.color = "red";
    }
    else
    {
        CheckErr.textContent = "";
    }
})
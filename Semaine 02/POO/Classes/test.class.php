<?php
   class Employe
   {
      private string nom;
      private string prenom;
      private DateTime datedembauche;
      private int salaire
      private string service;

      
      public string Nom
      {
         get {return nom;}
         set {nom = value;}
      }
       
      public string Prenom
      {
         get {return prenom;}
         set {prenom = value;}
      }
       
      public DateTime Datedembauche
      {
         get {return datedembauche;}
         set {datedembauche = value;}
      }
      
      public int Salaire
      {
         get {return salaire;}
         set {salaire = value;}
      }

      public string Service
      {
         get {return service;}
         set {service = value;}
      }

      public Employe(string n, string p, DateTime de, int s, service sv)
      {
         nom = n;
         prenom = p;
         datedembauche = de;
         salaire = s;
         service = sv;
      }

      public int Anciennete()
      {
         int Anc;
         Anc = DateTime.Now.Year - datedembauche.Year;
         if (datedembauche.AddYears(Anc) > DateTime.Now.Date)
            Anc--;
         return Anc;
      }

      public void AugmentationDuSalaire()
      {
         if (Anciennete() < 5)
            salaire += salaire * 0.02;
         else if (Anciennete() < 10)
            salaire += salaire * 0.05;
         else
            salaire += salaire * 0.1;
      }

      public void AfficherEmploye()
      {
         Console.Out.WriteLine("Nom Complet : " + nom.ToUpper() + " " + prenom.Substring(0, 1).ToUpper() + prenom.Substring(1).ToLower());
         Console.Out.WriteLine("Age : " + Age());
         Console.Out.WriteLine("Ancienneté : " + Anciennete());
         Console.Out.WriteLine("Salaire : " + salaire);
      }
   }

?>
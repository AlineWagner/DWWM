/*
Pour l'aider à développer ses ventes, la concession automobile Oto souhaite revoir son système d'information.

L'entreprise propose les activités :

vente de véhicules particuliers et utilitaires neufs et occasion
réparation et entretien des véhicules
vente et pose d'accessoires et d'options
Les véhicules peuvent être vendus à crédit ou au comptant.

Des commerciaux sont dédiés soit à la vente aux particuliers, soit à la vente aux professionnels.

Définissez la base de données de ce projet.

IMPORTANT ! A vous de réfléchir sur :

l'ordre d'implémentation des tables
les types de colonnes
les clés primaires
les clés étrangères
les index
*/



DROP DATABASE Oto IF EXISTS;
CREATE DATABASE Oto;
USE Oto;

CREATE TABLE Vente_vehicule(
   vente_id INT AUTO_INCREMENT NOT NULL,
   vente_vehiparti VARCHAR(30) NOT NULL,
   vente_utilioccase VARCHAR(30) NOT NULL,
   vente_desc VARCHAR(50) NOT NULL,
   vente_prix DECIMAL NOT NULL,
   PRIMARY KEY(vente_id)
);

CREATE TABLE Vente_credit(
   vente_id INT AUTO_INCREMENT NOT NULL,
   commerco_id INT AUTO_INCREMENT NOT NULL,
   credit_montant DECIMAL NOT NULL,
   PRIMARY KEY(vente_id, commerco_id),
   FOREIGN KEY(vente_id) REFERENCES Vente_vehicule(vente_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id)
);

CREATE TABLE Vente_comptant(
   vente_id INT AUTO_INCREMENT NOT NULL,
   commerco_id INT AUTO_INCREMENT NOT NULL,
   comptant_montant DECIMAL NOT NULL,
   PRIMARY KEY(vente_id, commerco_id),
   FOREIGN KEY(vente_id) REFERENCES Vente_vehicule(vente_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id)
);

CREATE TABLE Services(
   service_id INT AUTO_INCREMENT NOT NULL,
   service_reparation VARCHAR(50) NOT NULL,
   service_entretien VARCHAR(50) NOT NULL,
   service_desc VARCHAR(50) NOT NULL,
   service_prix DECIMAL NOT NULL,
   PRIMARY KEY(service_id)
);

CREATE TABLE Accessoires(
   accessoire_id INT AUTO_INCREMENT NOT NULL,
   accessoire_nom VARCHAR(50) NOT NULL,
   accessoire_desc VARCHAR(50) NOT NULL,
   accessoire_prix DECIMAL NOT NULL,
   PRIMARY KEY(accessoire_id)
);

CREATE TABLE vendu1(
   accessoire_id INT AUTO_INCREMENT NOT NULL,
   commerco_id INT AUTO_INCREMENT NOT NULL,
   PRIMARY KEY(accessoire_id, commerco_id),
   FOREIGN KEY(accessoire_id) REFERENCES Accessoires(accessoire_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id)
);

CREATE TABLE vendu2(
   service_id INT AUTO_INCREMENT NOT NULL,
   commerco_id INT AUTO_INCREMENT NOT NULL,
   PRIMARY KEY(service_id, commerco_id),
   FOREIGN KEY(service_id) REFERENCES Services(service_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id)
);

CREATE TABLE Commerciaux(
   commerco_id INT AUTO_INCREMENT NOT NULL,
   commerco_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(commerco_id)
);

CREATE TABLE vend_part(
   commerco_id INT AUTO_INCREMENT NOT NULL,
   particulier_id INT AUTO_INCREMENT NOT NULL,
   PRIMARY KEY(commerco_id, particulier_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id),
   FOREIGN KEY(particulier_id) REFERENCES Particuliers(particulier_id)
);

CREATE TABLE vend_pro(
   commerco_id INT AUTO_INCREMENT NOT NULL,
   pro_id INT AUTO_INCREMENT NOT NULL,
   PRIMARY KEY(commerco_id, pro_id),
   FOREIGN KEY(commerco_id) REFERENCES Commerciaux(commerco_id),
   FOREIGN KEY(pro_id) REFERENCES Pro(pro_id)
);

CREATE TABLE Particuliers(
   particulier_id INT AUTO_INCREMENT NOT NULL,
   particulier_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(particulier_id)
);

CREATE TABLE Pro(
   pro_id INT AUTO_INCREMENT NOT NULL,
   pro_nom VARCHAR(50) NOT NULL,
   PRIMARY KEY(pro_id)
)

CREATE TABLE Clients(
   cli_id INT AUTO_INCREMENT NOT NULL,
   PRIMARY KEY(cli_id),
   FOREIGN KEY(particulier_id) REFERENCES Particuliers(particulier_id),
   FOREIGN KEY(pro_id) REFERENCES Pro(pro_id)
);

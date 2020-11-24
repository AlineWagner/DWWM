CREATE TABLE Client(
   cli_id INT AUTO_INCREMENT,
   cli_nom VARCHAR(30) NOT NULL,
   cli_adresse VARCHAR(30) NOT NULL,
   cli_ville VARCHAR(30) NOT NULL,
   cli_pays VARCHAR(30) NOT NULL,
   cli_phone VARCHAR(12) NOT NULL,
   PRIMARY KEY(cli_id)
);

CREATE TABLE Services(
   service_id INT AUTO_INCREMENT NOT NULL,
   service_reparation VARCHAR(50),
   service_entretien VARCHAR(50),
   service_desc VARCHAR(50) NOT NULL,
   service_prix DECIMAL NOT NULL,
   PRIMARY KEY(service_id)
);

CREATE TABLE Accessoire(
   access_id INT AUTO_INCREMENT,
   access_label VARCHAR(30) NOT NULL,
   access_desc VARCHAR(50) NOT NULL,
   access_prix DECIMAL NOT NULL,
   PRIMARY KEY(access_id)
);

CREATE TABLE Salarie(
   salarie_id INT AUTO_INCREMENT,
   salarie_nom VARCHAR(30),
   PRIMARY KEY(salarie_id)
);

CREATE TABLE Marque(
   marque_id INT AUTO_INCREMENT,
   marque_nom VARCHAR(30),
   PRIMARY KEY(marque_id)
);

CREATE TABLE Modele(
   modele_id INT AUTO_INCREMENT,
   modele_nom VARCHAR(30),
   marque_id INT NOT NULL,
   PRIMARY KEY(modele_id),
   FOREIGN KEY(marque_id) REFERENCES Marque(marque_id)
);

CREATE TABLE Commande(
   com_id INT AUTO_INCREMENT,
   cli_id INT NOT NULL,
   salarie_id INT NOT NULL,
   PRIMARY KEY(com_id),
   FOREIGN KEY(salarie_id) REFERENCES Salarie(salarie_id),
   FOREIGN KEY(cli_id) REFERENCES Client(cli_id)
);

CREATE TABLE Vehicule(
   vehi_id INT AUTO_INCREMENT,
   modele_id INT NOT NULL,
   vente_vehiparti VARCHAR(30) NOT NULL,
   vente_vehioccase VARCHAR(30) NOT NULL,
   vente_desc VARCHAR(50) NOT NULL,
   vente_prix DECIMAL NOT NULL,
   PRIMARY KEY(vehi_id),
   FOREIGN KEY(modele_id) REFERENCES Modele(modele_id)
);

CREATE TABLE LigneCommande(
   lcom_id INT AUTO_INCREMENT,
   access_id INT,
   service_id INT,
   vehi_id INT,
   com_id INT NOT NULL,
   PRIMARY KEY(lcom_id),
   FOREIGN KEY(access_id) REFERENCES Accessoire(access_id),
   FOREIGN KEY(service_id) REFERENCES Service(service_id),
   FOREIGN KEY(vehi_id) REFERENCES Vehicule(vehi_id),
   FOREIGN KEY(com_id) REFERENCES Commande(com_id)
);
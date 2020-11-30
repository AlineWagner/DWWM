-- Afficher la liste des hôtels avec leur station.

CREATE VIEW v_hotels_stations
AS
SELECT sta_nom, hot_nom
FROM station
INNER JOIN hotel ON hot_sta_id = sta_id
WHERE hot_sta_id = sta_id


-- Afficher la liste des chambres et leur hôtel

CREATE VIEW v_hotels_chambres
AS
SELECT hot_nom, cha_numero
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id
WHERE cha_hot_id = hot_id


-- Afficher la liste des réservations avec le nom des clients

CREATE VIEW v_clients_reservs
AS
SELECT CONCAT(cli_nom, ', ', cli_prenom) AS 'Nom du client', CONCAT('Chambre ', cha_numero, ' du ', res_date_debut, ' au ', res_date_fin) AS 'Réservation'
FROM client
INNER JOIN reservation ON res_cli_id = cli_id
INNER JOIN chambre ON res_cha_id = cha_id
WHERE res_cli_id = cli_id


-- Afficher la liste des chambres avec le nom de l'hôtel et le nom de la station

CREATE VIEW v_sta_hots_chas
AS
SELECT sta_nom AS 'Station', hot_nom AS 'Hôtel', cha_numero AS 'Chambre'
FROM hotel
INNER JOIN station ON hot_sta_id = sta_id
INNER JOIN chambre ON cha_hot_id = hot_id
WHERE hot_sta_id = sta_id


-- Afficher les réservations avec le nom du client et le nom de l'hôtel

CREATE VIEW v_cli_hot_reserv
AS
SELECT CONCAT(cli_nom, ', ', cli_prenom) AS 'Nom du client', hot_nom AS 'Hotel', CONCAT('Chambre ', cha_numero, ' du ', res_date_debut, ' au ', res_date_fin) AS 'Réservation'
FROM reservation
INNER JOIN client ON res_cli_id = cli_id
INNER JOIN chambre ON res_cha_id = cha_id
INNER JOIN hotel ON cha_hot_id = hot_id
WHERE res_cli_id = cli_id
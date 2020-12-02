-- v_Details correspondant à la requête : _A partir de la table orders_details, afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot.

CREATE VIEW v_Details
AS
SELECT
    SUM(ode_quantity) AS 'QteTot',
    SUM(ode_unit_price) AS 'PrixTot'
FROM orders_details
INNER JOIN products ON ode_pro_id = pro_id
ORDER BY pro_id


-- v_Ventes_Zoom correspondant à la requête : Afficher les ventes dont le code produit est ZOOM (affichage de toutes les colonnes de la table orders_details).

CREATE VIEW v_Ventes_Zoom
AS
SELECT orders_details.*
FROM orders_details
INNER JOIN products ON ode_pro_id = pro_id
WHERE pro_ref = 'ZOOM'





-- Créez une vue qui affiche le catalogue produits. L'id, la référence et le nom des produits, ainsi que l'id et le nom de la catégorie doivent apparaître.

CREATE VIEW v_irnP_inC
AS
SELECT
    pro_id,
    pro_ref,
    pro_name,
    cat_id,
    cat_name
FROM products
INNER JOIN categories ON pro_cat_id = cat_id
WHERE pro_cat_id = cat_id


-- Créez la procédure stockée facture qui permet d'afficher les informations nécessaires à une facture en fonction d'un numéro de commande. Cette procédure doit sortir le montant total de la commande.


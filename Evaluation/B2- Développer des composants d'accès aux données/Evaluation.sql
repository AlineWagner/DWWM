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
-- Date facture, numéro, date vente, ID cus, ID vendeur, numéro bon de commande, produit, quantité, prix, discount, total, date paiement

DELIMITER |
CREATE PROCEDURE infosFacture
BEGIN
    SELECT
        ord_ship_date,
        ord_order_date,
        cus_id,
        sup_id,
        ord_id,
        pro_name,
        ode_quantity,
        pro_price,
        ode_discount,
        SUM(ode_unit_price*ode_quantity-(ode_discount*(ode_unit_price*ode_quantity)/100)) AS 'Total',
        ord_payment_date
    FROM orders_details
    INNER JOIN orders ON ord_id = ode_ord_id
    INNER JOIN customers ON cus_id = ord_cus_id
    INNER JOIN products ON pro_id = ode_pro_id
    INNER JOIN suppliers ON sup_id = pro_sup_id
    WHERE ord_id = ord_id
END |
DELIMITER ;


-- Présentez le déclencheur after_products_update demandé dans la phase 2 de la séance sur les déclencheurs.
--Créer un déclencheur after_products_update sur la table products : lorsque le stock physique devient inférieur au stock d'alerte, une nouvelle ligne est insérée dans la table commander_articles.

/*
CREATE TRIGGER after_products_update
AFTER UPDATE ON products
AS
BEGIN
IF UPDATE(pro_stock)
    BEGIN
        UPDATE commander_articles
        SET
            codart = pro_id,
            qte = SUM(pro_stock_alert - pro_stock)
        FROM commander_articles
        JOIN products ON codart = pro_id;
    END;
END IF;

---

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
IF new.pro_stock < old.pro_stock_alert THEN
    INSERT INTO commander_articles(codart, qte, date)
    VALUES(pro_id, SUM(pro_stock_alert - pro_stock), pro_update_date);
END IF;
END;

---

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
INSERT INTO commander_articles (codart, qte, date)
    VALUES pro_id, SUM(pro_stock_alert - pro_stock), pro_update_date
    FROM products
    WHERE pro_id = codart
    AND new.pro_stock < pro_stock_alert;
END;
*/

DELIMITER |
CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    IF new.pro_stock < new.pro_stock_alert THEN
        INSERT INTO commander_articles(codart, qte, `date`)
        VALUES (new.pro_id, (new.pro_stock_alert - new.pro_stock), new.pro_update_date);
    END IF;
END |
DELIMITER ;


-- Amity HANAH, Manageuse au sein du magasin d'Arras, vient de prendre sa retraite. Il a été décidé, après de nombreuses tractations, de confier son poste au pépiniériste le plus ancien en poste dans ce magasin. Ce dernier voit alors son salaire augmenter de 5% et ses anciens collègues pépiniéristes passent sous sa direction.
--Ecrire la transaction permettant d'acter tous ces changements en base des données.
--La base de données ne contient actuellement que des employés en postes. Il a été choisi de garder en base une liste des anciens collaborateurs de l'entreprise parti en retraite. Il va donc vous falloir ajouter une ligne dans la table posts pour référencer les employés à la retraite.
--Décrire les opérations qui seront à réaliser sur la table posts.
--Ecrire les requêtes correspondant à ces opéarations.
--Ecrire la transaction


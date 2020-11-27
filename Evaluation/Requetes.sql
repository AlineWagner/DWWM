-- Q1. Afficher dans l'ordre alphabétique et sur une seule colonne les noms et prénoms des employés qui ont des enfants, présenter d'abord ceux qui en ont le plus.

SELECT
    CONCAT(emp_lastname, ' ', emp_firstname),
    emp_children
FROM `employees`
ORDER BY
    emp_children DESC,
    emp_lastname ASC;


-- Q2. Y-a-t-il des clients étrangers ? Afficher leur nom, prénom et pays de résidence.

SELECT
    cus_lastname,
    cus_firstname,
    cus_countries_id
FROM `customers`
WHERE cus_countries_id NOT IN
    (SELECT cou_id FROM countries WHERE cou_name = 'France')
ORDER BY cus_countries_id;


-- Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays.

SELECT
    cus_city,
    cus_countries_id,
    cou_name
FROM
    `customers`
INNER JOIN countries ON cus_countries_id = cou_id
ORDER BY cus_city;


-- Q4. Afficher le nom des clients dont les fiches ont été modifiées

SELECT
    cus_lastname,
    cus_update_date
FROM `customers`
WHERE cus_update_date IS NOT NULL;


-- Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne est qu'il habite une ville genre 'divos'. Pouvez-vous l'aider ?

SELECT
    cus_id,
    cus_lastname,
    cus_firstname,
    cus_city
FROM `customers`
WHERE cus_city LIKE '%divos%';


-- Q6. Quel est le produit vendu le moins cher ? Afficher le prix, l'id et le nom du produit.

SELECT
    pro_id,
    pro_name,
    MIN(pro_price)
FROM `products`;


-- Q7. Lister les produits qui n'ont jamais été vendus

SELECT
    pro_id,
    pro_ref,
    pro_name
FROM `products`
WHERE pro_id NOT IN
    (SELECT ode_pro_id
    FROM orders_details);


-- Q8. Afficher les produits commandés par Madame Pikatchien.

SELECT
    pro_id,
    pro_ref,
    pro_name,
    cus_id,
    ord_id,
    ode_id
FROM `products`
INNER JOIN customers ON cus_id = cus_id
INNER JOIN orders ON ord_id = ord_id
INNER JOIN orders_details ON ode_id = ode_id
WHERE cus_lastname LIKE 'Pikatchien';


-- Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés.

SELECT
    cat_id,
    cat_name,
    pro_name
FROM `categories`
INNER JOIN products ON pro_id = pro_id
ORDER BY cat_name;


-- Q10. Afficher l'organigramme hiérarchique (nom et prénom et poste des employés) du magasin de Compiègne, classer par ordre alphabétique. Afficher le nom et prénom des employés, éventuellement le poste (si vous y parvenez).
/*
SELECT
    CONCAT(emp_lastname, ' ', emp_firstname) AS Employé,
    CONCAT(emp_lastname, ' ', emp_firstname) AS Supérieur
*/

-- Q11. Quel produit a été vendu avec la remise la plus élevée ? Afficher le montant de la remise, le numéro et le nom du produit, le numéro de commande et de ligne de commande.

SELECT
    MAX(ode_discount),
    pro_id,
    pro_name,
    ord_id,
    ode_id
FROM `orders_details`
INNER JOIN products ON pro_id = pro_id
INNER JOIN orders ON ord_id = ord_id;


-- Q12.
-- Q13. Combien y-a-t-il de clients canadiens ? Afficher dans une colonne intitulée 'Nb clients Canada'

SELECT
    COUNT(cus_countries_id) AS `Nb clients Canada`
FROM `customers`
WHERE cus_countries_id LIKE 'CA'
GROUP BY cus_countries_id;


-- Q16. Afficher le détail des commandes de 2020.

SELECT
    ode_id,
    ode_unit_price,
    ode_discount,
    ode_quantity,
    ode_ord_id,
    ode_pro_id,
    ord_order_date
FROM `orders_details`
INNER JOIN orders ON ode_ord_id = ord_id
WHERE ord_order_date LIKE '2020%'
GROUP BY ode_ord_id;


-- Q17. Afficher les coordonnées des fournisseurs pour lesquels des commandes ont été passées.

SELECT *
FROM `suppliers`
INNER JOIN products ON pro_sup_id = sup_id
INNER JOIN orders_details ON ode_ord_id = ode_ord_id
INNER JOIN orders ON ode_id = ode_id
WHERE sup_id NOT IN
    (SELECT ode_pro_id
    FROM orders_details)
GROUP BY sup_id;


-- Q18. Quel est le chiffre d'affaires de 2020 ?

SELECT SUM(ode_unit_price*ode_quantity-(ode_discount*(ode_unit_price*ode_quantity)/100)) AS 'Montant Ventes 2020'
FROM `orders_details`
INNER JOIN orders ON ode_ord_id = ord_id
WHERE ord_order_date LIKE '2020%';


-- Q19. Quel est le panier moyen ?
/*
SELECT AVG(ode_unit_price) AS 'Panier moyen'
FROM orders_details
*/

-- Q20. Lister le total de chaque commande par total décroissant (Afficher numéro de commande, date, total et nom du client).

SELECT
    ord_id,
    ord_order_date,
    SUM(ode_unit_price*ode_quantity-(ode_discount*(ode_unit_price*ode_quantity)/100)) AS 'Total',
    CONCAT(cus_lastname, cus_firstname)
FROM `orders`
INNER JOIN orders_details ON ode_ord_id = ord_id
INNER JOIN customers ON ord_cus_id = cus_id
GROUP BY cus_id
ORDER BY `Total` ASC;


-- Q22. La version 2020 du produit barb004 s'appelle désormais Camper et, bonne nouvelle, son prix subit une baisse de 10%.

UPDATE products
SET pro_name = 'Camper'
WHERE pro_ref = 'barb004';


-- Q23. L'inflation en France en 2019 a été de 1,1%, appliquer cette augmentation à la gamme de parasols.

UPDATE products
SET pro_price = SUM(pro_price*(1.1*pro_price/100))
WHERE cat_id = 25;

-- Q24. Supprimer les produits non vendus de la catégorie "Tondeuses électriques". Vous devez utilisez une sous-requête sans indiquer de valeurs de clés.

DELETE FROM products
INNER JOIN orders_details ON ode_pro_id = pro_id
WHERE pro_cat_id = 9
AND pro_id NOT IN
    (SELECT ode_pro_id
    FROM orders_details);
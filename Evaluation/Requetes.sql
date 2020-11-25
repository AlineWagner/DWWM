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
ORDER BY cus_countries_id


-- Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays.

SELECT
    cus_city,
    cus_countries_id,
    cou_name
FROM
    `customers`
INNER JOIN countries ON cus_countries_id = cou_id
ORDER BY cus_city


-- Q4. Afficher le nom des clients dont les fiches ont été modifiées

SELECT
    cus_lastname,
    cus_update_date
FROM `customers`
WHERE cus_update_date IS NOT NULL


-- Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne est qu'il habite une ville genre 'divos'. Pouvez-vous l'aider ?

SELECT
    cus_id,
    cus_lastname,
    cus_firstname,
    cus_city
FROM `customers`
WHERE cus_city LIKE '%divos%'


-- Q6. Quel est le produit vendu le moins cher ? Afficher le prix, l'id et le nom du produit.

SELECT
    pro_id,
    pro_name,
    MIN(pro_price)
FROM `products`


-- Q7. Lister les produits qui n'ont jamais été vendus

SELECT
    pro_id,
    pro_ref,
    pro_name
FROM `products`
WHERE pro_id NOT IN
    (SELECT ode_pro_id
    FROM orders_details)


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
WHERE cus_lastname LIKE 'Pikatchien'


-- Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés.

SELECT
    cat_id,
    cat_name,
    pro_name
FROM categories
INNER JOIN products ON pro_id = pro_id
ORDER BY cat_name


-- Q10. Afficher l'organigramme hiérarchique (nom et prénom et poste des employés) du magasin de Compiègne, classer par ordre alphabétique. Afficher le nom et prénom des employés, éventuellement le poste (si vous y parvenez).

SELECT
    CONCAT(emp_lastname, ' ', emp_firstname) AS Employé,
    CONCAT(emp_lastname, ' ', emp_firstname) AS Supérieur
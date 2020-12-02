-- Créez un groupe marketing qui peut ajouter, modifier et supprimer des produits et des catégories, consulter des commandes, leur détails et les clients. Ce groupe ne peut rien faire sur les autres tables.

CREATE ROLE r_gescom_marketing@locahost;

GRANT INSERT, UPDATE, DELETE
ON products
TO r_gescom_marketing;

GRANT INSERT, UPDATE, DELETE
ON categories
TO r_gescom_marketing;

GRANT SELECT
ON orders
TO r_gescom_marketing;

GRANT SELECT
ON orders_details
TO r_gescom_marketing;

GRANT SELECT
ON clients
TO r_gescom_marketing;
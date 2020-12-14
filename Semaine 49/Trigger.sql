CREATE TABLE commander_articles (
    codart INT,
    qte INT,
    date DATETIME
);



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

CREATE TABLE SubCategories(
    cat_id INT NOT NULL,
    subcat_id INT NOT NULL,
    subcat_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (subcat_id),
    FOREIGN KEY (cat_id) REFERENCES Categories (cat_id)
);

CREATE TABLE Categories(
   cat_id INT NOT NULL,
   cat_name VARCHAR(50) NOT NULL,
   PRIMARY KEY (cat_id)
);

CREATE TABLE Employees(
   emp_id INT NOT NULL,
   pos_id INT NOT NULL,
   emp_ref VARCHAR(10) NOT NULL,
   emp_surname VARCHAR(50) NOT NULL,
   emp_name VARCHAR(50) NOT NULL,
   PRIMARY KEY (emp_id),
   FOREIGN KEY (pos_id) REFERENCES Positions (pos_id)
);

CREATE TABLE Positions(
   pos_id INT NOT NULL,
   pos_name VARCHAR(50) NOT NULL,
   PRIMARY KEY (pos_id)
);

CREATE TABLE Countries(
   cou_id VARCHAR(2) NOT NULL,
   cou_name VARCHAR(50) NOT NULL,
   PRIMARY KEY (cou_id)
);

CREATE TABLE Delivery(
   deli_id INT NOT NULL,
   deli_nbr INT NOT NULL,
   deli_ref VARCHAR(50) NOT NULL,
   deli_desc VARCHAR(50) NOT NULL,
   PRIMARY KEY (deli_id)
);

CREATE TABLE Suppliers(
   sup_id INT NOT NULL,
   sup_name VARCHAR(50) NOT NULL,
   sup_address VARCHAR(50) NOT NULL,
   sup_city VARCHAR(50) NOT NULL,
   sup_zip VARCHAR(10) NOT NULL,
   sup_phone VARCHAR(50) NOT NULL,
   sup_mail VARCHAR(50) NOT NULL,
   cou_id VARCHAR(50) NOT NULL,
   PRIMARY KEY (sup_id),
   FOREIGN KEY (cou_id) REFERENCES Countries (cou_id)
);

CREATE TABLE Clients(
   cli_id INT NOT NULL,
   cli_ref VARCHAR(10) NOT NULL,
   cli_surname VARCHAR(50) NOT NULL,
   cli_name VARCHAR(50) NOT NULL,
   cli_billaddress VARCHAR(50) NOT NULL,
   cli_billcity VARCHAR(50) NOT NULL,
   cli_billzip VARCHAR(10) NOT NULL,
   cli_deliaddress VARCHAR(50) NOT NULL,
   cli_delicity VARCHAR(50) NOT NULL,
   cli_delizip VARCHAR(10) NOT NULL,
   cli_phone VARCHAR(20) NOT NULL,
   cli_mail VARCHAR(50) NOT NULL,
   cli_password VARCHAR(50) NOT NULL,
   cli_type TINYINT NOT NULL,
   cli_coeff INT NOT NULL,
   cou_id VARCHAR(50) NOT NULL,
   PRIMARY KEY (cli_id),
   FOREIGN KEY (cou_id) REFERENCES Countries (cou_id)
);

CREATE TABLE Sales(
   sales_id INT NOT NULL,
   sales_num INT NOT NULL,
   sales_state VARCHAR(50) NOT NULL,
   sales_billadd VARCHAR(50) NOT NULL,
   sales_billdeli VARCHAR(50) NOT NULL,
   sales_date DATETIME NOT NULL,
   sales_paydate DATE NOT NULL,
   sales_reduc INT NOT NULL,
   emp_id INT NOT NULL,
   cli_id INT NOT NULL,
   PRIMARY KEY (sales_id),
   FOREIGN KEY (emp_id) REFERENCES Employees (emp_id),
   FOREIGN KEY (cli_id) REFERENCES Clients (cli_id)
);

CREATE TABLE Products(
   pro_id INT NOT NULL,
   pro_name VARCHAR(50) NOT NULL,
   pro_label VARCHAR(50) NOT NULL,
   pro_desc VARCHAR(50) NOT NULL,
   pro_price DECIMAL(5,2) NOT NULL,
   pro_pic VARCHAR(50) NOT NULL,
   subcat_id INT NOT NULL,
   sup_id INT NOT NULL,
   PRIMARY KEY (pro_id),
   FOREIGN KEY (subcat_id) REFERENCES SubCategories (subcat_id),
   FOREIGN KEY (sup_id) REFERENCES Suppliers (sup_id)
);

CREATE TABLE Order_Details(
   orde_id INT NOT NULL,
   orde_quantity INT NOT NULL,
   sales_id INT NOT NULL,
   pro_id INT NOT NULL,
   PRIMARY KEY (orde_id),
   FOREIGN KEY (sales_id) REFERENCES Sales (sales_id),
   FOREIGN KEY (pro_id) REFERENCES Products (pro_id)
);

CREATE TABLE Delivered(
   orde_id INT NOT NULL,
   deli_id INT NOT NULL,
   quantity INT NOT NULL,
   deliadd VARCHAR(50) NOT NULL,
   delidate DATE NOT NULL,
   PRIMARY KEY (orde_id, deli_id),
   FOREIGN KEY (orde_id) REFERENCES Order_Details (orde_id),
   FOREIGN KEY (deli_id) REFERENCES Delivery (deli_id)
);

CREATE TABLE SubCategories(
   subcategory_id INT,
   category_id INT NOT NULL,
   PRIMARY KEY(subcategory_id),
);

CREATE TABLE Categories(
   category_id INT,
   category_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(category_id),
   FOREIGN KEY(subcategory_id) REFERENCES SubCategories(subcategory_id)
);

CREATE TABLE Suppliers(
   sup_id INT,
   sup_name VARCHAR(50),
   sup_address VARCHAR(50),
   sup_phone VARCHAR(50),
   sup_red VARCHAR(50)
   PRIMARY KEY(supplier_id),
   FOREIGN KEY(salesrep_id) REFERENCES SalesRep(salesrep_id),
);

CREATE TABLE SalesRep(
   salesrep_id INT,
   salesrep_name VARCHAR(50),
   PRIMARY KEY(salesrep_id),
   FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Products(
   product_id INT,
   product_name VARCHAR(50) NOT NULL,
   product_price DECIMAL NOT NULL,
   product_EANcode INT NOT NULL UNIQUE,
   product_color VARCHAR(50) NOT NULL,
   product_desc VARCHAR(50) NOT NULL,
   product_photo VARCHAR(50) NOT NULL,
   product_ref VARCHAR(50) NOT NULL,
   product_phystock INT NOT NULL,
   product_alertstock INT NOT NULL,
   product_addate DATE NOT NULL,
   product_moddate DATETIME NOT NULL,
   product_forsale LOGICAL NOT NULL,
   PRIMARY KEY(product_id),
   FOREIGN KEY(salesrep_id) REFERENCES SalesRep(salesrep_id),
   FOREIGN KEY(category_id) REFERENCES Categories(category_id),
   FOREIGN KEY(sale_id) REFERENCES Sale(sale_id)
);

CREATE TABLE CommandLine(
   commandline_id INT,
   PRIMARY KEY(commandline_id),
   FOREIGN KEY(sale_id) REFERENCES Sale(sale_id)
);

CREATE TABLE Clients(
   client_id INT,
   client_name VARCHAR(50) NOT NULL,
   client_pw VARCHAR(50) NOT NULL,
   client_billaddress VARCHAR(50) NOT NULL,
   client_billcity VARCHAR(50) NOT NULL,
   client_deliadress VARCHAR(50) NOT NULL,
   client_delicity VARCHAR(50) NOT NULL,
   client_phone VARCHAR(50) NOT NULL,
   client_adddate DATE NOT NULL,
   client_moddate DATETIME NOT NULL,
   PRIMARY KEY(client_id)
);

CREATE TABLE Employees(
   employees_id INT,
   employee_name VARCHAR(50) NOT NULL,
   employee_position VARCHAR(50) NOT NULL,
   employee_service VARCHAR(50) NOT NULL,
   employee_store VARCHAR(50) NOT NULL,
   employee_sex LOGICAL NOT NULL,
   employee_seniority INT NOT NULL,
   employee_salary DECIMAL NOT NULL,
   employee_children INT NOT NULL,
   PRIMARY KEY(employees_id)
);

CREATE TABLE Sale(
   sale_id INT,
   sale_tax INT NOT NULL,
   sale_rebate DECIMAL(4,2) NOT NULL,
   sale_billadd VARCHAR(50) NOT NULL,
   sale_billdeli VARCHAR(50) NOT NULL,
   sale_date DATETIME NOT NULL,
   sale_tracking VARCHAR(50) NOT NULL UNIQUE,
   client_id INT NOT NULL,
   employees_id INT NOT NULL,
   PRIMARY KEY(sale_id),
   FOREIGN KEY(client_id) REFERENCES Clients(client_id),
   FOREIGN KEY(product_id) REFERENCES Products(product_id),
   FOREIGN KEY(employees_id) REFERENCES Employees(employees_id),
   FOREIGN KEY(commandline_id) REFERENCES CommandLine(commandline_id)
);
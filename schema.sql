DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL, 
	department_name VARCHAR(100) NOT NULL, 
	price DECIMAL(11, 2) NOT NULL, 
	stock_quantity INTEGER NOT NULL, 
    PRIMARY KEY (item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
    VALUES("Vans High Top", "Shoes", 70, 50),
        ("Printed Tee", "Tops", 25, 100), 
        ("Cotton Hoodie", "Tops", 40, 50), 
        ("Jeans", "Bottoms", 50, 100), 
        ("Racerbacl Tank", "Tops", 15, 500), 
        ("Adidas Gazelle", "Shoes", 80, 30), 
        ("Maxi Skirt", "Bottoms", 30, 100), 
        ("Button Down Shirt", "Tops", 40, 60), 
        ("Skinny Ankle Chinos", "Bottoms", 50, 200),      
        ("Tank tops", "Tops", 15, 200); 
        

ALTER TABLE products
    ADD product_sales INTEGER NOT NULL DEFAULT 0;

SELECT * FROM products;

CREATE TABLE departments (
	department_id INTEGER AUTO_INCREMENT NOT NULL, 
    department_name VARCHAR(100) NOT NULL, 
    over_head_costs DECIMAL(11, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (department_id)
); 

INSERT INTO departments(department_name, over_head_costs)
VALUES("Shoes", 80), ("Tops", 10000), ("Bottoms", 10000), ("Other", 5000);

SELECT * FROM departments;
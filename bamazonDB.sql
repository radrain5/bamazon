CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (
		item_id INT NOT NULL AUTO_INCREMENT,
        product_name VARCHAR(45) NULL,
		department_name VARCHAR(30) NULL,
        price INT NULL,
        stock_quantity INT NULL,
        PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Taylor Acoustic Guitar", "Music", 1500, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Easton Mako Bat", "Sports", 150, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rawlings Baseball Glove", "Sports", 200, 11);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Red Couch", "Home Furnishings", 450, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dog Crate", "Pets", 45, 7);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Lawn Mower", "Lawn Care", 150, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Oakley Frogskins", "Sunglasses", 120, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nike Air Max Size 12", "Shoes", 150, 4);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Prince Tennis Raquet", "Sports", 200, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Elixer Polyweb Guitar Strings", "Music", 18, 100);

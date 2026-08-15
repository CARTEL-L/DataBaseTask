CREATE DATABASE ecommerce;
CREATE TABLE Users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(250)
    );
    
    CREATE TABLE products (
	products_id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL (50),
    quantity_in_store INT(50),
    quantity_sold INT (50)
    );
    
    
     CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL (50),
    quantity_sold INT(50)
    );
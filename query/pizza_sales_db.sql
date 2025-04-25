/* © 2024 Eileen Ip. All rights reserved. 
Pizza-Sales-Analysis
*/

CREATE DATABASE Pizza_Sales_Analysis
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE Pizza_Sales_Analysis;

/*------------------------------------Table- Pizza-Sales------------------------------------*/
CREATE TABLE pizza_sales (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    pizza_name_id VARCHAR(35),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(5),
    pizza_category VARCHAR(35),
    pizza_ingredients VARCHAR(100),
    pizza_name VARCHAR(55)
);

-- For loading data in MySQL, you would use:
LOAD DATA INFILE "pizza_sales.csv"
INTO TABLE pizza_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
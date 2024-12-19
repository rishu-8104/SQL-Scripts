-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-21
-- File: 022-domain-constraints-in-product-table.sql

-- Create the PRODUCT table with primary key and domain constraints
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255) CHECK (LENGTH(name) > 4),
    description VARCHAR(255) CHECK (LENGTH(description) > 10),
    weight DECIMAL CHECK (weight > 0),
    sell_price DECIMAL CHECK (sell_price > 0),
    net_price DECIMAL CHECK (net_price < sell_price)
);

-- Failed insert: NAME is shorter than 5 characters
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (1, 'TV', 'High-quality TV', 10.5, 599.99, 499.99);

-- Failed insert: DESCRIPTION is shorter than 11 characters
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (2, 'Laptop', 'Powerful', 2.0, 999.99, 950.00);

-- Failed insert: WEIGHT is a non-positive number
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (3, 'Refrigerator', 'Large fridge', -50.5, 799.99, 749.99);

-- Failed insert: SELL PRICE is not greater than 0
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (4, 'Microwave', 'Compact microwave', 3.5, 0, 0);

-- Failed insert: NET PRICE is not lower than sell price
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (5, 'Washing Machine', 'Top-loading washer', 45.0, 799.99, 800.00);

-- Successful insert: All domain constraints are met
INSERT INTO product (id, name, description, weight, sell_price, net_price)
VALUES (6, 'Sofa', 'Comfortable sofa for the living room', 80.0, 699.99, 599.99);

-- End of file

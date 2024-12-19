-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-20
-- File: 011-foreign-key-between-person-phone.sql

-- Create the PERSON table with primary key constraint
CREATE TABLE person (
    id INT PRIMARY KEY,
    last VARCHAR(255),
    first VARCHAR(255),
    phone INT,
    city VARCHAR(255),
    address VARCHAR(255),
    FOREIGN KEY (phone) REFERENCES phone(id)
);

-- Create the PHONE table with primary key constraint
CREATE TABLE phone (
    id INT PRIMARY KEY,
    number VARCHAR(255),
    comment VARCHAR(255)
);

-- Successful FK: Insert into PHONE table first, then into PERSON table.
INSERT INTO phone (id, number, comment)
VALUES (1, '+1 222 333', 'work');

INSERT INTO person (id, last, first, phone, city, address)
VALUES (1, 'Doe', 'John', 1, 'New York', '12th Street');

-- Failed FK: Should fail because there is no phone with id 4 defined in the "phone" table
INSERT INTO person (id, last, first, phone, city, address)
VALUES (2, 'Jordan', 'Mike', 4, 'Washington', 'South Park Bd 3');

-- End of file

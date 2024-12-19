-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-21
-- File: 021-domain-constraints-in-person-table.sql

-- Create the PERSON table with primary key and domain constraints
CREATE TABLE person (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    phone VARCHAR(255) CHECK (LENGTH(phone) > 5),
    dob DATE CHECK (YEAR(dob) > 1930)
);

-- Failed insert: PHONE NUMBER is shorter than 5 characters
INSERT INTO person (id, name, phone, dob)
VALUES (1, 'John Doe', '1234', '1990-01-01');

-- Failed insert: DOB is not later than the year 1930
INSERT INTO person (id, name, phone, dob)
VALUES (2, 'Jane Smith', '12345', '1920-01-01');

-- Successful insert: Both domain constraints are met
INSERT INTO person (id, name, phone, dob)
VALUES (3, 'Mike Johnson', '123456', '1955-05-05');

-- End of file

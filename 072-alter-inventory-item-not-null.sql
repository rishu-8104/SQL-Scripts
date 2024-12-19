-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-27
-- File: 072-alter-inventory-item-not-null.sql

-- Add NOT NULL constraint to the "item" column in the INVENTORY table
ALTER TABLE inventory
MODIFY item VARCHAR(255) NOT NULL;

-- End of file

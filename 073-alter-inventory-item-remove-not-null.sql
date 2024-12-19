-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-27
-- File: 073-alter-inventory-item-remove-not-null.sql

-- Remove the NOT NULL constraint from the "item" column in the INVENTORY table
ALTER TABLE inventory
MODIFY item VARCHAR(255);

-- End of file

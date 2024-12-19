-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-27
-- File: 074-alter-inventory-comment-default.sql

-- Modify the "comment" column in the INVENTORY table to use default value "No comment" in case of NULL
ALTER TABLE inventory
MODIFY comment VARCHAR(255) DEFAULT 'No comment';

-- End of file

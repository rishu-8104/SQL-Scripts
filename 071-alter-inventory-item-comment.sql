-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-27
-- File: 071-alter-inventory-item-comment.sql

-- Increase the sizes of the "item" and "comment" columns in the INVENTORY table
ALTER TABLE inventory
MODIFY item VARCHAR(255); -- Increase "item" size by 100 characters

ALTER TABLE inventory
MODIFY comment VARCHAR(255); -- Increase "comment" size by 100 characters

-- End of file

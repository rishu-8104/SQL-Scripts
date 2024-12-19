-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-22
-- File: 034-index-remove.sql

-- Remove the "users__first_index" from the PERSON table
DROP INDEX users__first_index;

-- Remove the "users__last_index" from the PERSON table
DROP INDEX users__last_index;

-- Remove the "phone__number_index" from the PHONE table
DROP INDEX phone__number_index;

-- End of file

-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-22
-- File: 033-index-phone-number.sql

-- First, make sure that the "number" column in the PHONE table is NOT NULL.
ALTER TABLE phone
MODIFY COLUMN number VARCHAR(255) NOT NULL;

-- Create a unique index on the "number" column of the PHONE table
CREATE UNIQUE INDEX phone__number_index ON phone (number);

-- End of file

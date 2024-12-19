-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-22
-- File: 032-index-person-last.sql

-- First, make sure that the "last" column in the PERSON table is NOT NULL.
ALTER TABLE person
MODIFY COLUMN last VARCHAR(255) NOT NULL;

-- Create an index on the "last" column of the PERSON table
CREATE INDEX users__last_index ON person (last);

-- End of file

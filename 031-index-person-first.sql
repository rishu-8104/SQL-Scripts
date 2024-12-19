-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-22
-- File: 031-index-person-first.sql

-- First, make sure that the "first" column in the PERSON table is NOT NULL.
ALTER TABLE person
MODIFY COLUMN first VARCHAR(255) NOT NULL;

-- Create an index on the "first" column of the PERSON table
CREATE INDEX users__first_index ON person (first);

-- End of file

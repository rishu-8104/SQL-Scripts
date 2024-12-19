-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 063-update-person-city.sql

-- Update Stephen's city to "Denver" in the PERSON table
UPDATE person
SET city = 'Denver'
WHERE last = 'Durak';

-- End of file

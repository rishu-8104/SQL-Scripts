-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 064-update-person-city-john-doe.sql

-- Update John Doe's city to "Miami" in the PERSON table
UPDATE person
SET city = 'Miami'
WHERE first = 'John' AND last = 'Doe';

-- End of file

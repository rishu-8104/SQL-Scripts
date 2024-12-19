-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 061-update-person-address.sql

-- Update the address of John Doe in the PERSON table
UPDATE person
SET address = '21st Street'
WHERE first = 'John' AND last = 'Doe';

-- End of file

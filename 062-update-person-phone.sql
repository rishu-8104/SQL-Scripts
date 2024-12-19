-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 062-update-person-phone.sql

-- Update Mike Jordan's phone number in the PERSON table
UPDATE person
SET phone = '+1 222 333 444'
WHERE first = 'Mike' AND last = 'Jordan';

-- End of file

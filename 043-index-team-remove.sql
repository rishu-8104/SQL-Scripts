-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-23
-- File: 043-index-team-remove.sql

-- Remove the "team__name_index" from the TEAM table
DROP INDEX team__name_index;

-- Remove the "team__owner_index" from the TEAM table
DROP INDEX team__owner_index;

-- End of file

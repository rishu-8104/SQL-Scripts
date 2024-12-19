-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-23
-- File: 042-index-team-owner.sql

-- Create an index on the "owner" column of the TEAM table
CREATE INDEX team__owner_index ON team (owner);

-- End of file

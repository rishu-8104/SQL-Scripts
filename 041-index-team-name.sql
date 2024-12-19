-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-23
-- File: 041-index-team-name.sql

-- Create an index on the "team_name" column of the TEAM table
CREATE INDEX team__name_index ON team (team_name);

-- End of file

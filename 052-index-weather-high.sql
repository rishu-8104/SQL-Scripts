-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 052-index-weather-high.sql

-- Create an index on the "high" column of the WEATHER table
CREATE INDEX weather__high_index ON weather (high);

-- End of file

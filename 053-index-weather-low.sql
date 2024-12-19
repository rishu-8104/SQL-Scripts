-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 053-index-weather-low.sql

-- Create an index on the "low" column of the WEATHER table
CREATE INDEX weather__low_index ON weather (low);

-- End of file

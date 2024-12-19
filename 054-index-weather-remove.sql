-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 054-index-weather-remove.sql

-- Remove the "weather__time_of_reading_index" from the WEATHER table
DROP INDEX weather__time_of_reading_index;

-- Remove the "weather__high_index" from the WEATHER table
DROP INDEX weather__high_index;

-- Remove the "weather__low_index" from the WEATHER table
DROP INDEX weather__low_index;

-- End of file

-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-24
-- File: 051-index-weather-time_of_reading.sql

CREATE INDEX weather__time_of_reading_index
ON weather (time_of_reading);

-- End of file

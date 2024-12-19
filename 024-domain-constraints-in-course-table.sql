-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-21
-- File: 024-domain-constraints-in-course-table.sql

-- Create the COURSE table with primary key and domain constraints
CREATE TABLE course (
    id INT PRIMARY KEY,
    credits INT CHECK (credits BETWEEN 1 AND 30),
    begin DATE,
    duration INT CHECK (duration > 0),
    course_name VARCHAR(255)
);

-- Failed insert: DURATION is zero
INSERT INTO course (id, credits, begin, duration, course_name)
VALUES (1, 3, '2020-01-10', 0, 'Economy');

-- Failed insert: CREDITS are not within the specified range
INSERT INTO course (id, credits, begin, duration, course_name)
VALUES (2, 35, '2020-02-15', 15, 'Mathematics');

-- Successful insert: All domain constraints are met
INSERT INTO course (id, credits, begin, duration, course_name)
VALUES (3, 5, '2020-02-20', 6, 'Biology');

-- End of file

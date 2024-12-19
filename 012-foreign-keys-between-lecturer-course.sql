-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-20
-- File: 012-foreign-keys-between-lecturer-course.sql

-- Create the LECTURER table with primary key constraint
CREATE TABLE lecturer (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    course INT,
    FOREIGN KEY (course) REFERENCES course(id)
);

-- Create the COURSE table with primary key constraint
CREATE TABLE course (
    id INT PRIMARY KEY,
    credits INT,
    begin DATE,
    duration INT,
    name VARCHAR(255)
);

-- Successful FK: Insert into COURSE table first, then into LECTURER table.
INSERT INTO course (id, credits, begin, duration, name)
VALUES (1, 3, '2020-01-10', 9, 'Economy');

INSERT INTO lecturer (id, name, course)
VALUES (1, 'John Doe', 1);

-- Failed FK: Should fail because there is no course with id 4 defined in the "course" table
INSERT INTO lecturer (id, name, course)
VALUES (2, 'Jane Doe', 4);

-- End of file

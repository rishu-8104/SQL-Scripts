-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-21
-- File: 023-domain-constraints-in-project-table.sql

-- Create the PROJECT table with primary key and domain constraints
CREATE TABLE project (
    id INT PRIMARY KEY,
    project_name VARCHAR(255) CHECK (LENGTH(project_name) > 5),
    manager_name VARCHAR(255) CHECK (LENGTH(manager_name) > 5),
    manager_phone VARCHAR(255),
    job_title VARCHAR(255) CHECK (job_title IN ('sales manager', 'office manager', 'facilities manager', 'business manager'))
);

-- Failed insert: PROJECT NAME is shorter than 6 characters
INSERT INTO project (id, project_name, manager_name, manager_phone, job_title)
VALUES (1, 'App', 'John Doe', '+1 123 456 7890', 'sales manager');

-- Failed insert: MANAGER's name is shorter than 6 characters
INSERT INTO project (id, project_name, manager_name, manager_phone, job_title)
VALUES (2, 'Marketing', 'Jane', '+1 234 567 8901', 'office manager');

-- Failed insert: JOB TITLE is not one of the accepted values
INSERT INTO project (id, project_name, manager_name, manager_phone, job_title)
VALUES (3, 'Sales', 'Mike Smith', '+1 345 678 9012', 'account manager');

-- Successful insert: All domain constraints are met
INSERT INTO project (id, project_name, manager_name, manager_phone, job_title)
VALUES (4, 'Business Expansion', 'Laura Williams', '+1 456 789 0123', 'business manager');

-- End of file

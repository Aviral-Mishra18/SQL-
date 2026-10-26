CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY,
    --value cannot be NULL and it must be unique.
    department_name VARCHAR(50) NOT NULL --Not Null means department name cannot be null. --VARCHAR as a datatype.
);
INSERT INTO departments(department_id, department_name)
VALUES ('Sales'),
    ('Support'),
    ('Warehouse');
INSERT INTO departments(department_id, department_name)
VALUES (4, 'Tech');
SELECT *
FROM departments;
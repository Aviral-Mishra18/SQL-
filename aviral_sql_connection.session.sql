-- CREATE TABLE departments(
--     department_id SERIAL PRIMARY KEY,
--     --value cannot be NULL and it must be unique.
--     department_name VARCHAR(50) NOT NULL --Not Null means department name cannot be null. --VARCHAR as a datatype.
-- );
-- INSERT INTO departments(department_id, department_name)
-- VALUES ('Sales'),
--     ('Support'),
--     ('Warehouse');
-- INSERT INTO departments(department_id, department_name)
-- VALUES (4, 'Tech');
-- SELECT *
-- FROM departments;

CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY, --cannot be null it is unique..
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20),
    bio TEXT,
    job_title VARCHAR(50) NOT NULL,
    salary INT NOT NULL CHECK (salary > 0), 
    is_active BOOLEAN NOT NULL  DEFAULT TRUE,
    hire_date DATE NOT NULL,
    last_login TIMESTAMP,
    employee_status VARCHAR(20) NOT NULL DEFAULT 'active',  
                    CHECK(
                        employee_status  IN, ('active', 'on_leave', 'terminated')
                        ), --active, on_leave, terminated

)
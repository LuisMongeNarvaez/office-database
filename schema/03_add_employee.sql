-- Add a new employee
INSERT INTO employees (full_name, email, phone, position, department, hire_date)
VALUES ('', '', '', '', '', CURRENT_DATE)
RETURNING *;

-- Sample Data for Testing

INSERT INTO employees (full_name, email, phone, position, department, hire_date)
VALUES 
('Alice Johnson', 'alice@office.com', '555-0101', 'Manager', 'Sales', '2024-01-15'),
('Bob Smith', 'bob@office.com', '555-0102', 'Sales Representative', 'Sales', '2024-03-01')
ON CONFLICT (email) DO NOTHING;

INSERT INTO contacts (full_name, email, phone, company)
VALUES 
('John Doe', 'john.doe@example.com', '555-1234', 'Acme Corp'),
('Maria Garcia', 'maria.garcia@business.com', '555-5678', 'Tech Solutions')
ON CONFLICT DO NOTHING;


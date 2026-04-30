-- Add a new order
INSERT INTO orders (order_date, customer_id, employee_id, total_amount, status, notes)
VALUES (CURRENT_DATE, NULL, NULL, 0.00, 'Pending', '')
RETURNING *;

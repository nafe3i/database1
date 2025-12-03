INSERT INTO customers (full_name, email, phone, registration_date)
VALUES ('John Doe', 'john@example.com', '0612345678', '2025-01-01');

UPDATE customers
SET phone = '0700000000'
WHERE id = 1;
INSERT INTO customers (full_name, email, phone, registration_date)
VALUES ('John Doe', 'john@example.com', '0612345678', '2025-01-01');

UPDATE customers
SET phone = '0700000000'
WHERE id = 1;

SELECT * FROM customers;


SELECT full_name, email FROM customers;

SELECT * FROM accounts;

SELECT account_number FROM accounts;


SELECT * FROM transactions;

SELECT * FROM accounts
WHERE balance > 10000;


SELECT * FROM accounts
WHERE balance <= 0;

SELECT * FROM transactions
WHERE transaction_type = 'debit';

SELECT * FROM transactions
WHERE transaction_type = 'credit';

SELECT * FROM transactions
WHERE accountid = 1; 
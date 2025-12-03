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


SELECT customers.* 
FROM customers 
JOIN account 
    ON customers.customerid = account.customerid
WHERE account.advisor = 2;


SELECT * FROM accounts
WHERE account_type = 'Savings';


SELECT * FROM transactions
WHERE amount >= 500;

SELECT * FROM transactions
WHERE amount BETWEEN 100 AND 1000;

SELECT * FROM accounts
WHERE customerid = 1;

SELECT * FROM accounts
ORDER BY balance ASC;

SELECT * FROM accounts
ORDER BY balance ASC;

SELECT * FROM transactions
ORDER BY amount DESC;

SELECT * FROM transactions
ORDER BY amount DESC
LIMIT 5;

SELECT * FROM transactions
ORDER BY transaction_date DESC;

SELECT * FROM transactions
ORDER BY transaction_date DESC;

SELECT * FROM transactions
ORDER BY transaction_date DESC
LIMIT 3;

SELECT account.*,
       customers.full_name,
       Advisors.full_name
FROM accounts 
JOIN customers  ON accounts.customerid = customers.id
JOIN advisors adv ON Accounts.advisorid = advisors.advisor_id;

ALTER TABLE accounts
ADD created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
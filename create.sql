create database Bankly;

use Bankly;

CREATE TABLE customers(
     id INT AUTO_INCREMENT PRIMARY KEY,
     full_name VARCHAR(100),
     email VARCHAR(100) NOT NULL UNIQUE ,
     phone VARCHAR(20) NOT NULL UNIQUE ,
     registration_date date NOT NULL
    )
;

CREATE TABLE Advisors (
         advisor_id INT AUTO_INCREMENT PRIMARY KEY,
         full_name VARCHAR(50) NOT NULL,
         email VARCHAR(50) NOT NULL UNIQUE
    )
;

CREATE TABLE Accounts (
     account_id INT AUTO_INCREMENT PRIMARY KEY ,
     account_number INT NOT NULL,
     balance DECIMAL(10,2) NOT NULL,
     account_type ENUM('Checking', 'Savings', 'Business') NOT NULL,
     customerid INT NOT NULL REFERENCES customers(id),
     advisorid INT NOT NULL REFERENCES advisors(advisor_id),
    FOREIGN KEY (customerid) REFERENCES customers(id),
    FOREIGN KEY (advisorid) REFERENCES advisors(advisor_id)

     );

CREATE TABLE transactions (
         transaction_id INT AUTO_INCREMENT PRIMARY KEY,
         amount DECIMAL(10,2) NOT NULL,
         transaction_type ENUM('debit','credit') NOT NULL,
         transaction_date DATE NOT NULL,
         accountid INT NOT NULL,
    
         FOREIGN KEY (accountid) REFERENCES accounts(account_id)
    );
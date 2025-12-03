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
INSERT INTO customers (full_name, email, phone, registration_date) VALUES
('Mohamed Amine', 'amine@example.com', '0611000001', '2024-01-10'),
('Sara El Fassi', 'sara@example.com', '0611000002', '2024-01-15'),
('Yassine Idrissi', 'yassine@example.com', '0611000003', '2024-01-20'),
('Khadija Bensalem', 'khadija@example.com', '0611000004', '2024-01-25'),
('Omar Essakhi', 'omar@example.com', '0611000005', '2024-02-01'),
('Fatima Zahra', 'fzahra@example.com', '0611000006', '2024-02-02'),
('Hicham Boulahcen', 'hicham@example.com', '0611000007', '2024-02-03'),
('Nouhaila El Alaoui', 'nouhaila@example.com', '0611000008', '2024-02-04'),
('Reda Lamrani', 'reda@example.com', '0611000009', '2024-02-05'),
('Salma Chakir', 'salma@example.com', '0611000010', '2024-02-06'),
('Ahmed El Khatib', 'ahmed@example.com', '0611000011', '2024-02-07'),
('Imane Hafidi', 'imane@example.com', '0611000012', '2024-02-10'),
('Hanae Tazi', 'hanae@example.com', '0611000013', '2024-02-12'),
('Rachid Berrada', 'rachid@example.com', '0611000014', '2024-02-15'),
('Said Najib', 'said@example.com', '0611000015', '2024-02-17'),
('Laila Amrani', 'laila@example.com', '0611000016', '2024-02-20'),
('Hamza El Yamani', 'hamza@example.com', '0611000017', '2024-02-22'),
('Meryem Othmani', 'meryem@example.com', '0611000018', '2024-02-23'),
('Ayman Lahrichi', 'ayman@example.com', '0611000019', '2024-02-24'),
('Soukaina Chafiq', 'soukaina@example.com', '0611000020', '2024-02-25'),
('Nadia Rami', 'nadia@example.com', '0611000021', '2024-02-26'),
('Ismail Lbarki', 'ismail@example.com', '0611000022', '2024-02-27'),
('Adil Karimi', 'adil@example.com', '0611000023', '2024-02-28'),
('Samir El Fadil', 'samir@example.com', '0611000024', '2024-03-01'),
('Zineb Hakam', 'zineb@example.com', '0611000025', '2024-03-02');

INSERT INTO advisors (full_name, email) VALUES
('Youssef Mansouri', 'y.mansouri@bank.com'),
('Karim Oulad Ali', 'k.ouladali@bank.com'),
('Bouchra Amiri', 'b.amiri@bank.com'),
('Samira Idrissi', 's.idrissi@bank.com'),
('Nabil Fassi', 'n.fassi@bank.com'),
('Wafaa Benjelloun', 'w.benjelloun@bank.com'),
('Hassan Tahiri', 'h.tahiri@bank.com'),
('Aicha Mounir', 'a.mounir@bank.com'),
('Othman Chami', 'o.chami@bank.com'),
('Jalal Berrada', 'j.berrada@bank.com'),
('Hind Chakir', 'h.chakir@bank.com'),
('Rachida Badri', 'r.badri@bank.com'),
('Said Mazouz', 's.mazouz@bank.com'),
('Asmae Lahlou', 'a.lahlou@bank.com'),
('Imad Bennani', 'i.bennani@bank.com'),
('Omar Ghallab', 'o.ghallab@bank.com'),
('Saad Krim', 's.krim@bank.com'),
('Mouna Liazid', 'm.liazid@bank.com'),
('Anas Hariri', 'a.hariri@bank.com'),
('Ghita Idrissi', 'g.idrissi@bank.com');

INSERT INTO accounts (account_number, balance, account_type, customerid, advisorid) VALUES
(10001, 15000.50, 'Checking', 1, 1),
(10002, 5000.00, 'Savings', 2, 1),
(10003, 250.75, 'Business', 3, 2),
(10004, 100.00, 'Checking', 4, 2),
(10005, 9000.00, 'Savings', 5, 3),
(10006, -50.00, 'Checking', 6, 3),
(10007, 20000.00, 'Business', 7, 4),
(10008, 350.00, 'Checking', 8, 4),
(10009, 7800.00, 'Savings', 9, 5),
(10010, 12000.00, 'Savings', 10, 5),
(10011, 450.00, 'Checking', 11, 6),
(10012, 7890.00, 'Business', 12, 6),
(10013, 100.00, 'Savings', 13, 7),
(10014, 0.00, 'Checking', 14, 7),
(10015, 9500.00, 'Business', 15, 8),
(10016, 300.00, 'Checking', 16, 8),
(10017, 17500.00, 'Savings', 17, 9),
(10018, 50.00, 'Checking', 18, 9),
(10019, 6400.00, 'Business', 19, 10),
(10020, -10.00, 'Checking', 20, 10),
(10021, 15500.00, 'Savings', 21, 11),
(10022, 420.00, 'Checking', 22, 11),
(10023, 8120.00, 'Business', 23, 12),
(10024, 950.00, 'Checking', 24, 12),
(10025, 35000.00, 'Business', 25, 13),
(10026, 75.00, 'Checking', 1, 14),
(10027, 6500.40, 'Savings', 3, 15),
(10028, 1290.90, 'Checking', 6, 16),
(10029, 800.00, 'Savings', 4, 17),
(10030, 200.00, 'Checking', 8, 18);


INSERT INTO transactions (amount, transaction_type, transaction_date, accountid) VALUES
(500, 'debit', '2024-03-01', 1),
(1500, 'credit', '2024-03-02', 1),
(200, 'debit', '2024-03-03', 2),
(1000, 'credit', '2024-03-04', 2),
(50, 'debit', '2024-03-05', 3),
(250, 'credit', '2024-03-06', 3),
(600, 'debit', '2024-03-07', 4),
(700, 'credit', '2024-03-08', 4),
(3000, 'credit', '2024-03-09', 5),
(200, 'debit', '2024-03-10', 5),
(900, 'debit', '2024-03-11', 6),
(50, 'credit', '2024-03-12', 6),
(1200, 'credit', '2024-03-13', 7),
(800, 'debit', '2024-03-14', 7),
(400, 'debit', '2024-03-15', 8),
(600, 'credit', '2024-03-16', 8),
(700, 'debit', '2024-03-17', 9),
(300, 'credit', '2024-03-18', 9),
(50, 'debit', '2024-03-19', 10),
(1200, 'credit', '2024-03-20', 10),
(150, 'debit', '2024-03-21', 11),
(500, 'credit', '2024-03-22', 11),
(950, 'credit', '2024-03-23', 12),
(850, 'debit', '2024-03-24', 12),
(300, 'debit', '2024-03-25', 13),
(700, 'credit', '2024-03-26', 13),
(1000, 'credit', '2024-03-27', 14),
(200, 'debit', '2024-03-28', 14),
(600, 'debit', '2024-03-29', 15),
(400, 'credit', '2024-03-30', 15),
(50, 'debit', '2024-03-31', 16),
(120, 'credit', '2024-04-01', 16),
(800, 'credit', '2024-04-02', 17),
(600, 'debit', '2024-04-03', 17),
(350, 'debit', '2024-04-04', 18),
(100, 'credit', '2024-04-05', 18),
(900, 'credit', '2024-04-06', 19),
(400, 'debit', '2024-04-07', 19),
(250, 'debit', '2024-04-08', 20),
(850, 'credit', '2024-04-09', 20);
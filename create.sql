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
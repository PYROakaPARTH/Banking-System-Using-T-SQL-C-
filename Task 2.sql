----- Task 2

----- 1. Insert at least 10 sanple records into each of the following tables
----- a) Customers :

INSERT INTO Customers VALUES 
	(1, 'Parth', 'Patil', '1990-11-26', 'patilparth481@gmail.com', 7875489036, '70/50, Rankala , Kolhapur'),
	(2, 'Amaan', 'Mulla', '1960-12-01', 'amaanseven@gmail.com', 8418963968, 'Plot No. D8, Jawahar Nagar, Kolhapur'),
	(3, 'Steve', 'Sakate', '1971-11-04', 'sakate.steve@gmail.com', 4915705164, 'Brahapuri, Kolhapur'),
	(4, 'Vibhav', 'Inamdar', '1996-06-10', 'vibs.02@gmail.com', 9461074792, 'R.K. Nagar, Kolhapur'),
	(5, 'Seron', 'Sakate', '1960-12-13', 'sakate.seron@gmail.com', 4335313040, 'Cerebrus IT Park, Solapur'),
	(6, 'Amey', 'Vanire', '1964-02-24', 'amey1964@gmail.com', 3417746529, 'Shivaji Peth, Kolhapur'),
	(7, 'Atharv', 'Patil', '1952-05-02', 'athavpatil.work@gmail.com', 3162678792, 'PWD Chowk, Shirol'),
	(8, 'Atharva', 'Dhobale', '1999-03-20', 'atharvit@gmail.com', 6115315340, 'VIT Nagar, Pune'),
	(9, 'Sai', 'Sutar', '1987-03-27', 'kit.sai2020@gmail.com', 2353387871, 'Kadawadi, Kolhapur'),
	(10, 'Sakshi', 'Gujarati', '1999-03-20', 'sakshi.fc@gmail.com', 2905776200, 'FC Road, Pune'),
	(11, 'Rohan', 'Powar', '1951-02-23', 'rohanpowar@icloud.com', 7875489036, 'Nagala Park, Kolhapur'),
	(12, 'Shukhada', 'Bal', '1958-03-02', 'shukh@gmail.com', 8418963968, 'Kalinga Stadium, Orissa'),
	(13, 'Diya', 'Shetty', '1974-05-25', 'dshetty@gmail.com', 4915705164, 'Mukt Sainik, Kolhapur'),
	(14, 'Vaibhav', 'Patil', '1979-01-31', 'patil.vaibhav@gmail.com', 9461074792, 'Kalamba, Nagpur'),
	(15, 'Arbaaz', 'Bagwan', '1982-06-11', 'ybb@gmail.com', 4335313040, 'Guzri, Kolhapur'),
	(16, 'Atharva', 'Jadhav', '1961-09-18', 'ajadhav@gmail.com', 3417746529, 'Bhoir Nagar, Pune'),
	(17, 'Ruturaj', 'Kerkar', '1992-10-12', 'rutu.k@gmail.com', 3162678792, 'VD Patil Road, Radhanagri'),
	(18, 'Advait', 'Mohite', '1989-09-18', 'mohite07@gmail.com', 6115315340, 'Bandra Stand, Mumbai'),
	(19, 'Yogesh', 'Kanwade', '1987-08-17', 'yogesh@gmail.com', 2353387871, 'Solapur Highway, Pune'),
	(20, 'Omprakash', 'Gupta', '1982-09-12', 'omgupta@gmail.com', 2905776200, 'TC Center, Chennai'), 
	(21, 'Harsh', 'Daiv', '1974-12-16', 'patilsiddesh@gmail.com', 4585646829, 'Nipani, Karnataka');

----- b) Accounts :

INSERT INTO Accounts VALUES 
	(873808, 1, 'savings', 50000),
	(741873, 2, 'zero_balance', 31000),
	(324043, 3, 'savings', 110000),
	(589319, 4, 'current', 200500),
	(741269, 5, 'current', 150920),
	(639659, 6, 'zero_balance', 1500),
	(147203, 7, 'savings', 15462),
	(349765, 8, 'savings', 84250),
	(342637, 9, 'savings', 6925),
	(034171, 10, 'zero_balance', 500),
	(023920, 11, 'zero_balance', 25000),
	(747830, 12, 'savings', 210000),
	(254103, 13, 'zero_balance', 56020),
	(439436, 14, 'current', 186000),
	(412937, 15, 'savings', 85600),
	(884050, 16, 'zero_balance', 5580),
	(318553, 17, 'current', 100000),
	(798284, 18, 'current', 50000),
	(758223, 19, 'zero_balance', 80),
	(812766, 20, 'zero_balance', 720),
	(145623, 5, 'savings', 7004),
	(571823, 10, 'current', 5120),
	(021583, 5, 'zero_balance', 14355),
	(894613, 4, 'savings', 45688),
	(021574, 12, 'current', 12555),
	(123350, 20, 'current', 62000),
	(616278, 21, 'savings', 150000);

----- c) Transactions :

INSERT INTO Transactions VALUES 
	(2846, 873808, 'deposit', 25000, '2024-01-01'),
	(8429, 741873, 'withdrawl', 4000, '2023-11-07'),
	(0238, 324043, 'deposit', 5000, '2024-03-11'),
	(6022, 589319, 'transfer', 100000, '2023-12-31'),
	(8749, 741269, 'deposit', 920, '2024-02-26'),
	(6587, 639659, 'deposit', 1500, '2024-04-03'),
	(9262, 147203, 'withdrawl', 1500, '2023-12-15'),
	(6017, 349765, 'transfer', 15500, '2024-02-16'),
	(3997, 342637, 'withdrawl', 2000, '2024-03-25'),
	(6726, 034171, 'deposit', 100, '2023-09-08'),
	(8089, 023920, 'transfer', 25520, '2024-01-21'),
	(3174, 747830, 'withdrawl', 80000, '2023-12-01'),
	(4790, 254103, 'deposit', 20, '2023-12-25'),
	(0917, 439436, 'deposit', 10000, '2024-04-15'),
	(3956, 412937, 'withdraw', 5500, '2023-09-26'),
	(9328, 884050, 'deposit', 2050, '2024-03-16'),
	(5371, 318553, 'deposit', 33000, '2024-02-01'),
	(8130, 798284, 'transfer', 18600, '2023-12-25'),
	(6875, 758223, 'withdraw', 2020, '2024-02-12'),
	(7972, 812766, 'deposit', 500, '2024-02-22'),
	(8845, 318553, 'withdrawl', 200, '2024-02-14'),
	(6321, 884050, 'transfer', 4000, '2023-07-07'),
	(0288, 884050, 'deposit', 5000, '2024-04-10'),
	(1452, 318553, 'transfer', 100000, '2023-10-13'),
	(8469, 439436, 'deposit', 920, '2024-01-21'),
	(6597, 639659, 'deposit', 1500, '2024-04-01'),
	(4582, 439436, 'transfer', 1500, '2023-12-11'),
	(0127, 349765, 'withdrawl', 15500, '2024-02-11'),
	(1117, 884050, 'withdrawl', 2000, '2024-01-23'),
	(2126, 034171, 'withdrawl', 100, '2023-07-05'),
	(9859, 023920, 'deposit', 25520, '2024-01-25'),
	(7464, 747830, 'deposit', 80000, '2023-11-07'),
	(9460, 318553, 'deposit', 20, '2023-12-25'),
	(0817, 884050, 'withdrawl', 10000, '2023-04-25'),
	(5656, 412937, 'withdrawl', 5500, '2023-09-16'),
	(9728, 884050, 'deposit', 2050, '2024-04-02'),
	(6641, 318553, 'transfer', 33000, '2024-03-11'),
	(1280, 439436, 'deposit', 18600, '2023-11-25'),
	(6545, 639659, 'withdrawl', 2020, '2024-01-12'),
	(4912, 439436, 'withdrawl', 500, '2023-05-22');

----- 2. Write SQL queries for the following tasks:
----- 1. Write a SQL query to retrieve the name, account type and email of all customers.

SELECT first_name + ' ' + last_name AS Name, 
account_type AS 'Account Type', 
email AS Email
FROM Customers INNER JOIN Accounts 
ON Customers.customer_id = Accounts.customer_id
ORDER BY name;

----- 2. Write a SQL query to list all transaction corresponding customer.

SELECT c.customer_id AS 'Customer ID', 
c.first_name + ' ' + c.last_name AS 'Name', 
t.transaction_id AS 'Transaction ID',
t.amount AS 'Amount',
t.transaction_type AS 'Transaction Type',
t.transaction_date AS 'Transaction Date'
FROM Customers c 
INNER JOIN Accounts a ON c.customer_id = a.customer_id 
INNER JOIN Transactions t ON a.account_id = t.account_id 
ORDER BY c.customer_id

----- 3. Write a SQL query to increase the balance of a specific account by a certain amount.

UPDATE Accounts 
SET balance = balance + 500 WHERE account_id = 034171
	
----- 4. Write a SQL query to Combine first and last names of customers as a full_name.

SELECT first_name + ' ' + last_name AS full_name FROM Customers

----- 5. Write a SQL query to remove accounts with a balance of zero where the account type is savings.

DELETE FROM Accounts WHERE account_type = 'savings' AND balance = 0

----- 6. Write a SQL query to Find customers living in a specific city.

SELECT customer_id AS 'Customer ID', 
first_name + ' ' + last_name AS 'Name'
FROM Customers  WHERE address LIKE '%Pune'

----- 7. Write a SQL query to Get the account balance for a specific account.

SELECT balance FROM Accounts WHERE account_id = 589319

----- 8. Write a SQL query to List all current accounts with a balance greater than $1,000.

SELECT account_id AS 'Account ID', balance AS 'Balance'
FROM Accounts 
WHERE account_type = 'current' AND balance > 1000

----- 9. Write a SQL query to Retrieve all transactions for a specific account.

SELECT account_id AS 'Account ID', 
transaction_id AS 'Transaction ID', 
transaction_type AS 'Transaction Type' 
FROM Transactions 
WHERE account_id = 884050

----- 10. Write a SQL query to Calculate the interest accrued on savings accounts based on a given interest rate.

--Lets consider the interest rate as 8%

SELECT balance * 8/100 AS 'Interest Accured', 
account_id AS 'Account ID',
account_type AS 'Account Type'
FROM Accounts
WHERE account_type = 'savings'

----- 11. Write a SQL query to Identify accounts where the balance is less than a specified overdraft limit.

--Lets consider the overdraft limit as 15000

SELECT account_id AS 'Account ID',
customer_id AS 'Customer ID',
balance AS 'Balance'
FROM Accounts 
WHERE BALANCE < 15000
ORDER BY customer_id

----- 12. Write a SQL query to Find customers not living in a specific city.

SELECT first_name + ' ' + last_name AS 'Name', 
address AS 'Address'
FROM Customers 
WHERE address NOT LIKE '%Kolhapur'
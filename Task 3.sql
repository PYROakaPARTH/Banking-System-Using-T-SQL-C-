----- Task 3

----- 1. Write a SQL query to Find the average account balance for all customers.

SELECT AVG(balance) AS 'Average Balance' 
FROM Accounts

----- 2. Write a SQL query to Retrieve the top 10 highest account balances.

SELECT TOP 10 balance AS 'Balance'
FROM Accounts 
ORDER BY balance DESC

----- 3. Write a SQL query to Calculate Total Deposits for All Customers in specific date.

SELECT SUM(amount) AS 'Total Deposits'
FROM Transactions 
WHERE transaction_type = 'deposit' AND transaction_date = '2024-04-02'

----- 4. Write a SQL query to Find the Oldest and Newest Customers.

SELECT 'Oldest Customer' AS Label,
customer_id AS 'Customer ID',
first_name + ' ' + last_name AS 'Name', 
DOB AS 'Birth Date'
FROM Customers
WHERE DOB = (SELECT MIN(DOB) FROM Customers)
UNION 
SELECT 'Newest Customer' AS Label,
customer_id AS 'Customer ID',
first_name + ' ' + last_name AS 'Name', 
DOB AS 'Birth Date'
FROM Customers
WHERE DOB = (SELECT MAX(DOB) FROM Customers)

----- 5. Write a SQL query to Retrieve transaction details along with the account type.

SELECT t.transaction_id, 
t.transaction_type, 
t.amount, 
a.account_type,
t.transaction_date
FROM Transactions as t
INNER JOIN Accounts as a
ON  t.account_id = a.account_id
GROUP BY t.transaction_type, t.amount, t.transaction_date, t.transaction_id, a.account_type
HAVING t.transaction_id = 5371 

----- 6. Write a SQL query to Get a list of customers along with their account details.

SELECT 
c.customer_id AS 'Customer ID', 
a.account_id AS 'Account ID', 
c.first_name AS 'First Name', 
c.last_name AS 'Last Name', 
a.account_type AS 'Account Type', 
a.balance AS 'Account Balance'
FROM Customers as c
INNER JOIN Accounts as a
ON c.customer_id = a.customer_id
ORDER BY c.customer_id

----- 7. Write a SQL query to Retrieve transaction details along with customer information for a specific account.

SELECT c.customer_id,
c.first_name,
c.last_name,
t.transaction_id,
t.amount,
t.transaction_type,
t.transaction_date
FROM Transactions as t
INNER JOIN Accounts as a
ON t.account_id = a.account_id
INNER JOIN Customers c
ON a.customer_id = c.customer_id
WHERE t.account_id = 439436
ORDER BY t.transaction_date

----- 8. Write a SQL query to Identify customers who have more than one account.

SELECT a.customer_id AS 'Customer ID',
c.first_name + ' ' + c.last_name AS 'Customer Name',
COUNT(a.customer_id) AS 'Number of Accounts'
FROM Accounts a
JOIN Customers C ON a.customer_id = c.customer_id
GROUP BY a.customer_id, c.first_name, c.last_name
HAVING COUNT(a.customer_id) > 1;

----- 9. Write a SQL query to Calculate the difference in transaction amounts between deposits and withdrawals.

SELECT DISTINCT (SELECT SUM(amount) FROM Transactions WHERE transaction_type = 'deposit') - 
(SELECT SUM(amount) FROM Transactions WHERE transaction_type = 'withdrawl') AS 'Difference'
FROM Transactions 

----- 10. Write a SQL query to Calculate the average daily balance for each account over a specified period. ###################################

SELECT DISTINCT AVG(a.balance), a.customer_id FROM Accounts a 
JOIN Transactions t ON a.account_id = t.account_id
GROUP BY a.balance, t.transaction_date, a.customer_id 
HAVING t.transaction_date BETWEEN '2023-11-07' AND '2024-04-16'
ORDER BY a.customer_id

----- 11. Calculate the total balance for each account type.

SELECT DISTINCT (SELECT SUM(balance) FROM Accounts WHERE account_type = 'savings') AS 'Savings Total Balance',
(SELECT SUM(balance) FROM Accounts WHERE account_type = 'current') AS 'Current Total Balance',
(SELECT SUM(balance) FROM Accounts WHERE account_type = 'zero_balance') AS 'Zero Blance Total Balance' 
FROM Accounts 

----- 12. Identify accounts with the highest number of transactions order by descending order.

SELECT account_id,
COUNT(*) AS 'Transaction Count'
FROM Transactions
GROUP BY account_id
ORDER BY 'Transaction Count' DESC

----- 13. List customers with high aggregate account balances, along with their account types.

SELECT c.customer_id,
c.first_name,
c.last_name,
a.account_type,
SUM(a.balance) AS 'Aggregate Balance'
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, a.account_type
HAVING SUM(a.balance) > 65598
ORDER BY 'Aggregate Balance' DESC

----- 14. Identify and list duplicate transactions based on transaction amount, date, and account.

SELECT amount AS 'Transaction Amount',
COUNT(amount) AS 'No. of duplicates based on Amount'
FROM Transactions 
GROUP BY amount
HAVING COUNT(amount) > 1 
ORDER BY 'No. of duplicates based on Amount' 

SELECT transaction_date AS 'Transaction Date',
COUNT(transaction_date) AS 'No. of duplicates based on Date'
FROM Transactions 
GROUP BY transaction_date
HAVING COUNT(transaction_date) > 1 
ORDER BY 'No. of duplicates based on Date' 

SELECT account_id AS 'Account ID',
COUNT(account_id) AS 'No. of duplicates based on Account ID'
FROM Transactions 
GROUP BY account_id
HAVING COUNT(account_id) > 1 
ORDER BY 'No. of duplicates based on Account ID' 






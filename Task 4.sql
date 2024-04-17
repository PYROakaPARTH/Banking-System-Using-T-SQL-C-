----- Task 4

----- 1. Retrieve the customer(s) with the highest account balance.

SELECT a.customer_id, c.first_name, c.last_name, a.balance 
FROM Accounts a
JOIN Customers c
ON a.customer_id = c.customer_id
WHERE balance = (SELECT MAX(balance) FROM Accounts)

----- 2. Calculate the average account balance for customers who have more than one account.

SELECT a.customer_id AS 'Customer ID',
c.first_name AS 'First Name',
c.last_name AS 'Last Name',
COUNT(a.customer_id) AS 'No. of Accounts',
SUM(a.balance) AS 'Total Balance'
FROM Accounts a
JOIN Customers c 
ON a.customer_id = c.customer_id
GROUP BY a.customer_id, c.first_name, c.last_name
HAVING COUNT(a.customer_id) > 1

----- 3. Retrieve accounts with transactions whose amounts exceed the average transaction amount.

SELECT c.customer_id, c.first_name, c.last_name, t.account_id, t.amount 
FROM Transactions t 
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, t.account_id, t.amount 
HAVING t.amount > (SELECT AVG(amount) FROM Transactions) 
ORDER BY c.customer_id

----- 4. Identify customers who have no recorded transactions. 

SELECT c.customer_id AS 'Customer ID', 
c.first_name + ' ' + c.last_name AS 'Name'
FROM Customers C JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.customer_id  IN (SELECT c.customer_id 
					   FROM Customers c 
					   JOIN Accounts a
					   ON c.customer_id = a.customer_id
					   WHERE a.account_id NOT IN (SELECT DISTINCT account_id FROM Transactions))
GROUP BY c.customer_id, c.first_name, c.last_name 
HAVING COUNT(a.customer_id) = 1

----- 5. Calculate the total balance of accounts with no recorded transactions.

SELECT SUM(a.balance) AS 'Total Balance'
FROM Accounts a
LEFT JOIN Transactions t ON a.account_id = t.account_id
WHERE t.account_id IS NULL;

----- 6. Retrieve transactions for accounts with the lowest balance.

SELECT a.customer_id, c.first_name, c.last_name, t.amount, t.transaction_id, t.transaction_type, t.transaction_date
FROM Transactions t 
JOIN Accounts a ON t.account_id = a.account_id 
JOIN Customers c ON a.customer_id = c.customer_id
GROUP BY t.amount, t.transaction_id, t.transaction_type, t.transaction_date, a.balance, a.customer_id,c.first_name, c.last_name
HAVING a.balance = (SELECT MIN(balance)FROM Accounts)

----- 7. Identify customers who have accounts of multiple types.

SELECT a.customer_id,
c.first_name, c.last_name,
COUNT(DISTINCT a.account_type) AS 'Number of Account Types'
FROM Accounts a 
JOIN Customers c ON a.customer_id = c.customer_id
GROUP BY a.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT a.account_type) > 1

----- 8. Calculate the percentage of each account type out of the total number of accounts.

SELECT TOP 1 'Percentage' AS Label, ((SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'current')* 100.0 /
(SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'current' OR account_type = 'zero_balance' OR account_type = 'savings')) AS 'Current',
((SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'savings')* 100.0 /
(SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'current' OR account_type = 'zero_balance' OR account_type = 'savings')) AS 'Savings',
((SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'zero_balance')* 100.0 /
(SELECT COUNT(account_type) FROM Accounts WHERE account_type = 'current' OR account_type = 'zero_balance' OR account_type = 'savings')) AS 'Zero Balance'
FROM Accounts GROUP BY account_type 

----- 9. Retrieve all transactions for a customer with a given customer_id.

SELECT t.transaction_id AS 'Transaction ID',
t.amount AS 'Amount',
t.transaction_type AS 'Type',
t.transaction_date AS 'Date'
FROM Transactions t
JOIN Accounts a ON t.account_id = a.account_id
JOIN Customers c ON a.customer_id = c.customer_id
GROUP BY t.transaction_id, a.customer_id, t.amount, t.transaction_type, t.transaction_date 
HAVING a.customer_id = 6

----- 10. Calculate the total balance for each account type, including a subquery within the SELECT clause.

SELECT account_type AS 'Account Type', 
(SELECT SUM(balance) FROM Accounts as a WHERE a.account_type = ac.account_type) AS 'Total'
FROM Accounts AS ac
GROUP BY account_type


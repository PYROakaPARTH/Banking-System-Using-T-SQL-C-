----- Task 1

----- 1. Create the database named "HMBank"
CREATE DATABASE HMBank;
GO

USE HMBank;
GO

----- 6. Write SQL scripts to create the mentioned tables with appropriate data types, constraints, and relationships.
----- • Customers
----- • Accounts
----- • Transactions

CREATE TABLE Customers (
	customer_id int NOT NULL, 
	first_name varchar(20) NOT NULL, 
	last_name varchar(20) NOT NULL, 
	DOB Date, 
	email varchar(20), 
	phone_number int, 
	address varchar(50));

ALTER TABLE Customers
ADD PRIMARY KEY (customer_id);

ALTER TABLE Customers
ALTER COLUMN email VARCHAR(50);

ALTER TABLE Customers
ALTER COLUMN phone_number BIGINT;

CREATE TABLE Accounts (
	account_id int NOT NULL PRIMARY KEY, 
	custoemr_id int FOREIGN KEY REFERENCES Customers(customer_id));

EXEC sp_rename 'Accounts.custoemr_id', 'customer_id'


ALTER TABLE Accounts
ADD  account_type VARCHAR(20), balance BIGINT;

CREATE TABLE Transactions (
	transaction_id int NOT NULL PRIMARY KEY, 
	account_id int FOREIGN KEY REFERENCES Accounts(account_id), 
	transaction_type varchar(20), 
	amount int, 
	transaction_date Date);



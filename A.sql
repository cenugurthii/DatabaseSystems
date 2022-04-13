CREATE DATABASE Saloon;
USE Saloon;
CREATE TABLE Bill (
    Bill_ID int NOT NULL,
    Customer_ID int NOT NULL,
    Amount float NOT NULL,
    CONSTRAINT Bill_pk PRIMARY KEY (Bill_ID)
);

CREATE TABLE Customer (
    Customer_ID int NOT NULL,
    Name varchar(50) NOT NULL,
    Address varchar(100) NOT NULL,
    Contact varchar(20) NOT NULL,
    Age int NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_ID)
);

CREATE TABLE Employee (
    Employee_ID int NOT NULL,
    Name varchar(50) NOT NULL,
    Address varchar(100) NOT NULL,
    Contact varchar(20) NOT NULL,
    JobTitle varchar(50) NOT NULL,
    Salary float NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_ID)
);

CREATE TABLE Services (
    Service_ID int NOT NULL,
    Treatment varchar(50) NOT NULL,
    Quality int NOT NULL,
    CONSTRAINT Services_pk PRIMARY KEY (Service_ID)
);

CREATE TABLE Transaction (
    transaction_id int NOT NULL,
    Customer_ID int NOT NULL,
    Customer_Name varchar(50) NOT NULL,
    Amount float NOT NULL,
    CONSTRAINT Transaction_pk PRIMARY KEY (transaction_id)
);


ALTER TABLE Bill ADD CONSTRAINT Bill_Customer FOREIGN KEY Bill_Customer (Customer_ID)
    REFERENCES Customer (Customer_ID);

ALTER TABLE Transaction ADD CONSTRAINT Transaction_Customer FOREIGN KEY Transaction_Customer (Customer_ID)
    REFERENCES Customer (Customer_ID);
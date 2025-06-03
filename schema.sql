-- Create the database
CREATE DATABASE dbsupermarket;
GO

USE dbsupermarket;
GO

-- Employee
CREATE TABLE Employee (
    EmployeeID VARCHAR(5) NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    DNI VARCHAR(8) NOT NULL,
    Phone VARCHAR(9) NOT NULL,
    Address VARCHAR(50)
);

-- User
CREATE TABLE [User] (
    UserID INT IDENTITY NOT NULL,
    EmployeeID VARCHAR(5) NOT NULL,
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    AccessLevel VARCHAR(20) NOT NULL
);

-- Client
CREATE TABLE Client (
    ClientID VARCHAR(10) NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    DNI VARCHAR(8) NOT NULL,
    RUC VARCHAR(11) NOT NULL,
    Age INT NOT NULL,
    Gender CHAR(1) NOT NULL,
    Phone CHAR(9) NOT NULL,
    Address VARCHAR(50) NOT NULL
);

-- Sale
CREATE TABLE Sale (
    SaleID VARCHAR(10) NOT NULL,
    SaleDate DATE NOT NULL,
    Invoice VARCHAR(7) NOT NULL,
    UserID INT NOT NULL,
    ClientID VARCHAR(10) NOT NULL
);

-- SaleDetail
CREATE TABLE SaleDetail (
    SaleDetailID INT IDENTITY NOT NULL,
    SaleID VARCHAR(10) NOT NULL,
    ProductID VARCHAR(10) NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(8,2) NOT NULL,
    Tax DECIMAL(8,2) NOT NULL,
    Total DECIMAL(8,2) NOT NULL
);

-- Product
CREATE TABLE Product (
    ProductID VARCHAR(10) NOT NULL,
    ProductName VARCHAR(30) NOT NULL,
    EntryDate DATE NOT NULL,
    ExpirationDate DATE NOT NULL,
    Stock INT NOT NULL,
    Price DECIMAL(9,2) NOT NULL,
    CategoryID INT NOT NULL
);

-- Category
CREATE TABLE Category (
    CategoryID INT IDENTITY NOT NULL,
    CategoryName VARCHAR(15) NOT NULL
);

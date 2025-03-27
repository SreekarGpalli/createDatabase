-- ------------------------------------------------------------------------
-- Wholesale_Store Database Creation Script
-- Author: Sreekar Reddy Gownivaripalli
-- ------------------------------------------------------------------------
-- This script creates the Wholesale_Store database (if it doesn't already exist)
-- and then creates all the necessary tables for managing categories, clients,
-- sales representatives, logistics, vendors, products, sales, sale details,
-- promotions, and payment methods.
-- ------------------------------------------------------------------------

-- 1. Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS Wholesale_Store;

-- 2. Switch to the newly created (or existing) database
USE Wholesale_Store;

-- ------------------------------------------------------------------------
-- 3. Create the Categories table
--    Stores information about product categories.
-- ------------------------------------------------------------------------
CREATE TABLE Categories (
  CategoryID INT AUTO_INCREMENT PRIMARY KEY,
  CategoryName VARCHAR(255) NOT NULL,
  Description VARCHAR(500)
);

-- ------------------------------------------------------------------------
-- 4. Create the Clients table
--    Stores information about clients (retail businesses).
-- ------------------------------------------------------------------------
CREATE TABLE Clients (
  ClientID INT AUTO_INCREMENT PRIMARY KEY,
  ClientName VARCHAR(255) NOT NULL,
  ContactName VARCHAR(255),
  Phone VARCHAR(50),
  Email VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(100),
  ZipCode VARCHAR(20),
  Country VARCHAR(100),
  RegistrationDate DATE
);

-- ------------------------------------------------------------------------
-- 5. Create the SalesRepresentatives table
--    Stores information about sales representatives.
-- ------------------------------------------------------------------------
CREATE TABLE SalesRepresentatives (
  RepresentativeID INT AUTO_INCREMENT PRIMARY KEY,
  LastName VARCHAR(255) NOT NULL,
  FirstName VARCHAR(255) NOT NULL,
  Phone VARCHAR(50),
  Email VARCHAR(255),
  HireDate DATE NOT NULL,
  Region VARCHAR(100)
);

-- ------------------------------------------------------------------------
-- 6. Create the Logistics table
--    Stores information about logistics partners/carriers.
-- ------------------------------------------------------------------------
CREATE TABLE Logistics (
  CarrierID INT AUTO_INCREMENT PRIMARY KEY,
  CarrierName VARCHAR(255) NOT NULL,
  Phone VARCHAR(50),
  Email VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(100),
  ZipCode VARCHAR(20),
  Country VARCHAR(100)
);

-- ------------------------------------------------------------------------
-- 7. Create the Vendors table
--    Stores information about vendors/suppliers.
-- ------------------------------------------------------------------------
CREATE TABLE Vendors (
  VendorID INT AUTO_INCREMENT PRIMARY KEY,
  VendorName VARCHAR(255) NOT NULL,
  ContactName VARCHAR(255),
  Address VARCHAR(255),
  City VARCHAR(100),
  ZipCode VARCHAR(20),
  Country VARCHAR(100),
  Phone VARCHAR(50),
  Email VARCHAR(255),
  RegistrationDate DATE
);

-- ------------------------------------------------------------------------
-- 8. Create the Products table
--    Stores information about products, referencing Vendors and Categories.
-- ------------------------------------------------------------------------
CREATE TABLE Products (
  ProductID INT AUTO_INCREMENT PRIMARY KEY,
  ProductName VARCHAR(255) NOT NULL,
  VendorID INT NOT NULL,
  CategoryID INT NOT NULL,
  Unit VARCHAR(50) NOT NULL,
  Quantity INT NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- ------------------------------------------------------------------------
-- 9. Create the Sales table
--    Stores information about sales, referencing Clients, SalesRepresentatives,
--    and Logistics.
-- ------------------------------------------------------------------------
CREATE TABLE Sales (
  SaleID INT AUTO_INCREMENT PRIMARY KEY,
  ClientID INT NOT NULL,
  RepresentativeID INT NOT NULL,
  SaleDate DATE NOT NULL,
  CarrierID INT NOT NULL,
  FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
  FOREIGN KEY (RepresentativeID) REFERENCES SalesRepresentatives(RepresentativeID),
  FOREIGN KEY (CarrierID) REFERENCES Logistics(CarrierID)
);

-- ------------------------------------------------------------------------
-- 10. Create the SaleDetails table
--     Stores details of each sale (which products, quantity, total amount),
--     referencing Sales and Products.
-- ------------------------------------------------------------------------
CREATE TABLE SaleDetails (
  SaleDetailID INT AUTO_INCREMENT PRIMARY KEY,
  SaleID INT NOT NULL,
  ProductID INT NOT NULL,
  Quantity INT NOT NULL,
  TotalAmount DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- ------------------------------------------------------------------------
-- 11. Create the Promotions table
--     Stores information about promotional campaigns and discounts.
-- ------------------------------------------------------------------------
CREATE TABLE Promotions (
  PromotionID INT AUTO_INCREMENT PRIMARY KEY,
  Description VARCHAR(255) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  DiscountRate DECIMAL(10,2) NOT NULL,
  Conditions VARCHAR(500)
);

-- ------------------------------------------------------------------------
-- 12. Create the PaymentMethods table
--     Stores information about various payment methods.
-- ------------------------------------------------------------------------
CREATE TABLE PaymentMethods (
  PaymentMethodID INT AUTO_INCREMENT PRIMARY KEY,
  MethodName VARCHAR(255) NOT NULL,
  ProcessingTime VARCHAR(50) NOT NULL,
  Fees DECIMAL(10,2),
  Details VARCHAR(500)
);

-- ------------------------------------------------------------------------
-- End of Script
-- ------------------------------------------------------------------------

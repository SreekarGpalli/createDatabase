-- ------------------------------------------------------------------------
-- Wholesale_Store Database: Data Insertion Script
-- ------------------------------------------------------------------------
-- This script inserts sample data into the Wholesale_Store database tables.
-- It covers the following tables:
--   1. Categories
--   2. Clients
--   3. SalesRepresentatives
--   4. Logistics
--   5. Vendors
--   6. Products
--   7. Sales
--   8. SaleDetails
--   9. Promotions
--  10. PaymentMethods
--
-- NOTE: Ensure that the Wholesale_Store database and its tables have been created
--       before running this script.
-- ------------------------------------------------------------------------

USE Wholesale_Store;

-- 1. Insert sample data into the Categories table
INSERT INTO Categories (CategoryName, Description)
VALUES
  ('Beverages', 'All types of drinks including sodas, juices, and alcoholic beverages.'),
  ('Electronics', 'Consumer electronics like mobiles, laptops, and other gadgets.'),
  ('Household Goods', 'Items including kitchenware, cleaning products, and other household necessities.'),
  ('Food', 'Perishable goods such as fruits, vegetables, and meats.');

-- 2. Insert sample data into the Clients table
INSERT INTO Clients (ClientName, ContactName, Phone, Email, Address, City, ZipCode, Country, RegistrationDate)
VALUES
  ('Market Plaza', 'John Doe', '555-1234', 'jdoe@marketplaza.com', '123 Market St', 'Centerville', '10001', 'USA', '2022-01-10'),
  ('Quick Buy', 'Jane Smith', '555-5678', 'jsmith@quickbuy.com', '456 Shopper Ln', 'Eastville', '10002', 'USA', '2022-01-15'),
  ('Everyday Goods', 'Lucas Grey', '555-7890', 'lgrey@everydaygoods.com', '789 Daily Dr', 'Smalltown', '10003', 'USA', '2022-02-01'),
  ('Family Mart', 'Emma White', '555-8910', 'ewhite@familymart.com', '321 Family Rd', 'Midtown', '10004', 'USA', '2022-02-05');

-- 3. Insert sample data into the SalesRepresentatives table
INSERT INTO SalesRepresentatives (LastName, FirstName, Phone, Email, HireDate, Region)
VALUES
  ('Doe', 'Alice', '555-2345', 'alice.doe@example.com', '2021-06-01', 'North'),
  ('Smith', 'Bob', '555-6789', 'bob.smith@example.com', '2021-07-15', 'South'),
  ('Johnson', 'Carl', '555-9012', 'carl.johnson@example.com', '2021-08-01', 'West');

-- 4. Insert sample data into the Logistics table
INSERT INTO Logistics (CarrierName, Phone, Email, Address, City, ZipCode, Country)
VALUES
  ('Fast Delivery', '555-1122', 'info@fastdelivery.com', '789 Freight Ave', 'Shipville', '20003', 'USA'),
  ('Secure Carriers', '555-3344', 'contact@securecarriers.com', '321 Transport Rd', 'Logisticstown', '20004', 'USA');

-- 5. Insert sample data into the Vendors table
INSERT INTO Vendors (VendorName, ContactName, Address, City, ZipCode, Country, Phone, Email, RegistrationDate)
VALUES
  ('Gadgets World', 'Sarah Connor', '100 Tech Blvd', 'Techville', '30001', 'USA', '555-4444', 'sconnor@gadgetsworld.com', '2022-01-01'),
  ('Home Essentials Inc.', 'Mike Ross', '200 Home St', 'Homestown', '30002', 'USA', '555-5555', 'mross@homeessentials.com', '2022-01-02'),
  ('Tech Innovators', 'Diana Prince', '300 Innovation Way', 'Innovatown', '30003', 'USA', '555-6666', 'dprince@techinnovators.com', '2022-01-03'),
  ('Fresh Farm Produce', 'Clark Kent', '400 Farm Rd', 'Agritown', '30004', 'USA', '555-7777', 'ckent@freshfarm.com', '2022-01-04'),
  ('Global Electronics', 'Bruce Wayne', '500 Global Ave', 'Electrocity', '30005', 'USA', '555-8888', 'bwayne@globalelectronics.com', '2022-01-05'),
  ('Household Plus', 'Natasha Romanoff', '600 Household Pkwy', 'Domestictown', '30006', 'USA', '555-9999', 'nromanoff@householdplus.com', '2022-01-06');

-- 6. Insert sample data into the Products table
INSERT INTO Products (ProductName, VendorID, CategoryID, Unit, Quantity, Price)
VALUES
  ('Smartphone', 1, 2, 'Piece', 50, 299.99),
  ('Laptop', 1, 2, 'Piece', 30, 499.99),
  ('Soda 12-pack', 2, 1, 'Box', 100, 5.99),
  ('Microwave', 1, 2, 'Piece', 40, 89.99),
  ('Bluetooth Speaker', 3, 2, 'Piece', 100, 75.50),
  ('LED TV 40"', 3, 2, 'Piece', 50, 350.00),
  ('Organic Apples', 4, 4, 'Kg', 200, 1.50),
  ('Toaster', 3, 2, 'Piece', 80, 25.00),
  ('Organic Tomatoes', 4, 4, 'Kg', 150, 1.00),
  ('Bed Sheets', 5, 3, 'Set', 150, 40.00);

-- 7. Insert sample data into the Sales table
INSERT INTO Sales (ClientID, RepresentativeID, SaleDate, CarrierID)
VALUES
  (1, 1, '2023-01-10', 1),
  (2, 2, '2023-01-15', 2),
  (1, 1, '2023-02-10', 1),
  (2, 2, '2023-02-15', 2),
  (3, 3, '2023-02-20', 1),
  (4, 3, '2023-02-25', 2),
  (1, 1, '2023-03-01', 1),
  (2, 2, '2023-03-05', 2),
  (3, 3, '2023-03-10', 1),
  (4, 3, '2023-03-15', 2);

-- 8. Insert sample data into the SaleDetails table
INSERT INTO SaleDetails (SaleID, ProductID, Quantity, TotalAmount)
VALUES
  (1, 1, 1, 299.99),
  (1, 4, 1, 89.99),
  (2, 3, 2, 11.98),
  (3, 5, 10, 15.00),
  (3, 6, 5, 5.00),
  (4, 7, 3, 75.00),
  (4, 8, 2, 700.00),
  (5, 5, 20, 30.00),
  (5, 6, 10, 10.00),
  (6, 7, 5, 125.00),
  (6, 8, 1, 350.00),
  (7, 9, 8, 200.00),
  (7, 10, 15, 600.00),
  (8, 9, 10, 250.00),
  (8, 10, 20, 800.00);

-- 9. Insert sample data into the Promotions table
INSERT INTO Promotions (Description, StartDate, EndDate, DiscountRate, Conditions)
VALUES
  ('New Year Sale', '2023-01-01', '2023-01-31', 10, 'Discount on all electronics'),
  ('Summer Sale', '2023-06-01', '2023-06-30', 15, 'Discount on beverages and household goods');

-- 10. Insert sample data into the PaymentMethods table
INSERT INTO PaymentMethods (MethodName, ProcessingTime, Fees, Details)
VALUES
  ('Visa', 'Instant', 0, 'No fees for Visa payments'),
  ('PayPal', 'Instant', 2.5, '2.5% fees on transaction'),
  ('Bank Transfer', '1-3 days', 0, 'No fees but processing takes time');

-- ------------------------------------------------------------------------
-- End of Data Insertion Script
-- ------------------------------------------------------------------------

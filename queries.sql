-- ------------------------------------------------------------------------
-- Queries to Retrieve Meaningful Data from the Wholesale_Store Database
-- ------------------------------------------------------------------------

-- 1. Retrieve Total Sales Per Client
SELECT 
    Clients.ClientName, 
    SUM(SaleDetails.TotalAmount) AS TotalSpent
FROM Clients
JOIN Sales ON Clients.ClientID = Sales.ClientID
JOIN SaleDetails ON Sales.SaleID = SaleDetails.SaleID
GROUP BY Clients.ClientName;

-- 2. Get Sales Representatives' Performance
SELECT 
    SalesRepresentatives.FirstName, 
    SalesRepresentatives.LastName, 
    COUNT(Sales.SaleID) AS NumberOfSales, 
    SUM(SaleDetails.TotalAmount) AS TotalSalesAmount
FROM SalesRepresentatives
JOIN Sales ON SalesRepresentatives.RepresentativeID = Sales.RepresentativeID
JOIN SaleDetails ON Sales.SaleID = SaleDetails.SaleID
GROUP BY SalesRepresentatives.RepresentativeID;

-- 3. Sales Trends Over Time
SELECT 
    MONTH(SaleDate) AS SaleMonth, 
    YEAR(SaleDate) AS SaleYear, 
    SUM(SaleDetails.TotalAmount) AS TotalMonthlySales
FROM Sales
JOIN SaleDetails ON Sales.SaleID = SaleDetails.SaleID
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY YEAR(SaleDate), MONTH(SaleDate);

-- 4. List Products Below Minimum Stock (Quantity less than 50)
SELECT 
    ProductID, 
    ProductName, 
    Quantity
FROM Products
WHERE Quantity < 50;

-- ------------------------------------------------------------------------
-- Triggers and Functions for the Wholesale_Store Database
-- ------------------------------------------------------------------------

-- 1. Trigger: Automatically Update Inventory After a Sale
DELIMITER $$
CREATE TRIGGER UpdateInventory AFTER INSERT ON SaleDetails
FOR EACH ROW
BEGIN
  UPDATE Products
  SET Quantity = Quantity - NEW.Quantity
  WHERE ProductID = NEW.ProductID;
END$$
DELIMITER ;

-- Example: Check product quantity for ProductID 2 before and after a sale
SELECT * FROM WholesaleStore.Products WHERE ProductID = 2;

-- Insert a sale detail to trigger the inventory update
INSERT INTO SaleDetails (SaleID, ProductID, Quantity, TotalAmount)
VALUES (1, 2, 10, 4999.90);

-- Verify changes in SaleDetails and updated product inventory
SELECT * FROM WholesaleStore.SaleDetails;
SELECT * FROM WholesaleStore.Products WHERE ProductID = 2;

-- 2. Function: Calculate Total Sales for a Specific Product
DELIMITER $$
CREATE FUNCTION TotalSalesByProduct_(product_id INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
  DECLARE total_sales DECIMAL(10,2);
  SELECT SUM(TotalAmount) INTO total_sales
  FROM SaleDetails
  WHERE ProductID = product_id;
  RETURN total_sales;
END$$
DELIMITER ;

-- Test the function for ProductID 2
SELECT TotalSalesByProduct_(2) AS FunctionTotalSales;

-- 3. Function: Count Number of Sales for a Specific Category
DELIMITER $$
CREATE FUNCTION SalesCountByCategory(category_id INT)
RETURNS INT
READS SQL DATA
BEGIN
  DECLARE sales_count INT;
  SELECT COUNT(DISTINCT Sales.SaleID) INTO sales_count
  FROM Sales
  JOIN SaleDetails ON Sales.SaleID = SaleDetails.SaleID
  JOIN Products ON SaleDetails.ProductID = Products.ProductID
  WHERE Products.CategoryID = category_id;
  RETURN sales_count;
END$$
DELIMITER ;

-- Test the function for CategoryID 2
SELECT SalesCountByCategory(2) AS SalesInCategory2;

-- ------------------------------------------------------------------------
-- Wholesale_Store Database: Table Modification Script
-- ------------------------------------------------------------------------
-- This script modifies the Sales table to include references to
-- the Promotions and PaymentMethods tables.
-- ------------------------------------------------------------------------

USE Wholesale_Store;

-- 1. Add PromotionID column and foreign key to reference Promotions
ALTER TABLE Sales
ADD PromotionID INT NULL,
ADD CONSTRAINT FK_Sales_Promotions
    FOREIGN KEY (PromotionID) REFERENCES Promotions(PromotionID);

-- 2. Add PaymentMethodID column and foreign key to reference PaymentMethods
ALTER TABLE Sales
ADD PaymentMethodID INT,
ADD FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethods(PaymentMethodID);

-- ------------------------------------------------------------------------
-- End of Script
-- ------------------------------------------------------------------------

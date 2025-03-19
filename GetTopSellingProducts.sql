CREATE PROCEDURE GetTopSellingProducts  
AS  
BEGIN  
    SET NOCOUNT ON;  

    SELECT TOP 10 p.ProductID, p.ProductName, SUM(o.Quantity) AS TotalSold  
    FROM OrderDetails o  
    INNER JOIN Products p ON o.ProductID = p.ProductID  
    GROUP BY p.ProductID, p.ProductName  
    ORDER BY TotalSold DESC;  
END;

CREATE PROCEDURE GetCustomerOrders  
    @CustomerID INT  
AS  
BEGIN  
    SET NOCOUNT ON;  

    SELECT OrderID, OrderDate, TotalAmount  
    FROM Orders  
    WHERE CustomerID = @CustomerID  
    ORDER BY OrderDate DESC;  
END;

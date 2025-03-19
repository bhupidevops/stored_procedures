CREATE PROCEDURE UpdateOrderTotal  
    @OrderID INT,  
    @NewTotalAmount DECIMAL(10,2)  
AS  
BEGIN  
    SET NOCOUNT ON;  

    UPDATE Orders  
    SET TotalAmount = @NewTotalAmount  
    WHERE OrderID = @OrderID;  
END;

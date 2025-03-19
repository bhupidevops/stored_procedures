CREATE PROCEDURE DeleteOrder  
    @OrderID INT  
AS  
BEGIN  
    SET NOCOUNT ON;  

    DELETE FROM Orders  
    WHERE OrderID = @OrderID;  
END;

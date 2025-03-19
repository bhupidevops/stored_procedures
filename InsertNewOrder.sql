CREATE PROCEDURE InsertNewOrder  
    @CustomerID INT,  
    @OrderDate DATETIME,  
    @TotalAmount DECIMAL(10,2),  
    @NewOrderID INT OUTPUT  
AS  
BEGIN  
    SET NOCOUNT ON;  

    INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)  
    VALUES (@CustomerID, @OrderDate, @TotalAmount);  

    SET @NewOrderID = SCOPE_IDENTITY();  
END;

CREATE VIEW ordersview AS
    SELECT 
        orders.OrderID AS OrderID,
        orders.Quantity AS Quantity,
        orders.TotalCost AS TotalCost
    FROM
        orders
    WHERE
        (orders.Quantity > 2)

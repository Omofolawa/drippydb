CREATE VIEW PaidOrderView AS
SELECT 
    Customers.CustomerID, 
    CONCAT(Customers.FirstName, ' ', Customers.LastName) AS FullName, 
    Orders.OrderID, 
    Orders.TotalCost, 
    Menu.Cuisine
FROM 
    Customers
INNER JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN 
    Menu ON Orders.MenuID = Menu.MenuID
WHERE 
    Orders.TotalCost > 100;

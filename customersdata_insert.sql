--Data insert to customers table--
--CustomerID not in qeury as Field is assigned autoincrement with IDENTITY keyword--
INSERT INTO Customers (FirstName, LastName, Address, Phone, Email)
VALUES 
('Chinedu', 'Okafor', 'Salford England', '1234567890', 'chinedu.okafor@example.com'),
('Aisha', 'Abubakar', 'Leeds England', '1234567891', 'aisha.abubakar@example.com'),
('Tunde', 'Abbas', 'Crewe England', '1234567898', 'tunde.ogunlade@example.com');

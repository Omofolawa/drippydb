--This procedure accepts 4 inputs namely BookingsID, CustomerID, Date and TableNumber
--It then inserts a new record into the Bookings table with the provided values. 
--Finally,it returns a message indicating that the booking was added successfully.

CREATE PROCEDURE AddBooking
    @BookingID INT,
    @CustomerID INT,
    @Date DATE,
    @TableNumber INT
AS
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, Date, TableNumber)
    VALUES (@BookingID, @CustomerID, @Date, @TableNumber);
    
    SELECT 'New Booking added successfully' AS Message;
END;

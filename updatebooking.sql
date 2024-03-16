--This procedure updates the bookings table DATE Column using BookingID as a WHERE clause
--accepts both BookingID & Date as inputs parameters
--TO Run the Procedure 
--EXEC UpdateBooking (@BookingID = 3, @Date = '2022-11-15');
CREATE PROCEDURE UpdateBooking
    @BookingID INT,
    @Date DATE
AS
BEGIN
    UPDATE Bookings
    SET Date = @Date
    WHERE BookingID = @BookingID;

    SELECT 'Your Booking Updated successfully' AS Message;
END;

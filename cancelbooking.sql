--This procedure deletes a booking in the bookings table using BookingID as the only input parameter

CREATE PROCEDURE CancelBooking
    @BookingID INT
AS
BEGIN
	--Delete booking syntax--
    DELETE FROM Bookings	
    WHERE BookingID = @BookingID;

    SELECT 'Booking Cancelled successfully' AS Message;
END;
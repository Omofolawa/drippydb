--This procedure deletes a booking in the bookings table using BookingID as the only input parameter

CREATE PROCEDURE CancelBooking
    @BookingID INT
AS
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = @BookingID;

    SELECT CONCAT('Booking with ID ', @BookingID, ' Cancelled successfully') AS Message;
END;

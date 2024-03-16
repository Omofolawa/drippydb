--CREATING STORED PROCEDURE TO CHECKBOOKING STATUS--
CREATE PROCEDURE CheckBooking
    @booking_date DATE,
    @table_number INT
AS
BEGIN
    DECLARE @table_status VARCHAR(255);
    
    SELECT @table_status = 
        CASE 
            WHEN EXISTS (
                SELECT * 
                FROM Bookings 
                WHERE Date = @booking_date AND TableNumber = @table_number
            ) THEN 'Booked'
            ELSE 'Available'
        END;
    
    SELECT CONCAT('Table ', @table_number, ' is ', @table_status, ' on ', @booking_date, ' ', 'SORRY!') AS message;
END;
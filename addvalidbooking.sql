--This script defines a stored procedure named AddValidBooking with input 
--parameters @booking_date of type DATE and @table_number of type INT. 
--It checks if the table is already booked on the specified date and returns appropriate messages. 
--If the table is available, it inserts a new booking into the Bookings table and commits the transaction. 
--If the table is already booked, it rolls back the transaction.--

CREATE PROCEDURE AddValidBooking
    @booking_date DATE,
    @table_number INT
AS
BEGIN
    DECLARE @table_status VARCHAR(255);
    
    BEGIN TRANSACTION;
    
    SELECT 
        @table_status = CASE 
                            WHEN EXISTS (
                                SELECT * 
                                FROM Bookings 
                                WHERE Date = @booking_date AND TableNumber = @table_number
                            ) THEN 'Booked'
                            ELSE 'Available'
                        END;
    
    IF @table_status = 'Booked'
    BEGIN
        ROLLBACK;
        SELECT 'Table is already booked on the specified date. Booking declined.' AS message;
    END
    ELSE
    BEGIN
        INSERT INTO Bookings (Date, TableNumber) VALUES (@booking_date, @table_number);
        COMMIT;
        SELECT 'Booking successful.' AS message;
    END
END

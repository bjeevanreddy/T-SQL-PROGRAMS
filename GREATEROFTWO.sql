BEGIN
    DECLARE @x INT = 10,
            @y INT = 20;
 
    IF (@x > 0 AND @y>0)
    BEGIN
        IF (@x < @y)
            PRINT 'X IS LESSER THAN Y';
        ELSE
            PRINT 'X IS GREATER THAN Y';
    END
END
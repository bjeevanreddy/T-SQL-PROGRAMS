BEGIN
	DECLARE @i INT=2;		
	WHILE (@i<10)
	BEGIN
		IF(@i%2 = 0)	
			PRINT @i;
			SET @i=@i+1;
	END;
END	

PRINT [dbo].[PRIME](53);
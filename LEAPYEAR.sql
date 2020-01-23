ALTER FUNCTION LEAPFUNC
(@YEAR INT)
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE	@ANSWER VARCHAR(255),
			@LEAP INT=0;
			IF(@YEAR>1500)
				IF(@YEAR%4=0)
					IF(@YEAR%100=0)
						IF(@YEAR%400=0)
							SET @LEAP=1;
						ELSE
							SET @LEAP=0;
					ELSE
						SET @LEAP=1;
				ELSE
					SET @LEAP=0;
			ELSE
				SET @LEAP=-1;
	IF(@LEAP=0)
		 SET @ANSWER= 'THIS IS NOT A LEAP YEAR';
	IF(@LEAP=1)
		SET @ANSWER='THIS IS A LEAP YEAR';
	ELSE
		SET @ANSWER='YEAR SHOULD BE GREATER THAN 1500';
	RETURN @ANSWER;
END


PRINT [dbo].[LEAPFUNC](1600)
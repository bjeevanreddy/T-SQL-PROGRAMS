BEGIN
DECLARE @NUMBER1 INT=30,
		@NUMBER2 INT=40,
		@RESULT INT=0;
IF @NUMBER1>0 AND @NUMBER2>0
	BEGIN
	SET @RESULT = @NUMBER1 + @NUMBER2;
	PRINT 'The Sum of '+CONVERT(VARCHAR,@NUMBER1)+' and '+CONVERT(VARCHAR,@NUMBER2)+' Numbers is '+CONVERT(VARCHAR,@RESULT);
	END
ELSE
	PRINT 'This Type of Addition cannot be Done!!!!!!!!!!';
END
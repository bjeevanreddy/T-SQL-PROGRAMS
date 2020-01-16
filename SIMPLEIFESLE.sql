BEGIN
	DECLARE @income INT;
	SELECT @income=ADVANCE_AMOUNT
	FROM ORDERS;
	SELECT @income AS TOTAL_REV;
	if @income>200
		BEGIN
			PRINT 'I have done it';
	END
	ELSE IF @income<200
		BEGIN
			PRINT 'I HAVENT DONE IT';
		END
	ELSE
		BEGIN
			PRINT 'I DONT CARE!!!';
		END 
END
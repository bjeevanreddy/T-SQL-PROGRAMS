ALTER FUNCTION SUMOFDIGITS
(@NUMBER INT)
RETURNS INT
AS
BEGIN
	DECLARE @SUM INT=0;
	WHILE(@NUMBER>0)
		BEGIN
			SET @SUM=@SUM+(@NUMBER%10);
			SET @NUMBER=@NUMBER/10;
		END
	RETURN @SUM
END

PRINT [dbo].[SUMOFDIGITS](3216)
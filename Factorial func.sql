ALTER FUNCTION FACTORIAL 
(@N INT)
RETURNS BIGINT
AS
BEGIN 
	DECLARE @F BIGINT =1,
			@I INT=1,
			@SUM INT=1;
	WHILE(@I<=@N)
	BEGIN
		SET @F =@F * @I;
		SET @I=@I+1;
	END
	RETURN @F;
END


select [dbo].[FACTORIAL](20) as factorial ;
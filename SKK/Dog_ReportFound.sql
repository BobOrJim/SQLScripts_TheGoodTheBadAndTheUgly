
--Input: Dog.Id
--Output: None


CREATE OR ALTER PROCEDURE Dog_ReportFound
	@DogId int
AS
BEGIN
	DECLARE @MyDate DATE;
	SET @MyDate = CAST( GETDATE() AS Date )

	INSERT INTO LostAndFound ([Dog_Id], [LostOrFound], [Date]) VALUES (@DogId, 'F', @MyDate)
	RETURN 

END
GO

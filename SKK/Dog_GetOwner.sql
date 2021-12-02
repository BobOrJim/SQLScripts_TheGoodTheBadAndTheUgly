CREATE OR ALTER PROCEDURE Dog_GetOwner
	@DogId int
AS
BEGIN

	SELECT (o.FirstName + ' ' + o.LastName) AS 'Owner name' FROM [Owner] AS o
	INNER JOIN Dog AS d ON o.Id=d.Owner_Id
	WHERE d.Id = @DogID

	RETURN 

END
GO
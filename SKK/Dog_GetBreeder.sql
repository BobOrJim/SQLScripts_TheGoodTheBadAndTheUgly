CREATE OR ALTER PROCEDURE Dog_GetBreeder
	@DogId int
AS
BEGIN

	SELECT k.Name AS 'Kennel name', (b.FirstName + ' ' + b.LastName) AS 'Breeder name', b.City FROM Breeder AS b
	INNER JOIN Kennel AS k ON k.Id = b.Kennel_id
	INNER JOIN Dog AS d ON d.Breeder_Id = b.Id
	WHERE d.Id = @DogId
	RETURN 

END
GO
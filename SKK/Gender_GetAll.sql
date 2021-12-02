CREATE OR ALTER PROCEDURE Gender_GetAll
		@Gender VARCHAR(1)

AS
BEGIN

	SELECT d.RegNr, d.Name, d.Gender, b.BreedType FROM Dog AS d
	INNER JOIN Breed AS b ON d.Breed_Id = b.Id
	WHERE d.Gender = @Gender
	RETURN 

END
GO
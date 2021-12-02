CREATE OR ALTER PROCEDURE Breed_GetAll
		@BreedType varchar(120)
AS
BEGIN

	SELECT d.RegNr, d.Name,d.Gender,b.BreedType FROM Breed AS b
	INNER JOIN Dog AS d ON D.Breed_Id = b.Id
	WHERE b.BreedType = @BreedType
	RETURN 

END
GO
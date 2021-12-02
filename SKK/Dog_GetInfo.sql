-- Implementera
-- https://hundar.skk.se/hunddata/Hund.aspx?hundid=2201379
-- Den "grå informationen"

--Input: Dog.Id
--Output: Dog.regNr, Dog.Name, Dog.BirthDate, Breed.BreedType, Dog.Gender, Dog.Color, Parents.Father_Id, Parents.Mother.Id


CREATE OR ALTER PROCEDURE Dog_GetInfo
	@DogId int
AS
BEGIN
	SELECT
			d1.RegNr,
			d1.[Name],
			d1.BirthDate,
			--Breed.BreedType
			b1.BreedType,
			d1.Color,
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherRegNr',
	       (SELECT Name FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherName',
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherRegNr',
		   (SELECT Name FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherName'
	FROM Parents p1
	JOIN Dog d1 ON p1.Dog_Id = d1.Id
	JOIN Breed b1 ON b1.Id = d1.Breed_Id
	WHERE p1.Dog_Id = @DogId
	RETURN 
END
GO


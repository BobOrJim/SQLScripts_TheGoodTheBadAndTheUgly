-- hundar.skk.se/hunddata/Hund_sok.aspx

--Input: regNr, Name, Gender (All inparams should be optional)
--Output: List of matching dogs

CREATE OR ALTER PROCEDURE Dog_Find 
	@RegNr varchar(40) = NULL,
	@Name varchar(100) = NULL,
	@Gender varchar(1) = NULL,
	@BreedType varchar(120) = NULL
AS
BEGIN
	SELECT
			d1.RegNr,
			d1.[Name],
			d1.BirthDate,
			b1.BreedType,
			d1.Color,
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherRegNr',
	       (SELECT Name FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherName',
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherRegNr',
		   (SELECT Name FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherName'
	FROM Parents p1
	JOIN Dog d1 ON p1.Dog_Id = d1.Id
	JOIN Breed b1 ON b1.Id = d1.Breed_Id
	WHERE ( (@RegNr = d1.RegNr)		AND (@RegNr IS NOT NULL) ) OR
		  ( (@Name = d1.Name)		AND (@Name IS NOT NULL) )  OR
		  ( (@Gender = d1.Gender)   AND (@Gender IS NOT NULL) )OR
		  ( (@BreedType = b1.BreedType)   AND (@BreedType IS NOT NULL) )

	RETURN 
END
GO



--Usage examples:
--exec Dog_Find NULL, NULL, NULL, NULL
--exec Dog_Find NULL, Carlos, NULL, NULL
--exec Dog_Find NULL, Molly, NULL, NULL
--exec Dog_Find D01010106, NULL, NULL, NULL
--exec Dog_Find D01010106, Molly, NULL, NULL
--exec Dog_Find D01010106, Carlos, NULL, NULL
--exec Dog_Find D01010106, Carlos, M, NULL
--exec Dog_Find D01010106, Carlos, F, NULL
--exec Dog_Find NULL, NULL, NULL, 'Siberian husky'
--exec Dog_Find NULL, NULL, F, 'Siberian husky'
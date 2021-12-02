CREATE OR ALTER PROCEDURE Dog_Add 

	@BreedId INT,
	@Name VARCHAR(100),
	@Gender VARCHAR,
	@BirthDate DATE,
	@Color VARCHAR(30),
	@OwnerId INT,
	@BreederId INT
AS
BEGIN

DECLARE @RegNr VARCHAR(11)

SET @RegNr = (SELECT CONCAT('D0',MAX(SUBSTRING(RegNr, 2, 15))+1) FROM Dog)

	INSERT INTO Dog (RegNr, Breed_Id, Name, Gender, BirthDate, Color, Owner_Id, Breeder_Id)
	VALUES (@RegNr, @BreedId, @Name, @Gender, @BirthDate, @Color, @OwnerId, @BreederId);
	RETURN 

END
GO

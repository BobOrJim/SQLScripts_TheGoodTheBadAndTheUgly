CREATE OR ALTER PROCEDURE Dog_ChangeOwner
	@DogId INT,
	@OwnerId INT
AS
BEGIN

	UPDATE dog SET Owner_Id = @OwnerId WHERE id = @DogId
	RETURN 

END
GO
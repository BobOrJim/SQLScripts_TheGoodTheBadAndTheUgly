CREATE OR ALTER PROCEDURE Dog_GetJournal
	@DogId int
AS
BEGIN

	SELECT a.[Date], (v.[Name] + ' - ' + v.City) AS 'Clinic', a.Errand FROM Appointment  AS a
    INNER JOIN Veterinary AS v ON a.VetId=v.Id 
    INNER JOIN Dog AS d ON d.Id=a.DogId
    WHERE d.Id = @DogId
	RETURN 

END
GO
CREATE OR ALTER PROCEDURE Dog_GetLittermates
	@DogId int
AS
BEGIN

DECLARE  @motherId int, @fatherId int

SET @motherId = (SELECT Mother_id FROM Parents WHERE Dog_id = @dogId)
SET @fatherId= (SELECT Father_id FROM Parents WHERE Dog_id = @dogId)

SELECT d1.RegNr, d1.Gender, d1.Name FROM Parents p1
    LEFT JOIN dog d1 ON p1.Dog_id = d1.id
WHERE 
    p1.Father_Id = @fatherId AND
    p1.Mother_Id = @motherId AND
    p1.Dog_id != @dogId


-- inte helt hundra, kan lösas med joins o kanske lite annat. Kennel ska va med?


	-- Implementera
	-- https://hundar.skk.se/hunddata/Hund.aspx?hundid=2201379
	-- Fliken Kullsyskon
	RETURN 

END
GO
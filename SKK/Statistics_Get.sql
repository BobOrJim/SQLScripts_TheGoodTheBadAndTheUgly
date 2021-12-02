CREATE OR ALTER PROCEDURE Statistics_Get
AS
BEGIN

	SELECT COUNT(d.Id) AS 'Antal hundar', 
	(SELECT COUNT(a.Id) FROM Appointment AS a) AS 'Antal veterinärsuppgifter',
	(SELECT COUNT(dc.Id) FROM Dog_Contest AS dc) AS 'Antal tävlingsuppgifter'
	FROM Dog AS d

	RETURN 

END
GO
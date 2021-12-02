--A recursive CTE consists of three elements:

CREATE OR ALTER PROCEDURE Dog_GetFamilyTree
	@Dog_Id int
AS
BEGIN
	WITH Recursion AS (
		--1: Invocation of the routine.
		SELECT p1.Dog_Id AS 'DogId',
			(SELECT Name FROM Dog WHERE Dog.Id = p1.Dog_Id) AS 'DogName', 
			p1.Mother_Id AS 'MotherId', 
			(SELECT Name FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherName', 
			p1.Father_Id AS 'FatherId', 
			(SELECT Name FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherName'
        FROM Parents p1
        WHERE p1.Dog_Id = @Dog_Id
        UNION ALL
		--2: Recursive invocation of the routine.
		SELECT p2.Dog_Id AS 'Dog',
			(SELECT Name FROM Dog WHERE Dog.Id = p2.Dog_Id) AS 'DogName', 
			p2.Mother_Id AS 'MotherId', 
			(SELECT Name FROM Dog WHERE Dog.Id = p2.Mother_Id) AS 'MotherName', 
			p2.Father_Id AS 'FatherId', 
			(SELECT Name FROM Dog WHERE Dog.Id = p2.Father_Id) AS 'FatherName'
        FROM Parents p2 
		--3: Termination check.
		INNER JOIN Recursion r ON r.FatherId = p2.Dog_Id OR r.MotherId = p2.Dog_Id 
		)
    -- Statement that executes the CTE
	SELECT  *
	FROM Recursion
	RETURN 
END
GO

--Usage example
--exec Dog_GetFamilyTree 3
--Note, we remade the family tree to only one level deep, and thus we cant demo the recursion in
--this stored procedure without modifying the family tree. However this SP is working and have been
--tested against our previous family tree.


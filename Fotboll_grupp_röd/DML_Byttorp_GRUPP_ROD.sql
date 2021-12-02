--  Insert into Person(FirstName, LastName)
 
--  values('Tom', 'Klenfelt'),('Carl','Åfalk'),('Sarah','Ali'),('Erik', 'Jakobsson'),('Erik', 'Grune'), ('Jimmy', 'Nordin'),('Pär','Jorwén');
 
--  Insert into Team(TeamName) values('Team Röd'),('Sjömarken P10'),('Byttorp F8'), ('Byttorp P8');
 
--  INSERT INTO Player (PersonID, TeamID)
--  SELECT PersonID, 1 FROM Person where PersonID != 7;

--  Insert into Coach(PersonID) values(1),(2),(3),(4),(5),(6),(7);

--  Insert into Team_Coach(TeamID, CoachID) values (1,7);


-- --Lägger in tre träningar för team 1, där AttendanceController är person mer ID 5 och 3 på sista träningen.
-- INSERT INTO [SoccerPractice] (TeamID, AttendenceController) VALUES (1, 5);
-- INSERT INTO [SoccerPractice] (TeamID, AttendenceController) VALUES (1, 5);
-- INSERT INTO [SoccerPractice] (TeamID, AttendenceController) VALUES (1, 3);

-- --Personer som är närvrande på träning 3.
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (1, 1); --Tom
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (2, 1); --Carl
--  INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (3, 2); --Sarah
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (4, 1); --Erik J
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (5, 1); --Erik G
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (5, 2); --Erik G
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (6, 1); --Jimmy 
-- INSERT INTO [SoccerPractice_Person] (PersonID, SoccerPracticeID) VALUES (7, 2); --Pär

-- SELECT * FROM [SoccerPractice]
-- SELECT * FROM [SoccerPractice_Person]
-- SELECT * FRom Person;

--Select FirstName, LastName, sp.SoccerPracticeID from Person p
--inner join SoccerPractice_Person spp
--on spp.PersonID = p.PersonID
--inner join SoccerPractice sp 
--on sp.SoccerPracticeID = spp.SoccerPracticeID
--order by p.PersonID;

-- drop VIEW [Laguppställning];


-- Cross join + case

 --Create VIEW [Laguppställning] as 
 --Select t.TeamID, p.PersonID, pl.playerID FROM Team t 
 --inner join Player pl 
 --on t.TeamID = pl.TeamID
 --inner join Person p
 --on pl.PersonID = p.PersonID;

-- USE BYTTORP_RÖD

--SELECT * INTE KLAR
--FROM Person p
--JOIN SoccerPractice_Person spp ON spp.PersonID = p.PersonID
--JOIN SoccerPractice sp ON sp.SoccerPracticeID = spp.SoccerPracticeID
--ORDER BY spp.SoccerPracticeID
--USE BYTTORP_RÖD

--Detta är närvarolista oinfylld. Obs coach skall addas.
--SELECT *, INTE FÄRDIG
--		'example' AS [Närvaro],
--		CASE
--			WHEN (SELECT *
--				  FROM SoccerPractice_Person spp = 1 THEN 'X'
--			ELSE ''
--		END AS Närvaro
--FROM Player p
--JOIN Team t ON p.TeamID = t.TeamID
--JOIN SoccerPractice sp ON t.TeamID = sp.TeamID
--ORDER BY sp.SoccerPracticeID

--Detta är närvarolista oinfylld. Obs coach skall addas.
--USE BYTTORP_RÖD
--SELECT *, --FUNKAR
--		CASE WHEN EXISTS (
--			SELECT *
--			FROM SoccerPractice_Person spp
--			WHERE (spp.PersonID = p.PersonID AND spp.SoccerPracticeID = sp.SoccerPracticeID)
--		)
--		THEN 'X'
--		ELSE '' END AS Närvaro
--FROM Player p
--JOIN Team t ON p.TeamID = t.TeamID
--JOIN SoccerPractice sp ON t.TeamID = sp.TeamID
--ORDER BY sp.SoccerPracticeID

USE BYTTORP_RÖD
--CREATE AS View

CREATE VIEW RapportViewPart2 AS
SELECT tc.CoachID, pe.PersonID, t.TeamName, sp.SoccerPracticeID AS 'Soccer Practice', pe.FirstName, pe.LastName,
		CASE WHEN EXISTS (
			SELECT *
			FROM SoccerPractice_Person spp
			WHERE (spp.PersonID = p.PersonID AND spp.SoccerPracticeID = sp.SoccerPracticeID)
		)
		THEN 'X'
		ELSE '' END AS Attendance,
		CASE WHEN sp.AttendenceController = pe.PersonID 
			THEN pe.FirstName + ' ' + pe.LastName
			ELSE ''
		END AS AttendenceController
FROM Person pe
LEFT JOIN Player p ON pe.PersonID = p.PersonID
LEFT JOIN Team t ON p.TeamID = t.TeamID
LEFT JOIN SoccerPractice sp ON t.TeamID = sp.TeamID
LEFT JOIN Team_Coach tc ON t.TeamID = tc.TeamID
LEFT JOIN Coach c ON tc.CoachID = c.CoachID

SELECT r1.TeamName, r1.[Soccer Practice], r1.FirstName, r1.LastName, r1.Attendance, r1.AttendenceController, r2.FirstName + ' ' +r2.LastName AS Coach
FROM [dbo].[RapportViewPart2] r1, [dbo].[RapportViewPart2] r2
WHERE r1.CoachID = r2.PersonID
ORDER BY r1.[Soccer Practice]




--KISS, divide and conquror, SRP

--SELECT *
--FROM Person pe
--LEFT JOIN Player p ON pe.PersonID = p.PersonID
--JOIN Team t ON p.TeamID = t.TeamID
--JOIN SoccerPractice sp ON t.TeamID = sp.TeamID
--JOIN Team_Coach tc ON t.TeamID = tc.TeamID
--ORDER BY sp.SoccerPracticeID


--  DROP TABLE IF EXISTS Player;
--  DROP TABLE IF EXISTS Coach;
--  DROP TABLE IF EXISTS Person;
--  DROP TABLE IF EXISTS Team;
--  DROP TABLE IF EXISTS Team_Coach;
--  DROP TABLE IF EXISTS SoccerPractice;
--  DROP TABLE IF EXISTS SoccerPractice_Person;


-- CREATE TABLE [Person] (
--   [PersonID] Int identity(1,1),
--   [FirstName] varchar(50),
--   [LastName] varchar(50),
--   PRIMARY KEY ([PersonID])
-- );

-- CREATE TABLE [Coach] (
--   [CoachID] Int identity(1,1),
--   [PersonID] Int,
--   PRIMARY KEY ([CoachID])
-- );

-- CREATE TABLE [Team] (
--   [TeamID] Int identity(1,1),
--   [TeamName] varchar(50),
--   PRIMARY KEY ([TeamID])
-- );

-- CREATE TABLE [Player] (
--   [PlayerID] Int identity(1,1),
--   [PersonID] Int,
--   [TeamID] Int,
--   PRIMARY KEY ([PlayerID]),
--   CONSTRAINT [FK_Player.TeamID]
--     FOREIGN KEY ([TeamID])
--       REFERENCES [Team]([TeamID])
-- );

-- CREATE TABLE [Team_Coach] (
--   [Team_CoachID] Int identity(1,1),
--   [CoachID] Int,
--   [TeamID] Int,
--   PRIMARY KEY ([Team_CoachID]),
--   CONSTRAINT [FK_Team_Coach.CoachID]
--     FOREIGN KEY ([CoachID])
--       REFERENCES [Coach]([CoachID]),
--   CONSTRAINT [FK_Team_Coach.TeamID]
--     FOREIGN KEY ([TeamID])
--       REFERENCES [Team]([TeamID])
-- );
-- CREATE UNIQUE INDEX AK_TeamCoach_ID   
--   ON Team_Coach (TeamID,CoachID); 

-- CREATE TABLE [SoccerPractice] (
--   [SoccerPracticeID] Int identity(1,1),
--   [TeamID] Int,
--   [AttendenceController] Int,
--   PRIMARY KEY ([SoccerPracticeID]),
--   CONSTRAINT [FK_SoccerPractice.TeamID]
--     FOREIGN KEY ([TeamID])
--       REFERENCES [Team]([TeamID]),
--   CONSTRAINT [FK_SoccerPractice.AttendenceController]
--   FOREIGN KEY (AttendenceController)
--   REFERENCES [Person]([PersonID])
-- );

-- CREATE TABLE [SoccerPractice_Person] (
--   [PresentPerson] Int identity(1,1),
--   [PersonID] Int,
--   [SoccerPracticeID] Int,
--   PRIMARY KEY ([PresentPerson]),
--   CONSTRAINT [FK_SoccerPractice_Person.PersonID]
--     FOREIGN KEY ([PersonID])
--       REFERENCES [Person]([PersonID]),
--   CONSTRAINT [FK_SoccerPractice_Person.SoccerPracticeID]
--     FOREIGN KEY ([SoccerPracticeID])
--       REFERENCES [SoccerPractice]([SoccerPracticeID])
-- );
-- CREATE UNIQUE INDEX AK_SoccerPractice_ID   
--    ON SoccerPractice_Person (PersonID, SoccerPracticeID); 

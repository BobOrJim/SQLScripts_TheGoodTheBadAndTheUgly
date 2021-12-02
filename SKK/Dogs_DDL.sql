DROP TABLE IF EXISTS Appointment 
DROP TABLE IF EXISTS Breed
DROP TABLE IF EXISTS Breeder
DROP TABLE IF EXISTS Dog
DROP TABLE IF EXISTS Kennel
DROP TABLE IF EXISTS [Owner]
DROP TABLE IF EXISTS Parents
DROP TABLE IF EXISTS Veterinary
DROP TABLE IF EXISTS Contest
DROP TABLE IF EXISTS Dog_Contest
DROP TABLE IF EXISTS LostAndFound

----
CREATE TABLE [Owner] (
	[Id] int primary key identity (1,1),
	[FirstName] varchar(60) NOT NULL,
	[LastName] varchar(60) NOT NULL,
);

CREATE TABLE [Breeder] (
	[Id] int primary key identity (1,1),
	[FirstName] varchar(60) NOT NULL,
	[LastName] varchar(60) NOT NULL,
	[City] varchar (50) NOT NULL,
	[Kennel_id] int,
);

CREATE TABLE [Dog] (
	[Id] int primary key identity (1,1),
	[RegNr] varchar(40) NOT NULL,
	[Breed_Id] int,
	[Name] varchar(100) NOT NULL,
	[Gender] varchar(1) NOT NULL CHECK(Gender = 'M' OR Gender = 'F'),
	[BirthDate] Date,
	[Color] varchar(30),
	[Owner_Id] int,
	[Breeder_Id] int,
);

CREATE TABLE [Veterinary] (
	[Id] int primary key identity (1,1),
	[Name] varchar(50) NOT NULL,
	[City] varchar(50) NOT NULL,
);

CREATE TABLE [Breed] (
	[Id] int primary key identity (1,1),
	[BreedType] varchar (120) NOT NULL,
);

CREATE TABLE [Appointment] (
	[Id] int primary key identity (1,1),
	[Errand] varchar(255) NOT NULL,
	[Date] Date,
	[VetId] int,
	[DogId] int,
);

CREATE TABLE [Kennel] (
	[Id] int primary key identity (1,1),
	[Name] varchar(100) NOT NULL,
);

CREATE TABLE [Parents] (
	[Id] int primary key identity (1,1),
	[Dog_id] int,
	[Mother_id] int,
	[Father_id] int
);

CREATE TABLE [Contest] (
	[Id] int primary key identity (1,1),
	[Type] varchar(255),
	[Date] Date,
	[City] varchar(60),
	[Organizer] varchar(255)
);

CREATE TABLE [Dog_Contest] (
	[Id] int primary key identity (1,1),
	[Dog_Id] int NOT NULL,
	[Contest_Id] int NOT NULL
);

CREATE TABLE [LostAndFound] (
	[Id] int primary key identity (1,1),
	[Dog_Id] int NOT NULL,
	[LostOrFound] varchar(1) NOT NULL CHECK(LostOrFound = 'L' OR LostOrFound = 'F'),
	[Date] Date NOT NULL
);

--Naming convention :)
--ALTER TABLE (Tabell där FK ligger)
--ADD CONSTRAINT (FK_TabellMedPK_TabellMedFK) FOREIGN KEY (FK) REFERENCES TabelMedPK(PK)

ALTER TABLE LostAndFound
ADD CONSTRAINT FK_Dog_LostAndFound FOREIGN KEY (Dog_Id) REFERENCES Dog(Id)

ALTER TABLE Dog_Contest
ADD CONSTRAINT FK_Dog_Dog_Contest FOREIGN KEY (Contest_Id) REFERENCES Contest(Id)

ALTER TABLE Dog_Contest
ADD CONSTRAINT FK_Contest_Dog_Contest FOREIGN KEY (Dog_Id) REFERENCES Dog(Id)

ALTER TABLE Dog
ADD CONSTRAINT FK_Owner_Dog FOREIGN KEY (Owner_Id) REFERENCES Owner(id)

ALTER TABLE Dog
ADD CONSTRAINT FK_Breed_Dog FOREIGN KEY (Breed_Id) REFERENCES Breed(id)

ALTER TABLE Dog
ADD CONSTRAINT FK_Breeder_Dog FOREIGN KEY (Breeder_Id) REFERENCES Breeder(id)

ALTER TABLE Breeder
ADD CONSTRAINT FK_Kennel_Breeder FOREIGN KEY (Kennel_Id) REFERENCES Kennel(id)

ALTER TABLE Appointment
ADD CONSTRAINT FK_Veterinary_Appointment FOREIGN KEY (VetId) REFERENCES Veterinary(id)

ALTER TABLE Appointment
ADD CONSTRAINT FK_Dog_Appointment FOREIGN KEY (DogId) REFERENCES Dog(id)

ALTER TABLE Parents
ADD CONSTRAINT FK_Dog_Parents FOREIGN KEY (Dog_Id) REFERENCES Dog(id)

ALTER TABLE Parents
ADD CONSTRAINT FK_MotherDog_Parents FOREIGN KEY (Mother_Id) REFERENCES Dog(id)

ALTER TABLE Parents
ADD CONSTRAINT FK_FatherDog_Parents FOREIGN KEY (Father_Id) REFERENCES Dog(id)







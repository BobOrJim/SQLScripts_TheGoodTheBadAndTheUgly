INSERT INTO Owner (FirstName, LastName)
VALUES ('Mariyah', 'Freeman'),
('Ava-Mae' ,'Dean'),
('Caroline' ,'Brook'),
('Sonia', 'Payne'),
('Olivia-Grace', 'Bernard'),
('Oscar', 'Patel'),
('Finbar', 'Terrell'),
('Forrest', 'Jensen'),
('Trinity', 'Munro'),
('Taybah', 'Burks'),
('Blessing', 'Mcnamara'),
('Marcelina', 'Johns'),
('Mahdi', 'Stark'),
('Dawid', 'Felix'),
('Arabella', 'Reyes'),
('Harun', 'Rivas'),
('Euan', 'Andrade'),
('Ioana', 'Roth'),
('Lucinda', 'Busby'),
('Karol', 'Tierney'),
('Harri', 'Barry'),
('Zaki', 'Farrell'),
('Abbey', 'Holloway'),
('Malika', 'Ayala'),
('Kyra', 'Peters'),
('Ariadne', 'Cartwright'),
('Lulu', 'Rosario'),
('Sarina', 'Stout'),
('Armani', 'Woodcock'),
('Aaran', 'Kramer')


INSERT INTO Kennel (Name)
VALUES ('Happy Dogs'),
('Animal Kingdom'),
('Great Lab Farm'),
('Huskey Heaven'),
('King Breeders')

INSERT INTO Breed (BreedType) SELECT Name FROM Gemensam.dbo.raser

INSERT INTO Breeder (FirstName, LastName, City, Kennel_id)
VALUES ('Olle', 'Ljung', 'Chicago', 1),
('Felix', 'Jones', 'Boston', 2),
('Emma', 'Smith', 'New York', 3)



INSERT INTO Dog (RegNr, Breed_id, Name, Gender, BirthDate, Color, Owner_id, Breeder_id)
VALUES 
('D01010101', 1, 'Eva', 'F', '2001-04-03', 'Black', 1, 1),
('D01010102', 1, 'Blacky', 'M', '2001-06-11', 'Black',2,1),
('D01010103', 1, 'Doggy', 'M', '2004-02-01', 'Black', 3, 1),
('D01010104', 1, 'Molly', 'F', '2004-02-01', 'Black', 5, 1),
('D01010105', 1, 'Ally', 'F', '2004-02-01', 'Black', 8, 1),
('D01010106', 1, 'Carlos', 'M', '2004-02-01', 'Black', 4, 1),

('D01010107', 289, 'Bobby', 'M', '2008-03-02', 'White', 6, 2),
('D01010108', 289, 'Hibou', 'F', '2007-02-16', 'White', 6, 2),

('D01010109', 289, 'Kiddo', 'M', '2004-02-01', 'White', 7, 2),
('D01010110', 289, 'Pupperz', 'F', '2004-02-01', 'Black', 9, 2),
('D01010111', 289, 'Kicker', 'M', '2004-02-01', 'White', 10, 2),
('D01010112', 289, 'Aldo', 'M', '2004-02-01', 'Black', 10, 2),

('D01010113', 289, 'Bro', 'M', '2005-07-15', 'Black', 13, 2),
('D01010114', 289, 'Keeny', 'M', '2005-07-15', 'White', 14, 2),
('D01010115', 289, 'Ivy', 'F', '2005-07-15', 'Black', 15, 2),
('D01010116', 289, 'Alice', 'F', '2005-07-15', 'White', 16, 2),
('D01010117', 289, 'Zara', 'F', '2005-07-15', 'Black', 16, 2),


('D01010118', 289, 'Andy', 'M', '2006-08-11', 'Black', 18, 2),
('D01010119', 289, 'Zorro', 'M', '2006-08-11', 'Black', 11, 2),
('D01010120', 289, 'Felix', 'M', '2006-08-11', 'Black', 17, 2),
('D01010121', 289, 'Lisa', 'F', '2006-08-11', 'Black', 19, 2),
('D01010122', 289, 'Lizz', 'F', '2006-08-11', 'Black', 20, 2)



INSERT INTO Parents (Dog_Id, Mother_Id, Father_id)
VALUES 
	(3,1,2),
    (4,1,2),
    (5,1,2),
    (6,1,2),
	(9,8,7),
	(10,8,7),
	(11,8,7),
	(12,8,7),
	(13,10,11),
	(14,10,11),
	(15,10,11),
	(16,10,11),
	(17,10,11),
	(18,8,13),
	(19,8,13),
	(20,8,13),
	(21,8,13),
	(22,8,13)

INSERT INTO Veterinary ([Name], City) VALUES 

('Blå Stjärnan', 'Borås'),
('Agria Djursjukhus', 'Göteborg')

INSERT INTO Appointment (Errand, [Date], VetId, DogId) VALUES 

('Hip replacement', '2020-02-13', 1,1),
('Kidney stone removal', '2004-03-31', 2,2),
('plastic straw stuck in nose', '2018-12-14', 1, 1)


INSERT INTO Contest ([Type], [Date], [City], [Organizer]) VALUES 
('Dog throwing championship', '2020-02-13', 'Boras', 'KAD KickAssDogs'),
('Squid games for dogs', '2004-11-11', 'Seoul', 'Be there or be square'),
('RoboDogs vs FleshDogs', '2018-12-14', 'Yo mamas basement', 'Dog Eat Dog')
INSERT INTO Dog_Contest ([Dog_Id], [Contest_Id]) VALUES 
(1,1),
(2,1),
(3,1),
(6,1),
(7,1),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2),
(1,3),
(2,3),
(5,3),
(6,3),
(12,3)

INSERT INTO LostAndFound ([Dog_Id], [LostOrFound], [Date]) VALUES 
(1, 'L', '2018-01-05'),
(1, 'F', '2018-01-06'),
(13, 'L', '2020-01-06'),
(13, 'F', '2020-02-06'),
(20, 'L', '2021-11-09')











USE [SKK_LILA]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Errand] [varchar](255) NOT NULL,
	[Date] [date] NULL,
	[VetId] [int] NULL,
	[DogId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Breed]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BreedType] [varchar](120) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Breeder]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breeder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](60) NOT NULL,
	[LastName] [varchar](60) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Kennel_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contest]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](255) NULL,
	[Date] [date] NULL,
	[City] [varchar](60) NULL,
	[Organizer] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dog]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegNr] [varchar](40) NOT NULL,
	[Breed_Id] [int] NULL,
	[Name] [varchar](100) NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[BirthDate] [date] NULL,
	[Color] [varchar](30) NULL,
	[Owner_Id] [int] NULL,
	[Breeder_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dog_Contest]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dog_Contest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Id] [int] NOT NULL,
	[Contest_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kennel]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kennel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LostAndFound]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LostAndFound](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Id] [int] NOT NULL,
	[LostOrFound] [varchar](1) NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](60) NOT NULL,
	[LastName] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dog_id] [int] NULL,
	[Mother_id] [int] NULL,
	[Father_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veterinary]    Script Date: 2021-11-25 17:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veterinary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([Id], [Errand], [Date], [VetId], [DogId]) VALUES (1, N'Hip replacement', CAST(N'2020-02-13' AS Date), 1, 1)
INSERT [dbo].[Appointment] ([Id], [Errand], [Date], [VetId], [DogId]) VALUES (2, N'Kidney stone removal', CAST(N'2004-03-31' AS Date), 2, 2)
INSERT [dbo].[Appointment] ([Id], [Errand], [Date], [VetId], [DogId]) VALUES (3, N'plastic straw stuck in nose', CAST(N'2018-12-14' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[Breed] ON 

INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (1, N'Affenpinscher')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (2, N'Afghanhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (3, N'Airedaleterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (4, N'Akita')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (5, N'Alaskan klee kai')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (6, N'Alaskan malamute')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (7, N'Alpenländische dachsbracke')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (8, N'American akita')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (9, N'American bulldog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (10, N'American bully')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (11, N'American english coonhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (12, N'American eskimo dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (13, N'American foxhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (14, N'American hairless terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (15, N'American mastiff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (16, N'American staffordshire terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (17, N'American toy fox terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (18, N'American water spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (19, N'American wolfdog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (20, N'Amerikansk cocker spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (21, N'Amerikansk pitbullterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (22, N'Anatolisk herdehund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (23, N'Appenzeller sennenhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (24, N'Ariégeois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (25, N'Australian cattledog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (26, N'Australian cobber dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (27, N'Australian kelpie')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (28, N'Australian koolie')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (29, N'Australian shepherd')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (30, N'Australisk terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (31, N'Azawakh')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (32, N'Bandog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (33, N'Barbet')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (34, N'Basenji')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (35, N'Basset artésien normand')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (36, N'Basset bleu de gascogne')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (37, N'Basset fauve de bretagne')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (38, N'Basset hound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (39, N'Bayersk viltspårhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (40, N'Beagle')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (41, N'Bearded collie')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (42, N'Beauceron')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (43, N'Bedlingtonterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (44, N'Belgisk vallhund Groenendael')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (45, N'Belgisk vallhund Laekenois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (46, N'Belgisk vallhund Malinois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (47, N'Belgisk vallhund Tervueren')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (48, N'Bergamasco')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (49, N'Berger des pyrénées à face rase')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (50, N'Berger des pyrénées à poil long')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (51, N'Berger picard')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (52, N'Berner sennenhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (53, N'Bernerstövare')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (54, N'Bichon frisé')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (55, N'Bichon havanais')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (56, N'Black and tan coonhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (57, N'Blodhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (58, N'Bluetick coonhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (59, N'Boerboel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (60, N'Bolognese')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (61, N'Border collie')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (62, N'Borderterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (63, N'Borzoi')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (64, N'Bostonterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (65, N'Bouvier des flandres')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (66, N'Boxer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (67, N'Boykin spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (68, N'Bracco italiano')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (69, N'Braque du Bourbonnais')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (70, N'Breton')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (71, N'Briard')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (72, N'Briquet Griffon Vendéen')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (73, N'Broholmer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (74, N'Bullmastiff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (75, N'Bullterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (76, N'Cairnterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (77, N'Canaan dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (78, N'Cane corso')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (79, N'Cão da serra da estrela')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (80, N'Cão da serra de aires')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (81, N'Catahoula leopard dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (82, N'Cavalier king charles spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (83, N'Ceskoslovenský vlciak')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (84, N'Cesky fousek')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (85, N'Ceskyterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (86, N'Chart polski')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (87, N'Chesapeake bay retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (88, N'Chihuahua')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (89, N'Chinese Chongqing dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (90, N'Chinese crested dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (91, N'Chinese crested dog powder puff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (92, N'Chodský pes')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (93, N'Chow chow')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (94, N'Cimarrón uruguayo')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (95, N'Cirneco dell etna')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (96, N'Clumber spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (97, N'Cockapoo')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (98, N'Cocker spaniel-')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (99, N'Collie (korthårig)')
GO
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (100, N'Collie-')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (101, N'Coton de tuléar')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (102, N'Curly coated retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (103, N'Dalmatiner')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (104, N'Dandie dinmont terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (105, N'Dansk-svensk gårdshund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (106, N'Dobermann')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (107, N'Dogo argentino')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (108, N'Dogo canario')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (109, N'Dogue de bordeaux')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (110, N'Drentsche Patrijshond')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (111, N'Drever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (112, N'Dvärgpinscher')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (113, N'Dvärgschnauzer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (114, N'Engelsk bulldogg')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (115, N'Engelsk setter')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (116, N'Engelsk springer spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (117, N'English shepherd')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (118, N'English toy terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (119, N'Entlebucher sennenhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (120, N'Erdélyi Kopo')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (121, N'Eurasier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (122, N'Faraohund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (123, N'Field spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (124, N'Fila brasileiro')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (125, N'Finsk lapphund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (126, N'Finsk spets')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (127, N'Finsk stövare')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (128, N'Flatcoated retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (129, N'Foxhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (130, N'Fransk bulldogg')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (131, N'Galgo espanol')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (132, N'Gammel dansk hönsehund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (133, N'Golden retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (134, N'Goldendoodle')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (135, N'Gonczy polski')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (136, N'Gordonsetter')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (137, N'Gos datura catala')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (138, N'Grand basset griffon vendéen')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (139, N'Grand bleu de gascogne')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (140, N'Grand danois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (141, N'Grand griffon vendéen')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (142, N'Greyhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (143, N'Griffon belge')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (144, N'Griffon bleu de gascogne')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (145, N'Griffon bruxellois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (146, N'Griffon darret à poil dur/korthals')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (147, N'Griffon fauve de bretagne')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (148, N'Griffon nivernais')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (149, N'Groenendael')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (150, N'Grosser münsterländer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (151, N'Grosser schweizer sennenhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (152, N'Grönlandshund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (153, N'Hamiltonstövare')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (154, N'Hannoveransk viltspårhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (155, N'Harrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (156, N'Hokkaido')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (157, N'Hollandse herdershond (korthårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (158, N'Hollandse herdershond (långhårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (159, N'Hollandse herdershond (strävhårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (160, N'Hovawart')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (161, N'Hrvatski ovscar')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (162, N'Irish glen of imaal terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (163, N'Irish softcoated wheaten terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (164, N'Irländsk röd och vit setter')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (165, N'Irländsk röd setter')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (166, N'Irländsk terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (167, N'Irländsk varghund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (168, N'Irländsk vattenspaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (169, N'Isländsk fårhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (170, N'Italiensk vinthund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (171, N'Jack russell terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (172, N'Japanese chin')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (173, N'Japansk spets')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (174, N'Juzjnorusskaja ovtjarka')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (175, N'Jämthund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (176, N'Kangal çoban köpegi')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (177, N'Karelsk björnhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (178, N'Kavkazskaja ovtjarka')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (179, N'Keeshond')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (180, N'Kerry blue terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (181, N'King charles spaniel-')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (182, N'Kleiner münsterländer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (183, N'Kleinspitz')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (184, N'Komondor')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (185, N'Korthårig vorsteh')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (186, N'Kromfohrländer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (187, N'Kuvasz')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (188, N'Labradoodle')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (189, N'Labrador retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (190, N'Labrador retriever (brun)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (191, N'Labrador retriever (gul)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (192, N'Labrador retriever (svart)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (193, N'Laekenois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (194, N'Lagotto romagnolo')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (195, N'Lakelandterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (196, N'Lancashire heeler')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (197, N'Landseer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (198, N'Lapsk vallhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (199, N'Leonberger')
GO
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (200, N'Lhasa apso')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (201, N'Långhårig vorsteh')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (202, N'Löwchen')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (203, N'Magyar Agar')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (204, N'Malinois')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (205, N'Malteser')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (206, N'Manchesterterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (207, N'Maremmano abruzzese')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (208, N'Markiesje')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (209, N'Mastiff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (210, N'Mastín espanol')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (211, N'Mastino napoletano')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (212, N'Miniature American shepherd')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (213, N'Miniatyr bullterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (214, N'Mittelspitz')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (215, N'Mops')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (216, N'Mudi')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (217, N'Nederlandse kooikerhondje')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (218, N'Newfoundlandshund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (219, N'Norfolkterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (220, N'Norrbottenspets')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (221, N'Norsk buhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (222, N'Norsk lundehund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (223, N'Norsk älghund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (224, N'Norsk älghund (svart)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (225, N'Norwichterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (226, N'Nova scotia duck tolling retriever')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (227, N'Old english sheepdog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (228, N'Olde english bulldogge')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (229, N'Otterhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (230, N'Papillon')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (231, N'Parson russell terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (232, N'Patterdale terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (233, N'Pekingese')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (234, N'Perro de agua español')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (235, N'Perro dogo mallorquín/ca de bou')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (236, N'Perro sin pelo del peru')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (237, N'Petit basset griffon vendéen')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (238, N'Petit brabancon')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (239, N'Phalène')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (240, N'Pinscher-')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (241, N'Plott')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (242, N'Podenco ibicenco')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (243, N'Podengo portugues cerdoso')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (244, N'Podengo portugues liso')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (245, N'Pointer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (246, N'Polski owczarek nizinny')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (247, N'Polski owczarek podhalanski')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (248, N'Pomeranian')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (249, N'Porcelaine')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (250, N'Portugisisk vattenhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (251, N'Prazský krysarík')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (252, N'Pudel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (253, N'Puli')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (254, N'Pumi')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (255, N'Pyrenéerhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (256, N'Pyreneisk mastiff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (257, N'Rat terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (258, N'Redbone coonhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (259, N'Rhodesian ridgeback')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (260, N'Riesenschnauzer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (261, N'Rottweiler')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (262, N'Russkaya tsvetnaya bolonka')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (263, N'Russkiy toy')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (264, N'Rysk svart terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (265, N'Saarlos wolfhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (266, N'Sabueso espanol')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (267, N'Saluki')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (268, N'Saluki (släthårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (269, N'Samojedhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (270, N'Sankt bernhardshund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (271, N'Sarplaninac')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (272, N'Schapendoes')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (273, N'Schillerstövare')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (274, N'Schipperke')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (275, N'Schnauzer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (276, N'Schweiziska stövare')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (277, N'Schweiziska stövare / berner')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (278, N'Schweiziska stövare / jura')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (279, N'Schweiziska stövare / luzerner')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (280, N'Schäfer')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (281, N'Schäfer (svart)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (282, N'Sealyhamterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (283, N'Segugio italiano')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (284, N'Shar pei')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (285, N'Shetland sheepdog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (286, N'Shiba')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (287, N'Shih tzu')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (288, N'Shikoku')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (289, N'Siberian husky')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (290, N'Silky terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (291, N'Skotsk hjorthund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (292, N'Skotsk terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (293, N'Skyeterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (294, N'Sloughi')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (295, N'Slovenský cuvac')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (296, N'Slovenský hrubosrsty stavac')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (297, N'Slovenský kopov')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (298, N'Släthårig foxterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (299, N'Smålandsstövare')
GO
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (300, N'Spinone')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (301, N'Sredneasiatskaja ovtjarka')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (302, N'Stabijhoun')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (303, N'Staffordshire bullterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (304, N'Strävhårig foxterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (305, N'Strävhårig vorsteh')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (306, N'Sussex spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (307, N'Svensk lapphund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (308, N'Svensk vit älghund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (309, N'Tax')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (310, N'Tax (korthårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (311, N'Tax (långhårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (312, N'Tax (strävhårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (313, N'Tenterfield terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (314, N'Terrier brasileiro')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (315, N'Tervueren')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (316, N'Thai bangkaew dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (317, N'Thai ridgeback dog')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (318, N'Tibetansk mastiff')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (319, N'Tibetansk spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (320, N'Tibetansk terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (321, N'Tosa')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (322, N'Treeing walker coonhound')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (323, N'Tysk jaktterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (324, N'Tysk schäferhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (325, N'Tysk schäferhund (svart)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (326, N'Tysk schäferhund långhårig')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (327, N'Tysk spets')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (328, N'Ungersk vizsla')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (329, N'Vit herdehund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (330, N'Volpino italiano')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (331, N'Västgötaspets')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (332, N'Västsibirisk laika')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (333, N'Wachtelhund')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (334, N'Weimaraner')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (335, N'Weimaraner (långhårig)')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (336, N'Welsh corgi cardigan')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (337, N'Welsh corgi pembroke')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (338, N'Welsh springer spaniel')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (339, N'Welshterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (340, N'West highland white terrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (341, N'Whippet')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (342, N'Working kelpie')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (343, N'Xoloitzcuintle')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (344, N'Yorkiepoo')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (345, N'Yorkshireterrier')
INSERT [dbo].[Breed] ([Id], [BreedType]) VALUES (346, N'Östsibirisk laika')
SET IDENTITY_INSERT [dbo].[Breed] OFF
GO
SET IDENTITY_INSERT [dbo].[Breeder] ON 

INSERT [dbo].[Breeder] ([Id], [FirstName], [LastName], [City], [Kennel_id]) VALUES (1, N'Olle', N'Ljung', N'Chicago', 1)
INSERT [dbo].[Breeder] ([Id], [FirstName], [LastName], [City], [Kennel_id]) VALUES (2, N'Felix', N'Jones', N'Boston', 2)
INSERT [dbo].[Breeder] ([Id], [FirstName], [LastName], [City], [Kennel_id]) VALUES (3, N'Emma', N'Smith', N'New York', 3)
SET IDENTITY_INSERT [dbo].[Breeder] OFF
GO
SET IDENTITY_INSERT [dbo].[Contest] ON 

INSERT [dbo].[Contest] ([Id], [Type], [Date], [City], [Organizer]) VALUES (1, N'Dog throwing championship', CAST(N'2020-02-13' AS Date), N'Boras', N'KAD KickAssDogs')
INSERT [dbo].[Contest] ([Id], [Type], [Date], [City], [Organizer]) VALUES (2, N'Squid games for dogs', CAST(N'2004-11-11' AS Date), N'Seoul', N'Be there or be square')
INSERT [dbo].[Contest] ([Id], [Type], [Date], [City], [Organizer]) VALUES (3, N'RoboDogs vs FleshDogs', CAST(N'2018-12-14' AS Date), N'Yo mamas basement', N'Dog Eat Dog')
SET IDENTITY_INSERT [dbo].[Contest] OFF
GO
SET IDENTITY_INSERT [dbo].[Dog] ON 

INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (1, N'D01010101', 1, N'Eva', N'F', CAST(N'2001-04-03' AS Date), N'Black', 1, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (2, N'D01010102', 1, N'Blacky', N'M', CAST(N'2001-06-11' AS Date), N'Black', 2, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (3, N'D01010103', 1, N'Doggy', N'M', CAST(N'2004-02-01' AS Date), N'Black', 3, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (4, N'D01010104', 1, N'Molly', N'F', CAST(N'2004-02-01' AS Date), N'Black', 5, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (5, N'D01010105', 1, N'Ally', N'F', CAST(N'2004-02-01' AS Date), N'Black', 8, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (6, N'D01010106', 1, N'Carlos', N'M', CAST(N'2004-02-01' AS Date), N'Black', 4, 1)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (7, N'D01010107', 289, N'Bobby', N'M', CAST(N'2008-03-02' AS Date), N'White', 32, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (8, N'D01010108', 289, N'Hibou', N'F', CAST(N'2007-02-16' AS Date), N'White', 6, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (9, N'D01010109', 289, N'Kiddo', N'M', CAST(N'2004-02-01' AS Date), N'White', 7, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (10, N'D01010110', 289, N'Pupperz', N'F', CAST(N'2004-02-01' AS Date), N'Black', 9, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (11, N'D01010111', 289, N'Kicker', N'M', CAST(N'2004-02-01' AS Date), N'White', 10, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (12, N'D01010112', 289, N'Aldo', N'M', CAST(N'2004-02-01' AS Date), N'Black', 31, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (13, N'D01010113', 289, N'Bro', N'M', CAST(N'2005-07-15' AS Date), N'Black', 13, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (14, N'D01010114', 289, N'Keeny', N'M', CAST(N'2005-07-15' AS Date), N'White', 14, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (15, N'D01010115', 289, N'Ivy', N'F', CAST(N'2005-07-15' AS Date), N'Black', 15, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (16, N'D01010116', 289, N'Alice', N'F', CAST(N'2005-07-15' AS Date), N'White', 16, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (17, N'D01010117', 289, N'Zara', N'F', CAST(N'2005-07-15' AS Date), N'Black', 16, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (18, N'D01010118', 289, N'Andy', N'M', CAST(N'2006-08-11' AS Date), N'Black', 18, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (19, N'D01010119', 289, N'Zorro', N'M', CAST(N'2006-08-11' AS Date), N'Black', 11, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (20, N'D01010120', 289, N'Felix', N'M', CAST(N'2006-08-11' AS Date), N'Black', 17, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (21, N'D01010121', 289, N'Lisa', N'F', CAST(N'2006-08-11' AS Date), N'Black', 19, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (22, N'D01010122', 289, N'Lizz', N'F', CAST(N'2006-08-11' AS Date), N'Black', 20, 2)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (23, N'D01010123', 222, N'Dogge', N'M', CAST(N'2003-08-15' AS Date), N'Black', 18, 3)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (24, N'D01010124', 222, N'Stina', N'F', CAST(N'2003-09-01' AS Date), N'Black', 11, 3)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (25, N'D01010125', 222, N'Blue', N'M', CAST(N'2006-08-11' AS Date), N'Black', 23, 3)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (26, N'D01010126', 222, N'Water', N'F', CAST(N'2006-08-11' AS Date), N'Black', 21, 3)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (27, N'D01010127', 222, N'Klas', N'M', CAST(N'2006-08-11' AS Date), N'Black', 28, 3)
INSERT [dbo].[Dog] ([Id], [RegNr], [Breed_Id], [Name], [Gender], [BirthDate], [Color], [Owner_Id], [Breeder_Id]) VALUES (31, N'D01010131', 38, N'Albert den store', N'M', CAST(N'2008-04-20' AS Date), N'White', 31, 3)
SET IDENTITY_INSERT [dbo].[Dog] OFF
GO
SET IDENTITY_INSERT [dbo].[Dog_Contest] ON 

INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (1, 1, 1)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (2, 2, 1)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (3, 3, 1)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (4, 6, 1)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (5, 7, 1)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (6, 11, 2)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (7, 12, 2)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (8, 13, 2)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (9, 14, 2)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (10, 15, 2)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (11, 1, 3)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (12, 2, 3)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (13, 5, 3)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (14, 6, 3)
INSERT [dbo].[Dog_Contest] ([Id], [Dog_Id], [Contest_Id]) VALUES (15, 12, 3)
SET IDENTITY_INSERT [dbo].[Dog_Contest] OFF
GO
SET IDENTITY_INSERT [dbo].[Kennel] ON 

INSERT [dbo].[Kennel] ([Id], [Name]) VALUES (1, N'Happy Dogs')
INSERT [dbo].[Kennel] ([Id], [Name]) VALUES (2, N'Animal Kingdom')
INSERT [dbo].[Kennel] ([Id], [Name]) VALUES (3, N'Great Lab Farm')
INSERT [dbo].[Kennel] ([Id], [Name]) VALUES (4, N'Huskey Heaven')
INSERT [dbo].[Kennel] ([Id], [Name]) VALUES (5, N'King Breeders')
SET IDENTITY_INSERT [dbo].[Kennel] OFF
GO
SET IDENTITY_INSERT [dbo].[LostAndFound] ON 

INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (1, 1, N'L', CAST(N'2018-01-05' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (2, 1, N'F', CAST(N'2018-01-06' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (3, 13, N'L', CAST(N'2020-01-06' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (4, 13, N'F', CAST(N'2020-02-06' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (5, 20, N'L', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (6, 1, N'F', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (7, 1, N'L', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[LostAndFound] ([Id], [Dog_Id], [LostOrFound], [Date]) VALUES (8, 1, N'F', CAST(N'2021-11-09' AS Date))
SET IDENTITY_INSERT [dbo].[LostAndFound] OFF
GO
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (1, N'Mariyah', N'Freeman')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (2, N'Ava-Mae', N'Dean')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (3, N'Caroline', N'Brook')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (4, N'Sonia', N'Payne')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (5, N'Olivia-Grace', N'Bernard')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (6, N'Oscar', N'Patel')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (7, N'Finbar', N'Terrell')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (8, N'Forrest', N'Jensen')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (9, N'Trinity', N'Munro')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (10, N'Taybah', N'Burks')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (11, N'Blessing', N'Mcnamara')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (12, N'Marcelina', N'Johns')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (13, N'Mahdi', N'Stark')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (14, N'Dawid', N'Felix')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (15, N'Arabella', N'Reyes')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (16, N'Harun', N'Rivas')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (17, N'Euan', N'Andrade')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (18, N'Ioana', N'Roth')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (19, N'Lucinda', N'Busby')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (20, N'Karol', N'Tierney')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (21, N'Harri', N'Barry')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (22, N'Zaki', N'Farrell')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (23, N'Abbey', N'Holloway')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (24, N'Malika', N'Ayala')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (25, N'Kyra', N'Peters')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (26, N'Ariadne', N'Cartwright')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (27, N'Lulu', N'Rosario')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (28, N'Sarina', N'Stout')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (29, N'Armani', N'Woodcock')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (30, N'Aaran', N'Kramer')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (31, N'Frans', N'Billqvist')
INSERT [dbo].[Owner] ([Id], [FirstName], [LastName]) VALUES (32, N'Oscar', N'Stenson')
SET IDENTITY_INSERT [dbo].[Owner] OFF
GO
SET IDENTITY_INSERT [dbo].[Parents] ON 

INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (1, 3, 1, 2)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (2, 4, 1, 2)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (3, 5, 1, 2)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (4, 6, 1, 2)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (5, 9, 8, 7)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (6, 10, 8, 7)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (7, 11, 8, 7)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (8, 12, 8, 7)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (9, 13, 10, 11)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (10, 14, 10, 11)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (11, 15, 10, 11)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (12, 16, 10, 11)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (13, 17, 10, 11)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (14, 18, 8, 13)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (15, 19, 8, 13)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (16, 20, 8, 13)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (17, 21, 8, 13)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (18, 22, 8, 13)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (19, 25, 24, 23)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (20, 26, 24, 23)
INSERT [dbo].[Parents] ([Id], [Dog_id], [Mother_id], [Father_id]) VALUES (21, 27, 24, 23)
SET IDENTITY_INSERT [dbo].[Parents] OFF
GO
SET IDENTITY_INSERT [dbo].[Veterinary] ON 

INSERT [dbo].[Veterinary] ([Id], [Name], [City]) VALUES (1, N'Blå Stjärnan', N'Borås')
INSERT [dbo].[Veterinary] ([Id], [Name], [City]) VALUES (2, N'Agria Djursjukhus', N'Göteborg')
SET IDENTITY_INSERT [dbo].[Veterinary] OFF
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Dog_Appointment] FOREIGN KEY([DogId])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Dog_Appointment]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Veterinary_Appointment] FOREIGN KEY([VetId])
REFERENCES [dbo].[Veterinary] ([Id])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Veterinary_Appointment]
GO
ALTER TABLE [dbo].[Breeder]  WITH CHECK ADD  CONSTRAINT [FK_Kennel_Breeder] FOREIGN KEY([Kennel_id])
REFERENCES [dbo].[Kennel] ([Id])
GO
ALTER TABLE [dbo].[Breeder] CHECK CONSTRAINT [FK_Kennel_Breeder]
GO
ALTER TABLE [dbo].[Dog]  WITH CHECK ADD  CONSTRAINT [FK_Breed_Dog] FOREIGN KEY([Breed_Id])
REFERENCES [dbo].[Breed] ([Id])
GO
ALTER TABLE [dbo].[Dog] CHECK CONSTRAINT [FK_Breed_Dog]
GO
ALTER TABLE [dbo].[Dog]  WITH CHECK ADD  CONSTRAINT [FK_Breeder_Dog] FOREIGN KEY([Breeder_Id])
REFERENCES [dbo].[Breeder] ([Id])
GO
ALTER TABLE [dbo].[Dog] CHECK CONSTRAINT [FK_Breeder_Dog]
GO
ALTER TABLE [dbo].[Dog]  WITH CHECK ADD  CONSTRAINT [FK_Owner_Dog] FOREIGN KEY([Owner_Id])
REFERENCES [dbo].[Owner] ([Id])
GO
ALTER TABLE [dbo].[Dog] CHECK CONSTRAINT [FK_Owner_Dog]
GO
ALTER TABLE [dbo].[Dog_Contest]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Dog_Contest] FOREIGN KEY([Dog_Id])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[Dog_Contest] CHECK CONSTRAINT [FK_Contest_Dog_Contest]
GO
ALTER TABLE [dbo].[Dog_Contest]  WITH CHECK ADD  CONSTRAINT [FK_Dog_Dog_Contest] FOREIGN KEY([Contest_Id])
REFERENCES [dbo].[Contest] ([Id])
GO
ALTER TABLE [dbo].[Dog_Contest] CHECK CONSTRAINT [FK_Dog_Dog_Contest]
GO
ALTER TABLE [dbo].[LostAndFound]  WITH CHECK ADD  CONSTRAINT [FK_Dog_LostAndFound] FOREIGN KEY([Dog_Id])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[LostAndFound] CHECK CONSTRAINT [FK_Dog_LostAndFound]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_Dog_Parents] FOREIGN KEY([Dog_id])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_Dog_Parents]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_FatherDog_Parents] FOREIGN KEY([Father_id])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_FatherDog_Parents]
GO
ALTER TABLE [dbo].[Parents]  WITH CHECK ADD  CONSTRAINT [FK_MotherDog_Parents] FOREIGN KEY([Mother_id])
REFERENCES [dbo].[Dog] ([Id])
GO
ALTER TABLE [dbo].[Parents] CHECK CONSTRAINT [FK_MotherDog_Parents]
GO
ALTER TABLE [dbo].[Dog]  WITH CHECK ADD CHECK  (([Gender]='M' OR [Gender]='F'))
GO
ALTER TABLE [dbo].[LostAndFound]  WITH CHECK ADD CHECK  (([LostOrFound]='L' OR [LostOrFound]='F'))
GO
/****** Object:  StoredProcedure [dbo].[Breed_GetAll]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Breed_GetAll]
		@BreedType varchar(120)
AS
BEGIN

	SELECT d.RegNr, d.Name,d.Gender,b.BreedType FROM Breed AS b
	INNER JOIN Dog AS d ON D.Breed_Id = b.Id
	WHERE b.BreedType = @BreedType
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Dog_Add]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_Add] 

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
/****** Object:  StoredProcedure [dbo].[Dog_ChangeOwner]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_ChangeOwner]
	@DogId INT,
	@OwnerId INT
AS
BEGIN

UPDATE dog SET Owner_Id = @OwnerId WHERE id= @DogId
	RETURN 

END

GO
/****** Object:  StoredProcedure [dbo].[Dog_Find]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- hundar.skk.se/hunddata/Hund_sok.aspx

--Input: regNr, Name, Gender (All inparams should be optional)
--Output: List of matching dogs

CREATE   PROCEDURE [dbo].[Dog_Find] 
	@RegNr varchar(40) = NULL,
	@Name varchar(100) = NULL,
	@Gender varchar(1) = NULL,
	@BreedType varchar(120) = NULL
AS
BEGIN
	SELECT
			d1.RegNr,
			d1.[Name],
			d1.BirthDate,
			b1.BreedType,
			d1.Color,
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherRegNr',
	       (SELECT Name FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherName',
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherRegNr',
		   (SELECT Name FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherName'
	FROM Parents p1
	JOIN Dog d1 ON p1.Dog_Id = d1.Id
	JOIN Breed b1 ON b1.Id = d1.Breed_Id
	WHERE ( (@RegNr = d1.RegNr)		AND (@RegNr IS NOT NULL) ) OR
		  ( (@Name = d1.Name)		AND (@Name IS NOT NULL) )  OR
		  ( (@Gender = d1.Gender)   AND (@Gender IS NOT NULL) )OR
		  ( (@BreedType = b1.BreedType)   AND (@BreedType IS NOT NULL) )

	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[Dog_GetBreeder]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_GetBreeder]
	@DogId int
AS
BEGIN

	SELECT k.Name AS 'Kennel name', (b.FirstName + ' ' + b.LastName) AS 'Breeder name', b.City FROM Breeder AS b
	INNER JOIN Kennel AS k ON k.Id = b.Kennel_id
	INNER JOIN Dog AS d ON d.Breeder_Id = b.Id
	WHERE d.Id = @DogId
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Dog_GetFamilyTree]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--A recursive CTE consists of three elements:

CREATE   PROCEDURE [dbo].[Dog_GetFamilyTree]
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
/****** Object:  StoredProcedure [dbo].[Dog_GetInfo]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Implementera
-- https://hundar.skk.se/hunddata/Hund.aspx?hundid=2201379
-- Den "grå informationen"

--Input: Dog.Id
--Output: Dog.regNr, Dog.Name, Dog.BirthDate, Breed.BreedType, Dog.Gender, Dog.Color, Parents.Father_Id, Parents.Mother.Id


--USE SKK_LILA;

CREATE   PROCEDURE [dbo].[Dog_GetInfo]
	@DogId int
AS
BEGIN
	SELECT
			d1.RegNr,
			d1.[Name],
			d1.BirthDate,
			--Breed.BreedType
			b1.BreedType,
			d1.Color,
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherRegNr',
	       (SELECT Name FROM Dog WHERE Dog.Id = p1.Mother_Id) AS 'MotherName',
		   (SELECT RegNr FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherRegNr',
		   (SELECT Name FROM Dog WHERE Dog.Id = p1.Father_Id) AS 'FatherName'
	FROM Parents p1
	JOIN Dog d1 ON p1.Dog_Id = d1.Id
	JOIN Breed b1 ON b1.Id = d1.Breed_Id
	WHERE p1.Dog_Id = @DogId
	RETURN 
END
GO
/****** Object:  StoredProcedure [dbo].[Dog_GetJournal]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_GetJournal]
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
/****** Object:  StoredProcedure [dbo].[Dog_GetLittermates]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_GetLittermates]
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
/****** Object:  StoredProcedure [dbo].[Dog_GetOffspring]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Dog_GetOffspring]
	@DogId int
AS
BEGIN


SELECT dog.Name, dog.Id, Parents.Mother_Id AS 'MotherId', Parents.Father_id 'Father_id',   
			CASE WHEN Parents.Mother_id = @DogId THEN 
			(SELECT dog.Name FROM Dog WHERE Dog.Id = parents.Father_Id) 		  
			WHEN Parents.Father_id = @DogId THEN 
			(SELECT dog.Name FROM Dog WHERE Dog.Id = parents.Mother_Id)
			END AS Parent
			FROM Dog 
			JOIN parents  ON dog.Id = Parents.dog_id
			WHERE   Parents.Father_Id = @DogId Or Parents.Mother_id = @DogId

	-- Implementera
	-- https://hundar.skk.se/hunddata/Hund.aspx?hundid=2201379
	-- Fliken avkommor
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Dog_GetOwner]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Dog_GetOwner]
	@DogId int
AS
BEGIN

	SELECT (o.FirstName + ' ' + o.LastName) AS 'Owner name' FROM [Owner] AS o
	INNER JOIN Dog AS d ON o.Id=d.Owner_Id
	WHERE d.Id = @DogID

	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Dog_ReportFound]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Input: Dog.Id
--Output: None


CREATE   PROCEDURE [dbo].[Dog_ReportFound]
	@DogId int
AS
BEGIN
	DECLARE @MyDate DATE;
	SET @MyDate = CAST( GETDATE() AS Date )

	INSERT INTO LostAndFound ([Dog_Id], [LostOrFound], [Date]) VALUES (@DogId, 'F', @MyDate)
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Dog_ReportMissing]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Input: Dog.Id
--Output: None

CREATE   PROCEDURE [dbo].[Dog_ReportMissing]
	@DogId int
AS
BEGIN
	DECLARE @MyDate DATE;
	SET @MyDate = CAST( GETDATE() AS Date )

	INSERT INTO LostAndFound ([Dog_Id], [LostOrFound], [Date]) VALUES (@DogId, 'L', @MyDate)
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Gender_GetAll]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Gender_GetAll]
		@Gender VARCHAR(1)

AS
BEGIN

	SELECT d.RegNr, d.Name, d.Gender, b.BreedType FROM Dog AS d
	INNER JOIN Breed AS b ON d.Breed_Id = b.Id
	WHERE d.Gender = @Gender
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Owner_Add]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Owner_Add]
	@FirstName varchar(60),
	@LastName varchar (60)
AS
BEGIN

	INSERT INTO OWNER (FirstName, LastName)
	VALUES (@FirstName, @LastName)
	RETURN 

END
GO
/****** Object:  StoredProcedure [dbo].[Statistics_Get]    Script Date: 2021-11-25 17:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Statistics_Get]
AS
BEGIN

	SELECT COUNT(d.Id) AS 'Antal hundar', 
	(SELECT COUNT(a.Id) FROM Appointment AS a) AS 'Antal veterinärsuppgifter',
	(SELECT COUNT(dc.Id) FROM Dog_Contest AS dc) AS 'Antal tävlingsuppgifter'
	FROM Dog AS d

	RETURN 

END
GO

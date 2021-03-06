USE [OOP_LILA]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 2021-11-25 17:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobAd]    Script Date: 2021-11-25 17:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobAd](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](50) NULL,
	[License_Id] [int] NULL,
	[YearsOfExperience] [int] NULL,
	[Sector_Id] [int] NULL,
	[Employer_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSeeker]    Script Date: 2021-11-25 17:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSeeker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[YearBorn] [date] NULL,
	[StreetAdress] [varchar](100) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Location] [varchar](50) NULL,
	[License_Id] [int] NULL,
	[Sector_Id] [int] NULL,
	[YearsOfExperience] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[License]    Script Date: 2021-11-25 17:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[License_Type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 2021-11-25 17:00:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sector_Type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employer] ON 

INSERT [dbo].[Employer] ([Id], [Name]) VALUES (1, N'Microsoft')
INSERT [dbo].[Employer] ([Id], [Name]) VALUES (2, N'Apple')
INSERT [dbo].[Employer] ([Id], [Name]) VALUES (3, N'ICA')
INSERT [dbo].[Employer] ([Id], [Name]) VALUES (4, N'Welders sanctuary')
INSERT [dbo].[Employer] ([Id], [Name]) VALUES (5, N'Blue bird taxi')
INSERT [dbo].[Employer] ([Id], [Name]) VALUES (12, N'ABC Finance')
SET IDENTITY_INSERT [dbo].[Employer] OFF
GO
SET IDENTITY_INSERT [dbo].[JobAd] ON 

INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (12, N'asd', 0, 1, 1, 1)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (13, N'asd', 0, 1, 1, 1)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (15, N'test', 0, 1, 1, 1)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (16, N'asdf', 1, 1, 1, 0)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (17, N'asdf', 1, 1, 1, 566)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (41, N'Silicon Valley', 1, 3, 1, 0)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (42, N'Silicon Valley', 1, 3, 1, 0)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (43, N'Silicon Valley', 1, 3, 1, 0)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (55, N'Silicon Valley', 2, 3, 1, 1)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (56, N'Austin', 1, 1, 6, 2)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (58, N'Sandared', 8, 1, 2, 3)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (59, N'Viared', 7, 5, 4, 4)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (60, N'Göteborg', 2, 2, 3, 5)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (61, N'Örebro', 9, 2, 9, 12)
INSERT [dbo].[JobAd] ([Id], [Location], [License_Id], [YearsOfExperience], [Sector_Id], [Employer_Id]) VALUES (62, N'tranemo', 7, 4, 4, 4)
SET IDENTITY_INSERT [dbo].[JobAd] OFF
GO
SET IDENTITY_INSERT [dbo].[JobSeeker] ON 

INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (14, N'test', N'ASd', CAST(N'0001-01-01' AS Date), N'Gatis 12', N'0702020111', N'oa@mail.com', N'OASd', 1, 0, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (15, N'test', N'ASd', CAST(N'0001-01-01' AS Date), N'Gatis 12', N'0702020111', N'oa@mail.com', N'OASd', 1, 0, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (16, N'test', N'ASd', CAST(N'0001-01-01' AS Date), N'Gatis 12', N'0702020111', N'oa@mail.com', N'OASd', 2, 0, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (17, N'test', N'ASd', CAST(N'0001-01-01' AS Date), N'Gatis 12', N'0702020111', N'oa@mail.com', N'OASd', 2, 0, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (18, N'test', N'ASd', CAST(N'2000-01-01' AS Date), N'Gatis 12', N'0702020111', N'oa@mail.com', N'OASd', 2, 0, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (19, N'Mikael', N'Andersson', CAST(N'1987-01-01' AS Date), N'Fridensstig 14', N'0704522121', N'MikaelA@mail.com', N'Borås', 3, 0, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (20, N'Oscar', N'Stensson', CAST(N'2001-01-01' AS Date), N'Fridensstig 14', N'+10705278019', N'oscarstenson@gmail.com', N'borås', 1, 0, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (21, NULL, NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (32, N'Petter ', N'Jansson', CAST(N'1952-04-02' AS Date), N'Kungsgatan 23', N'072352352', N'PJ@gmail.com', N'Borås', 1, 6, 0)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (33, N'Lucas', N'Benjaminsson', CAST(N'1989-01-04' AS Date), N'Skövdevägen', N'0714243553', N'lucasboi@hotmail.se', N'Skövde', 1, 6, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (35, N'Carl', N'Åfalk', CAST(N'1997-07-14' AS Date), N'sturegatan 6a', N'0761155565', N'carl.afalk@hotmail.se', N'borås', 2, 1, 0)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (36, N'Jimmy ', N'Nordin', CAST(N'1985-03-13' AS Date), N'Alingsåsvägen 23', N'0765223451', N'jimpa@mail.com', N'borås', 4, 1, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (37, N'Bill', N'Gates', CAST(N'1956-02-05' AS Date), N'Bill Gates Avenue 1423', N'0814245364', N'bill@mail.com', N'New York', 1, 1, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (38, N'Anton ', N'Karlsson', CAST(N'1997-02-28' AS Date), N'Andra villagatan 2', N'0741424212', N'AK@hotmail.se', N'Borås', 2, 2, 5)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (40, N'Anna', N'Westman', CAST(N'1978-12-31' AS Date), N'Backvägen 52b', N'0752425345', N'Anna_We@gmail.com', N'Göteborg', 8, 2, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (41, N'Per', N'Nyman', CAST(N'1967-03-04' AS Date), N'Saltjögränd 13', N'0733244514', N'PerraNyman@outlook.com', N'Borås', 1, 2, 0)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (42, N'Sanna', N'Veltman', CAST(N'1988-03-23' AS Date), N'ekudden 1', N'0706349613', N'S.Veltman@hotmail.se', N'Uddevalla', 2, 4, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (43, N'Christer ', N'Nyhage', CAST(N'1950-02-07' AS Date), N'Fjällvägen 2b', N'0765115534', N'Christer1950@gmail.com', N'Stockholm', 7, 4, 5)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (44, N'Robin', N'Ekman', CAST(N'1968-06-04' AS Date), N'Lantmannagatan 24', N'0714452552', N'ekman.robin@tele2.com', N'Borås', 7, 4, 3)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (45, N'Lars', N'Bjurman', CAST(N'1964-02-13' AS Date), N'Nyckelvägen 25', N'0765522445', N'bjurmans@outlook.com', N'Göteborg', 2, 3, 10)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (46, N'Mia', N'Svensson', CAST(N'1976-05-31' AS Date), N'Apostelgatan 77', N'0702426476', N'miaminmia@gmail.com', N'Borås', 2, 3, 0)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (48, N'Laila', N'Krafth', CAST(N'1988-04-30' AS Date), N'björkängsvägen 4', N'0705425364', N'krafth.laila@telia.com', N'Stockholm', 2, 3, 2)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (49, N'Olle', N'Berg', CAST(N'2008-02-02' AS Date), N'Gatiz 15', N'0704020202', N'bergO@mailiz.com', N'Borås', 3, 3, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (50, N'Tor', N'Torsson', CAST(N'1963-02-03' AS Date), N'Vägensväg 12', N'074929229', N'ToOoOR@mailiz.com', N'Fagersta', 7, 4, 4)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (51, N'Fredrik', N'Peng', CAST(N'2001-04-04' AS Date), N'gatan 12', N'0703021212', N'peng@money.com', N'Örebro', 9, 9, 1)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (52, N'Grabb', N'grabbson', CAST(N'1972-03-01' AS Date), N'gatan 12', N'0703021212', N'peng@money.com', N'Örebro', 7, 4, 5)
INSERT [dbo].[JobSeeker] ([Id], [FirstName], [LastName], [YearBorn], [StreetAdress], [PhoneNumber], [Email], [Location], [License_Id], [Sector_Id], [YearsOfExperience]) VALUES (53, N'Rasmus', N'Lorch', CAST(N'2021-06-24' AS Date), N'37808 3rd avenue', N'905 205 någonting', N'Gmail', N'Squamish', 1, 1, 0)
SET IDENTITY_INSERT [dbo].[JobSeeker] OFF
GO
SET IDENTITY_INSERT [dbo].[License] ON 

INSERT [dbo].[License] ([Id], [License_Type]) VALUES (1, N'No license')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (2, N'Drivers License B')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (3, N'Drivers License C')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (4, N'Forklift License A')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (5, N'Forklift License B')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (6, N'OSHA Safety Certificate')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (7, N'Certified Welder')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (8, N'Food Saftey')
INSERT [dbo].[License] ([Id], [License_Type]) VALUES (9, N'Investment Counselor')
SET IDENTITY_INSERT [dbo].[License] OFF
GO
SET IDENTITY_INSERT [dbo].[Sector] ON 

INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (1, N'IT')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (2, N'Groceries')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (3, N'Taxi')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (4, N'Welder')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (5, N'Bus driver')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (6, N'Secretary')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (7, N'Accounting')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (8, N'Marketing')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (9, N'Finance')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (10, N'Warehouse')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (11, N'Production')
INSERT [dbo].[Sector] ([Id], [Sector_Type]) VALUES (12, N'Retail')
SET IDENTITY_INSERT [dbo].[Sector] OFF
GO
/****** Object:  StoredProcedure [dbo].[Create_Employer]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Create_Employer]
        @Name VARCHAR(50)
    
AS
BEGIN
    INSERT INTO Employer ([Name]) VALUES (@Name)

    RETURN
END 
GO
/****** Object:  StoredProcedure [dbo].[Create_JobAd2]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Create_JobAd2]
        @Location VARCHAR(50),
		@Sector_id INT,
        @License_Id INT,
        @YearsOfExperience INT,        
        @Employer_Id INT
AS
BEGIN
    INSERT INTO JobAd ([Location], Sector_Id, License_Id, YearsOfExperience,  Employer_Id) 
    VALUES(@Location, @Sector_Id, @License_Id,  @YearsOfExperience, @Employer_Id)
    RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[Create_JobSeeker2]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Create_JobSeeker2]
        @FirstName VARCHAR(50),
        @LastName VARCHAR(50),
        @YearBorn DATE,
        @StreetAdress VARCHAR(100),
        @PhoneNumber VARCHAR(50),
        @Email VARCHAR(100),
        @Location VARCHAR(50),
		@Sector_Id INT,
        @License_Id INT,        
        @YearsOfExperience INT
AS
BEGIN
    INSERT INTO JobSeeker (FirstName, LastName, YearBorn, StreetAdress, PhoneNumber, Email, [Location], Sector_Id, License_Id, YearsOfExperience)
    VALUES (@FirstName, @LastName, @YearBorn, @StreetAdress, @PhoneNumber, @Email, @Location, @Sector_Id, @License_Id, @YearsOfExperience)
    RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[Get_JobAd_test]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Get_JobAd_test]

@Id INT
AS 
BEGIN
SELECT *, s.Sector_Type, l.License_Type FROM JobAd as j
                                                    JOIN Employer e on e.Id = j.Employer_Id
                                                    JOIN Sector s on s.Id = j.Sector_Id
	                                                JOIN License l on l.Id = j.License_Id
                                                    WHERE j.Id = @Id
           RETURN
END 
GO
/****** Object:  StoredProcedure [dbo].[Get_JobAd2]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Get_JobAd2]
AS
BEGIN
    SELECT e.Id, e.Name, Location, s.Id, s.Sector_Type, l.Id, l.License_Type,j.Employer_Id, j.YearsOfExperience FROM JobAd AS j
    INNER JOIN License AS l ON l.Id=j.License_Id
    INNER JOIN Sector AS s ON s.Id=j.Sector_Id
    INNER JOIN Employer AS e ON e.Id=j.Employer_Id
	
    RETURN
END

GO
/****** Object:  StoredProcedure [dbo].[Get_JobSeeker2]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Get_JobSeeker2]

AS
BEGIN
    SELECT j.Id ,FirstName, LastName, YearBorn, StreetAdress, PhoneNumber, Email, Location, j.YearsOfExperience, j.Sector_Id,
                                    s.Id, s.Sector_Type, l.Id, l.License_Type
                                    FROM JobSeeker AS j
                                    INNER JOIN License AS l ON l.Id = j.License_Id
                                    INNER JOIN Sector AS s ON s.Id = j.Sector_Id
    RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[Get_JobSeekers]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Get_JobSeekers]
AS
BEGIN

select  FirstName, 
        LastName, 
        YearBorn, 
        StreetAdress, 
        PhoneNumber, 
        Email, 
        YearsOfExperience,
        [Location], 
        FieldOfWork,
        l.LicenseType
         from JobSeeker as j
inner join LicenseList AS ll on ll.JobSeeker_Id=j.Id
inner join License as l on l.Id=ll.License_Id

RETURN
END 
GO
/****** Object:  StoredProcedure [dbo].[Insert_JobAd]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Insert_JobAd]
        @Name VARCHAR(50),
        @Location VARCHAR(50),
        @YearsOfExperience int,
        @License_Id int,
        @Employer_Id INT

AS
BEGIN
    INSERT INTO JobAd ([Name],[Location],Employer_Id) VALUES (@Name, @Location,@Employer_Id)
    INSERT INTO Experience(YearsOfExperience, JobAd_Id) VALUES (@YearsOfExperience,(Select MAX(Id) FROM JobAd) )
    INSERT INTO Criterias (License_Id, JobAd_Id) VALUES (@License_Id,(Select MAX(Id) FROM JobAd))

    RETURN
END 
GO
/****** Object:  StoredProcedure [dbo].[InsertJobSeeker]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[InsertJobSeeker]
            @FirstName VARCHAR(40),
            @LastName VARCHAR(40),
            @YearBorn Date,
            @StreetAdress VARCHAR(100),
            @PhoneNumber VARCHAR(20),
            @Email VARCHAR(50),
            @YearsOfExperience int,
            @Location VARCHAR(50),
			@Sector_id INT,
            @License_Id INT

AS
BEGIN
        INSERT INTO JobSeeker(FirstName,LastName,YearBorn,StreetAdress, PhoneNumber,Email,Sector_id, License_id, YearsOfExperience,[Location])

		VALUES (@FirstName,@LastName,@YearBorn,@StreetAdress,@PhoneNumber,@Email,@Sector_id, @License_Id, @YearsOfExperience,@Location)

        

        RETURN
END


GO
/****** Object:  StoredProcedure [dbo].[JobAd_Get]    Script Date: 2021-11-25 17:00:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[JobAd_Get]
AS
BEGIN

    SELECT e.Name ,j.Name 'Type of job', j.[Location], l.LicenseType, ex.YearsOfExperience FROM JobAd AS j
    INNER JOIN Employer AS e ON e.Id=j.Employer_Id
    INNER JOIN Criterias AS c ON j.Id=c.JobAd_Id
    INNER JOIN Experience AS ex ON j.Id=ex.JobAd_Id
    INNER JOIN License AS l ON l.Id=c.License_Id
    RETURN
END
GO

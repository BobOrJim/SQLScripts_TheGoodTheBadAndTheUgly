USE [SKK_LILA]
GO
/****** Object:  StoredProcedure [dbo].[spOwner_Add]    Script Date: 2021-11-09 13:20:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[spOwner_Add] 
	@FirstName varchar(60),
	@LastName varchar (60)
AS
BEGIN

	INSERT INTO OWNER (FirstName, LastName)
	VALUES (@FirstName, @LastName)
	RETURN 

END

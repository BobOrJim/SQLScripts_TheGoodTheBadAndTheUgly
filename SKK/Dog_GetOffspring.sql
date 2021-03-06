USE [SKK_LILA]
GO
/****** Object:  StoredProcedure [dbo].[spDog_GetOffspring]    Script Date: 2021-11-09 13:21:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[spDog_GetOffspring]
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

USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[RepDamagedComBin]    Script Date: 16/10/2019 13:08:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Inserts values into table dbo.DamagedComBin
-- =============================================
CREATE PROCEDURE [dbo].[RepDamagedComBin]
	-- Add the parameters for the stored procedure here
	@CaseRef varchar (50),
	@Date date,
	@BusinessName varchar(100),
	@FullName varchar(500),
	@Email varchar(100),
	@Tel varchar (50),
	@Mobile varchar (50),
	@Postcode varchar(10),
	@UPRN varchar (10),
	@Address text,
	@AddressMap text,
	@BinDamaged varchar (10),
	@DamageDescription varchar (max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
  
	INSERT INTO DamagedComBin(
	 [CaseRef]
	,[Date]
	,[BusinessName]
	,[FullName]
	,[Email]
	,[Tel] 
	,[Mobile]
	,[Postcode]
	,[UPRN]
	,[Address]
	,[AddressMap]
	,[BinDamaged]
	,[DamageDescription])
	
	
VALUES
	(
	@CaseRef,
	@Date,
	@BusinessName,
	@FullName,
	@Email,
	@Tel,
	@Mobile,
	@Postcode,
	@UPRN,
	@Address,
	@AddressMap,
	@BinDamaged,
	@DamageDescription)

	
END

GO


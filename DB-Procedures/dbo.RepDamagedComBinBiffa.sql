USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[RepDamagedComBinBiffa]    Script Date: 16/10/2019 13:08:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Inserts values from Waste report damage to communal bin - Biffa stage (2)
-- =============================================
CREATE PROCEDURE [dbo].[RepDamagedComBinBiffa]
	-- Add the parameters for the stored procedure here
	@BinRepairable varchar(5),
	@CommentsBiffa varchar(Max),
	@CaseRef varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE DamagedComBin
		
	SET [BinRepairable] = @BinRepairable,
		[CommentsBiffa] = @CommentsBiffa
			
	WHERE @CaseRef = CaseRef
END

GO


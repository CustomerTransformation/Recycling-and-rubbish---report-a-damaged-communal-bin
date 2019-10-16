USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[RepDamagedComBinWaste]    Script Date: 16/10/2019 13:10:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Inserts values into table DamagedComBin from the last stage (Waste) in the form Waste - report a damaged communal bin
-- =============================================
CREATE PROCEDURE [dbo].[RepDamagedComBinWaste]
	-- Add the parameters for the stored procedure here
	@CommentsWaste varchar(Max),
	@CaseRef varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		UPDATE DamagedComBin
		
		SET [CommentsWaste] = @CommentsWaste
			
		WHERE @CaseRef = CaseRef
END

GO


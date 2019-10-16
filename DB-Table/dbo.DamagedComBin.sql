USE [ProdRubbishRecycling]
GO

/****** Object:  Table [dbo].[DamagedComBin]    Script Date: 16/10/2019 11:26:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DamagedComBin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CaseRef] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[BusinessName] [varchar](100) NULL,
	[FullName] [varchar](500) NULL,
	[Email] [varchar](100) NULL,
	[Tel] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Postcode] [varchar](10) NULL,
	[UPRN] [varchar](10) NULL,
	[Address] [text] NULL,
	[AddressMap] [text] NULL,
	[BinDamaged] [varchar](10) NOT NULL,
	[DamageDescription] [varchar](max) NULL,
	[BinRepairable] [varchar](5) NULL,
	[CommentsBiffa] [varchar](max) NULL,
	[CommentsWaste] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


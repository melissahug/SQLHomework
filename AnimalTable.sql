USE [Employee]
GO

/****** Object:  Table [dbo].[AnimalTable]    Script Date: 10/11/2016 4:47:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AnimalTable](
	[AnimalID] [int] IDENTITY(1,1) NOT NULL,
	[AnimalType] [varchar](50) NOT NULL,
	[Breed] [varchar](50) NOT NULL,
	[Age] [date] NOT NULL,
	[LastShotsDate] [date] NOT NULL,
	[Neutered] [varchar](50) NOT NULL,
	[AdopteeID] [int] NULL,
	[AdoptionID] [int] NULL,
 CONSTRAINT [PK_AnimalTable] PRIMARY KEY CLUSTERED 
(
	[AnimalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


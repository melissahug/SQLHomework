USE [Employee]
GO

/****** Object:  Table [dbo].[AdopteeFamilyTable]    Script Date: 10/11/2016 4:47:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AdopteeFamilyTable](
	[AdopteeFamilyID] [int] IDENTITY(1,1) NOT NULL,
	[FamilyName] [varchar](50) NOT NULL,
	[NumberInFamily] [int] NOT NULL,
	[NumOfPetsInHome] [int] NOT NULL,
	[FencedYard] [varchar](50) NOT NULL,
	[HistoryOfAdoption] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdopteeFamilyTable] PRIMARY KEY CLUSTERED 
(
	[AdopteeFamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AdopteeFamilyTable]  WITH CHECK ADD  CONSTRAINT [FK_AdopteeFamilyTable_AnimalTable] FOREIGN KEY([AdopteeFamilyID])
REFERENCES [dbo].[AnimalTable] ([AnimalID])
GO

ALTER TABLE [dbo].[AdopteeFamilyTable] CHECK CONSTRAINT [FK_AdopteeFamilyTable_AnimalTable]
GO


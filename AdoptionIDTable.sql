USE [Employee]
GO

/****** Object:  Table [dbo].[AdoptionIDTable]    Script Date: 10/11/2016 4:52:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AdoptionIDTable](
	[AdoptionID] [int] IDENTITY(1,1) NOT NULL,
	[AdoptionDate] [date] NULL,
	[AdopteeFamilyID] [int] NULL,
	[Fees] [money] NOT NULL,
	[PaymentType] [varchar](50) NOT NULL,
	[AnimalID] [int] NULL,
 CONSTRAINT [PK_AdoptionIDTable] PRIMARY KEY CLUSTERED 
(
	[AdoptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AdoptionIDTable]  WITH CHECK ADD  CONSTRAINT [FK_AdoptionIDTable_AnimalTable] FOREIGN KEY([AnimalID])
REFERENCES [dbo].[AnimalTable] ([AnimalID])
GO

ALTER TABLE [dbo].[AdoptionIDTable] CHECK CONSTRAINT [FK_AdoptionIDTable_AnimalTable]
GO


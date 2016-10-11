USE [Employee]
GO

/****** Object:  Table [dbo].[AuthorTable]    Script Date: 10/11/2016 4:46:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AuthorTable](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[AgentName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AuthorTable] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AuthorTable]  WITH CHECK ADD  CONSTRAINT [FK_AuthorTable_AuthorTable] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[AuthorTable] ([AuthorID])
GO

ALTER TABLE [dbo].[AuthorTable] CHECK CONSTRAINT [FK_AuthorTable_AuthorTable]
GO


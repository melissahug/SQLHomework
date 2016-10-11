USE [Employee]
GO

/****** Object:  Table [dbo].[BookTable]    Script Date: 10/11/2016 4:46:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BookTable](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookTitle] [varchar](50) NOT NULL,
	[PublishDate] [date] NOT NULL,
	[Genre] [varchar](50) NOT NULL,
	[AuthorID] [int] NOT NULL,
 CONSTRAINT [PK_BookTable] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[BookTable]  WITH CHECK ADD  CONSTRAINT [FK_BookTable_AuthorTable] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[AuthorTable] ([AuthorID])
GO

ALTER TABLE [dbo].[BookTable] CHECK CONSTRAINT [FK_BookTable_AuthorTable]
GO


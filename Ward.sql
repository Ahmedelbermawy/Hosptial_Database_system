USE [hosptial4]
GO

/****** Object:  Table [dbo].[ward]    Script Date: 7/27/2023 8:52:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ward](
	[w_id] [int] IDENTITY(1,1) NOT NULL,
	[w_name] [varchar](50) NULL,
	[n_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[w_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ward]  WITH CHECK ADD  CONSTRAINT [fk1] FOREIGN KEY([n_id])
REFERENCES [dbo].[nurse] ([n_id])
GO

ALTER TABLE [dbo].[ward] CHECK CONSTRAINT [fk1]
GO



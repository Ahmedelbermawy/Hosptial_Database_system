USE [hosptial4]
GO

/****** Object:  Table [dbo].[nurse]    Script Date: 7/27/2023 8:50:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[nurse](
	[n_id] [int] NOT NULL,
	[nurse_name] [varchar](50) NULL,
	[n_address] [varchar](50) NULL,
	[w_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[n_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[nurse]  WITH CHECK ADD  CONSTRAINT [fk2] FOREIGN KEY([w_id])
REFERENCES [dbo].[ward] ([w_id])
GO

ALTER TABLE [dbo].[nurse] CHECK CONSTRAINT [fk2]
GO



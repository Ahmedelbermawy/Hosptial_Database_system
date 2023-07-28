USE [hosptial4]
GO

/****** Object:  Table [dbo].[patient]    Script Date: 7/27/2023 8:51:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[patient](
	[p_id] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](50) NULL,
	[p_Drithday] [date] NULL,
	[c_id] [int] NULL,
	[w_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[patient]  WITH CHECK ADD  CONSTRAINT [fk4] FOREIGN KEY([c_id])
REFERENCES [dbo].[consultants] ([c_id])
GO

ALTER TABLE [dbo].[patient] CHECK CONSTRAINT [fk4]
GO

ALTER TABLE [dbo].[patient]  WITH CHECK ADD  CONSTRAINT [fkey] FOREIGN KEY([w_id])
REFERENCES [dbo].[ward] ([w_id])
GO

ALTER TABLE [dbo].[patient] CHECK CONSTRAINT [fkey]
GO



USE [hosptial4]
GO

/****** Object:  Table [dbo].[patient_consultaint]    Script Date: 7/27/2023 8:51:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[patient_consultaint](
	[p_id] [int] NOT NULL,
	[c_id] [int] NOT NULL,
 CONSTRAINT [pk4] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC,
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[patient_consultaint]  WITH CHECK ADD  CONSTRAINT [fk5] FOREIGN KEY([p_id])
REFERENCES [dbo].[patient] ([p_id])
GO

ALTER TABLE [dbo].[patient_consultaint] CHECK CONSTRAINT [fk5]
GO

ALTER TABLE [dbo].[patient_consultaint]  WITH CHECK ADD  CONSTRAINT [fk8] FOREIGN KEY([c_id])
REFERENCES [dbo].[consultants] ([c_id])
GO

ALTER TABLE [dbo].[patient_consultaint] CHECK CONSTRAINT [fk8]
GO



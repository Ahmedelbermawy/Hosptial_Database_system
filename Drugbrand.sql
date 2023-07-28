USE [hosptial4]
GO

/****** Object:  Table [dbo].[drugbrand]    Script Date: 7/27/2023 8:50:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[drugbrand](
	[dnum_id] [int] NOT NULL,
	[d_brandname] [varchar](50) NULL,
 CONSTRAINT [pk5] PRIMARY KEY CLUSTERED 
(
	[dnum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[drugbrand]  WITH CHECK ADD  CONSTRAINT [fk9] FOREIGN KEY([dnum_id])
REFERENCES [dbo].[drug] ([dnum_id])
GO

ALTER TABLE [dbo].[drugbrand] CHECK CONSTRAINT [fk9]
GO



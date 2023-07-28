USE [hosptial4]
GO

/****** Object:  Table [dbo].[drug]    Script Date: 7/27/2023 8:49:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[drug](
	[dnum_id] [int] NOT NULL,
	[d_dosoge] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[dnum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



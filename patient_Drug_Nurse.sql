USE [hosptial4]
GO

/****** Object:  Table [dbo].[patient_drug_nurse]    Script Date: 7/27/2023 8:52:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[patient_drug_nurse](
	[p_id] [int] NOT NULL,
	[n_id] [int] NOT NULL,
	[dnum_id] [int] NOT NULL,
	[p_d_n_time] [time](7) NULL,
	[p_d_n_date] [date] NULL,
	[p_d_n_specifieddosoge] [varchar](50) NULL,
 CONSTRAINT [pk8] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC,
	[n_id] ASC,
	[dnum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[patient_drug_nurse]  WITH CHECK ADD  CONSTRAINT [fk12] FOREIGN KEY([p_id])
REFERENCES [dbo].[patient] ([p_id])
GO

ALTER TABLE [dbo].[patient_drug_nurse] CHECK CONSTRAINT [fk12]
GO

ALTER TABLE [dbo].[patient_drug_nurse]  WITH CHECK ADD  CONSTRAINT [fk13] FOREIGN KEY([n_id])
REFERENCES [dbo].[nurse] ([n_id])
GO

ALTER TABLE [dbo].[patient_drug_nurse] CHECK CONSTRAINT [fk13]
GO

ALTER TABLE [dbo].[patient_drug_nurse]  WITH CHECK ADD  CONSTRAINT [fk14] FOREIGN KEY([dnum_id])
REFERENCES [dbo].[drug] ([dnum_id])
GO

ALTER TABLE [dbo].[patient_drug_nurse] CHECK CONSTRAINT [fk14]
GO



USE [E-commerce]
GO

/****** Object:  Table [dbo].[Payments]    Script Date: 12/14/2020 2:54:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payments](
	[Payment_Key] [varchar](50) NOT NULL,
	[Invoice_Key (FK)] [varchar](50) NOT NULL,
	[Payment_Date] [varchar](50) NOT NULL,
	[Payment_Amount] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Payment_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


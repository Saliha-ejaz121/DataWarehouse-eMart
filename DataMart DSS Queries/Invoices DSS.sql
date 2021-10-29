USE [E-commerce]
GO

/****** Object:  Table [dbo].[Invoices]    Script Date: 12/14/2020 2:53:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Invoices](
	[Invoice_Key] [varchar](50) NOT NULL,
	[Taxes_Billed] [varchar](50) NOT NULL,
	[Amount_Billed] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


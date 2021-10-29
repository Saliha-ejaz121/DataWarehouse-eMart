USE [E-commerce]
GO

/****** Object:  Table [dbo].[Shipments]    Script Date: 12/14/2020 2:54:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Shipments](
	[Shipment_Key] [varchar](50) NOT NULL,
	[Destination] [varchar](max) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Delivery_Date] [varchar](50) NOT NULL,
	[ShoppingCart_Key (FK)] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shipments] PRIMARY KEY CLUSTERED 
(
	[Shipment_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


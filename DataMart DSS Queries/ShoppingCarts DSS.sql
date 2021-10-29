USE [E-commerce]
GO

/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 12/14/2020 2:55:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ShoppingCarts](
	[ShoppingCart_Key] [varchar](50) NOT NULL,
	[Customer_Key (FK)] [varchar](50) NOT NULL,
	[OrderPlaced_Date] [varchar](50) NOT NULL,
	[OrderStatus_Code] [varchar](50) NOT NULL,
	[Product_Key (FK)] [varchar](50) NOT NULL,
	[Colour] [varchar](50) NOT NULL,
	[Product_Quantity] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Shopping_Carts] PRIMARY KEY CLUSTERED 
(
	[ShoppingCart_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


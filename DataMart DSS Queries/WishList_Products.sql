USE [E-commerce]
GO

/****** Object:  Table [dbo].[WishList_Products]    Script Date: 12/14/2020 2:55:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WishList_Products](
	[WishList_Key (FK)] [varchar](50) NOT NULL,
	[Product_Key (FK)] [varchar](50) NOT NULL,
	[WP_Quantity] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WishList_Products]  WITH CHECK ADD  CONSTRAINT [FK_WishList_Products_Products] FOREIGN KEY([Product_Key (FK)])
REFERENCES [dbo].[Products] ([Product_Key])
GO

ALTER TABLE [dbo].[WishList_Products] CHECK CONSTRAINT [FK_WishList_Products_Products]
GO

ALTER TABLE [dbo].[WishList_Products]  WITH CHECK ADD  CONSTRAINT [FK_WishList_Products_WishLists] FOREIGN KEY([WishList_Key (FK)])
REFERENCES [dbo].[WishLists] ([WishList_Key])
GO

ALTER TABLE [dbo].[WishList_Products] CHECK CONSTRAINT [FK_WishList_Products_WishLists]
GO


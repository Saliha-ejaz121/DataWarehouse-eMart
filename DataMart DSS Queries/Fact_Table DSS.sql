USE [E-commerce]
GO

/****** Object:  Table [dbo].[Fact_Table]    Script Date: 12/14/2020 2:53:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Table](
	[Fact_Key] [varchar](50) NOT NULL,
	[Customer_Key(FK)] [varchar](50) NOT NULL,
	[Product_Key (FK)] [varchar](50) NOT NULL,
	[Invoice_Key(FK)] [varchar](50) NOT NULL,
	[Payment_Key (FK)] [varchar](50) NOT NULL,
	[ShoppingCart_Key(FK)] [varchar](50) NOT NULL,
	[Shipment_Key (FK)] [varchar](50) NOT NULL,
	[WishList_Key (FK)] [varchar](50) NOT NULL,
	[Date_Time (FK)] [varchar](50) NOT NULL,
	[Address_Key (FK)] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fact_Table] PRIMARY KEY CLUSTERED 
(
	[Fact_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Addresses] FOREIGN KEY([Address_Key (FK)])
REFERENCES [dbo].[Addresses] ([Address_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Addresses]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Calender] FOREIGN KEY([Date_Time (FK)])
REFERENCES [dbo].[Calendar] ([Date_Time])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Calender]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Customers] FOREIGN KEY([Customer_Key(FK)])
REFERENCES [dbo].[Customers] ([Customer_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Customers]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Invoices] FOREIGN KEY([Invoice_Key(FK)])
REFERENCES [dbo].[Invoices] ([Invoice_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Invoices]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Payments] FOREIGN KEY([Payment_Key (FK)])
REFERENCES [dbo].[Payments] ([Payment_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Payments]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Products] FOREIGN KEY([Product_Key (FK)])
REFERENCES [dbo].[Products] ([Product_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Products]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_Shipments] FOREIGN KEY([Shipment_Key (FK)])
REFERENCES [dbo].[Shipments] ([Shipment_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_Shipments]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_ShoppingCarts] FOREIGN KEY([ShoppingCart_Key(FK)])
REFERENCES [dbo].[ShoppingCarts] ([ShoppingCart_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_ShoppingCarts]
GO

ALTER TABLE [dbo].[Fact_Table]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Table_WishLists] FOREIGN KEY([WishList_Key (FK)])
REFERENCES [dbo].[WishLists] ([WishList_Key])
GO

ALTER TABLE [dbo].[Fact_Table] CHECK CONSTRAINT [FK_Fact_Table_WishLists]
GO


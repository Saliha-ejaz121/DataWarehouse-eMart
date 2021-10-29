USE [E-commerce]
GO

/****** Object:  Table [dbo].[WishLists]    Script Date: 12/14/2020 2:56:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WishLists](
	[WishList_Key] [varchar](50) NOT NULL,
	[WishList_UpdatedTime] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WishLists] PRIMARY KEY CLUSTERED 
(
	[WishList_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


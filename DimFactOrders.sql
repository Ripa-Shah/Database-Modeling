USE [Datawarehouse]
GO

/****** Object:  Table [dbo].[factsalesorders]    Script Date: 10/19/2020 11:54:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[factsalesorders](
	[productkey] [int] NOT NULL,
	[customerkey] [int] NOT NULL,
	[salespersonkey] [int] NOT NULL,
	[orderdatekey] [int] NOT NULL,
	[orderno] [int] NOT NULL,
	[itemno] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[salesamount] [money] NOT NULL,
	[cost] [money] NOT NULL,
 CONSTRAINT [pk_factsalesorder] PRIMARY KEY NONCLUSTERED 
(
	[productkey] ASC,
	[customerkey] ASC,
	[salespersonkey] ASC,
	[orderdatekey] ASC,
	[orderno] ASC,
	[itemno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[factsalesorders]  WITH CHECK ADD FOREIGN KEY([customerkey])
REFERENCES [dbo].[DimCustomer] ([customerkey])
GO

ALTER TABLE [dbo].[factsalesorders]  WITH CHECK ADD FOREIGN KEY([orderdatekey])
REFERENCES [dbo].[DimDate] ([datekey])
GO

ALTER TABLE [dbo].[factsalesorders]  WITH CHECK ADD FOREIGN KEY([productkey])
REFERENCES [dbo].[DimProduct] ([productkey])
GO

ALTER TABLE [dbo].[factsalesorders]  WITH CHECK ADD FOREIGN KEY([salespersonkey])
REFERENCES [dbo].[DimSalesPerson] ([salespersonkey])
GO



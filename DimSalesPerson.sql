USE [Datawarehouse]
GO

/****** Object:  Table [dbo].[DimSalesPerson]    Script Date: 10/19/2020 11:54:08 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSalesPerson](
	[salespersonkey] [int] IDENTITY(1,1) NOT NULL,
	[salespersonaltkey] [nvarchar](10) NOT NULL,
	[salespersonname] [nvarchar](50) NULL,
	[storename] [nvarchar](50) NULL,
	[storegeographykey] [int] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[salespersonkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DimSalesPerson]  WITH CHECK ADD  CONSTRAINT [FK_DimSalesPerson_DimGeography] FOREIGN KEY([storegeographykey])
REFERENCES [dbo].[DimGeography] ([geographykey])
GO

ALTER TABLE [dbo].[DimSalesPerson] CHECK CONSTRAINT [FK_DimSalesPerson_DimGeography]
GO



USE [Datawarehouse]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 10/19/2020 11:52:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[customerkey] [int] IDENTITY(1,1) NOT NULL,
	[customeraltkey] [nvarchar](10) NOT NULL,
	[customername] [nvarchar](50) NULL,
	[customeremail] [nvarchar](50) NULL,
	[customergeographykey] [int] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[customerkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY([customergeographykey])
REFERENCES [dbo].[DimGeography] ([geographykey])
GO

ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimGeography]
GO



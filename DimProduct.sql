USE [Datawarehouse]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 10/19/2020 11:53:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[productkey] [int] IDENTITY(1,1) NOT NULL,
	[productaltkey] [nvarchar](10) NOT NULL,
	[productname] [nvarchar](50) NULL,
	[productdescription] [nvarchar](100) NULL,
	[productcategoryname] [nvarchar](50) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[productkey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



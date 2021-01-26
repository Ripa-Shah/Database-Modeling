USE [Datawarehouse]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 10/19/2020 11:53:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[datekey] [int] NOT NULL,
	[dateAltkey] [datetime] NOT NULL,
	[calendaryear] [int] NOT NULL,
	[calendarquarter] [int] NOT NULL,
	[monthofyear] [int] NOT NULL,
	[monthname] [nvarchar](15) NOT NULL,
	[dayofmonth] [int] NOT NULL,
	[dayofweek] [int] NOT NULL,
	[dayname] [nvarchar](15) NOT NULL,
	[fiscalyear] [int] NOT NULL,
	[fiscalquarter] [int] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[datekey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



use AdventureWorksDW2014
GO
Alter database AdventureWorksDW2014
ADD FILEGROUP FactInternetSalesFG_HOT;
GO

Alter database AdventureWorksDW2014
ADD FILEGROUP FactInternetSalesFG_WARM;
GO

Alter database AdventureWorksDW2014
ADD FILEGROUP FactInternetSalesFG_COLD;
GO

Alter database AdventureWorksDW2014
ADD FILEGROUP FactInternetSalesFG_Archive;
GO



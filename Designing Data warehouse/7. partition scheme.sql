use AdventureWorksDW2014
GO
--create partition scheme that reference that function
create partition scheme pscFactInternetSales
as
Partition pfnFactInternetSales
TO ( FactInternetSalesFG_ARCHIVE,
FactInternetSalesFG_COLD,
FactInternetSalesFG_HOT,
FactInternetSalesFG_WARM)
GO
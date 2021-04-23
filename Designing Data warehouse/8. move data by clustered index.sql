use AdventureWorksDW2014
GO

create clustered index
[IX0_RCI_pscFactInternetSales]
on [FactInternetSalesBig] ([OrderDateKey])
WITH
(
SORT_IN_TEMPDB= OFF,
DROP_EXISTING=OFF,
ONLINE=OFF
)
ON [pscFactInternetSales] ([OrderDateKey])
--here you provide the partition function rather than filegroup

GO
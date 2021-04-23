use AdventureWorksDW2014
GO

create partition function pfnFactInternetSales(Int)
as range left
for values(20130630,20131231,20140630)
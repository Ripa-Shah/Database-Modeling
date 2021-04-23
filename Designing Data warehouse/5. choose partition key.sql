use AdventureWorksDW2014
GO

select COUNT(*) from dbo.FactInternetSalesBig;

select productKey,COUNT(*) as [ProductKeyCount] from FactInternetSalesBig
group by [ProductKey]
order by [ProductKeyCount];

select ORderDateKey, COUNT(*) as [OrderDateKeyCount]
from FactInternetSalesBig
GROUP by [OrderdateKey]
ORDER BY [OrderDateKeyCount]

--ORderDateKey is the partition key since the perfomance is good


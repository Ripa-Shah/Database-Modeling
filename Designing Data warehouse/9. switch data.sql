use AdventureWorksDW2014
GO
--create empty table with the same structure as dbo.InternetSalesBig
select * into dbo.FactInternetSalesHotLoad from FactInternetSales where 1=2;

--move the same  "Hot" filegroup
alter table dbo.FactInternetSalesHotLoad
add constraint [IX0_RCI_pscFactInternetSales_HOT_Load] primary key clustered([ORderDateKey])
on [FactInternetSalesFG_HOT];
GO


--drop the clustered index (loading into 'heap' can be faster)
alter table dbo.FactInternetSalesHotLoad
drop constraint
[IX0_RCI_pscFactInternetSales_HOT_Load];
GO

--import new rows into hot load table
declare @vintemplatedatekey int
,@vintodaysdatekey int
,@vindatedifference int
select @vintemplatedatekey=(MAX([OrderDateKey])-20)
,@vintodaysdatekey=CAST(convert(varchar(8),GETDATE(),112) as int)
from [dbo].[FactInternetSalesHotLoad];

set @vindatedifference=(@vintodaysdatekey-@vintemplatedatekey)

insert into [dbo].[FactInternetSalesHotLoad]
select 
f.ProductKey
,@vintodaysdatekey as [OrderDateKey]
,(f.DueDateKey + @vindatedifference) as [DueDateKey]
,(f.ShipDateKey + @vindatedifference) as [ShipDateKey]
,f.CustomerKey
,f.PromotionKey
,f.CurrencyKey
,f.SalesTerritoryKey
,f.SalesOrderNumber
,f.SalesOrderLineNumber
,f.RevisionNumber
,f.OrderQuantity
,f.UnitPrice
,f.ExtendedAmount
,f.UnitPriceDiscountPct
,f.DiscountAmount
,f.ProductStandardCost
,f.TotalProductCost
,f.SalesAmount
,f.TaxAmt
,f.Freight
,f.CarrierTrackingNumber
,f.CustomerPONumber
,f.OrderDate
,f.DueDate
,f.ShipDate
 from [dbo].FactInternetSales as f
 where
 f.OrderDateKey=@vintemplatedatekey
 go

 --to enable switch, sql server has to knwo that constraint will hold and that structure match
 alter table FactInternetSalesHotLoad
 add constraint ck_hotload_orderdatekey
 check (ORderDateKey>=20140630)
 go

 create clustered index ixo_rci_FactInternetSalesHotLoad
 on
 dbo.FactInternetSalesHotLoad ([OrderDateKey])
 with
 (
 SORT_IN_TEMPDb=off,
 DROP_EXISTING=OFF,
 ONLINE=OFF
 )
 ON [FactInternetSalesFG_HOT];

 -- move data back to partition play_table from unpartitioned temp_table
 --this will no longer fail
 alter table dbo.FactInternetSalesHotLoad
 switch to FactInternetSalesBig
 partition 4;

 

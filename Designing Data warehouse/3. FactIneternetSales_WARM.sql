use AdventureWorksDW2014
GO

Alter database AdventureWorksDW2014
ADD FILE
( 
NAME = FactInternetSales_WARM1,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_WARM\FactInternetSalesFG_WARM_Data1.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_WARM2,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_WARM\FactInternetSalesFG_WARM_Data2.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_WARM3,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_WARM\FactInternetSalesFG_WARM_Data3.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_WARM4,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_WARM\FactInternetSalesFG_WARM_Data4.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
)
TO FILEGROUP FactInternetSalesFG_WARM;
GO
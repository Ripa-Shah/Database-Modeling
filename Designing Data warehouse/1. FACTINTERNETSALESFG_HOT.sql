use AdventureWorksDW2014
GO

Alter database AdventureWorksDW2014
ADD FILE
( 
NAME = FactInternetSales_HOT1,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_HOT\FactInternetSalesFG_HOT_Data1.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_HOT2,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_HOT\FactInternetSalesFG_HOT_Data2.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_HOT3,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_HOT\FactInternetSalesFG_HOT_Data3.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_HOT4,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_HOT\FactInternetSalesFG_HOT_Data4.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
)
TO FILEGROUP FactInternetSalesFG_HOT;
GO
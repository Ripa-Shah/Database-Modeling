use AdventureWorksDW2014
GO

Alter database AdventureWorksDW2014
ADD FILE
( 
NAME = FactInternetSales_ARCHIVE1,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_ARCHIVE\FactInternetSalesFG_ARCHIVE_Data1.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_ARCHIVE2,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_ARCHIVE\FactInternetSalesFG_ARCHIVE_Data2.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_ARCHIVE3,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_ARCHIVE\FactInternetSalesFG_ARCHIVE_Data3.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
),
(
NAME = FactInternetSales_ARCHIVE4,
FILENAME = 'C:\SQLDATA\FactInternetSalesFG_ARCHIVE\FactInternetSalesFG_ARCHIVE_Data4.ndf',
SIZE = 256MB,
MAXSIZE = 256MB,
FILEGROWTH = 0
)
TO FILEGROUP FactInternetSalesFG_ARCHIVE;
GO
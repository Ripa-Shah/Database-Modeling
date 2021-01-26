create table DimGeography
(
geographykey int identity not null primary key nonclustered,
postalcode nvarchar(15) null,
city nvarchar(50) null,
region nvarchar(50) null,
country nvarchar(50) null
)
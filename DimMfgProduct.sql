create table DimMfgProduct
(
productid int not null primary key,
name varchar(50),
parentitem int,
stdcost decimal(12,5),
color varchar(10)
);
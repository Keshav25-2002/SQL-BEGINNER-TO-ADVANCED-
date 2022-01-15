create database store;
use store;
create table orders(orderID int not null,CustomerID int,Orderdate date);
insert into orders(orderID,CustomerID,Orderdate) values(01,100,'2021-12-31');
insert into orders(orderID,CustomerID,Orderdate) values(02,200,'2021-12-30');
insert into orders(orderID,CustomerID,Orderdate) values(03,300,'2021-12-29');

create table customers1(CusID int not null,CustomerName varchar(255),ContactName varchar(255),country varchar(255));
insert into customers1(CusID,CustomerName,Contactname,country) values(1,'Krish','Srini','India');
insert into customers1(CusID,CustomerName,Contactname,country) values(2,'John','Abraham','USA');
insert into customers1(CusID,CustomerName,Contactname,country) values(3,'Basha','Manik','Pakistan');

select*from orders;
select*from customers1;
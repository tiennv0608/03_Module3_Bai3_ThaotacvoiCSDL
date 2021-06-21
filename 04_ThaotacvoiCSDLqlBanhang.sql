use qlbanhang;
insert into customer values (1,'Minh Quan',10), (2,'Ngoc Oanh',20), (3,'Hong Ha',50);
insert into ordercustomer (cusId,orderdate) 
values (1,'2006/3/21');
insert into ordercustomer (cusId,orderdate) 
values (2,'2006/3/23');
insert into ordercustomer (cusId,orderdate) 
values (1,'2006/3/16');

insert into product (productname, productprice)
values ('May giat',3), ('Tu lanh',5),('Dieu hoa',7),('Quat',1),('Bep dien',2);

insert into orderdetail 
values (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

select orderID, orderDate, ordertotalprice
from ordercustomer;

select c.cusname, p.productname
from customer c, ordercustomer oc, orderdetail od, product p
where c.cusid = oc.cusid 
and oc.orderid = od.orderid
and od.productid = p.productid;

select cusname from customer
where customer.cusid not in (select cusid from ordercustomer);

select oc.orderID, oc.orderdate, orderquantity*productprice as ordertotalprice
from ordercustomer oc, orderdetail od, product p
where oc.orderID = od.orderID and od.productID = p.productid;
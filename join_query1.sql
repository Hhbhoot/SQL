use hitesh ;
select product_master.productno ,client_master.name , sales_order.orderno , product_master.description from sales_order_details
inner join sales_order on  sales_order_details.orderno = sales_order.orderno 
inner join client_master on sales_order.clientno = client_master.clientno 
inner join product_master on product_master.productno = sales_order_details.productno
where name = "hitesh";

select product_master.description , sales_order_details.qtyordered , sales_order.delydate from sales_order_details
inner join product_master on product_master.productno = sales_order_details.productno
inner join sales_order on sales_order_details.orderno = sales_order.orderno
where delydate = "2007-04-02";

select product_master.description , sales_order_details.qtyordered , sales_order.delydate from sales_order_details
inner join product_master on product_master.productno = sales_order_details.productno
inner join sales_order on sales_order_details.orderno = sales_order.orderno
where delydate = "2020-02-02";

select product_master.description , sales_order_details.qtyordered , product_master.productno from sales_order_details
inner join product_master on sales_order_details.productno = product_master.productno
where qtyordered >= 5 ;

select client_master.name ,  product_master.description from sales_order_details
 inner join sales_order on  sales_order_details.orderno = sales_order.orderno 
inner join client_master on sales_order.clientno = client_master.clientno 
inner join product_master on product_master.productno = sales_order_details.productno
where description = "trousers";

select client_master.name,  product_master.description ,sales_order_details.qtyordered  from sales_order_details
 inner join sales_order on  sales_order_details.orderno = sales_order.orderno 
inner join client_master on sales_order.clientno = client_master.clientno 
inner join product_master on product_master.productno = sales_order_details.productno
where description = "pull overs" and qtyordered < 5 ;


select client_master.name,  product_master.description ,sales_order_details.qtyordered  from sales_order_details
 inner join sales_order on  sales_order_details.orderno = sales_order.orderno 
inner join client_master on sales_order.clientno = client_master.clientno 
inner join product_master on product_master.productno = sales_order_details.productno
where client_master.clientno = "C00001" or client_master.clientno = "C00002";

select client_master.name,  product_master.description ,sales_order_details.qtyordered  from sales_order_details
 inner join sales_order on  sales_order_details.orderno = sales_order.orderno 
inner join client_master on sales_order.clientno = client_master.clientno 
inner join product_master on product_master.productno = sales_order_details.productno
where name= "hitesh" or name = "mamta muzmudar";















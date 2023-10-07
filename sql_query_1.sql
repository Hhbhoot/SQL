
use classicmodels;

select * from employees;

select * from employees where jobtitle = "sales rep" and employeenumber between 1200 and 1500;

select * from employees where jobtitle != "sales rep" and officecode >= 2 ;

select * from customers where country != "USA" ;

select * from customers where customernumber not between 150 And 200 ;

select lastname , firstname from employees;

select lastname  as "Name Of The Employee", firstname from employees order by lastname;

select * from customers where creditlimit >= 7000 ;

select * from customers where city in ("singapore","liverpool","NYC");

select * from employees  where  firstname = "diane";

select * from employees  where  firstname = "smith"; 

select * from employees where officecode in ( 1 ,3 ,5);

select  *  from customers where creditlimit between 50000 and 95000 ;

select * from employees where officecode  not in ( 1 ,3 );

select * from customers ;

select * from employees ;

select * from employees where firstname   like "s%";

select * from employees where firstname like "s%h";

select * from employees where firstname like "s____";

select * from employees where firstname like "________";

select * from employees where firstname like "a%e";

select * from employees where firstname like "%rr%";

select count(employeenumber) , officecode from employees group by officecode ;

select distinct state ,  max(creditlimit)  from customers group by state  ;

select * from customers;









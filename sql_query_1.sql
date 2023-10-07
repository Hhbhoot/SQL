-- 1. Fetch & display all the employee details

-- 2. Fetch & display employee details for the employees having job Title='Sales Rep' and Employee number between 1200 and 1500

-- 3. Fetch & display employee details for the employees having office code 2 or more than 2 and job title is not Sales Rep

-- 4. Fetch & display customers details(Customers table) who does not belongs to USA

-- 5. Fetch & display customers details(Customers table)  having customer number not in the range 150 to 200

-- 6. List out last name, first name for all employees and rename  last name as “Name of the employee”, display as sorting order of their last name

-- 7.  List out the customers having credit limit is more than 70000 display in descending order by their last name.

-- 8. List out all customers belongs to city Singapore, Liverpool or NYC

-- 9. List the details about customer first name “SMITH”

-- 10. List out the employees who are working in office code 1, 3 , 5

-- 11. List out the customer having credit limit between 50000 and 95000

-- 12. List out the employees who are not working in office code 1 , 3

-- 13. List out the customers whose first name starts with “S”

-- 14. List out the customers whose name start with “S” and end with “H”

-- 15. List out the customers whose first name length is 5 and start with “S”

-- 16. List out the customers whose first name length is exactly 8

-- 17. List out the customers whose first name starting with a and ending with e

-- 18. List out the customers whose first name contains ee

-- 19. Show Count of employees who are working in different office in the organization

-- 20. List out the maximum credit limit of customers belongs to different states

use classicmodels;

select * from employees;

select * from employees where jobtitle = "sales rep" and employeenumber between 1200 and 1500;

select * from employees where jobtitle != "sales rep" and officecode >= 2 ;

select * from customers where country != "USA" ;

select * from customers where customernumber not between 150 And 200 ;

select lastname , firstname from employees;

select lastname  as "Name Of The Employee", firstname from employees order by lastname;

select * from customers where creditlimit >= 7000 ;

select  * , contactlastname  from  customers where creditlimit >= 70000 order by   contactlastname desc; 

select * from customers where city in ("singapore","liverpool","NYC");

select * from employees  where  firstname = "diane";

select * from employees  where  firstname = "smith"; 

select * from employees where officecode in ( 1 ,3 ,5);

select  *  from customers where creditlimit between 50000 and 95000 ;

select * from employees where officecode  not in ( 1 ,3 );

select * from customers ;

select * from employees ;

select * from employees where firstname   like "s%";

select * from customers where contactfirstname like "S%";

select * from employees where firstname like "s%h";

select * from customers where contactfirstname like "S%H";

select * from customers where contactfirstname like "S____";


select * from employees where firstname like "s____";

select * from employees where firstname like "________";

select * from customers where contactfirstname like "________";


select * from employees where firstname like "a%e";

select * from customers where contactfirstname like "a%e";

select * from customers where contactfirstname like "%ee%";


select * from employees where firstname like "%rr%";

select count(employeenumber) , officecode from employees group by officecode ;

select distinct state ,  max(creditlimit)  from customers group by state  ;

select * from customers;

select distinct state, max(creditlimit) from customers group by state ;

select distinct country , count(customernumber) from customers group by country ;

select distinct officecode , count(employeenumber) from employees group by officecode ;












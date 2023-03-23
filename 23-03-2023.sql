create database db1;
use db1;
create table Customers(customer_id int,first_name varchar(20),Country varchar(20));

DELIMITER //
CREATE PROCEDURE us_customers ()
BEGIN
SELECT 	customer_id,first_name
FROM Customers
WHERE Country = 'USA';
END //
DELIMITER ;

insert into Customers values(1,"Adil","India");
insert into Customers values(2,"Sreerag","USA");
insert into Customers values(3,"Adil","Uk");

CALL us_customers();
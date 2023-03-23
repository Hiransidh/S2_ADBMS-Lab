create database db2;
use db2;

create table customer(id int,name varchar(20),place varchar(20));

DELIMITER //
create procedure details()
begin
select id,name from customer where place="calicut";
end //
DELIMITER ;

insert into customer value(1,"akshay","calicut"); 
insert into customer value(2,"hiran","kunnamangalam");
insert into customer value(3,"vaishnav","beypore");
insert into customer value(4,"vyshak","calicut");

CALL details();


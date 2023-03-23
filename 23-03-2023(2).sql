create database db3;
use db3;

create table numbers(id int,name varchar(20),mark int);
DELIMITER //
create procedure lessthan()
begin 
select id,name 
from numbers
where mark<250;
end //
DELIMITER ;

insert into numbers values(1,"akshay",200);
insert into numbers values(2,"hiran",300);
insert into numbers values(3,"vaishnav",190);
insert into numbers values(4,"vyshak",260);

call lessthan();

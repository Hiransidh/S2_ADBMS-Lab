use db2;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,'computer science',20);
insert into section values(2,'portal',45);
insert into section values(3,'geeksforgeeks',60);
DELIMITER //
create function totalStrength()
returns int
deterministic
begin
declare total int;
set total=0;
select sum(strength) into total from section;
return total;
end;
//


DELIMITER ;
select totalStrength();
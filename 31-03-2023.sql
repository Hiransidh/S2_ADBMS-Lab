create database db6;
use db6;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,'Computer Science',20);
insert into section values(2,'Portal',45);
insert into section values(3,'geeksforgeeks',60);
DELIMITER //
CREATE FUNCTION totalStrength()
RETURNS int
DETERMINISTIC
BEGIN
DECLARE total INT;
SET total = 0;
SELECT SUM(strength) INTO total FROM section;
RETURN total;
END;
//
DELIMITER ;
SELECT totalStrength();

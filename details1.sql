create database student;
use student;
create table details(id int,name varchar(20),address varchar(30),maths int,physics int,computerscience int,totalmarks int);
insert into details values(1,'akshay','kozhikode',76,82,97,255);
insert into details values(2,'hiran','thiruvambadi',70,89,92,251);
insert into details values(3,'vyshak','kozhikode',70,86,87,243);
insert into details values(4,'vaishnav','beypore',76,69,67,212);
insert into details values(5,'avinash','medical college',70,87,50,207);
insert into details values(6,'ajin','peruvayal',76,68,69,213);
insert into details values(7,'hani','velliparamb',73,80,90,243);
insert into details values(8,'akash','palazhi',79,89,96,264);
insert into details values(9,'sarang','leaf village',72,40,35,147);
insert into details values(10,'niranjan','medical college',20,86,79,185);
select * from details;
select id,name from details;
create table details(id int,name varchar(20),address varchar(30),maths int,physics int,computerscience int,totalmarks int);
insert into details values(1,'akshay','kozhikode',76,82,97,255);
insert into details values(2,'hiran','thiruvambadi',70,89,92,251);
insert into details values(3,'vyshak','kozhikode',70,86,87,243);
insert into details values(4,'vaishnav','beypore',76,69,67,212);
insert into details values(5,'avinash','medical college',70,87,50,207);
insert into details values(6,'ajin','peruvayal',76,68,69,213);
insert into details values(7,'hani','velliparamb',73,80,90,243);
insert into details values(8,'akash','palazhi',79,89,96,264);
insert into details values(9,'sarang','leaf village',72,40,35,147);
insert into details values(10,'niranjan','medical college',20,86,79,185);
select * from details;
select id,name from details;
select id,name from details where totalmarks>250;
select name from details where address='kozhikode';




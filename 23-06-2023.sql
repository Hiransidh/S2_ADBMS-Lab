use db2;
create table courses(course_no int,course_name varchar(20),primary key(course_no));
insert into courses values(1,"MCA");
insert into courses values(2,"Btech");
insert into courses values(3,"Mtech");
select * from courses;
desc courses
create table faculties(f_num int,f_name varchar(20),primary key(f_num),course_no int,foreign key(course_no) references courses(course_no) );
desc faculties
select * from faculties;
insert into faculties values(101,"sruthi",1);
insert into faculties values(102,"keerthi",2);
insert into faculties values(103,"ashwini",3);


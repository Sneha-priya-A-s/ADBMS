create database lab5;
use lab5;

create table student
(sname varchar(20),
mark int);

desc student;

insert into student values
('appu',100),
('appu',80),
('sasi',80),
('sasi',90),
('luttapi',60);

select * from student;

set sql_safe_updates=0;
update student set mark=50 where sname='luttapi';

select sum(mark) as total from student;

select sname,sum(mark) as total from student;

select sname,sum(mark) as total from student group by sname;

select sname,sum(mark) as total from student group by sname having sum(mark)>=70;

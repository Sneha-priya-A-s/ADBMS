create database mcas2;
use mcas2;
create table student(
roll_no int,
s_name varchar (20),
m1 int,
m2 int,
m3 int);
desc student;

insert into student value
(1,'alan',30,35,40),
(2,'binu',39,50,48);
select * from student where s_name='alan';
select * from student where roll_no>3;
select roll_no,s_name,m1+m2+m3 as mark from student
where m1+m2+m3>100;

drop table student;
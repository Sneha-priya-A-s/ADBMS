create database lab5;

use lab5;

create table student(
roll_no int primary key,
s_name varchar(20),
sub1 int,
sub2 int,
sub3 int,
sub4 int,
lab1 int,
lab2 int,
lab3 int,
total int);

desc student;

insert into student (roll_no,s_name,sub1,sub2,sub3,sub4,lab1,lab2,lab3) values 
(1,'bilahari',78,89,80,70,90,98,96), 
(2,'abjith',70,89,80,70,90,60,96), 
(3,'abhishek',98,90,60,70,90,78,96), 
(4,'alan',78,89,77,70,90,60,96), 
(5,'binu',77,89,80,70,90,98,96), 
(6,'ajay',67,89,80,77,78,98,96), 
(7,'albin',55,89,80,70,90,98,96), 
(8,'amal',78,89,80,70,90,88,50), 
(9,'athul',88,89,80,70,90,98,96), 
(10,'amil',99,89,80,70,90,98,50); 

select * from student;

set sql_safe_updates=0;
update student set total=sub1+sub2+sub3+sub4+lab1+lab2+lab3;

select sum(total) as total,avg(total/7) as average,max(total) as maximum_mark,min(total) as minimum_mark from student;

select s_name,lab1+lab2+lab3 as labmark from student;

select s_name,lab1+lab2+lab3 as labmark from student where lab1+lab2+lab3 >=250;

drop table student;



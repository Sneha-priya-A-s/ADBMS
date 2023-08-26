create database d1;
use d1;
create table student(
rollno int primary key auto_increment,
sname char (20),
mark1 int not null,
mark2  int not null,
mark3 int not null,
mark4  int not null,
check(mark1<=100 and mark2<=100 and mark3<=100 and mark4<=100));
desc student;

insert into student(sname,mark1,mark2,mark3,mark4)values
('alan',40,50,40,60),
('alan',40,78,40,60),
('binu',40,60,40,50),
('clerk',70,40,60,70),
('dani',40,60,40,50),
('emil',80,40,50,60);
select*from student;

select sname from student where mark1+mark2+mark3+mark4 >=200;

select * , mark1 + mark2 + mark3 + mark4 as total from student;

select * , mark1 + mark2 + mark3 + mark4 as total from student order by total desc;

select sname from  student where mark1 not in (20,30);

select * , mark1 + mark2 + mark3 + mark4 as total,(mark1 + mark2 + mark3 + mark4)/4 as average from student;

select * , mark1 + mark2 + mark3 + mark4 as total, (mark1 + mark2 + mark3 + mark4)/4 as average from student where (mark1+mark2+mark3+mark4)/4 >= 80;
 
select distinct sname from student;

select distinct *  from student where sname like 'a%';

select count(*) from student;  

select sum(mark1+mark2+mark3+mark4) from student;

select avg(mark1+mark2+mark3+mark4/4) from student;

select max(mark1+mark2+mark3+mark4) as maximum_mark from student;

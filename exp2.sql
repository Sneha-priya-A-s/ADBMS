create database NDB;
use NDB;

create table teacher(
id int,
name char(20),
place int,
dept int,
salary int);

create table dept(
id int,
dept char(50));

create table place(
id int,
place char(20));

create table salary(
id int,
salary char(20));

insert into teacher values
(1,'sunil',1,1,25000),
(2,'popo',3,2,65000),
(3,'appu',2,3,55000),
(4,'nandu',3,4,65000),
(5,'ammu',4,3,25000);

insert into dept values
(1,'cs'),
(2,'mca'),
(3,'mech'),
(4,'civil'),
(5,'tech');

insert into place values
(1,'abc'),
(2,'ghi'),
(3,'jkl'),
(4,'mno'),
(5,'xyz');

insert into salary values
(1,50000),
(2,60000),
(3,70000),
(4,65000),
(5,40000);

select name, place, dept from teacher where name='sunil';
select name from teacher where teacher.dept=(select dept from teacher where name='appu');
select name,max(salary) from teacher;
select name,place from teacher where teacher.place=(select place from teacher where name='nandu');






















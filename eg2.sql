create database lab5;

use lab5;

create table stud(
rollno int auto_increment primary key,
name varchar(20),
sem varchar(5)
check (sem='s2' or sem='s3'));

insert into stud (name,sem) values
('luttapi','s2'),
('dakini','s2'),
('ammu','s2'),
('appu','s3'),
('akku','s2');

select * from stud;


CREATE TABLE marks(
MID int auto_increment primary key,
rollno int  references stud(rollno),
mark int,
check(mark>0 and mark<100)
);

insert into marks(rollno,mark) values
(1,30),
(1,40),
(2,99),
(3,50),
(3,30);

select * from marks;

select * from stud,marks;

select A.rollno,A.name,B.mark from stud as A, marks as B where A.rollno=B.rollno;
select A.rollno,A.name.sum(B.mark)from stud as A,marks as B group by A.name;

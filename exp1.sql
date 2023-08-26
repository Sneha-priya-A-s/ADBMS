create database SETOPR;
use SETOPR;

create table MCA1(
s1_Rollno int,
s1_Name char(20),
Subject char(20));
 
create table MCA2(
s2_Rollno int,
s2_Name char(20),
Subject char(20));
 
create table MCA3(
s3_Rollno int,
s3_Name char(20),
Subject char(20));

insert into MCA1 values
(1,'alan','maths'),
(2,'albin','english'),
(3,'alan','malayalam'),
(4,'arjun','maths'),
(5,'arjun','english');

insert into MCA2 values
(1,'alan','maths'),
(2,'albin','english'),
(3,'albin','malayalam'),
(4,'arun','maths'),
(5,'arun','english');

insert into MCA3 values
(1,'alan','maths'),
(2,'arun','maths'),
(3,'yedhu','english'),
(4,'alan','malayalam'),
(5,'arjun','english');

select s1_Name from MCA1 union all select s2_Name from MCA2 union all select s3_Name from MCA3;
select MCA1.s1_Name,MCA2.s2_Name from MCA1,MCA2 where MCA1.s1_Name=MCA2.s2_Name; 
select s1_Name from MCA1 union all select s2_Name from MCA2;
select distinct s1_Name from MCA1 union all select s3_Name from MCA3;

select s1_Name from MCA1 intersect select s2_Name from MCA2 
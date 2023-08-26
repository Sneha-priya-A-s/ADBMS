create database lab5;

use lab5;

create table student(
rollno int auto_increment primary key,
name varchar(20) not null,
gender varchar(1),
dob date not null,
course varchar(10),
sem varchar(5),
check (gender='m'or gender='f'),
check (course='mca'or course='intmca'),
check (sem='s2' or sem='s3'));

CREATE TABLE marks(
sid int auto_increment primary key,
rollno int  references student(rollno),
subcode varchar(4) not null,
mark int not null,
check (mark>0 and mark<=100));

insert into student (name,gender,dob,course,sem) values
('alan','m','2000-02-05','mca','s2'),
('binu','m','1998-02-18','mca','s3'),
('albin','m','1999-06-26','intmca','s2'),
('ajay','m','2000-05-21','mca','s2'),
('amal','m','1999-07-11','intmca','s3');

insert into marks(rollno)
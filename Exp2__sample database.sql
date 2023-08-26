create database sample;
use sample;
create table tab1 (
admin_no varchar (5),
name varchar(20),
phone varchar(10));
desc tab1

create table tab2 (
rollno varchar (5),
course varchar(20),
dept varchar(10));
desc tab2

create table tab3 (
T1_id varchar (5),
T2_id varchar(20),
Teacher_name varchar(10));
desc tab3

alter table tab3 add subject varchar(30);
desc tab3

ALTER TABLE tab1 RENAME COLUMN name TO stu_name;
desc tab1

ALTER TABLE tab1 MODIFY phone VARCHAR(12) ; 
desc tab1

alter table tab1 add place varchar(15);
desc tab1;

create table student (
roll_no int primary key,
name varchar(20),
semester varchar(15),
room int);
desc student

drop table tab1,tab2,tab3,student;



























































create database new;
use new;

create table mca(
roll int primary key auto_increment,
name varchar(20),
age int,
phone varchar(10),
mark1 int,
mark2 int,
mark3 int);

create table house(
hid int primary key auto_increment,
rollno int REFERENCES mca(roll),
house_name varchar(20),
place varchar(20),
pin int);

insert into mca(name,age,phone,mark1,mark2,mark3)values
('binu',22,8289819484,90,89,74),
('alan',21,9207855783,81,84,74),
('albin',21,7736350001,90,91,94),
('amal',22,7736384253,89,79,75),
('ajay',20,7560822883,100,89,94);
select *from mca;

insert into house(rollno,house_name,place,pin)values
(1,'tavakal','kollam',689051),
(2,'kanjirakombil','malappuram',679326),
(3,'manimala','pala',686575),
(4,'melleal','alapuzha',688501),
(5,'mangalaseri','ponkunnam',686506);
select *from house;

create view view1 as select roll,name,phone from mca;
desc view1;
insert into view1(name,phone) values('binu',8981349454);
create view view2 as select * from mca where age>=25;
create view view3 as select * from mca,house where mca.roll=house.rollno;



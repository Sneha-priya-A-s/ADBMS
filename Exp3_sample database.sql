CREATE DATABASE exp3;
USE exp3;
CREATE TABLE personal(
    Roll_no int,
    Pname char(20),
    Address char(20),
    Phone char(10),
    Weight float,
    Age int,
    Dob date);
desc personal;

INSERT INTO personal values
(98,"Mayavi","Kottayam","8536471259",45,23,"2018-03-05"),
(115,"Luttapi","Ernakulam","9656471259",49,25,"2015-05-01"),
(130,"Rajan","Kottarakara","9996471259",45,12,"2020-12-12"),
(145,"Ammu","Kottarakara","9996471259",45,12,"2019-12-12"),
(160,"Kuttusan","Ernakulam","9656471259",51,35,"2016-03-05"),
(175,"Dakini","Ernakulam","9876471259",38,30,"2016-05-15"),
(190,"Appu","Idukki","6856471287",55,25,"2017-12-25"),
(205,"Vikraman","Thrissur","9996471754",48,31,"2015-10-25"),
(120,"Rajan","Thrissur","9996471289",55,29,"2019-01-08"),
(135,"Saji","Alappuzha","8796471281",55,33,"2010-01-18");
SELECT * FROM personal;

SELECT Roll_no,Pname,Phone FROM personal;
SELECT Pname,Weight FROM personal WHERE Pname="Rajan" and Weight > 50;
SELECT * FROM personal WHERE (Roll_no>100 and Roll_no<200) or Weight > 50;
SELECT Pname,Phone FROM personal WHERE (Pname="Appu" or Pname="Ammu" or Pname="Saji");
SELECT Pname,Phone FROM personal WHERE (Pname="Appu" || Pname="Ammu" || Pname="Saji");
SELECT * FROM personal WHERE Age between 20 and 30;
SELECT Pname,Dob FROM personal WHERE Dob between "2015-03-15" and "2018-11-12";
SELECT * FROM personal WHERE Weight not between 20 and 30;
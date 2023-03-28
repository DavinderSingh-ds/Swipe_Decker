CREATE DATABASE ASS_18;
CREATE TABLE EMPLOO( Emp_Id int Primary Key   identity,
First_Name varchar(25),
 Last_Name varchar(20),
 Qualification varchar(20),
 Salary int,
DOB date,
gender varchar(10));
INSERT INTO EMPLOO(First_Name,Last_Name,Qualification,Salary,DOB,gender) VALUES ('RAHUL','SAINI','B-TECH','20000','2001-12-23','m'),
('janki','KUMARI','M-TECH','30000','2003-2-3','f'),('AKASH ','SHARMA','B-TECH','110000','2005-1-2','m'),('SAMIKSHA','NEGI','BCA','200000','1992-12-23','f'),
('VERMA','SAAB','M-TECH','220000','2001-12-23','m'),('VIRAT','KOHLI','B-TECH','15000','2005-11-06','m'),('VALLEY ','JAAN','B-TECH','200000','2002-10-13','f'),
('BHANU','SINGH','B-TECH','20000000','2001-12-23','m');
CREATE TABLE MAJDOOR( Emp_Id int Primary Key   identity,
First_Name varchar(25),
 Last_Name varchar(20),
 Qualification varchar(20),
 Salary int,
DOB date,
gender varchar(10));
INSERT INTO MAJDOOR(First_Name,Last_Name,Qualification,Salary,DOB,gender) VALUES ('RAHUL','SAINI','B-TECH','20000','2001-12-23','m'),
('janki','KUMARI','M-TECH','30000','2003-2-3','f'),('AKASH ','SHARMA','B-TECH','110000','1954-1-2','m'),('SAMIKSHA','NEGI','BCA','200000','1992-12-23','f'),
('VERMA','SAAB','M-TECH','220000','2001-12-23','m'),('VIRAT','KOHLI','B-TECH','15000','1961-11-06','m'),('VALLEY ','JAAN','B-TECH','200000','2002-10-13','f'),
('BHANU','SINGH','B-TECH','20000000','1812-12-23','m');
select *from MAJDOOR;
SELECT Emp_Id,FIrst_NAME from MAJDOOR where salary>'80000'and DOB>'1969-12-31';
CREATE TABLE MAJDOOR_2( Emp_Id int Primary Key   identity,
First_Name varchar(25),
 Last_Name varchar(20),
 Qualification varchar(20),
 Salary int,
DOB date,
gender varchar(10));
INSERT INTO MAJDOOR_2(First_Name,Last_Name,Qualification,Salary,DOB,gender) VALUES ('RAHUL','SAINI','B-TECH','20000','1973-12-23','m'),
('janki','KUMARI','M-TECH','30000','2003-2-3','f'),('AKASH ','SHARMA','B-TECH','110000','1954-1-2','m'),('SAMIKSHA','NEGI','BCA','200000','1992-12-23','f'),
('VERMA','SAAB','M-TECH','220000','2001-12-23','m'),('VIRAT','KOHLI','B-TECH','15000','1971-11-06','m'),('VALLEY ','JAAN','B-TECH','200000','2002-10-13','f'),
('BHANU','SINGH','B-TECH','20000000','1974-12-23','m');
select *from MAJDOOR_2;
SELECT Emp_Id,FIrst_NAME from MAJDOOR_2 where DOB  BETWEEN '1970-1-1' AND '1975-12-31';
CREATE TABLE MAJDOOR_3( Emp_Id int Primary Key   identity,
First_Name varchar(25),
 Last_Name varchar(20),
 Qualification varchar(20),
 Salary int,
DOB date,
gender varchar(10));
INSERT INTO MAJDOOR_3(First_Name,Last_Name,Qualification,Salary,DOB,gender) VALUES ('RAHUL','SAINI','B-TECH','20000','1973-12-23','m'),
('Jim','KUMARI','M-TECH','30000','2003-2-3','f'),('AKASH ','SHARMA','B-TECH','110000','1954-1-2','m'),('SAMIKSHA','NEGI','BCA','200000','1992-12-23','f'),
('VERMA','SAAB','M-TECH','220000','2001-12-23','m'),('Michael','KOHLI','B-TECH','15000','1971-11-06','m'),('Johnny  ','JAAN','B-TECH','200000','2002-10-13','f'),
('David','SINGH','B-TECH','20000000','1974-12-23','m');
select *from MAJDOOR_3 WHERE FIRST_NAME IN ('JOHNNY','Michael','Jim','David');
SELECT *FROM MAJDOOR_3;
SELECT COUNT(EMP_ID) FROM MAJDOOR_3;
SELECT *FROM MAJDOOR_3;
SELECT AVG(Salary) FROM MAJDOOR_3;
SELECT *FROM MAJDOOR_3;
SELECT SUM(Salary) FROM MAJDOOR_3;
SELECT GENDER ,COUNT(GENDER)AS COUNTING   FROM MAJDOOR_3
GROUP BY GENDER;






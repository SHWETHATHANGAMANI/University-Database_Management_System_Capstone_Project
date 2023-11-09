-----------University DataBase Management System----------
----1.Create University Database give any University name you want
CREATE DATABASE XYZ_UNIVERSTIY

------2. Under this University Create four tables and each table should have following three Column named as:-

---- College_Table
CREATE TABLE College_Table
(
College_ID INT PRIMARY KEY,
College_Name VARCHAR(250),
College_Area VARCHAR(250)
)

SELECT * FROM College_Table

---- Department_Table
CREATE TABLE Department_Table 
(
Dept_ID INT PRIMARY KEY,
Dept_Name VARCHAR(255),
Dept_Facility VARCHAR(255)
)

---- Professor_Table
CREATE TABLE Professor_Table 
(
Professor_ID INT PRIMARY KEY,
Professor_Name VARCHAR(255),
Professor_Subject VARCHAR(255)
)

---- Student_Table
CREATE TABLE Student_Table 
(
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(255),
Student_Stream VARCHAR(255)
)

----3. Apply foreign key on Department key from College_table

ALTER TABLE Department_Table
ADD CONSTRAINT XYZ_UNIVERSITY
FOREIGN KEY (Dept_ID) REFERENCES College_Table (College_ID)

----4. Apply foreign Key on Student_Table from Professor_Table
ALTER TABLE Student_Table
ADD CONSTRAINT XYZ_UNIVERSITY
FOREIGN KEY (Student_ID) REFERENCES Professor_Table (Professor_ID)

----Task 2:-
----1.	Give the information of College_ID and College_name from College_Table
SELECT College_ID, College_Name
FROM College_Table;

---2.	Show  Top 5 rows from Student table.
SELECT TOP 5 * FROM Student_Table;

----3.	What is the name of  professor  whose ID  is 5
select Professor_Name from Professor_Table
where Professor_ID = 5

-----4.	Convert the name of the Professor into Upper case 
SELECT UPPER(Professor_Name) AS Professor_Name FROM Professor_Table;

-----5.	Show me the names of those students whose name is start with a
select * from Student_Table
where Student_Name like 'a%'

----6.	Give the name of those colleges whose end with a
select * from College_Table
where College_Name like '%a'

----7.	 Add one Salary Column in Professor_Table
ALTER TABLE Professor_Table
ADD SALARY INT


select * from Professor_Table

----8.	Add one Contact Column in Student_table
alter table Student_table
add Contact int



select * from Student_table


-----9.	Find the total Salary of Professor
select sum(salary) from Professor_Table

-----10.	Change datatype of any one column of any one Table

ALTER TABLE Student_Table
ALTER COLUMN Student_ID BIGINT;

-----Task 3:-
----1.	Show first 5 records from Students table and Professor table Combine
SELECT Student_ID, Student_Name, Student_Stream
FROM Student_Table
UNION
SELECT Professor_ID, Professor_Name, Professor_Subject
FROM Professor_Table


----2.	Apply Inner join on all 4 tables together
SELECT
    College_Table.College_ID,
    College_Table.College_Name,
    College_Table.College_Area,
    Department_Table.Dept_ID,
    Department_Table.Dept_Name,
    Department_Table.Dept_Facility,
    Professor_Table.Professor_ID,
    Professor_Table.Professor_Name,
    Professor_Table.Professor_Subject,
    Student_Table.Student_ID,
    Student_Table.Student_Name,
    Student_Table.Student_Stream
FROM College_Table
INNER JOIN Department_Table ON College_Table.College_ID = Department_Table.Dept_ID
INNER JOIN Professor_Table ON College_Table.College_ID = Professor_Table.Professor_ID
INNER JOIN Student_Table ON College_Table.College_ID = Student_Table.Student_ID;

----3.	Show Some null values from Department table and Professor table.
SELECT *
FROM Professor_Table
WHERE Professor_ID IS NULL;

----4.	Create a View from College Table  and give those records whose college name starts with C

SELECT * FROM College_Table
WHERE College_Name LIKE 'C%';


----6.	Rename the College_Table to College_Tables_Data .
ALTER TABLE College_Table
RENAME TO College_Tables_Data;


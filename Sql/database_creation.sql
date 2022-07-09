#Create a database for the students
CREATE SCHEMA IF NOT EXISTS student_pro;

#
USE student_pro;

#Create a table for mathematics
CREATE TABLE student_mat_data (
    school CHAR(2),
    sex CHAR(1),
    age TINYINT UNSIGNED,
    address CHAR(1),
    famsize CHAR(3),
    pstatus CHAR(1),
    medu TINYINT UNSIGNED,
    fedu TINYINT UNSIGNED,
    mjob CHAR(8),
    fjob CHAR(8),
    reason CHAR(10),
    guardian CHAR(6),
    traveltime TINYINT UNSIGNED,
	studytime TINYINT UNSIGNED,
	failures TINYINT UNSIGNED,
	schoolsup CHAR(3),
	famsup CHAR(3),
	paid CHAR(3),
	activities CHAR(3),
	nursery CHAR(3),
	higher CHAR(3),
	internet CHAR(3),
	romantic CHAR(3),
	famrel TINYINT UNSIGNED,
	freetime TINYINT UNSIGNED,
	goout TINYINT UNSIGNED,
	Dalc TINYINT UNSIGNED,
	Walc TINYINT UNSIGNED,
	health TINYINT UNSIGNED,
	absences TINYINT UNSIGNED,
	G1 TINYINT UNSIGNED,
	G2 TINYINT UNSIGNED,
	G3 TINYINT UNSIGNED
  
);

#create a table for potuguese
CREATE TABLE student_por_data (
    school CHAR(2),
    sex CHAR(1),
    age TINYINT UNSIGNED,
    address CHAR(1),
    famsize CHAR(3),
    pstatus CHAR(1),
    medu TINYINT UNSIGNED,
    fedu TINYINT UNSIGNED,
    mjob CHAR(8),
    fjob CHAR(8),
    reason CHAR(10),
    guardian CHAR(6),
    traveltime TINYINT UNSIGNED,
	studytime TINYINT UNSIGNED,
	failures TINYINT UNSIGNED,
	schoolsup CHAR(3),
	famsup CHAR(3),
	paid CHAR(3),
	activities CHAR(3),
	nursery CHAR(3),
	higher CHAR(3),
	internet CHAR(3),
	romantic CHAR(3),
	famrel TINYINT UNSIGNED,
	freetime TINYINT UNSIGNED,
	goout TINYINT UNSIGNED,
	Dalc TINYINT UNSIGNED,
	Walc TINYINT UNSIGNED,
	health TINYINT UNSIGNED,
	absences TINYINT UNSIGNED,
	G1 TINYINT UNSIGNED,
	G2 TINYINT UNSIGNED,
	G3 TINYINT UNSIGNED
  
);

#Import the data for the math students

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/student-mat.csv' 
INTO TABLE student_mat_data
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
;

#Import the data for the portuguese students

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/student-por.csv' 
INTO TABLE student_por_data
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
;


#checking math data
SELECT 
    *
FROM
    student_mat_data
LIMIT 10;

#checking number of data points
SELECT 
    COUNT(school)
FROM
    student_mat_data;
    
#Checking students age rangue 
SELECT DISTINCT
    (age), COUNT(age) AS 'count'
FROM
    student_mat_data
GROUP BY age
ORDER BY age;

#checking portuguese data
SELECT 
    *
FROM
    student_por_data;

#checking number of data points
SELECT 
    COUNT(school)
FROM
    student_por_data;
    
#Checking students age rangue 
SELECT DISTINCT
    (age), COUNT(age) AS 'count'
FROM
    student_por_data
GROUP BY age
ORDER BY age;

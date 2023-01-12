DROP DATABASE IF EXISTS family_db;
CREATE DATABASE family_db;

-- SHOW DATABASES; shows databases

USE family_db;

-- SELECT DATABASE(); shows the db you're in

CREATE TABLE faction(
  id INT NOT NULL,
  faction_name VARCHAR(30) NOT NULL,
  PRIMARY KEY faction_name
);

CREATE TABLE class (
  id INT NOT NULL,
  class_name VARCHAR(30) NOT NULL,
  faction_name VARCHAR(30),
  PRIMARY KEY (class_name),
  FOREIGN KEY (id)
  REFERENCES faction(faction_name)
  ON DELETE CASCADE
);

CREATE TABLE character (
  id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30),
  nickname VARCHAR(30),
  age INT,
  alive BOOLEAN,
  class_name VARCHAR(30),
  PRIMARY KEY (id),
  FOREIGN KEY (class_name)
  REFERENCES class(class_name)
  ON DELETE CASCADE
);

-- SHOW TABLES;
-- DROP TABLE tablename; deletes named table
-- DESCRIBE tablename; describes the content parameters of the table


CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT

);

INSERT INTO Student(sno, sname,age) 
 VALUES(1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);

       SELECT *
FROM Student;

CREATE TABLE Course (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO Course(cno, cname) 
 VALUES(101,'c'),
       (102,'c++'),
       (103,'DBMS');

       SELECT *
FROM Course;

CREATE TABLE Enroll (
    sno INT,
    cno INT,
    jdate date,
    PRIMARY KEY(sno,cno),
    FOREIGN KEY(sno) 
        REFERENCES Student(sno)
        ON DELETE CASCADE
    FOREIGN KEY(cno) 
        REFERENCES Course(cno)
        ON DELETE CASCADE
);

INSERT INTO Enroll(sno,cno,jdate) 
 VALUES(1, 101, '5-jun-2021'),
       (1, 102, '5-jun-2021'),
       (2, 103, '6-jun-2021');

       SELECT *
FROM Enroll;

DELETE FROM Student
WHERE sname="Ramya";

Select * from Student;
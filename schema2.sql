DROP DATABASE IF EXISTS family_db;
CREATE DATABASE family_db;

-- SHOW DATABASES; shows databases

USE family_db;

-- SELECT DATABASE(); shows the db you're in

CREATE TABLE immediateFam(
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  present BOOLEAN
);

-- SHOW TABLES;
-- DROP TABLE tablename; deletes named table
-- DESCRIBE tablename; describes the content parameters of the table

INSERT INTO immediateFam (first_name, last_name, age, present)
VALUES ("Dave", "Kirberger", 67, true),
       ("Gail", "Kirberger", 66, false),
       ("Eric", "Kirberger", 39, true),
       ("Lauren", "Kirberger", 37, false),
       ("Justin", "Kirberger", 31, false);
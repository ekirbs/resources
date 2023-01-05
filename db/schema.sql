DROP DATABASE IF EXISTS family_db;
CREATE DATABASE family_db;

-- SHOW DATABASES; shows databases

USE family_db;

-- SELECT DATABASE(); shows the db you're in

CREATE TABLE immediateFam(
  id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  age INT NOT NULL,
  present BOOLEAN,
  PRIMARY KEY (id),
  FOREIGN KEY (last_name)
  REFERENCES extendedFam(last_name)
  ON UPDATE SET NULL
);

CREATE TABLE extendedFam (
  id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(100),
  age INT NOT NULL,
  present BOOLEAN,
  PRIMARY KEY (last_name),
  FOREIGN KEY (id)
  REFERENCES immediateFam(id)
  ON DELETE CASCADE
);

-- SHOW TABLES;
-- DROP TABLE tablename; deletes named table
-- DESCRIBE tablename; describes the content parameters of the table
/*
CREATE DATABASE assignment;
USE assignment;
SHOW TABLES;
*/

/*assignment 3*/
CREATE TABLE user (
  id INT AUTO_INCREMENT,
  name VARCHAR(70) NOT NULL CHECK (name <> ''),
  email VARCHAR(200) NOT NULL CHECK (email <> ''),
  password VARCHAR(50) NOT NULL CHECK (password <> ''),
  created TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY(id)
);

/*
SHOW FIELDS FROM user;
DROP TABLE user;
*/

/*
ALTER TABLE user 
MODIFY email VARCHAR(200) NOT NULL CHECK (email <> ''),
password VARCHAR(50) NOT NULL CHECK (password <> '');
*/

/*assignment 4*/
CREATE TABLE article (
  sysid INT AUTO_INCREMENT,
  author VARCHAR(70) NOT NULL CHECK (author <> ''),
  title VARCHAR(100) NOT NULL CHECK (title <> ''),
  content VARCHAR(500) NOT NULL CHECK (content <> ''),
  PRIMARY KEY (sysid)
);

LOAD DATA INFILE "C:/Users/Public/Downloads/fakearticle.txt"
INTO TABLE article 
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(author, title, content);

LOAD DATA INFILE "C:/Users/Public/Downloads/fakeidpair.txt"
INTO TABLE user
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(name, email, password);


-- command line for backup tables
-- mysqldump -u[username] -p[password] [database] [table] > backup.sql
-- mysqldump -u[username] -p[password] assignment user article > backup.sql

/*
LOAD DATA INFILE "C:/Users/Public/Downloads/fakearticle.csv"
INTO TABLE article 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
*/

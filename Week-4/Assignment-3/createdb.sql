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
/*
ALTER TABLE user
MODIFY email VARCHAR(200) UNIQUE NOT NULL CHECK (email <> '') 
*/


/*assignment 4*/
CREATE TABLE article (
  sysid INT AUTO_INCREMENT,
  author VARCHAR(70) NOT NULL CHECK (author <> ''),
  title VARCHAR(100) NOT NULL CHECK (title <> ''),
  content VARCHAR(500) NOT NULL CHECK (content <> ''),
  PRIMARY KEY (sysid)
);

CREATE TABLE article_ver2 (
  id INT AUTO_INCREMENT,
  user_id INT NOT NULL CHECK (user_id > 0), 
  title VARCHAR(100) NOT NULL CHECK (title <> ''),
  content VARCHAR(500) NOT NULL CHECK (content <> ''),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user(id)
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

LOAD DATA INFILE "C:/Users/Public/Downloads/fakearticle_ver2.txt"
INTO TABLE article_ver2 
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(user_id, title, content);

-- command line for backup tables
-- mysqldump -u[username] -p[password] [database] [table] > backup.sql
-- mysqldump -u[username] -p[password] assignment user article article_ver2 > backup.sql

/*
LOAD DATA INFILE "C:/Users/Public/Downloads/fakearticle.csv"
INTO TABLE article 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
*/

/*
SELECT * FROM user
INTO OUTFILE 'C:/Users/Public/Downloads/user.txt'
FIELDS 
ENCLOSED BY ''
TERMINATED BY '|'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
;
*/

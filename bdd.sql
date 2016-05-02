CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(25) UNIQUE NOT NULL ,
  email VARCHAR(100) UNIQUE NOT NULL ,
  name VARCHAR(100),
  lastName VARCHAR(100),
  passwd VARCHAR(255) NOT NULL ,
  salt VARCHAR(255) NOT NULL ,
  date DATETIME,
  createdAt TIMESTAMP DEFAULT now()
);
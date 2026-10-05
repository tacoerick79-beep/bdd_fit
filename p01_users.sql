-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p01_users (
    p01_id INT PRIMARY KEY auto_increment,
    p01_name VARCHAR(100) NOT NULL,
    p01_email VARCHAR(150) UNIQUE NOT NULL,
    p01_password_hash TEXT NOT NULL,
    p01_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `fitnness`.`p01_users`
(`p01_name`,
`p01_email`,
`p01_password_hash`)
VALUES
("Erick Taco",
"ericktaco68@gmail.com",
"sfasf");


SELECT * FROM p01_users


select * from p01_users WHERE p01_email='ericktaco68@gmail.com'
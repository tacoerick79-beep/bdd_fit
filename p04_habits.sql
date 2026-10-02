CREATE TABLE p04_habits (
    p04_id INT PRIMARY KEY auto_increment,
    p01_id INT NOT NULL,
    p04_name VARCHAR(150) NOT NULL,
    p04_description TEXT NOT NULL,
    p04_frequency VARCHAR(150) NOT NULL,
    p04_active BOOLEAN DEFAULT TRUE, 
    p04_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    
    CONSTRAINT fk_habits_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
);








SELECT * FROM p04_habits
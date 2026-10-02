CREATE TABLE p03_achievements (
    p03_id INT PRIMARY KEY AUTO_INCREMENT,
    p01_id INT NOT NULL,
    p03_title VARCHAR(150) NOT NULL,
    p03_description TEXT,
    p03_category VARCHAR(100) NOT NULL,
    p03_achieved_at DATE NOT NULL,
    p03_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_achievements_users
        FOREIGN KEY (p01_id)
        REFERENCES p01_users(p01_id)
);
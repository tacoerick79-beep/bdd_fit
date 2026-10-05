-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p16_savings_goals(
    p16_id INT PRIMARY KEY AUTO_INCREMENT,
    p01_id  INT NOT NULL,
    p16_name VARCHAR(150) NOT NULL,
    p16_description TEXT,
    p16_target_amount DECIMAL(10,2) NOT NULL,
    p16_current_amount DECIMAL(10,2) DEFAULT 0,
    p16_start_date DATE,
    p16_target_date DATE,
    p16_status  VARCHAR(50) NOT NULL ,
    p16_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    p16_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_savings_goals_users
    FOREIGN KEY(p01_id) 
    REFERENCES p01_users(p01_id)
)

DROP TABLE  p16_savings_goals

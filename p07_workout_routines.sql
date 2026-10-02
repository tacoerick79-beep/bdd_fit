Tables-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p07_workout_routines(
    p07_id INT PRIMARY KEY AUTO_INCREMENT,
    p01_id INT NOT NULL,
    p07_name VARCHAR(150)  NOT NULL,
    p07_description TEXT,
    p07_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    p07_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_workout_routines_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
)


DROP TABLE p07_workout_routines
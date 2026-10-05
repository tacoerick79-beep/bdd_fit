-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p09_workout_sessions(
    p09_id INT PRIMARY KEY AUTO_INCREMENT,
    p01_id INT NOT NULL, 
    p07_id INT NOT NULL,
    p09_started_at DATETIME  NOT NULL,
    p09_finished_at DATETIME NOT NULL,
    p09_notes TEXT,

    CONSTRAINT fk_workout_sessions_users
    FOREIGN KEY (p01_id) 
    REFERENCES p01_users(p01_id),

    CONSTRAINT fk_workout_sessions_workout_routines
    FOREIGN KEY (p07_id)
    REFERENCES p07_workout_routines(p07_id)
)


SELECT * FROM p09_workout_sessions
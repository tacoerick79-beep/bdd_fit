-- Active: 1790967814601@@127.0.0.1@3306@fitnness


CREATE TABLE p08_workout_exercises(
    p08_id INT PRIMARY KEY AUTO_INCREMENT,
    p07_id INT  NOT NULL,
    p06_id INT NOT NULL,
    p08_sets INT NOT NULL, 
    p08_reps INT NOT NULL,
    p08_weight DECIMAL NOT NULL,
    p08_rest_seconds DECIMAL NOT NULL, 
    p08_order INT NOT NULL,
    p08_notes TEXT,

    CONSTRAINT fk_workout_exercises_workout_routines
    FOREIGN KEY (p07_id) 
    REFERENCES p07_workout_routines(p07_id),

    CONSTRAINT fk_workout_exercises_exercises
    FOREIGN KEY (p06_id)
    REFERENCES p06_exercises(p06_id)
)

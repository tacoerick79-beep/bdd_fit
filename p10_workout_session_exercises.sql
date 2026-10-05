-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p10_workout_session_exercises(
p10_id INT PRIMARY KEY AUTO_INCREMENT,
p09_id INT NOT NULL,
p06_id  INT NOT NULL,
p10_set_number INT NOT NULL,
p10_reps INT NOT NULL,
p10_weight DECIMAL NOT NULL,
p10_rpe INT NOT NULL,
p10_notes TEXT,


CONSTRAINT fk_workout_session_exercises_workout_sessions
FOREIGN KEY (p09_id)
REFERENCES p09_workout_sessions(p09_id),
  
CONSTRAINT   fk_workout_session_exercises_exercises
FOREIGN KEY (p06_id)
REFERENCES  p06_exercises(p06_id)
)

SELECT * FROM p10_workout_session_exercises
-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p05_habit_logs(
p05_id INT PRIMARY KEY auto_increment,
p04_id INT NOT NULL,
p05_date DATE NOT NULL,
p05_completed BOOLEAN DEFAULT TRUE,
p05_notes VARCHAR(250),

CONSTRAINT fk_habit_logs_habits
FOREIGN KEY (p04_id) 
REFERENCES p04_habits(p04_id)
)

SELECT * FROM p05_habit_logs


DROP TABLE p05_habit_logs
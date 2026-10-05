-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p11_body_measurements(
    p11_id INT PRIMARY KEY AUTO_INCREMENT,
p01_id INT NOT NULL,
p11_recorded_at  DATE,
p11_weight  DECIMAL(6,2) NOT NULL,
p11_waist  DECIMAL(6,2) NOT NULL,
p11_chest  DECIMAL(6,2) NOT NULL,
p11_relaxed_arm  DECIMAL(6,2) NOT NULL,
p11_flexed_arm  DECIMAL(6,2) NOT NULL,
p11_thigh  DECIMAL(6,2) NOT NULL,
p11_calf  DECIMAL(6,2) NOT NULL,
p11_neck  DECIMAL(6,2) NOT NULL,
p11_notes TEXT,
 


 CONSTRAINT  fk_body_measurements_users
 FOREIGN KEY (p01_id)
 REFERENCES p01_users(p01_id)
)

SELECT * FROM p11_body_measurements
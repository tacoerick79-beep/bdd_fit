-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p12_progress_photos(
    p12_id INT PRIMARY KEY AUTO_INCREMENT,
    p01_id INT NOT NULL,
    p12_photo_url VARCHAR(500) NOT NULL,
    p12_photo_type VARCHAR(50) NOT NULL,
    p12_taken_at DATE NOT NULL,
    p12_notes TEXT ,

    CONSTRAINT fk_progress_photos_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
)



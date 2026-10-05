-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p14_income(
    p14_id INT PRIMARY KEY AUTO_INCREMENT,
    p13_id INT NOT NULL,
    p01_id INT NOT NULL,
    p14_amount DECIMAL(12,2) NOT NULL,
    p14_source VARCHAR(150) NOT NULL,
    p14_description TEXT,
    p14_date DATE NOT NULL,
    p14_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,


    CONSTRAINT fk_income_financial_accounts
    FOREIGN KEY (p13_id)
    REFERENCES p13_financial_accounts(p13_id),

    CONSTRAINT fk_income_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
)

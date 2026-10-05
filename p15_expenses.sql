-- Active: 1790967814601@@127.0.0.1@3306@fitnness
CREATE TABLE p15_expenses(
    p15_id  INT PRIMARY KEY AUTO_INCREMENT,
    p13_id INT NOT NULL,
    p01_id INT NOT NULL,
    p15_amount DECIMAL(10,2) NOT NULL,
    p15_category  VARCHAR(150) NOT NULL,
    p15_description TEXT,
    p15_date DATE NOT NULL,
    p15_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_expenses_financial_accounts
    FOREIGN KEY (p13_id)
    REFERENCES p13_financial_accounts(p13_id),

    
    CONSTRAINT fk_expenses_financial_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
)

drop Table p15_expenses
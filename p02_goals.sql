CREATE TABLE p02_goals (
    p02_id INT PRIMARY KEY auto_increment,
    p01_id INT NOT NULL,
    p02_title VARCHAR(150)  NOT NULL,
    p02_description TEXT,
    p02_category VARCHAR(150) NOT NULL,
    p02_target_value INT NOT NULL,
	p02_current_value INT NOT NULL,
    P02_unit INT NOT NULL,
    p02_start_date datetime NOT NULL,
	p02_target_date datetime NOT NULL,
    p02_status VARCHAR(100) NOT NULL DEFAULT "active",
    p02_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    p02_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_goals_users
    FOREIGN KEY (p01_id)
    REFERENCES p01_users(p01_id)
);








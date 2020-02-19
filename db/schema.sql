Drop DATABASE friendfinder_db;
CREATE DATABASE friendfinder_db;
USE friendfinder_db;

CREATE TABLE IF NOT EXISTS questions (
    question_id INT NOT NULL AUTO_INCREMENT,
    question VARCHAR (255),
    PRIMARY KEY(question_id)
);

CREATE TABLE IF NOT EXISTS friends (
    friend_id INT NOT NULL AUTO_INCREMENT,
    friend_name VARCHAR(255),
    picture_link VARCHAR (255),
    PRIMARY KEY(friend_id)
);

CREATE TABLE scores (
    friend_id INT NOT NULL,
    question_id INT NOT NULL,
    score INT NOT NULL,
    FOREIGN KEY (friend_id) REFERENCES friends(friend_id),
    FOREIGN KEY (question_id) REFERENCES questions(question_id)

);




CREATE DATABASE friendfinder_db;


USE friendfinder_db;


CREATE TABLE IF NOT EXISTS questions (
    id INT NOT NULL AUTO_INCREMENT,
    question VARCHAR (255),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS friends (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    picture_link VARCHAR (255),
    PRIMARY KEY(id)
);

CREATE TABLE scores (
    score INT NOT NULL,
    question_id INT NOT NULL,
    friend_id INT NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions(id),
    FOREIGN KEY (friend_id) REFERENCES friends(id)
    
);

INSERT INTO questions (question) VALUES 
('You find it easy to stay relaxed and focused even when there is some pressure.'),
('Your mind is always buzzing with unexplored ideas and plans.'),
('Generally speaking, you rely more on your experience than your imagination.'),
("You rarely do something just out of sheer curiosity."),
('People can rarely upset you.'),
('It is often difficult for you to relate to other people’s feelings.'),
('In a discussion, truth should be more important than people’s sensitivities.'),
('You rarely get carried away by fantasies and ideas.'),
("You think that everyone’s views should be respected regardless of whether they are supported by facts or not."),
('You feel more energetic after spending time with a group of people.');

INSERT INTO friends (name, picture_link) VALUES 
('Prakash Acharya', 'http://www.hello.com/img_/hellowithwaves.png'),
('Divya Shrestha', 'https://www.hellomagazine.com/imagenes/fashion/news/2019041872209/hello-tshirt-pull-and-bear/0-351-879/hello-tee-t.jpg'),
('Barak Obama', 'https://i2.wp.com/massispost.com/wp-content/uploads/2016/09/barack-obama.jpg?fit=850%2C567&ssl=1')




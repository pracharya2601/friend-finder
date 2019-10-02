INSERT INTO questions (question) VALUES 
('You find it easy to stay relaxed and focused even when there is some pressure.'),
('Your mind is always buzzing with unexplored ideas and plans.'),
('Generally speaking, you rely more on your experience than your imagination.'),
("You rarely do something just out of sheer curiosity."),
('People can rarely upset you.')
('It is often difficult for you to relate to other people’s feelings.'),
('In a discussion, truth should be more important than people’s sensitivities.'),
('You rarely get carried away by fantasies and ideas.'),
("You think that everyone’s views should be respected regardless of whether they are supported by facts or not."),
('You feel more energetic after spending time with a group of people.');

INSERT INTO friends (name, picture_link) VALUES 
('Prakash Acharya', 'https://scontent-sjc3-1.xx.fbcdn.net/v/t1.0-9/29216508_1767390826657729_5677525115487649792_o.jpg?_nc_cat=106&_nc_oc=AQlfBKim1fbAsl8KzdtyIysH7QIWwbWOfvIOJGmud_468-KQn1QnOEhpHt4d_NNL8HqSAxqFyaCzQOSDl2xuZJsI&_nc_ht=scontent-sjc3-1.xx&oh=2472fcffcada17176565f15213ea52f8&oe=5E2C593E'),
('Divya Shrestha', 'https://scontent-sjc3-1.xx.fbcdn.net/v/t31.0-8/13995407_1796836277263251_7331744404501603551_o.jpg?_nc_cat=111&_nc_oc=AQliVGewJ4JJNFpi4M-KOXW3mK_oTzHc5owwqlScqMtZqRCjBizT1QLpsAFIRjuUyZNUutnbi-C-c3wCL-aNYGbX&_nc_ht=scontent-sjc3-1.xx&oh=b0610515e1fb3752847665e3e8e1559c&oe=5E37F664'),
('Barak Obama', 'https://i2.wp.com/massispost.com/wp-content/uploads/2016/09/barack-obama.jpg?fit=850%2C567&ssl=1')

INSERT INTO scores (question_id, friend_id, score) VALUES
(1, 1, 1),(2, 1, 2),(3, 1, 5),(4, 1, 2),(5, 1, 1),(6, 1, 2),(7, 1, 5),(8, 1, 4),(9, 1, 5),(10, 1, 5);
(1, 2, 4),(2, 2, 5),(3, 2, 1),(4, 2, 5),(5, 2, 3),(6, 2, 5),(7, 2, 1),(8, 2, 3),(9, 2, 3),(10, 2, 2);
(1, 3, 3),(2, 3, 1),(3, 3, 1),(4, 3, 1),(5, 3, 5),(6, 3, 1),(7, 3, 3),(8, 3, 1),(9, 3, 1),(10, 3, 4);

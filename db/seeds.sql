USE friendfinder_db;

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

INSERT INTO friends (friend_name, picture_link) VALUES 
('Leonardo DiCaprio', 'https://media.vanityfair.com/photos/551f1c62fa699a350cfdebbf/master/pass/leonardo-dicaprio-resort.jpg'),
('Emma Watson', 'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/speaker-headshots/Emma-Watson_CAA-Speakers_Web.jpg?itok=4aKb4oZE'),
('Barak Obama', 'https://i2.wp.com/massispost.com/wp-content/uploads/2016/09/barack-obama.jpg?fit=850%2C567&ssl=1'),
('Tom Hardy', 'https://hips.hearstapps.com/esquireuk.cdnds.net/15/37/original/original-tom-hardy-esquire-may-cover-promo-11-jpg-4c8bc653.jpg'),
('Robert De Nero', 'https://a57.foxnews.com/media2.foxnews.com/BrightCove/694940094001/2019/10/01/931/524/694940094001_6090805983001_6090805096001-vs.jpg?ve=1&tl=1'),
('Martin Scorsese', 'https://metro.co.uk/wp-content/uploads/2019/10/PRI_89721673.jpg?quality=90&strip=all'),
('charlize theron', 'https://media.npr.org/assets/img/2019/12/19/gettyimages-1193218221-51948d595aef8c28fcefddea0905284960b9ef10-s800-c85.jpg'),
('Emilia Clarke', 'https://ksassets.timeincuk.net/wp/uploads/sites/46/2018/07/rexfeatures_9671860y-920x564.jpg'),
('Jake Gyllenhaal', 'https://i.pinimg.com/originals/35/89/a5/3589a52b7d547ff333b9cd00ba3982c6.jpg'),

INSERT INTO scores (question_id, friend_id, score) VALUES
(1,1,3), (1,2,2), (1,3,4), (1,4,1), (1,5,5), (1,6,4), (1,7,1), (1,8,3), (1,9,4), (1,10,4),
(2,1,4), (2,2,4), (2,3,1), (2,4,2), (2,5,4), (2,6,1), (2,7,4), (2,8,1), (2,9,1), (2,10,3),
(3,1,3), (3,2,3), (3,3,5), (3,4,4), (3,5,5), (3,6,3), (3,7,4), (3,8,1), (3,9,3), (3,10,1),
(4,1,3), (4,2,4), (4,3,4), (4,4,2), (4,5,1), (4,6,5), (4,7,4), (4,8,3), (4,9,4), (4,10,3),
(5,1,4), (5,2,2), (5,3,5), (5,4,2), (5,5,5), (5,6,4), (5,7,3), (5,8,4), (5,9,1), (5,10,5),
(6,1,3), (6,2,4), (6,3,4), (6,4,2), (6,5,4), (6,6,5), (6,7,1), (6,8,3), (6,9,4), (6,10,5),
(7,1,3), (7,2,2), (7,3,5), (7,4,4), (7,5,5), (7,6,1), (7,7,4), (7,8,1), (7,9,4), (7,10,4),
(8,1,3), (8,2,2), (8,3,5), (8,4,2), (8,5,5), (8,6,4), (8,7,1), (8,8,3), (8,9,1), (8,10,1),
(9,1,3), (9,2,4), (9,3,5), (9,4,2), (9,5,1), (9,6,5), (9,7,1), (9,8,4), (9,9,3), (9,10,5),

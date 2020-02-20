DROP DATABASE Friends;
CREATE DATABASE Friends;

USE Friends;

CREATE TABLE all_Friends (
	id INT AUTO_INCREMENT NOT NULL,
	friend_name VARCHAR(100) NOT NULL,
    friend_photo VARCHAR(500) NOT NULL,
    friend_q1 INTEGER(1),
    friend_q2 INTEGER(1),
    friend_q3 INTEGER(1),
    friend_q4 INTEGER(1),
    friend_q5 INTEGER(1),
    friend_q6 INTEGER(1),
    friend_q7 INTEGER(1),
    friend_q8 INTEGER(1),
    friend_q9 INTEGER(1),
    friend_q10 INTEGER(1),
    createdAt TIMESTAMP NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)
VALUES ("Charlize Theron", "https://media.npr.org/assets/img/2019/12/19/gettyimages-1193218221-51948d595aef8c28fcefddea0905284960b9ef10-s800-c85.jpg", "5", "4", "5", "2", "4", "5", "4", "4", "1", "2", CURRENT_TIMESTAMP);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)
VALUES ("Jake Gyllenhaal", "https://i.pinimg.com/originals/35/89/a5/3589a52b7d547ff333b9cd00ba3982c6.jpg", "2", "2", "4", "4", "1", "1", "1", "4", "2", "1", CURRENT_TIMESTAMP);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)	
VALUES ("Emilia CLark", "https://img-ovh-cloud.zszywka.pl/1/0206/9981-emilia-clarke.jpg", "4", "1", "5", "1", "2", "1", "5", "3", "5", "2", CURRENT_TIMESTAMP);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)
VALUES ("Leo Goat", "https://media.self.com/photos/57d6ccebf71ce8751f6b424d/master/w_870,h_1200,c_limit/Leonardo-Dicaprio-Bun.jpg", "4", "1", "3", "1", "4", "2", "2", "4", "4", "3", CURRENT_TIMESTAMP);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)
VALUES ("Emma Watson", "https://thenypost.files.wordpress.com/2019/11/emmawatsonselfpartnered.jpg?quality=80&strip=all", "5", "3", "2", "4", "3", "2", "5", "5", "3", "3", CURRENT_TIMESTAMP);

INSERT INTO all_Friends (friend_name, friend_photo, friend_q1, friend_q2, friend_q3, friend_q4, friend_q5, friend_q6, friend_q7, friend_q8, friend_q9, friend_q10, createdAt)
VALUES ("Tom Hardy", "https://www.unilad.co.uk/wp-content/uploads/2017/03/1048-tom-hardy-peaky-blinders-web.jpg", "4", "1", "5", "3", "3", "1", "4", "4", "2", "3", CURRENT_TIMESTAMP);

-- SELECT * FROM all_Friends;
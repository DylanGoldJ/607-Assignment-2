CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	name varchar(20) NOT NULL
);
CREATE TABLE shows(
	show_id SERIAL PRIMARY KEY,
	title varchar(100) NOT NULL
);
CREATE TABLE reviews(
	review_id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(user_id),
	show_id INT REFERENCES shows(show_id),
	review INT 
);
INSERT INTO users(name)
VALUES ('Jonah'), ('Ethan'), ('Alan'), ('Dylan'), ('Mark');

INSERT INTO shows(title)
VALUES ('Demon Slayer'), ('Breaking Bad'), ('Attack on Titan'), ('Dexter'), ('Invincible'), ('Dragonball Z');

INSERT INTO reviews(user_id, show_id, review)
VALUES 
(1, 1, 3),
(1, 2, 5),
(1, 3, 3), 
(1, 5, 4), 
(2, 1, 4), 
(2, 2, 5), 
(2, 4, 4),
(3, 1, 4), 
(3, 3, 4), 
(3, 6, 5),
(4, 1, 4),
(4, 2, 5),
(4, 3, 5),
(4, 4, 4),
(4, 5, 4),
(5, 2, 4),
(5, 5, 3),
(5, 6, 4);

SELECT name, title, review
FROM reviews
INNER JOIN users USING(user_id)
INNER JOIN shows USING(show_id);



-- Create the Movie Database
CREATE DATABASE MovieDB;
USE MovieDB;

CREATE TABLE Directors (
director_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
nationality VARCHAR(100)
);

CREATE TABLE Actors (
actor_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
birth_year INT
);

CREATE TABLE Movies (
movie_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
release_year INT,
genre VARCHAR(100),
director_id INT,
FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE Movie_Actors (
movie_id INT,
actor_id INT,
role VARCHAR(255),
PRIMARY KEY (movie_id, actor_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);

CREATE TABLE Users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(100) UNIQUE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Reviews (
review_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
movie_id INT,
rating INT CHECK (rating BETWEEN 1 AND 10),
review_text TEXT,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

-- Inserting Sample Data (20+ records per table omitted for brevity)
INSERT INTO Directors (name, nationality) VALUES
('Christopher Nolan', 'British'),
('Steven Spielberg', 'American'),
('Quentin Tarantino', 'American'),
('Martin Scorsese', 'American'),
('James Cameron', 'Canadian'),
('Greta Gerwig', 'American'),
('Jordan Peele', 'American'),
('Bong Joon-ho', 'South Korean'),
('Ridley Scott', 'British'),
('Alfonso Cuarón', 'Mexican'),
('Kathryn Bigelow', 'American'),
('Peter Jackson', 'New Zealander'),
('Wes Anderson', 'American'),
('Denis Villeneuve', 'Canadian'),
('David Fincher', 'American'),
('Tim Burton', 'American'),
('Christopher Columbus', 'American'),
('George Lucas', 'American'),
('Guy Ritchie', 'British'),
('Ron Howard', 'American');


INSERT INTO Movies (title, release_year, genre, director_id) VALUES
('Inception', 2010, 'Sci-Fi', 1),
('Jurassic Park', 1993, 'Adventure', 2),
('Pulp Fiction', 1994, 'Crime', 3),
('The Irishman', 2019, 'Crime', 4),
('Titanic', 1997, 'Romance', 5),
('Little Women', 2019, 'Drama', 6),
('Get Out', 2017, 'Horror', 7),
('Parasite', 2019, 'Thriller', 8),
('The Martian', 2015, 'Sci-Fi', 9),
('Gravity', 2013, 'Sci-Fi', 10),
('The Hurt Locker', 2008, 'War', 11),
('The Hobbit', 2012, 'Fantasy', 12),
('The Grand Budapest Hotel', 2014, 'Comedy', 13),
('Dune', 2021, 'Sci-Fi', 14),
('Fight Club', 1999, 'Drama', 15),
('Beetlejuice', 1988, 'Fantasy', 16),
('Harry Potter 1', 2001, 'Fantasy', 17),
('Star Wars', 1977, 'Sci-Fi', 18),
('Sherlock Holmes', 2009, 'Mystery', 19),
('A Beautiful Mind', 2001, 'Biography', 20);


INSERT INTO Actors (name, birth_year) VALUES
('Leonardo DiCaprio', 1974),
('Sam Neill', 1947),
('Brad Pitt', 1963),
('Morgan Freeman', 1937),
('Emma Stone', 1988),
('Tom Hanks', 1956),
('Natalie Portman', 1981),
('Robert Downey Jr.', 1965),
('Denzel Washington', 1954),
('Anne Hathaway', 1982),
('Chris Hemsworth', 1983),
('Scarlett Johansson', 1984),
('Christian Bale', 1974),
('Matt Damon', 1970),
('Keanu Reeves', 1964),
('Angelina Jolie', 1975),
('Joaquin Phoenix', 1974),
('Emily Blunt', 1983),
('Daniel Kaluuya', 1989),
('Florence Pugh', 1996);


INSERT INTO Movie_Actors (movie_id, actor_id, role) VALUES
(1, 1, 'Dom Cobb'),
(2, 2, 'Dr. Alan Grant'),
(3, 3, 'Vincent Vega'),
(4, 1, 'Frank Sheeran'),
(5, 3, 'Jack Dawson'),
(6, 5, 'Jo March'),
(7, 19, 'Chris Washington'),
(8, 19, 'Ki-taek'),
(9, 14, 'Mark Watney'),
(10, 7, 'Ryan Stone'),
(11, 9, 'Sergeant James'),
(12, 11, 'Thorin Oakenshield'),
(13, 4, 'Gustave'),
(14, 12, 'Paul Atreides'),
(15, 3, 'The Narrator'),
(16, 6, 'Beetlejuice'),
(17, 8, 'Harry Potter'),
(18, 8, 'Luke Skywalker'),
(19, 3, 'Sherlock Holmes'),
(20, 4, 'John Nash');


INSERT INTO Users (username, email) VALUES
('moviebuff01', 'buff01@example.com'),
('cinemalover', 'lover@example.com'),
('fanatic01', 'fan01@example.com'),
('johnnyB', 'jb@example.com'),
('cinemaholic', 'cine@example.com'),
('movierev', 'rev@example.com'),
('jdoe', 'jdoe@example.com'),
('filmgeek23', 'geek23@example.com'),
('user08', 'u08@example.com'),
('user09', 'u09@example.com'),
('user10', 'u10@example.com'),
('user11', 'u11@example.com'),
('user12', 'u12@example.com'),
('user13', 'u13@example.com'),
('user14', 'u14@example.com'),
('user15', 'u15@example.com'),
('user16', 'u16@example.com'),
('user17', 'u17@example.com'),
('user18', 'u18@example.com'),
('user19', 'u19@example.com');


INSERT INTO Reviews (user_id, movie_id, rating, review_text) VALUES
(1, 1, 9, 'Mind-blowing sci-fi!'),
(2, 2, 8, 'Classic adventure film.'),
(3, 3, 10, 'Tarantino is a genius.'),
(4, 4, 9, 'Long but engaging.'),
(5, 5, 7, 'Emotional rollercoaster.'),
(6, 6, 8, 'Loved the costumes and story.'),
(7, 7, 9, 'Creepy and creative.'),
(8, 8, 10, 'Deserved the Oscar.'),
(9, 9, 8, 'Sci-fi done right.'),
(10, 10, 7, 'Visually stunning.'),
(11, 11, 9, 'Edge of your seat action.'),
(12, 12, 6, 'Good adaptation.'),
(13, 13, 8, 'Witty and stylish.'),
(14, 14, 9, 'Epic and modern.'),
(15, 15, 10, 'Thought-provoking.'),
(16, 16, 6, 'Weird but funny.'),
(17, 17, 8, 'Magical!'),
(18, 18, 10, 'A classic.'),
(19, 19, 9, 'Great mystery.'),
(20, 20, 10, 'Inspirational and smart.');


-- Creating Views
CREATE VIEW TopRatedMovies AS
SELECT title, AVG(rating) AS avg_rating FROM Movies
JOIN Reviews ON Movies.movie_id = Reviews.movie_id
GROUP BY Movies.movie_id
HAVING avg_rating > 8;

CREATE VIEW MovieGenres AS
SELECT genre, COUNT(*) AS movie_count FROM Movies
GROUP BY genre;

CREATE VIEW UserReviews AS
SELECT username, title, rating FROM Users
JOIN Reviews ON Users.user_id = Reviews.user_id
JOIN Movies ON Reviews.movie_id = Movies.movie_id;

CREATE VIEW DirectorMovies AS
SELECT name AS Director, title FROM Directors
JOIN Movies ON Directors.director_id = Movies.director_id;

CREATE VIEW ActorRoles AS
SELECT name AS Actor, title AS Movie, role FROM Actors
JOIN Movie_Actors ON Actors.actor_id = Movie_Actors.actor_id
JOIN Movies ON Movie_Actors.movie_id = Movies.movie_id;

-- Creating Stored Procedures
DELIMITER $$

CREATE PROCEDURE GetMoviesByDirector(IN dir_id INT)
BEGIN
SELECT title FROM Movies WHERE director_id = dir_id;
END $$

CREATE PROCEDURE AddMovie(IN movieTitle VARCHAR(255), IN year INT, IN genre VARCHAR(100), IN dir_id INT)
BEGIN
INSERT INTO Movies (title, release_year, genre, director_id) VALUES (movieTitle, year, genre, dir_id);
END $$

CREATE PROCEDURE GetDirectorMovieCount()
BEGIN
  SELECT Directors.name, COUNT(Movies.movie_id) AS total_movies
  FROM Directors
  JOIN Movies ON Directors.director_id = Movies.director_id
  GROUP BY Directors.director_id;
END $$

CREATE PROCEDURE DeleteReviewByUser(IN u_id INT, IN m_id INT)
BEGIN
  DELETE FROM Reviews WHERE user_id = u_id AND movie_id = m_id;
END $$

CREATE PROCEDURE UpdateMovieGenre(IN m_id INT, IN new_genre VARCHAR(100))
BEGIN
  UPDATE Movies SET genre = new_genre WHERE movie_id = m_id;
END $$

CREATE PROCEDURE GetMoviesByGenre(IN movie_genre VARCHAR(100))
BEGIN
  SELECT * FROM Movies WHERE genre = movie_genre;
END $$

CREATE PROCEDURE GetUserReviews(IN uname VARCHAR(100))
BEGIN
  SELECT Movies.title, rating, review_text
  FROM Users
  JOIN Reviews ON Users.user_id = Reviews.user_id
  JOIN Movies ON Reviews.movie_id = Movies.movie_id
  WHERE Users.username = uname;
END $$

CREATE PROCEDURE GetMoviesByActor(IN actorName VARCHAR(255))
BEGIN
  SELECT Movies.title
  FROM Movies
  JOIN Movie_Actors ON Movies.movie_id = Movie_Actors.movie_id
  JOIN Actors ON Movie_Actors.actor_id = Actors.actor_id
  WHERE Actors.name = actorName;
END $$

CREATE PROCEDURE GetMoviesByYear(IN year INT)
BEGIN
  SELECT * FROM Movies WHERE release_year = year;
END $$

CREATE PROCEDURE AddReview(
  IN u_id INT,
  IN m_id INT,
  IN rate INT,
  IN r_text TEXT
)
BEGIN
  INSERT INTO Reviews (user_id, movie_id, rating, review_text)
  VALUES (u_id, m_id, rate, r_text);
END $$

CREATE PROCEDURE GetActorsInMovie(IN movieTitle VARCHAR(255))
BEGIN
  SELECT Actors.name, Movie_Actors.role
  FROM Actors
  JOIN Movie_Actors ON Actors.actor_id = Movie_Actors.actor_id
  JOIN Movies ON Movie_Actors.movie_id = Movies.movie_id
  WHERE Movies.title = movieTitle;
END $$

DELIMITER ;





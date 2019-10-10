USE codeup_test_db;
SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';


SELECT release_date AS 'Release Date of Sgt. Pepper' FROM albums WHERE id = 48;


SELECT genre AS 'Genre of Nevermind by Nirvana' FROM albums WHERE artist = 'Nirvana' AND name = 'Nevermind';


SELECT Name , Artist, release_date AS 'release year' FROM albums WHERE release_date BETWEEN 1990 AND 1999;


SELECT name AS 'Albums that sold 20 million or less' FROM albums WHERE sales <= 20;


SELECT name AS 'Albums with the genre of Rock' FROM albums WHERE genre = 'Rock';





USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';


SELECT release_date FROM albums WHERE id = 48;


SELECT genre FROM albums WHERE artist = 'Nirvana' AND name = 'Nevermind';


SELECT * FROM albums WHERE release_date > 1989 AND release_date < 2000;


SELECT * FROM albums WHERE sales <= 20;


SELECT * FROM albums WHERE genre = 'Rock';




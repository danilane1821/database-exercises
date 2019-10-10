USE codeup_test_db;

SELECT 'These are all the albums';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10
WHERE sales;

SELECT 'These are all the albums released before 1980';
SELECT * WHERE release_date < 1980;

SELECT 'These are all the Michael Jackson albums';
SELECT name FROM albums WHERE artist = 'Michael Jackson';


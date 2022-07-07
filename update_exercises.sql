USE codeup_test_db;


SELECT id, name, sales FROM albums;
SELECT id, name, release_date FROM albums WHERE release_date BETWEEN 0 AND 1979;
SELECT id, name FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = '1800'
WHERE release_date BETWEEN 0 AND 1979;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

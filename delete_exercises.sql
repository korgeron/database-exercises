USE codeup_test_db;

DELETE FROM albums WHERE release_date BETWEEN 1992 AND 3000;
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist = 'Peter Jackson';

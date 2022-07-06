USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(100),
    name VARCHAR(100),
    release_date YEAR UNSIGNED,
    sales DOUBLE UNSIGNED,
    genre VARCHAR(100),
    PRIMARY KEY(id)
);


-- ADDING VALUES TO CODEUP_TEST_DB
-- INSERT INTO albums(
--     artist, name, genre
-- )
-- VALUES('the artist', 'the man kevin', 'ya boy ya kna!'),
--         ('new artist', 'not kevin', 'not ya boy you know and love'),
--        ('old artist', 'kevs the name', 'being back is the game');
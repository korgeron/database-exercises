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
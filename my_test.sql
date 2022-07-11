DROP DATABASE IF EXISTS my_db;
CREATE DATABASE my_db;
USE my_db;
DROP TABLE IF EXISTS table_one;
CREATE TABLE table_one
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(15)  NOT NULL,
    last_name  VARCHAR(20)  NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO table_one(first_name, last_name)
VALUES ('kevin', 'orgeron'),
       ('dave', 'jones'),
       ('mike', 'stevens');

DROP TABLE IF EXISTS table_two;
CREATE TABLE table_two
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    job_role VARCHAR(50)  NOT NULL,
    role_id  INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES table_one (id)
);

INSERT INTO table_two(job_role, role_id)
VALUES ('software developer', 1),
       ('plumber', 2),
       ('teacher', 3);


select concat(table_one.first_name, ' ', table_one.last_name) as full_name, table_two.job_role as job
from table_one
join table_two on table_one.id = table_two.role_id ;
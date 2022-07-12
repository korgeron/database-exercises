# TODO: DROP / CREATE DATABASE / USES DATABASE FOR TABLES
DROP DATABASE IF EXISTS job_app_db;
CREATE DATABASE job_app_db;
USE job_app_db;

# TODO: DROP / CREATE USER LOGIN TABLE
DROP TABLE IF EXISTS user_login;
CREATE TABLE user_login
(
    user_id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(50)  NOT NULL,
    user_pass VARCHAR(50)  NOT NULL,
    PRIMARY KEY (user_id)
);

# TODO: INSERTS USER INFO TO USER LOGIN TABLE
INSERT INTO user_login(user_name, user_pass)
VALUES ('korgeron', 'password1'),
       ('otheruser', 'password2'),
       ('anotheruser', 'password3');

# TODO: DROP / CREATE JOB CONTENT TABLE
DROP TABLE IF EXISTS job_content;
CREATE TABLE job_content
(
    job_id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    job_name     VARCHAR(60)  NOT NULL,
    job_desc     TEXT         NOT NULL,
    availability ENUM ('Y', 'N'),
    user_id      INT UNSIGNED,
    PRIMARY KEY (job_id),
    FOREIGN KEY (user_id) REFERENCES user_login (user_id)
);

# TODO: INSERTS JOB INFO TO JOB CONTENT TABLE
INSERT INTO job_content(job_name, job_desc, availability)
VALUES ('fhsdgh', 'sdfhj', 'N'),
       ('fhfh', 'dsfds', 'N'),
       ('dgaf', 'sdfs', 'N');

# TODO: DROP / CREATE JOB SEEKER TABLE
DROP TABLE IF EXISTS job_seeker;
CREATE TABLE job_seeker
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    user_id    INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user_login (user_id)
);

# TODO: INSERTS INFO FOR JOB SEEKER
INSERT INTO job_seeker(first_name, last_name, user_id)
VALUES ('Morris', 'Brown', 2),
       ('Danny', 'Rushard', 3);

# TODO: DROP / CREATE EMPLOYEE TABLE
DROP TABLE IF EXISTS employer;
CREATE TABLE employer
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(60)  NOT NULL,
    last_name  VARCHAR(60)  NOT NULL,
    user_id    INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user_login (user_id)
);

# TODO: INSERTS INFO INTO EMPLOYEE TABLE
INSERT INTO employer(first_name, last_name, user_id)
VALUES ('Kevin', 'Orgeron', 1);


# TODO: TESTING
# this test selects first and last of the user by user name
select concat(job_seeker.first_name, ' ', job_seeker.last_name) as 'Full Name'
from job_seeker
         join user_login as us on job_seeker.user_id = us.user_id
where us.user_name = 'anotheruser';

# selecting job content
select job_name, job_desc
from job_content;

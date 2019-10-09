USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE table albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(250) NOT NULL,
    name varchar (300) NOT NULL,
    release_date INT(4) UNSIGNED,
    sales FLOAT (5,2) UNSIGNED,
    genre varchar(300),
    PRIMARY KEY (id)

);
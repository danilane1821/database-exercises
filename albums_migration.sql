USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE table albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(100) NOT NULL,
    name varchar (300) DEFAULT 'NONE',
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE PRECISION (11,2),
    genre varchar(1000) NOT NULL,
    PRIMARY KEY (id)

);
DROP DATABASE IF EXISTS lister_db;

CREATE DATABASE IF NOT EXISTS lister_db;

USE lister_db;


CREATE TABLE users (
id INT unsigned not null AUTO_INCREMENT,
email VARCHAR(100) not null ,
passwords varchar(50) not null,
primary key (id)

);

CREATE TABLE ads (
id INT unsigned not null AUTO_INCREMENT,
title VARCHAR(255) not null ,
content text not null,
user_id int unsigned,
foreign key (user_id) references users(id),
primary key (id)

);

CREATE TABLE categories (
id INT unsigned not null AUTO_INCREMENT,
name VARCHAR(100) not null,
primary key (id)

);

CREATE TABLE ad_catagorie (
ads_id INT UNSIGNED,
categories_id INT UNSIGNED,
foreign key (ads_id) references ads(id),
foreign key (categories_id) references categories(id)

);




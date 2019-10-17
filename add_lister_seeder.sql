USE lister_db;

insert INTO users (email, passwords)
values('dani@example.com','password1'),
       ('bev@example.com','password2'),
      ('eddy@example.com','password3');

select * from users;

insert INTO ads (title, content,user_id)
values('free chair','free chair to good home',1),
       ('New IPhone','New Iphone only asking $300.',2),
       ('help wanted','I need help mowing my lawn',3);

select * from ads;

insert into categories (name)
values('help wanted'),
       ('give away'),
       ('furniture'),
       ('for sale'),
       ('clothes'),
       ('video games');

       SELECT * FROM categories;
insert into ad_catagorie (ads_id, categories_id)
values (1,2),
       (2,4),
       (3,1);


select * from ads;

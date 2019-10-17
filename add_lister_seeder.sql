USE lister_db;

insert INTO users (email, passwords)
values('dani@example.com','password1'),
       ('bev@example.com','password2'),
      ('eddy@example.com','password3');

select * from users;

insert INTO ads (title, content,user_id)
values('free chair','free chair to good home',1),
       ('New IPhone','New Iphone only asking $300.',2),
       ('help wanted','I need help mowing my lawn',3),
        ('i cant code','plz help me code',1);

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

# For a given ad, what is the email address of the user that created it?
select email
from users
where id IN (
    select user_id
    from ads
    where id = 2
    );
# For a given ad, what category, or categories, does it belong to?
select name
from categories
where id In (
    select categories_id
    from ad_catagorie
    where ads_id = 3
    );

# For a given category, show all the ads that are in that category.

select title
from ads
where id IN (
    select ads_id
    from ad_catagorie
    where categories_id = 4
    );


# For a given user, show all the ads they have posted.
select title
from ads
where user_id IN (
    select id
    from users
    where id = 1
    );

USE ceres_db;

INSERT INTO owners (name, address)
VALUES
('Darth Smith', '1138 Death Star Rd.'),
('Padme Smith', '1138 Death Star Rd.'),
('Luke Douglas', '18 Tatooine Ln.'),
('Lando Johnson', '777 Bespin Street');

INSERT INTO pets (pet_name, owner_id, age)
VALUES
('Spot', 1, 2),
('Puddle', 1, 2),
('Elrond', 1, 5),
('Mr. Pig', 2, 10),
('Mack', 2, 7),
('Bud', 3, 2),
('Bubbles', 4, 1);

SELECT * FROM pets;
select * from owners;

# LIST THE PET NAME, AGE, AND OWNER NAME

SELECT pets.pet_name, pets.age, owners.name
FROM pets
JOIN owners on owners.id = pets.owner_id;


# Write a query that will return the address and the age of each pet
SELECT pets.age, owners.address
from pets
join owners on owners.id = pets.owner_id;

# join with group by list the number of pets at each adress
SELECT owners.address, count(*)
FROM pets
join owners on pets.owner_id = owners.id
group by owners.address;



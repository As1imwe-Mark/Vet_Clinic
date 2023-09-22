-- Inserting data into the table;

INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(1,'Agumon',date '2020-02-03',0,true,10.23);
INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(2,'Gabumon',date '2018-11-15',2,true,8);
INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(3,'Pikachu',date '2021-01-07',1,false,15.04);
INSERT INTO animals(id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(4,'Devimon',date '2017-05-12',5,true,11);

-- Animals updates

 INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Charmander',date '2020-02-08',0,false,-11);
 INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Plantmon',date '2021-11-15',2,true,-5.7);
 INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Squirtle',date '1993-04-02',3,false,-12.13);
 INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Angemon',date '2005-06-12',1,true,-45);
  INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Boarmon',date '2005-06-07',7,true,20.4);
   INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Blossom',date '1998-10-13',3,true,17);
   INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Ditto',date '2022-05-14',4,true,22);

-- Inserting Data into Owners and species Tables

INSERT INTO owners(full_name, age) VALUES('Sam Smith', 34);
 INSERT INTO owners(full_name, age) VALUES('Jennifer Orwell', 19);
 INSERT INTO owners(full_name, age) VALUES('Bob', 45);
 INSERT INTO owners(full_name, age) VALUES('Melody Pond', 77);
 INSERT INTO owners(full_name, age) VALUES('Dean Winchester', 14);
  INSERT INTO owners(full_name, age) VALUES('Jodie Whittaker', 38);

  INSERT INTO species(name) VALUES('Pokemon');
  INSERT INTO species(name) VALUES('Digimon');

  -- Assigning the animals in the animals table a species

UPDATE animals SET species_id = 1 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 2 WHERE species_id IS NULL;

-- Assigning animals to Owners

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
 UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name = 'Pikachu';
  UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name = 'Gabumon';
   UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name = 'Devimon';
    UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name = 'Plantmon';
     UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name = 'Charmander';
      UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name = 'Squirtle';
       UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name = 'Blossom';
        UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name = 'Angemon';
        UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester') WHERE name = 'Boarmon';
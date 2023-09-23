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

  -- Insert data into Vets table 

  INSERT INTO vets(name,age, date_of_graduation) VALUES('William Tacther',45, date '2000-04-23');
   INSERT INTO vets(name,age, date_of_graduation) VALUES('Maisy Smith',26, date '2019-01-17');
    INSERT INTO vets(name,age, date_of_graduation) VALUES('Stephanie Mendez',64, date '1981-05-04');
    INSERT INTO vets(name,age, date_of_graduation) VALUES('Jack Harkness',38, date '2008-06-08');

    -- Inserting data into specialisation join table;

    INSERT INTO specializations (vet_id, species_id) VALUES (1, 1);
    INSERT INTO specializations (vet_id, species_id) VALUES (3, 2);
    INSERT INTO specializations (vet_id, species_id) VALUES (3, 1);

    -- Inserting data into Visits join table 

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (1, 1, '2020-05-24');

-- Agumon visited Stephanie Mendez on Jul 22nd, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (1, 3, '2020-07-22');


-- Agumon visited Jack Harkness on Feb 2nd, 2021.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (2, 4, '2021-02-02');

-- Pikachu visited Maisy Smith on Jan 5th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-01-05');

-- Pikachu visited Maisy Smith on Mar 8th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-03-08');

-- Pikachu visited Maisy Smith on May 14th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (3, 2, '2020-05-14');

-- Devimon visited Stephanie Mendez on May 4th, 2021.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (4, 3, '2021-05-04');

-- Charmander visited Jack Harkness on Feb 24th, 2021.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (5, 4, '2021-02-24');

-- Plantmon visited Maisy Smith on Dec 21st, 2019.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 2, '2019-12-21');

-- Plantmon visited William Tatcher on Aug 10th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 1, '2020-08-10');

-- Plantmon visited Maisy Smith on Apr 7th, 2021.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (6, 2, '2021-04-07');

-- Squirtle visited Stephanie Mendez on Sep 29th, 2019.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (7, 3, '2019-09-29');

-- Angemon visited Jack Harkness on Oct 3rd, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (8, 4, '2020-10-03');

-- Angemon visited Jack Harkness on Nov 4th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (8, 4, '2020-11-04');

-- Boarmon visited Maisy Smith on Jan 24th, 2019.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2019-01-24');

-- Boarmon visited Maisy Smith on May 15th, 2019.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2019-05-15');

-- Boarmon visited Maisy Smith on Feb 27th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2020-02-27');

-- Boarmon visited Maisy Smith on Aug 3rd, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (9, 2, '2020-08-03');

-- Blossom visited Stephanie Mendez on May 24th, 2020.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (10, 3, '2020-05-24');

-- Blossom visited William Tatcher on Jan 11th, 2021.

INSERT INTO visits (animal_id, vet_id, visit_date) VALUES (10, 1, '2021-01-11');


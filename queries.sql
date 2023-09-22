/*Queries that provide answers to the questions from all projects.*/

SELECT name FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Transactions

--Set species to unspecified

BEGIN;
UPDATE animals SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
COMMIT;

--Set species to digimon and pokemon for all ending with mon and those that are null

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

-- Deleting all from animals and rollback

BEGIN;
DELETE from animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

-- Delete animals born after Jan 1st, 2022, create a savepoint, and update the weight;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT rollback_point;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO rollback_point;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

-- Query to count the total

SELECT COUNT(*) as total_animals FROM animals;

-- To find how many never tried to escape

SELECT COUNT(*) AS animals_never_tried_to_escape FROM animals WHERE escape_attempts = 0;

-- Average weight 

SELECT AVG(weight_kg) AS average_weight FROM animals;

-- Most escapes 

SELECT neutered, SUM(escape_attempts) AS total_escape_attempts FROM animals GROUP BY neutered ORDER BY total_escape_attempts DESC;

-- Min and Max Weight

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight FROM animals GROUP BY species;

--  average number of escape attempts per animal type of those born between 1990 and 2000

SELECT species, AVG(escape_attempts) AS average_escape_attempts FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

-- Queries Using join

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';

-- list animals from pokemon species

SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pok';

-- Listing all owners and their animals including those without animals

SELECT owners.full_name, animals.name AS animal_name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;

-- How many animals are there per species 

SELECT species.name AS species_name, COUNT(animals.id) AS animal_count FROM species LEFT JOIN animals ON species.id = animals.species_id GROUP BY species_name ORDER BY animal_count DESC;

-- Digimons owned by Jennifer Orwell

SELECT animals.name AS digimon_name FROM animals JOIN species ON animals.species_id = species.id JOIN owners ON animals.owner_id = owners.id WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';

-- animals owned by Dean Winchester that haven't tried to escape


-- Who owns the most animals

SELECT owners.full_name, COUNT(animals.id) AS num_owned_animals FROM owners LEFT JOIN animals ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY num_owned_animals DESC LIMIT 1;



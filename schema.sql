-- creating database table

CREATE TABLE animals (
id INT,
name VARCHAR(100),
date_of_birth DATE,
escape_attempts INT,
neutered BOOLEAN,
weight_kg DECIMAL
);


-- adding species column

ALTER TABLE animals ADD COLUMN species VARCHAR(100);

-- Add owners and species 

 CREATE TABLE owners(id SERIAL PRIMARY KEY, full_name VARCHAR(150), age INT);
 CREATE TABLE species(id SERIAL PRIMARY KEY,name VARCHAR(150));

--  Update animals id to primary key

ALTER TABLE animals DROP COLUMN IF EXISTS id;
ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

-- Remove species column 

ALTER TABLE animals DROP COLUMN species;

-- Add the 'species_id' column as a foreign key

ALTER TABLE animals ADD COLUMN species_id INT REFERENCES species(id);



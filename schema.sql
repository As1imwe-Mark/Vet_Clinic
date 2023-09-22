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
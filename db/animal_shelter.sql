DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255)
);

CREATE TABLE animals (
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  admission_date DATE,
  adoptable BOOLEAN,
  owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE
);
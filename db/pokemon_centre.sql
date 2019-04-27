DROP TABLE pokemons;
DROP TABLE vets;

CREATE TABLE vets (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE pokemons (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  date_caught INT4,
  treatment_notes VARCHAR(255),
  vet_id INT4 REFERENCES vets(id) ON DELETE SET NULL
);

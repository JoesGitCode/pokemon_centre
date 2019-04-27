DROP TABLE pokemon;
DROP TABLE vet;

CREATE TABLE vet (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE pokemon (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  date_caught INT4,
  treatment_notes VARCHAR(255),
  vet_id INT4 REFERENCES vet(id) ON DELETE SET NULL
);

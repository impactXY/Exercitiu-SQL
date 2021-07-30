CREATE TABLE adresa
(
	adresa_id SERIAL PRIMARY KEY,
	nume_locatie_id SMALLINT REFERENCES nume_locatie(nume_locatie_id),
	nume VARCHAR(255) NOT NULL
);
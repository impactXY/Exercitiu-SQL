CREATE TABLE nume_locatie
(
	nume_locatie_id SERIAL PRIMARY KEY,
	oras_id SMALLINT REFERENCES oras(oras_id),
	nume VARCHAR(50) NOT NULL
);
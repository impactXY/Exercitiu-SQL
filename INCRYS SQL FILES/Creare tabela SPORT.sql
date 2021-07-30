CREATE TABLE sport
(
	sport_id SERIAL PRIMARY KEY,
	adresa_id SMALLINT REFERENCES adresa(adresa_id),
	nume VARCHAR(50) NOT NULL,
	pret SMALLINT NOT NULL,
	perioada_inceput TIMESTAMP NOT NULL,
	perioada_terminat TIMESTAMP NOT NULL
);
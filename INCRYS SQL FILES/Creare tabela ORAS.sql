CREATE TABLE oras
(
	oras_id SERIAL PRIMARY KEY,
	tara_id SMALLINT REFERENCES tara(tara_id),
	nume VARCHAR(50) NOT NULL
);
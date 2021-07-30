SELECT t.nume AS nume_tara, o.nume AS nume_oras, n_l.nume AS locatie, s.nume AS sporturi
FROM sport AS s
JOIN adresa AS a ON a.adresa_id = s.adresa_id
JOIN nume_locatie AS n_l ON a.nume_locatie_id = n_l.nume_locatie_id
JOIN oras AS o ON n_l.oras_id = o.oras_id
JOIN tara AS t ON o.tara_id = t.tara_id
WHERE t.nume = 'Noua Zeelanda'
AND s.nume = 'ATV'
AND ((EXTRACT(MONTH FROM s.perioada_inceput) <= 8
AND EXTRACT(MONTH FROM s.perioada_terminat) >= 8)
OR ((EXTRACT(MONTH FROM s.perioada_inceput) = 8 OR
	EXTRACT(MONTH FROM s.perioada_terminat) = 8)
	AND (EXTRACT(DAY FROM s.perioada_inceput) <= 1
OR EXTRACT(DAY FROM s.perioada_terminat) >= 11)))
SELECT t.nume AS nume_tara, o.nume AS nume_oras, s.nume AS sporturi
FROM sport AS s
JOIN adresa AS a ON a.adresa_id = s.adresa_id
JOIN nume_locatie AS n_l ON a.nume_locatie_id = n_l.nume_locatie_id
JOIN oras AS o ON n_l.oras_id = o.oras_id
JOIN tara AS t ON o.tara_id = t.tara_id
WHERE o.nume = 'San Salvador'
AND EXTRACT(MONTH FROM s.perioada_inceput) <= 4
AND EXTRACT(MONTH FROM s.perioada_terminat) >= 4
--Title of films in English Language and with PG-13 rating
SELECT f.title, f.rating, l.name 
FROM film f
INNER JOIN language l ON f.language_id=l.language_id
WHERE f.rating='PG-13' AND l.name='English'; 
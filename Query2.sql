--Films containing the word 'drama' in the description that can be found in stores in Alberta
SELECT f.film_id, f.title, f.description, s.store_id
FROM film f
JOIN inventory i ON f.film_id=i.film_id
JOIN store s ON i.store_id=s.store_id
JOIN address a ON s.address_id=a.address_id
	WHERE ((f.description LIKE '%Drama%') OR f.description LIKE '%drama%') 
	AND a.district='Alberta'

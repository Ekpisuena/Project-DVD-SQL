--most rented film in Canada 
SELECT f.title AS movietitle, COUNT(f.film_id) AS film_count
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN store s ON i.store_id=s.store_id
JOIN address a ON s.address_id=a.address_id
JOIN city c ON a.city_id=c.city_id
JOIN country co ON c.country_id=co.country_id
WHERE co.country='Canada'
GROUP BY f.film_id
ORDER BY film_count DESC;
